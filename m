Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C121C3C6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LfPKxjIhjGJfFWgbJswIsTn+ZngnqGs7WFIs00B+/X0=; b=SFVJot5uoJkA/fYdUnJl9DPdf
	k0WuAZp0ikslTCZjpQHP21/+94yJC9L0VNKkcfgMvDa1/4Y5d3ewIxZrebwdqtV3FKm82Xu+LJydg
	rD7KZIkZWnSHR6nrSalX2L9fteyapben6p2H9XL17WVm2nHDQ4ieHC5fnYj19Aoxorp7UbkqEAvwL
	7s4Depxn7f7vC1Vz2+7ZYzSBFnGxrPfIMUZoiSMZ2JHyzLOG9PlC7nUZp2gRc9gqqEiryNBUWWUpw
	fdDdlwY2d6vwQOSQUn+Doi55+TmV+FbwvQSv89lZEAT8+IbhNgl2hBA0f/ltUE8sfy/+KIafQEGvL
	m5vJoNh1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbnl-0000TO-Qq; Mon, 04 May 2020 14:10:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbne-0000SV-MJ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:10:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 166601FB;
 Mon,  4 May 2020 07:10:26 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D515E3F305;
 Mon,  4 May 2020 07:10:24 -0700 (PDT)
Subject: Re: [PATCH v2 5/5] arm/arm64: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200504092905.10580-1-sudeep.holla@arm.com>
 <20200504092905.10580-6-sudeep.holla@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <18382286-2aa8-54f3-e7f3-25992e908102@arm.com>
