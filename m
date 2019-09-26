Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA9BBEE45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l7VP7tC2DMNrWQXx6U6nxGv2pI37WUcPX7aoAUSIz4=; b=qE+3LbTHLCfAl3
	3NtUcRYk+58gV3+7fqMahxwhIvSJUtVbnrBzOPqYHTgqzMdQ75M7vn8H7/F11uNhEjAXJ/K1QTRdf
	AGmRbKm8xRO1j+MDf8cyspfRPhaaaenBPl+0uLGoNpRSMKXZ+jLwCC7tVHjNbAcyGatCR10bH+w1M
	8wVt9zP9/371BgasEx8Bu/inO2AWgSsl0PRGSQRIP0/l/CDPvcPU1Hcz/XeFJFZKDl9NVFB4KwoQ+
	x+EOxBLDlDPuI1gmSTe4cED/I9l/MXRdEIEdVP0vv5RKmp2u6rOIwBPtBt9OvzjX2KWcN53WcIasB
	C6P+9Ro+K1fpyS18aCDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPu1-00044V-Bt; Thu, 26 Sep 2019 09:17:33 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPtg-000439-7A; Thu, 26 Sep 2019 09:17:13 +0000
Received: from [10.18.29.226] (10.18.29.226) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 26 Sep
 2019 17:17:06 +0800
Subject: Re: [PATCH 2/3] soc: amlogic: Add support for Secure power domains
 controller
To: Kevin Hilman <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
References: <1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com>
 <1568895064-4116-3-git-send-email-jianxin.pan@amlogic.com>
 <7hh850t2wy.fsf@baylibre.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <3859c748-01f0-4dbd-05d6-20fff31edf11@amlogic.com>
Date: Thu, 26 Sep 2019 17:17:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7hh850t2wy.fsf@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.226]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_021712_270749_D7499166 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Zhiqiang Liang <zhiqiang.liang@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

Thanks for your review. Please see my comments below.


