Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855F21C18F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aT29H9RPBqI84GxUMIKgmjnRS184sYlJXkxp6bSjQOM=; b=Rri5h3sPluoJjk/LrAngpzExq
	RYgXR7bqSteLqLa/DMNXmUAaC3a4rTcMV37QdVEewwSZ5mqpK8Fyo14CYzCFOmZJ+xCjcWODWnsK5
	neaMZPWypScDkZmzdMy2OqGKt6oSyITEDP17xYa13T4xTLtxAI7Ra5mkqrBNGo92yALHdNRJlkG0/
	rZTNEKtu5uApOLNmRlzkdVJst82/EAAhF+fs0cX/rlul+FDX9k3Wbr/KmFgopoD6dG0yA1nv6ZDU6
	09Ca102uHk1iVZ2uvI4jNUg5u7jROm9g6qaqTj9ip8aVpmvjWmjYKENrB+irYWpgL9qUUTiO+EQH8
	qvIF7rPPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXGg-00077g-IL; Fri, 01 May 2020 15:07:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXGR-00076w-Fq
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:07:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96A2230E;
 Fri,  1 May 2020 08:07:42 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C66303F68F;
 Fri,  1 May 2020 08:07:40 -0700 (PDT)
Subject: Re: [PATCH 5/5] arm/arm64: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200430114814.14116-1-sudeep.holla@arm.com>
 <20200430114814.14116-6-sudeep.holla@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <241f0a4b-e5bb-f3d9-40ff-b2f088129a0c@arm.com>
Date: Fri, 1 May 2020 16:07:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430114814.14116-6-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_080743_612100_5E56D02A 
X-CRM114-Status: GOOD (  24.94  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Harb Abdulhamid \(harb@amperecomputing.com\)" <harb@amperecomputing.com>,
 Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2020 12:48, Sudeep Holla wrote:
> SMCCC v1.2 adds a new optional function SMCCC_ARCH_SOC_ID to obtain a
> SiP defined SoC identification value. Add support for the same.
> 
> Also using the SoC bus infrastructure, let us expose the platform
> specific SoC atrributes under sysfs. We also provide custom sysfs for
> the vendor ID as JEP-106 bank and identification code.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   drivers/firmware/psci/Makefile |   2 +-
>   drivers/firmware/psci/soc_id.c | 148 +++++++++++++++++++++++++++++++++
>   include/linux/arm-smccc.h      |   5 ++
>   3 files changed, 154 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/firmware/psci/soc_id.c
> 
> diff --git a/drivers/firmware/psci/Makefile b/drivers/firmware/psci/Makefile
> index 1956b882470f..c0b0c9ca57e4 100644
> --- a/drivers/firmware/psci/Makefile
> +++ b/drivers/firmware/psci/Makefile
> @@ -1,4 +1,4 @@
>   # SPDX-License-Identifier: GPL-2.0
>   #
> -obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o
> +obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o soc_id.o
>   obj-$(CONFIG_ARM_PSCI_CHECKER)	+= psci_checker.o
> diff --git a/drivers/firmware/psci/soc_id.c b/drivers/firmware/psci/soc_id.c
> new file mode 100644
> index 000000000000..820f69dad7f5
> --- /dev/null
> +++ b/drivers/firmware/psci/soc_id.c
> @@ -0,0 +1,148 @@
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
> +#define SOCID_JEP106_BANK_IDX_MASK	GENMASK(30, 24)
> +#define SOCID_JEP106_ID_CODE_MASK	GENMASK(23, 16)
> +#define SOCID_IMP_DEF_SOC_ID_MASK	GENMASK(15, 0)
> +#define JEP106_BANK_IDX(x)	(u8)(FIELD_GET(SOCID_JEP106_BANK_IDX_MASK, (x)))
> +#define JEP106_ID_CODE(x)	(u8)(FIELD_GET(SOCID_JEP106_ID_CODE_MASK, (x)))
> +#define IMP_DEF_SOC_ID(x)	(u16)(FIELD_GET(SOCID_IMP_DEF_SOC_ID_MASK, (x)))
> +
> +static int soc_id_version;
> +static struct soc_device *soc_dev;
> +static struct soc_device_attribute *soc_dev_attr;
> +
> +static int smccc_map_error_codes(unsigned long a0)
> +{
> +	if (a0 == SMCCC_RET_INVALID_PARAMETER)
> +		return -EINVAL;
> +	if (a0 == SMCCC_RET_NOT_SUPPORTED)
> +		return -EOPNOTSUPP;
> +	return 0;

It seems odd to special case just those errors. While they are the only 
errors we expect, any result with the high bit set is an error (arguably 
a bug in the firmware) so should really cause an error return.

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
> +	return sprintf(buf, "%02x\n", JEP106_BANK_IDX(soc_id_version) + 1);
> +}
> +
> +static DEVICE_ATTR_RO(jep106_cont_bank_code);
> +
> +static ssize_t
> +jep106_identification_code_show(struct device *dev,
> +				struct device_attribute *attr, char *buf)
> +{
> +	return sprintf(buf, "%02x\n", JEP106_ID_CODE(soc_id_version) & 0x7F);

It seems odd to have the mask defined to include a bit that is then 
always masked off. From the spec I presume this is a parity bit, but it 
would be good to have a comment explaining this.

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

NIT: Do we actually need to check the version here - or would probing 
ARM_SMCCC_ARCH_FEATURES_FUNC_ID as is done below sufficient? I'm not 
aware of this relying on any new semantics that v1.2 added.

> +
> +	ret = smccc_soc_id_support_check();
> +	if (ret)
> +		return ret;

This seems odd - if the version is <v1.2 then we return 0. But if it's 
 >=1.2 but doesn't support SOC_ID then it's an error return?

> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
> +
> +	ret = smccc_map_error_codes(res.a0);
> +	if (ret)
> +		return ret;
> +
> +	soc_id_version = res.a0;
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
> +
> +	ret = smccc_map_error_codes(res.a0);
> +	if (ret)
> +		return ret;
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
