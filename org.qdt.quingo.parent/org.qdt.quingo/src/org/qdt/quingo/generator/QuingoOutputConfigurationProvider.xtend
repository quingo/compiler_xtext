package org.qdt.quingo.generator

import org.eclipse.xtext.generator.OutputConfigurationProvider
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.xtext.generator.OutputConfiguration
import org.eclipse.xtext.generator.IFileSystemAccess
import static com.google.common.collect.Sets.newHashSet

/**
 * Set the default output folder for the generated eQASM file.
 * <p>
 * Without overriding the {@code OutputConfigurationProvider}, the default output folder would be
 * 'src-gen'. Here, we set it to '.', i.e., the current folder, which allows the user to specify
 * any output folder via the {@code Configuration} class.
 * 
 * @author Jintao Yu
 */
class QuingoOutputConfigurationProvider extends OutputConfigurationProvider {
	override getOutputConfigurations() {
		var OutputConfiguration defaultOutput = new OutputConfiguration(IFileSystemAccess.DEFAULT_OUTPUT);
		defaultOutput.setDescription("Output Folder");
		defaultOutput.setOutputDirectory(".");
		defaultOutput.setOverrideExistingResources(true);
		defaultOutput.setCreateOutputDirectory(true);
		defaultOutput.setCleanUpDerivedResources(true);
		defaultOutput.setSetDerivedProperty(true);
		defaultOutput.setKeepLocalHistory(true);
		return newHashSet(defaultOutput);
	}

	override getOutputConfigurations(Resource context) {
		getOutputConfigurations
	}

	override getOutputConfigurations(ResourceSet context) {
		getOutputConfigurations
	}
}