On 2019/9/26 6:41, Kevin Hilman wrote:
> Hi Jianxin,
> 
> Jianxin Pan <jianxin.pan@amlogic.com> writes:
> 
>> Add support for the Amlogic Secure Power controller. In A1/C1 series, power
>> control registers are in secure domain, and should be accessed by smc.
>>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> Signed-off-by: Zhiqiang Liang <zhiqiang.liang@amlogic.com>
> 
> Thanks for the new power domain driver.
> 
>> ---
>>  drivers/soc/amlogic/Kconfig             |  13 +++
>>  drivers/soc/amlogic/Makefile            |   1 +
>>  drivers/soc/amlogic/meson-secure-pwrc.c | 182 ++++++++++++++++++++++++++++++++
>>  3 files changed, 196 insertions(+)
>>  create mode 100644 drivers/soc/amlogic/meson-secure-pwrc.c
>>
>> diff --git a/drivers/soc/amlogic/Kconfig b/drivers/soc/amlogic/Kconfig
>> index bc2c912..6cb06e7 100644
>> --- a/drivers/soc/amlogic/Kconfig
>> +++ b/drivers/soc/amlogic/Kconfig
>> @@ -48,6 +48,19 @@ config MESON_EE_PM_DOMAINS
>>  	  Say yes to expose Amlogic Meson Everything-Else Power Domains as
>>  	  Generic Power Domains.
>>  
>> +config MESON_SECURE_PM_DOMAINS
>> +	bool "Amlogic Meson Secure Power Domains driver"
>> +	depends on ARCH_MESON || COMPILE_TEST
>> +	depends on PM && OF
>> +	depends on HAVE_ARM_SMCCC
>> +	default ARCH_MESON
>> +	select PM_GENERIC_DOMAINS
>> +	select PM_GENERIC_DOMAINS_OF
>> +	help
>> +	  Support for the power controller on Amlogic A1/C1 series.
>> +	  Say yes to expose Amlogic Meson Secure Power Domains as Generic
>> +	  Power Domains.
>> +
>>  config MESON_MX_SOCINFO
>>  	bool "Amlogic Meson MX SoC Information driver"
>>  	depends on ARCH_MESON || COMPILE_TEST
>> diff --git a/drivers/soc/amlogic/Makefile b/drivers/soc/amlogic/Makefile
>> index de79d044..7b8c5d3 100644
>> --- a/drivers/soc/amlogic/Makefile
>> +++ b/drivers/soc/amlogic/Makefile
>> @@ -5,3 +5,4 @@ obj-$(CONFIG_MESON_GX_SOCINFO) += meson-gx-socinfo.o
>>  obj-$(CONFIG_MESON_GX_PM_DOMAINS) += meson-gx-pwrc-vpu.o
>>  obj-$(CONFIG_MESON_MX_SOCINFO) += meson-mx-socinfo.o
>>  obj-$(CONFIG_MESON_EE_PM_DOMAINS) += meson-ee-pwrc.o
>> +obj-$(CONFIG_MESON_SECURE_PM_DOMAINS) += meson-secure-pwrc.o
>> diff --git a/drivers/soc/amlogic/meson-secure-pwrc.c b/drivers/soc/amlogic/meson-secure-pwrc.c
>> new file mode 100644
>> index 00000000..00c7232
>> --- /dev/null
>> +++ b/drivers/soc/amlogic/meson-secure-pwrc.c
>> @@ -0,0 +1,182 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
[...]
>> +
>> +static bool pwrc_secure_get_power(struct meson_secure_pwrc_domain *pwrc_domain)
>> +{
>> +	struct arm_smccc_res res;
>> +
>> +	arm_smccc_smc(SMC_PWRC_GET, pwrc_domain->index, 0,
>> +		      0, 0, 0, 0, 0, &res);
>> +
>> +	return res.a0 & 0x1;
> 
> Please use a #define with a readable name for this mask.
> The return type of this smc is bool. I will remove 0x1 mask in next version. 

Another question about smc:
In this driver, no share memory is needed, and I use arm_smccc_smc() directly.
Should I add secure-monitor = <&sm> in dtb and use meson_sm_call() from sm driver instead? 
>> +}
> 
> What does the return value for this function mean?  Does true mean
> "powered off" or "powered on">
The return vaule for SMC_PWRC_GET :
0 -> power on
1 -> power off> See the rename I just did on the ee-pwrc driver:
> https://lore.kernel.org/linux-amlogic/20190925213528.21515-2-khilman@kernel.org/
> I will follow and rename to _is_off() in the next verson.
>> +static int meson_secure_pwrc_off(struct generic_pm_domain *domain)
>> +{
>> +	struct arm_smccc_res res;
>> +	struct meson_secure_pwrc_domain *pwrc_domain =
[...]
>> +
>> +#define SEC_PD(__name, __flag)			\
>> +{						\
>> +	.name = #__name,			\
>> +	.index = PWRC_##__name##_ID,		\
>> +	.get_power = pwrc_secure_get_power,	\
>> +	.flags = __flag,			\
>> +}
>> +
>> +static struct meson_secure_pwrc_domain_desc a1_pwrc_domains[] = {
>> +	SEC_PD(DSPA,	0),
>> +	SEC_PD(DSPB,	0),
>> +	SEC_PD(UART,	GENPD_FLAG_ALWAYS_ON),
> 
> This flag should only be used for domains where there are no linux
> drivers.
> 
> Rather than using this flag, you need to add a 'power-domain' property
> to the uart driver in DT, and then update the meson_uart driver to use
> the runtime PM API so that the domain is enabled whenever the UART is in
> use.
PM_UART Power domain is shared by uart, msr, jtag and cec.
Uart should keep working in BL31, after kernel suspend and before kernel resume.
> 
>> +	SEC_PD(DMC,	GENPD_FLAG_ALWAYS_ON),
> 
> Please explain the need for ALWAYS_ON.
> 
PM_DMC is used for DDR PHY ana/dig and DMC. 
There is no linux drver for them, and it should be always on. 

I will add comments for all these always on domains.
>> +	SEC_PD(I2C,	0),
>> +	SEC_PD(PSRAM,	0),
>> +	SEC_PD(ACODEC,	0),
>> +	SEC_PD(AUDIO,	0),
>> +	SEC_PD(OTP,	0),
>> +	SEC_PD(DMA,	0),
>> +	SEC_PD(SD_EMMC,	0),
>> +	SEC_PD(RAMA,	0),
>> +	SEC_PD(RAMB,	GENPD_FLAG_ALWAYS_ON),
> 
> Please explain the need for ALWAYS_ON.
> 
In A1, SRAMB is used for bl31 ATF. 
>> +	SEC_PD(IR,	0),
>> +	SEC_PD(SPICC,	0),
>> +	SEC_PD(SPIFC,	0),
>> +	SEC_PD(USB,	0),
>> +	SEC_PD(NIC,	GENPD_FLAG_ALWAYS_ON),
> 
> Please explain the need for ALWAYS_ON.
> 
PD_NIC is used for NIC400, and should keep on.
>> +	SEC_PD(PDMIN,	0),
>> +	SEC_PD(RSA,	0),
>> +};
>> +
>> +static int meson_secure_pwrc_probe(struct platform_device *pdev)
>> +{
>> +	const struct meson_secure_pwrc_domain_data *match;
>> +	struct meson_secure_pwrc *pwrc;
>> +	int i;
[...]
>> +
>> +	return of_genpd_add_provider_onecell(pdev->dev.of_node, &pwrc->xlate);
>> +}
>> +
>> +static struct meson_secure_pwrc_domain_data meson_secure_a1_pwrc_data = {
>> +	.domains = a1_pwrc_domains,
>> +	.count = ARRAY_SIZE(a1_pwrc_domains),
>> +};
>> +
>> +static const struct of_device_id meson_secure_pwrc_match_table[] = {
>> +	{
>> +		.compatible = "amlogic,meson-a1-pwrc",
>> +		.data = &meson_secure_a1_pwrc_data,
>> +	},
>> +	{ }
> 
> as mentioned by Martin, please add the sentinel string here.  Helps for
> readability.
> 
OK, I will fix it. Thank you.
>> +};
>> +
>> +static struct platform_driver meson_secure_pwrc_driver = {
>> +	.probe = meson_secure_pwrc_probe,
>> +	.driver = {
>> +		.name		= "meson_secure_pwrc",
>> +		.of_match_table	= meson_secure_pwrc_match_table,
>> +	},
>> +};
>> +
>> +static int meson_secure_pwrc_init(void)
>> +{
>> +	return platform_driver_register(&meson_secure_pwrc_driver);
>> +}
>> +arch_initcall_sync(meson_secure_pwrc_init);
> 
> Please use builtin_platform_driver() or explain in detail why the
> initcall is needed.
> 
OK, I will use builtin_platform_driver instead.
> Thanks,
> 
> Kevin
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