Date: Mon, 4 May 2020 15:10:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504092905.10580-6-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_071026_817360_C90EB872 
X-CRM114-Status: GOOD (  25.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/2020 10:29, Sudeep Holla wrote:
> SMCCC v1.2 adds a new optional function SMCCC_ARCH_SOC_ID to obtain a
> SiP defined SoC identification value. Add support for the same.
> 
> Also using the SoC bus infrastructure, let us expose the platform
> specific SoC atrributes under sysfs. We also provide custom sysfs for
> the vendor ID as JEP-106 bank and identification code.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Some minor things below, but with those fixed:

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>   drivers/firmware/psci/Kconfig  |   9 ++
>   drivers/firmware/psci/Makefile |   1 +
>   drivers/firmware/psci/soc_id.c | 165 +++++++++++++++++++++++++++++++++
>   include/linux/arm-smccc.h      |   5 +
>   4 files changed, 180 insertions(+)
>   create mode 100644 drivers/firmware/psci/soc_id.c
> 
> diff --git a/drivers/firmware/psci/Kconfig b/drivers/firmware/psci/Kconfig
> index 97944168b5e6..831399338289 100644
> --- a/drivers/firmware/psci/Kconfig
> +++ b/drivers/firmware/psci/Kconfig
> @@ -12,3 +12,12 @@ config ARM_PSCI_CHECKER
>   	  The torture tests may interfere with the PSCI checker by turning CPUs
>   	  on and off through hotplug, so for now torture tests and PSCI checker
>   	  are mutually exclusive.
> +
> +config ARM_SMCCC_SOC_ID
> +	bool "SoC bus device for the ARM SMCCC SOC_ID"
> +	depends on ARM_PSCI_FW
> +	default y if ARM_PSCI_FW

Since it depends on ARM_PSCI_FW this "if" part is not needed.

> +	select SOC_BUS
> +	help
> +	  Include support for the SoC bus on the ARM SMCCC firmware based
> +	  platforms providing some sysfs information about the SoC variant.
> diff --git a/drivers/firmware/psci/Makefile b/drivers/firmware/psci/Makefile
> index 1956b882470f..55596698d1ad 100644
> --- a/drivers/firmware/psci/Makefile
> +++ b/drivers/firmware/psci/Makefile
> @@ -2,3 +2,4 @@
>   #
>   obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o
>   obj-$(CONFIG_ARM_PSCI_CHECKER)	+= psci_checker.o
> +obj-$(CONFIG_ARM_SMCCC_SOC_ID)	+= soc_id.o
> diff --git a/drivers/firmware/psci/soc_id.c b/drivers/firmware/psci/soc_id.c
> new file mode 100644
> index 000000000000..b45f2d78e12e
> --- /dev/null
> +++ b/drivers/firmware/psci/soc_id.c
> @@ -0,0 +1,165 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2020 Arm Limited
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/bitfield.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +#include <linux/slab.h>
> +#include <linux/sys_soc.h>
> +
> +#define SMCCC_SOC_ID_JEP106_BANK_IDX_MASK	GENMASK(30, 24)
> +/*
> + * As per the spec bits[23:16] are JEP-106 identification code with parity bit
> + * for the SiP. We can drop the parity bit.
> + */
> +#define SMCCC_SOC_ID_JEP106_ID_CODE_MASK	GENMASK(22, 16)
> +#define SMCCC_SOC_ID_IMP_DEF_SOC_ID_MASK	GENMASK(15, 0)
> +
> +/* The bank index is equal to the for continuation code bank number - 1 */
> +#define JEP106_BANK_CONT_CODE(x)	\
> +	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_BANK_IDX_MASK, (x)) + 1)
> +#define JEP106_ID_CODE(x)	\
> +	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_ID_CODE_MASK, (x)))
> +#define IMP_DEF_SOC_ID(x)	\
> +	(u16)(FIELD_GET(SMCCC_SOC_ID_IMP_DEF_SOC_ID_MASK, (x)))
> +
> +static int soc_id_version;
> +static struct soc_device *soc_dev;
> +static struct soc_device_attribute *soc_dev_attr;
> +
> +static int smccc_map_error_codes(unsigned long a0)
> +{
> +	if (a0 >= SMCCC_RET_SUCCESS)
> +		return 0;
> +	else if (a0 == SMCCC_RET_INVALID_PARAMETER)
> +		return -EINVAL;
> +	else if (a0 == SMCCC_RET_NOT_SUPPORTED)
> +		return -EOPNOTSUPP;
> +	return -EINVAL;
> +}
> +
> +static int smccc_soc_id_support_check(void)
> +{
> +	struct arm_smccc_res res;
> +
> +	if (arm_smccc_1_1_get_conduit() == SMCCC_CONDUIT_NONE) {
> +		pr_err("%s: invalid SMCCC conduit\n", __func__);
> +		return -EOPNOTSUPP;
> +	}
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
> +			     ARM_SMCCC_ARCH_SOC_ID, &res);
> +
> +	return smccc_map_error_codes(res.a0);
> +}
> +
> +static ssize_t
> +jep106_cont_bank_code_show(struct device *dev, struct device_attribute *attr,
> +			   char *buf)
> +{
> +	return sprintf(buf, "%02x\n", JEP106_BANK_CONT_CODE(soc_id_version));
> +}
> +
> +static DEVICE_ATTR_RO(jep106_cont_bank_code);
> +
> +static ssize_t
> +jep106_identification_code_show(struct device *dev,
> +				struct device_attribute *attr, char *buf)
> +{
> +	return sprintf(buf, "%02x\n", JEP106_ID_CODE(soc_id_version));
> +}
> +
> +static DEVICE_ATTR_RO(jep106_identification_code);
> +
> +static struct attribute *jep106_id_attrs[] = {
> +	&dev_attr_jep106_cont_bank_code.attr,
> +	&dev_attr_jep106_identification_code.attr,
> +	NULL
> +};
> +
> +ATTRIBUTE_GROUPS(jep106_id);
> +
> +static int __init smccc_soc_init(void)
> +{
> +	struct device *dev;
> +	int ret, soc_id_rev;
> +	struct arm_smccc_res res;
> +	static char soc_id_str[8], soc_id_rev_str[12];
> +
> +	if (arm_smccc_get_version() < ARM_SMCCC_VERSION_1_2)
> +		return 0;
> +
> +	ret = smccc_soc_id_support_check();
> +	if (ret) {
> +		pr_info("SMCCC SOC_ID not implemented, skipping ....\n");
> +		return 0;
> +	}
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
> +
> +	ret = smccc_map_error_codes(res.a0);
> +	if (ret) {
> +		pr_info("SMCCC SOC_ID: failed to version, Err = %d\n", ret);
                                                 ^ get/fetch
> +		return ret;
> +	}
> +
> +	soc_id_version = res.a0;
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
> +
> +	ret = smccc_map_error_codes(res.a0);
> +	if (ret) {
> +		pr_info("SMCCC SOC_ID: failed to revision, Err = %d\n", ret);
                                                 ^ get/fetch
> +		return ret;
> +	}
> +
> +	soc_id_rev = res.a0;
> +
> +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> +	if (!soc_dev_attr)
> +		return -ENOMEM;
> +
> +	sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
> +	sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
> +
> +	soc_dev_attr->soc_id = soc_id_str;
> +	soc_dev_attr->revision = soc_id_rev_str;
> +
> +	soc_dev = soc_device_register(soc_dev_attr);
> +	if (IS_ERR(soc_dev)) {
> +		ret = PTR_ERR(soc_dev);
> +		goto free_soc;
> +	}
> +
> +	dev = soc_device_to_device(soc_dev);
> +
> +	ret = devm_device_add_groups(dev, jep106_id_groups);
> +	if (ret) {
> +		dev_err(dev, "sysfs create failed: %d\n", ret);
> +		goto unregister_soc;
> +	}
> +
> +	pr_info("SMCCC SoC ID: %s Revision %s\n", soc_dev_attr->soc_id,
> +		soc_dev_attr->revision);

All these pr_info()s have (almost) the same initial string, it might be 
worth defining pr_fmt() and dropping it from the individual calls.

Steve

> +
> +	return 0;
> +
> +unregister_soc:
> +	soc_device_unregister(soc_dev);
> +free_soc:
> +	kfree(soc_dev_attr);
> +	return ret;
> +}
> +module_init(smccc_soc_init);
> +
> +static void __exit smccc_soc_exit(void)
> +{
> +	if (soc_dev)
> +		soc_device_unregister(soc_dev);
> +	kfree(soc_dev_attr);
> +}
> +module_exit(smccc_soc_exit);
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index d6b0f4acc707..04414fc2000f 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -68,6 +68,11 @@
>   			   ARM_SMCCC_SMC_32,				\
>   			   0, 1)
>   
> +#define ARM_SMCCC_ARCH_SOC_ID						\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
> +			   ARM_SMCCC_SMC_32,				\
> +			   0, 2)
> +
>   #define ARM_SMCCC_ARCH_WORKAROUND_1					\
>   	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
>   			   ARM_SMCCC_SMC_32,				\
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
