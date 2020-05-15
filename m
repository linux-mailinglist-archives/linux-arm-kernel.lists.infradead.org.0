Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AEA1D5023
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxvPtolQrGCg163PFEXw8OpJzq2qLqJ29nS/nlvcZfo=; b=AS5ECRrLd5MFeA
	6OAXdmNpUcqRaFL+6oOgALgjBCy56BSpmkg1lIwT2O0RHCFdwuABztOXTYfBkZpptRmFeo/NXMeWk
	950RnIHOh3CUcUCr4Lj87HbWsSOdTjsWgZgvRWF69lCZhEy4BCM3qfmvOfyq0aOB5foMBHPI+EMlt
	A9ZtF3DGHwAEw/CpOqIDa85/Tm69K18Q0mnxUPbYTBFEYK+R5CxClKAwE7B3gA22Fgc+Llg5IRb9m
	NLkc7DPTweak4TVrnAnQarJe1xmw7So2X4XpHZhMaZ56u8y4m2Zt7im2nRa/njlAFV1N2Tu0/9V3o
	wMf8LqMPKxw1tzpuux6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZb6I-0002wt-5a; Fri, 15 May 2020 14:14:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZb64-0002vm-9u
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:13:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A47BB2F;
 Fri, 15 May 2020 07:13:54 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C7773F71E;
 Fri, 15 May 2020 07:13:52 -0700 (PDT)
Date: Fri, 15 May 2020 15:13:49 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 7/7] firmware: smccc: Add ARCH_SOC_ID support
Message-ID: <20200515141349.GB7336@bogus>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-8-sudeep.holla@arm.com>
 <20200515125005.GG67718@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515125005.GG67718@C02TD0UTHF1T.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_071356_434189_6937954A 
X-CRM114-Status: GOOD (  39.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 01:50:05PM +0100, Mark Rutland wrote:
> On Wed, May 06, 2020 at 05:44:11PM +0100, Sudeep Holla wrote:
> > SMCCC v1.2 adds a new optional function SMCCC_ARCH_SOC_ID to obtain a
> > SiP defined SoC identification value. Add support for the same.
> >
> > Also using the SoC bus infrastructure, let us expose the platform
> > specific SoC atrributes under sysfs. We also provide custom sysfs for
> > the vendor ID as JEP-106 bank and identification code.
> >
> > Reviewed-by: Steven Price <steven.price@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>
> As with the earlier patch referring to SMCCCv1.2 specifically, I'm
> somewhat wary of this until the SMCCCv1.2 spec is final. Do we know what
> the timeline is for that?
>

Not yet as mentioned in previous email, hopefully soon.

> That needn't hold up the pure refactoring/cleanup portions of this
> series, and regardless I have some comments below on this patch.
>

Sure, thanks.

> > ---
> >  drivers/firmware/smccc/Kconfig  |   8 ++
> >  drivers/firmware/smccc/Makefile |   1 +
> >  drivers/firmware/smccc/soc_id.c | 168 ++++++++++++++++++++++++++++++++
> >  include/linux/arm-smccc.h       |   5 +
> >  4 files changed, 182 insertions(+)
> >  create mode 100644 drivers/firmware/smccc/soc_id.c
> >
> > diff --git a/drivers/firmware/smccc/Kconfig b/drivers/firmware/smccc/Kconfig
> > index d93f1ab52cb2..15e7466179a6 100644
> > --- a/drivers/firmware/smccc/Kconfig
> > +++ b/drivers/firmware/smccc/Kconfig
> > @@ -15,3 +15,11 @@ config HAVE_ARM_SMCCC_DISCOVERY
> >  	 implementation of PSCI_FEATURES(SMCCC_VERSION) which returns
> >  	 success on firmware compliant to SMCCC v1.1 and above.
> >
> > +config ARM_SMCCC_SOC_ID
> > +	bool "SoC bus device for the ARM SMCCC SOC_ID"
> > +	depends on HAVE_ARM_SMCCC_DISCOVERY
> > +	default y
> > +	select SOC_BUS
> > +	help
> > +	  Include support for the SoC bus on the ARM SMCCC firmware based
> > +	  platforms providing some sysfs information about the SoC variant.
> > diff --git a/drivers/firmware/smccc/Makefile b/drivers/firmware/smccc/Makefile
> > index 6f369fe3f0b9..72ab84042832 100644
> > --- a/drivers/firmware/smccc/Makefile
> > +++ b/drivers/firmware/smccc/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  #
> >  obj-$(CONFIG_HAVE_ARM_SMCCC_DISCOVERY)	+= smccc.o
> > +obj-$(CONFIG_ARM_SMCCC_SOC_ID)	+= soc_id.o
> > diff --git a/drivers/firmware/smccc/soc_id.c b/drivers/firmware/smccc/soc_id.c
> > new file mode 100644
> > index 000000000000..dc5dd3f1f59b
> > --- /dev/null
> > +++ b/drivers/firmware/smccc/soc_id.c
> > @@ -0,0 +1,168 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2020 Arm Limited
> > + */
> > +
> > +#define pr_fmt(fmt) "SMCCC: SOC_ID: " fmt
> > +
> > +#include <linux/arm-smccc.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/device.h>
> > +#include <linux/module.h>
> > +#include <linux/kernel.h>
> > +#include <linux/slab.h>
> > +#include <linux/sys_soc.h>
> > +
> > +#define SMCCC_SOC_ID_JEP106_BANK_IDX_MASK	GENMASK(30, 24)
> > +/*
> > + * As per the SMC Calling Convention specification v1.2 (ARM DEN 0028C)
> > + * Section 7.4 SMCCC_ARCH_SOC_ID bits[23:16] are JEP-106 identification
> > + * code with parity bit for the SiP. We can drop the parity bit.
> > + */
> > +#define SMCCC_SOC_ID_JEP106_ID_CODE_MASK	GENMASK(22, 16)
> > +#define SMCCC_SOC_ID_IMP_DEF_SOC_ID_MASK	GENMASK(15, 0)
> > +
> > +/* The bank index is equal to the for continuation code bank number - 1 */
> > +#define JEP106_BANK_CONT_CODE(x)	\
> > +	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_BANK_IDX_MASK, (x)) + 1)
> > +#define JEP106_ID_CODE(x)	\
> > +	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_ID_CODE_MASK, (x)))
> > +#define IMP_DEF_SOC_ID(x)	\
> > +	(u16)(FIELD_GET(SMCCC_SOC_ID_IMP_DEF_SOC_ID_MASK, (x)))
> > +
> > +static int soc_id_version;
> > +static struct soc_device *soc_dev;
> > +static struct soc_device_attribute *soc_dev_attr;
> > +
> > +static int smccc_map_error_codes(unsigned long a0)
> > +{
> > +	if (a0 >= SMCCC_RET_SUCCESS)
> > +		return 0;
>
> As SMCCC_RET_SUCCESS is 0, and a0 is an unsigned long, this condition is
> true for all values of a0.
>

Ah right.

> I don't think this function is particularly helpful, since in the case
> of a failure it'd be nicer to log the original FW error code to dmesg
> for debugging, so we may as well leave it to the caller to check for
> the EOPNOTSUPP / error cases.
>
> e.g. where NOT_SUPPORTED is legitimate callers can do:
>
> 	unsigned long ret = smccc_call_foo(...);
> 	if (ret == SMCCC_RET_NOT_SUPPORTED)
> 		return 0;
> 	if ((int)ret < 0)
> 		pr_err("FOO returned %lx\n", ret)
> 		return -EINVAL;
> 	}
>
> 	consume_ret_somehow(ret);
>
> ... and where NOT_SUPPORTED is not legitimate, they can avoid the
> explicit check for that:
>
> 	unsigned long ret = smccc_call_foo(...);
> 	if ((int)ret < 0) {
> 		pr_err("FOO returned %lx\n", ret)
> 		return -EINVAL;
> 	}
>
> 	consume_ret_somehow(ret);
>
> > +	else if (a0 == SMCCC_RET_INVALID_PARAMETER)
> > +		return -EINVAL;
> > +	else if (a0 == SMCCC_RET_NOT_SUPPORTED)
> > +		return -EOPNOTSUPP;
> > +	return -EINVAL;
> > +}
> > +
> > +static int smccc_soc_id_support_check(void)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	if (arm_smccc_1_1_get_conduit() == SMCCC_CONDUIT_NONE) {
> > +		pr_err("%s: invalid SMCCC conduit\n", __func__);
> > +		return -EOPNOTSUPP;
> > +	}
> > +
> > +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
> > +			     ARM_SMCCC_ARCH_SOC_ID, &res);
> > +
> > +	return smccc_map_error_codes(res.a0);
> > +}
>
> Which I think means we may as well get rid of this, too, and fold the
> conduit check into the start of smccc_soc_init().
>

Will do so.

> > +
> > +static ssize_t
> > +jep106_cont_bank_code_show(struct device *dev, struct device_attribute *attr,
> > +			   char *buf)
> > +{
> > +	return sprintf(buf, "%02x\n", JEP106_BANK_CONT_CODE(soc_id_version));
> > +}
>
> For the regs/identification values, we added a '0x' prefix to make it
> explicit that the values are hex. Can/should we do that here, or is that
> against conventions for soc bus files?
>

Nope, thanks for pointing that. I clearly missed to see that. These are
custom attributes and soc bus doesn't deal with these. I will fix it.

> > +
> > +static DEVICE_ATTR_RO(jep106_cont_bank_code);
> > +
> > +static ssize_t
> > +jep106_identification_code_show(struct device *dev,
> > +				struct device_attribute *attr, char *buf)
> > +{
> > +	return sprintf(buf, "%02x\n", JEP106_ID_CODE(soc_id_version));
> > +}
> > +
> > +static DEVICE_ATTR_RO(jep106_identification_code);
> > +
> > +static struct attribute *jep106_id_attrs[] = {
> > +	&dev_attr_jep106_cont_bank_code.attr,
> > +	&dev_attr_jep106_identification_code.attr,
> > +	NULL
> > +};
> > +
> > +ATTRIBUTE_GROUPS(jep106_id);
> > +
> > +static int __init smccc_soc_init(void)
> > +{
> > +	struct device *dev;
> > +	int ret, soc_id_rev;
> > +	struct arm_smccc_res res;
> > +	static char soc_id_str[8], soc_id_rev_str[12];
> > +
> > +	if (arm_smccc_version_get() < ARM_SMCCC_VERSION_1_2)
> > +		return 0;
> > +
> > +	ret = smccc_soc_id_support_check();
> > +	if (ret) {
> > +		pr_info("Feature not implemented, skipping ....\n");
> > +		return 0;
> > +	}
>
> As above, I think we should expand smccc_soc_id_support_check() inline
> here.
>
> > +
> > +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
> > +
> > +	ret = smccc_map_error_codes(res.a0);
> > +	if (ret) {
> > +		pr_err("Failed to fetch version, Err = %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	soc_id_version = res.a0;
>
> ... and I think this'd be clearer like:
>
> 	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
> 	if ((int)res.a0) {
> 		pr_err("ARCH_SOC_ID(0) returned error: %lx\n", res.a0);
> 		return -EINVAL;
> 	}
>
> > +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
> > +
> > +	ret = smccc_map_error_codes(res.a0);
> > +	if (ret) {
> > +		pr_err("Failed to fetch revision, Err = %d\n", ret);
> > +		return ret;
> > +	}
>
> ... likewise:
>
> 	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
> 	if ((int)res.a0) {
> 		pr_err("ARCH_SOC_ID(1) returned error: %lx\n", res.a0);
> 		return -EINVAL;
> 	}
>
> > +
> > +	soc_id_rev = res.a0;
> > +
> > +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> > +	if (!soc_dev_attr)
> > +		return -ENOMEM;
> > +
> > +	sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
> > +	sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
> > +
> > +	soc_dev_attr->soc_id = soc_id_str;
> > +	soc_dev_attr->revision = soc_id_rev_str;
>
> Is there any expected format for these? e.g. would it make sense to add
> a prefix showing that these are JEP codes?
>

SoC ID and revision are just simple integers and match the SoC bus generic
code. The JEP106 codes(ID and bank cont number) are custom and I thought
the names of the sysfs indicate that. Initially I added JEP but dropped
it in favour of easy parsing for userspace as the file name already
indicates that it is JEP106 encoding.

> Do we need to care about platform code which might also regsiter a soc
> device? ... or do we expect those to be mutually exclusive?
>

Yes, they won't clash, but if platform code do register it, it will
appear as separate group entry.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
