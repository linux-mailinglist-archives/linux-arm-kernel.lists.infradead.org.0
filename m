Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5771E59E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Q+CN2Ftse63gl5IRV1E/bLzQX8sQ93jgqCT0mV87Vg=; b=raSCNP/ax2MNBL
	KUbcDYALsyXc0gtlbXwdQzFPsSL8taoRQE6JwwYpww+eHA8W8iiHCeYJiMi1CslLy7uTi1I2J+1eD
	OyaNRcFTpAyWFtCoNEhBybh0iZAn50Wkm3/R6ZK14OH+vgiltPR5e+F8A7IHOV0Lp9NoaoyaYZTl7
	q6qxROqmY/67FoToJr/xQyiYpIcdVhJETv0R1/WixstbCI+tDEYdez/GOlvRYVtBixgu+t91JwSG3
	yCt9/lJDJHwyKRpn9+HH70rJooniCOvnYmP5LqhvhUWv1spdKjanxgKkCoBcvwL9pJTrsQN5tYNji
	MQ2taFZfcDUL5/DGp3uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDIu-0008E5-Fp; Thu, 28 May 2020 07:50:16 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDIU-0008CC-RK
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:49:53 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200528074946epoutp01afd5e48863784a2aeb5d2df5e29f94aa~TIbxXE9wh1768717687epoutp01Q
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 07:49:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200528074946epoutp01afd5e48863784a2aeb5d2df5e29f94aa~TIbxXE9wh1768717687epoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590652186;
 bh=w3hreuHdGghvCf2Cl/nWNgKq1iwxko3TlSXpUoS52lM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UkMAW1vwFpypFoFOaDfPTBXoG3fSc7H0rZBF/YQ/uPFwc8ko6+gT90eV8w/2uyTVg
 RZoltUBuDxjMu5xzPXofGsRG99NrKKhSEAcqVSgA2eJt4/OjU7y02ehaKeA59+XU08
 OxXV5sDqMxu4iIr5K0mSlEwiUKQrLhrULEXheKnU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200528074945epcas1p172b17c4112659cf6dabc62c9f20b7370~TIbwhnbd52989429894epcas1p16;
 Thu, 28 May 2020 07:49:45 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.156]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49Xfx117FLzMqYkk; Thu, 28 May
 2020 07:49:41 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 D3.6B.04645.51D6FCE5; Thu, 28 May 2020 16:49:41 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200528074939epcas1p2ca03b0b59c893dc7ddfa8234a3695ada~TIbreJvlm2019520195epcas1p2H;
 Thu, 28 May 2020 07:49:39 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200528074939epsmtrp197bdf2aa05e142c1a9eaf872a5e7ee7b~TIbrdGRMc3121731217epsmtrp1i;
 Thu, 28 May 2020 07:49:39 +0000 (GMT)
X-AuditID: b6c32a36-f67ff70000001225-e5-5ecf6d155cea
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1E.07.08382.31D6FCE5; Thu, 28 May 2020 16:49:39 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528074939epsmtip1f20abb71f55e25d652757989898ee798~TIbrJ4l_71298712987epsmtip1v;
 Thu, 28 May 2020 07:49:39 +0000 (GMT)
Subject: Re: [PATCH 09/12] devfreq: add mediatek cci devfreq
From: Chanwoo Choi <cw00.choi@samsung.com>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, Stephen
 Boyd <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Organization: Samsung Electronics
Message-ID: <75e95e7f-6038-fd5a-3d2c-37df2c6b2cc8@samsung.com>
Date: Thu, 28 May 2020 17:00:00 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <c39e4f30-805a-78c4-b1c4-e55a03e2408e@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrIJsWRmVeSWpSXmKPExsWy7bCmvq5o7vk4gy8/2Cy2r3/BajH14RM2
 i/lHzrFanG16w27x7UoHk8Wmx9dYLS7vmsNmcbn5IqPF594jjBZLr19ksmhqMba43biCzeLN
 j7NMFmdOX2K1aN17hN3i37WNLBbT7wpZbPzq4SDksWbeGkaPnbPusntsWtXJ5nHn2h42j81L
 6j1aTu5n8dhytZ3Fo2/LKkaP4ze2M3l83iQXwBWVbZORmpiSWqSQmpecn5KZl26r5B0c7xxv
 amZgqGtoaWGupJCXmJtqq+TiE6DrlpkD9JKSQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYp
 tSAlp8CyQK84Mbe4NC9dLzk/18rQwMDIFKgwITuj43Una8H5iIoPKzrZGhhvuncxcnJICJhI
 fHt1gQnEFhLYwSjx5kFoFyMXkP2JUWLSj7lMEM43Ron5678ywnQ8vnaDDSKxl1Fi0+Z9UFXv
 GSXeP90MNktYwEZi+cImVhCbTUBLYv8LkA5ODhGB28wSE2aHgDQwCxxklJh+6SJYA7+AosTV
 H4/BVvAK2Em0/l4FFOfgYBFQldh8vBIkLCoQJnFyWwtUiaDEyZlPWEBsTgF7idmLO8F2MQuI
 S9x6Mp8JwpaX2P52DjPILgmBfk6Ju6f/s0O84CJx9ONHKFtY4tXxLVC2lMTL/jYou1pi5ckj
 bBDNHYwSW/ZfYIVIGEvsXzoZ7DhmAU2J9bv0IcKKEjt/z2WEWMwn8e5rDytIiYQAr0RHmxBE
 ibLE5Qd3mSBsSYnF7Z1sExiVZiF5ZxaSF2YheWEWwrIFjCyrGMVSC4pz01OLDQuMkGN7EyM4
 uWuZ7WBcdM7nEKMAB6MSD2+H17k4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleak
 Fh9iNAUG9kRmKdHkfGDmySuJNzQ1MjY2tjAxNDM1NFQS553/40yckEB6YklqdmpqQWoRTB8T
 B6dUA+M6IT/O+hVJ/9ZXhtqqyvxS237J+fSyZyaP9ZRiLbpXhyScj1r4NL3mp7BNbJFT8saQ
 NDs7S/GY1qb9QvpZIb+LWjgPqojcVq09oGsX5WBWbz7rkvZb9ozLLB7fL3H9Xr0/pIrh/ayI
 yf4KreKB38SPf1paecXrvKjMpuSF3oe+sBrz1XEeU2Ipzkg01GIuKk4EANdo+O0EBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsWy7bCSnK5w7vk4g1ev9Cy2r3/BajH14RM2
 i/lHzrFanG16w27x7UoHk8Wmx9dYLS7vmsNmcbn5IqPF594jjBZLr19ksmhqMba43biCzeLN
 j7NMFmdOX2K1aN17hN3i37WNLBbT7wpZbPzq4SDksWbeGkaPnbPusntsWtXJ5nHn2h42j81L
 6j1aTu5n8dhytZ3Fo2/LKkaP4ze2M3l83iQXwBXFZZOSmpNZllqkb5fAldHxupO14HxExYcV
 nWwNjDfduxg5OSQETCQeX7vB1sXIxSEksJtRYs3cH+wQCUmJaRePMncxcgDZwhKHDxdD1Lxl
 lNh74w8jSI2wgI3E8oVNrCA2m4CWxP4XEINEBO4zSyy/exXMYRY4yCjxrPsPO0R7M5NE653H
 zCAt/AKKEld/PAYbxStgJ9H6exUTyDoWAVWJzccrQcKiAmESO5c8ZoIoEZQ4OfMJC4jNKWAv
 MXtxJ9hmZgF1iT/zLjFD2OISt57MZ4Kw5SW2v53DPIFReBaS9llIWmYhaZmFpGUBI8sqRsnU
 guLc9NxiwwLDvNRyveLE3OLSvHS95PzcTYzgSNfS3MG4fdUHvUOMTByMhxglOJiVRHidzp6O
 E+JNSaysSi3Kjy8qzUktPsQozcGiJM57o3BhnJBAemJJanZqakFqEUyWiYNTqoFpCZvH5KV7
 uQw+2075vqHe89mNDvs1FfJnnQuWv29+dHHdkfSFXw57sruxvNmndkAz12HZqVmWb+KVb23h
 OHG50dt0rZ3etNnnvyz5UcG6wSgid233apYPym/0dk/cPourJSxMtZLV9JwN49Kpqq09xcce
 eAmt1Z/ozJHC735LQd9bTnZRqwGPA2d0je6/oJcy05scNtt8bH5+/bBf6P8XWYebk0+s2HZ6
 fsu+wyI+PDMs2Rl1fxz+Gj99IluTwKycX2n3bm5lfhNz8GO/YkyN+4M5K1+FGEnrMbzOX+q8
 Xi1V78Fpi3/mR50D9m82MtL9EM489dg53RSpVtuzj0o2fVx1Tf7Gl7kMR6eu6UqMU2Ipzkg0
 1GIuKk4EAGBovQVjAwAA
X-CMS-MailID: 20200528074939epcas1p2ca03b0b59c893dc7ddfa8234a3695ada
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200520034338epcas1p1b3c7eb91a37dfd1d9cfc150a2310f120
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
 <CGME20200520034338epcas1p1b3c7eb91a37dfd1d9cfc150a2310f120@epcas1p1.samsung.com>
 <20200520034307.20435-10-andrew-sh.cheng@mediatek.com>
 <c39e4f30-805a-78c4-b1c4-e55a03e2408e@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004951_302100_9A3DF9BE 
X-CRM114-Status: GOOD (  37.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew-sh.Cheng,

On 5/28/20 4:35 PM, Chanwoo Choi wrote:
> Hi Andrew-sh.Cheng,
> 
> On 5/20/20 12:43 PM, Andrew-sh.Cheng wrote:
>> This adds a devfreq driver for the Cache Coherent Interconnect (CCI)
>> of the Mediatek MT8183.
>>
>> On the MT8183 the CCI is supplied by the same regulator as the LITTLE
>> cores. The driver is notified when the regulator voltage changes
>> (driven by cpufreq) and adjusts the CCI frequency to the maximum
>> possible value.

I understood that the mt8183-cci.c and mt8183 cpufreq driver (ARM_MEDIATEK_CPUFREQ)
shared the same regulator. So, when mt8183 cpufreq driver
changes the CPU frequency and voltage, the mt8183-cci.c
changes the CCI frequency according to the new mt8183 frequency
with passive governor. 

I think that mt8183-cci.c don't need to change the voltage
because already mt8183 cpufreq changed the voltage of shared regulator.
Why do you change the voltage in this driver?

>>
>> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
>> ---
>>  drivers/devfreq/Kconfig              |  10 ++
>>  drivers/devfreq/Makefile             |   1 +
>>  drivers/devfreq/mt8183-cci-devfreq.c | 206 +++++++++++++++++++++++++++++++++++
> 
> The mt8183-cci.c is enough for driver name.
> 
>>  3 files changed, 217 insertions(+)
>>  create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c
>>
>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>> index d9067950af6a..4ed7116271ee 100644
>> --- a/drivers/devfreq/Kconfig
>> +++ b/drivers/devfreq/Kconfig
>> @@ -103,6 +103,16 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>  	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
>>  	  adjusting DRAM frequency.
>>  
>> +config ARM_MT8183_CCI_DEVFREQ
>> +	tristate "MT8183 CCI DEVFREQ Driver"
>> +	depends on ARM_MEDIATEK_CPUFREQ
>> +	help
>> +		This adds a devfreq driver for Cache Coherent Interconnect
>> +		of Mediatek MT8183, which is shared the same regulator
>> +		with cpu cluster.
>> +		It can track buck voltage and update a proper cci frequency.
> 
> s/cci/CCI
> 
>> +		Use notification to get regulator status.
>> +
>>  config ARM_TEGRA_DEVFREQ
>>  	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>  	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>> index 3eb4d5e6635c..5b1b670c954d 100644
>> --- a/drivers/devfreq/Makefile
>> +++ b/drivers/devfreq/Makefile
>> @@ -10,6 +10,7 @@ obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>>  # DEVFREQ Drivers
>>  obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>>  obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>> +obj-$(CONFIG_ARM_MT8183_CCI_DEVFREQ)	+= mt8183-cci-devfreq.o
>>  obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>>  obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>>  obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>> diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
>> new file mode 100644
>> index 000000000000..cd7929a83bf8
>> --- /dev/null
>> +++ b/drivers/devfreq/mt8183-cci-devfreq.c
>> @@ -0,0 +1,206 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (c) 2019 MediaTek Inc.
> 
> s/2019/2020
> 
>> +
>> + * Author: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/devfreq.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/regulator/consumer.h>
>> +#include <linux/time.h>
>> +
>> +#include "governor.h"
> 
> It is not needed. Please remove it.
> 
>> +
>> +#define MAX_VOLT_LIMIT		(1150000)
>> +
>> +struct cci_devfreq {
>> +	struct devfreq *devfreq;
>> +	struct regulator *proc_reg;
> 
> 'proc' means the 'processor'?
> Instead of 'proc_reg', you better to use 'cpu_reg'.
> 
>> +	struct clk *cci_clk;
>> +	int old_vproc;
>> +	unsigned long old_freq;
>> +};
>> +
>> +static int mtk_cci_set_voltage(struct cci_devfreq *cci_df, int vproc)
>> +{
>> +	int ret;
>> +
>> +	ret = regulator_set_voltage(cci_df->proc_reg, vproc,
>> +				    MAX_VOLT_LIMIT);
>> +	if (!ret)
>> +		cci_df->old_vproc = vproc;
>> +	return ret;
>> +}
>> +
>> +static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
>> +				  u32 flags)
>> +{
>> +	int ret;
>> +	struct cci_devfreq *cci_df = dev_get_drvdata(dev);
>> +	struct dev_pm_opp *opp;
>> +	unsigned long opp_rate, opp_voltage, old_voltage;
>> +
>> +	if (!cci_df)
>> +		return -EINVAL;
>> +
>> +	if (cci_df->old_freq == *freq)
>> +		return 0;
>> +
>> +	opp_rate = *freq;
>> +	opp = dev_pm_opp_find_freq_floor(dev, &opp_rate);
>> +	opp_voltage = dev_pm_opp_get_voltage(opp);
>> +	dev_pm_opp_put(opp);
> 
> 
> You can use the helper function for getting the rate 
> with devfreq_recommended_opp(). You can refer the following code
> in drivers/devfreq/exynos-bus.c
> 
> 	opp = devfreq_recommended_opp(dev, freq, flags);
> 	if (IS_ERR(opp)) {
> 		dev_err(dev, "failed to get recommended opp instance\n");
> 		return PTR_ERR(opp);
> 	}
> 	dev_pm_opp_put(opp);
> 
>> +
>> +	old_voltage = cci_df->old_vproc;
>> +	if (old_voltage == 0)
>> +		old_voltage = regulator_get_voltage(cci_df->proc_reg);
>> +
>> +	// scale up: set voltage first then freq
>> +	if (opp_voltage > old_voltage) {
>> +		ret = mtk_cci_set_voltage(cci_df, opp_voltage);
>> +		if (ret) {
>> +			pr_err("cci: failed to scale up voltage\n");
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	ret = clk_set_rate(cci_df->cci_clk, *freq);
>> +	if (ret) {
>> +		pr_err("%s: failed cci to set rate: %d\n", __func__,
>> +		       ret);
>> +		mtk_cci_set_voltage(cci_df, old_voltage);
>> +		return ret;
>> +	}
>> +
>> +	// scale down: set freq first then voltage
>> +	if (opp_voltage < old_voltage) {
>> +		ret = mtk_cci_set_voltage(cci_df, opp_voltage);
>> +		if (ret) {
>> +			pr_err("cci: failed to scale down voltage\n");
>> +			clk_set_rate(cci_df->cci_clk, cci_df->old_freq);
>> +			return ret;
>> +		}
>> +	}
> 
> 
> I recommend that dev_pm_opp_set_rate() and dev_pm_opp_set_regulator()
> instead of 'clk_set_rate' and 'regulator_set_voltage'.
> In the dev_pm_opp_set_rate(), handle the these sequence.
> You can refer the merged patch[1].
> 
> [1] commit 4294a779bd8dff6c65e7e85ffe7a1ea236e92a68
> - PM / devfreq: exynos-bus: Convert to use dev_pm_opp_set_rate()
> 
> 
>> +
>> +	cci_df->old_freq = *freq;
>> +
>> +	return 0;
>> +}
>> +
>> +static struct devfreq_dev_profile cci_devfreq_profile = {
>> +	.target = mtk_cci_devfreq_target,
> 
> Need to add '.exit' for calling dev_pm_opp_of_remove_table().
> You can refer the merged devfreq patches like exynos_bus.c, imx-bus.c.
> 
>> +};
>> +
>> +static int mtk_cci_devfreq_probe(struct platform_device *pdev)
>> +{
>> +	struct device *cci_dev = &pdev->dev;
>> +	struct cci_devfreq *cci_df;
>> +	struct devfreq_passive_data *passive_data;
>> +	int ret;
>> +
>> +	cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
>> +	if (!cci_df)
>> +		return -ENOMEM;
>> +
>> +	cci_df->cci_clk = devm_clk_get(cci_dev, "cci_clock");
>> +	ret = PTR_ERR_OR_ZERO(cci_df->cci_clk);
>> +	if (ret) {
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(cci_dev, "failed to get clock for CCI: %d\n",
>> +				ret);
>> +		return ret;
>> +	}
>> +	cci_df->proc_reg = devm_regulator_get_optional(cci_dev, "proc");
>> +	ret = PTR_ERR_OR_ZERO(cci_df->proc_reg);
>> +	if (ret) {
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(cci_dev, "failed to get regulator for CCI: %d\n",
>> +				ret);
>> +		return ret;
>> +	}
> 
> I recommend that use dev_pm_opp_set_regulators.
> You can refer the merged patch[1].
> 
> [1] commit 4294a779bd8dff6c65e7e85ffe7a1ea236e92a68
> - PM / devfreq: exynos-bus: Convert to use dev_pm_opp_set_rate()
> 
> 
>> +	ret = regulator_enable(cci_df->proc_reg);
>> +	if (ret) {
>> +		pr_warn("enable buck for cci fail\n");
> 
> Use dev_err instead of 'pr_warn'.
> 
>> +		return ret;
>> +	}
>> +
>> +	ret = dev_pm_opp_of_add_table(cci_dev);
>> +	if (ret) {
>> +		dev_err(cci_dev, "Fail to init CCI OPP table: %d\n", ret);
> 
> How about changing the error log as following
> because in this driver, use the 'failed to' sentence for error handling?
> 
> 	failed to get OPP table for CCI:L %d
> 
>> +		return ret;
>> +	}
>> +
>> +	platform_set_drvdata(pdev, cci_df);
>> +
>> +	passive_data = devm_kzalloc(cci_dev, sizeof(*passive_data), GFP_KERNEL);
>> +	if (!passive_data)
>> +		return -ENOMEM;
> 
> On this error case, you have to call dev_pm_opp_of_remove_table().
> You better to make the 'err_opp' jump lable and then add 'goto err_opp'.
> 
>> +
>> +	passive_data->parent_type = CPUFREQ_PARENT_DEV;
>> +
>> +	cci_df->devfreq = devm_devfreq_add_device(cci_dev,
>> +						  &cci_devfreq_profile,
>> +						  DEVFREQ_GOV_PASSIVE,
>> +						  passive_data);
>> +	if (IS_ERR(cci_df->devfreq)) {
>> +		ret = PTR_ERR(cci_df->devfreq);
>> +		dev_err(cci_dev, "cannot create cci devfreq device:%d\n", ret);
>> +		dev_pm_opp_of_remove_table(cci_dev);
> 
> Instead of direct call, use 'goto err_opp'.
> 
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int mtk_cci_devfreq_remove(struct platform_device *pdev)
>> +{
>> +	struct device *cci_dev = &pdev->dev;
>> +	struct cci_devfreq *cci_df;
>> +	struct notifier_block *opp_nb;
>> +
>> +	cci_df = platform_get_drvdata(pdev);
>> +	opp_nb = &cci_df->opp_nb;
>> +
>> +	dev_pm_opp_unregister_notifier(cci_dev, opp_nb);
> 
> This patch doesn't call the dev_pm_opp_register_notifier.
> Please remove it.
> 
>> +	devm_devfreq_remove_device(cci_dev, cci_df->devfreq);
> 
> Don't need to call this function because you used devm_devfreq_add_device().
> 
>> +	dev_pm_opp_of_remove_table(cci_dev)> +	regulator_disable(cci_df->proc_reg);
>> +
>> +	return 0;
>> +}
>> +
>> +static const __maybe_unused struct of_device_id
>> +	mediatek_cci_devfreq_of_match[] = {
> 
> Make it on one line and remove '__maybe_unused' keyword.
> - mediatek_cci_devfreq_of_match-> mediatek_cci_of_match
> 
>> +	{ .compatible = "mediatek,mt8183-cci" },
>> +	{ },
>> +};
>> +MODULE_DEVICE_TABLE(of, mediatek_cci_devfreq_of_match);
> 
> ditto.
> 
>> +
>> +static struct platform_driver cci_devfreq_driver = {
>> +	.probe	= mtk_cci_devfreq_probe,
>> +	.remove	= mtk_cci_devfreq_remove,
>> +	.driver = {
>> +		.name = "mediatek-cci-devfreq",
>> +		.of_match_table = of_match_ptr(mediatek_cci_devfreq_of_match),
> 
> ditto.
> 
>> +	},
>> +};
>> +
>> +static int __init mtk_cci_devfreq_init(void)
>> +{
>> +	return platform_driver_register(&cci_devfreq_driver);
>> +}
>> +module_init(mtk_cci_devfreq_init)
>> +
>> +static void __exit mtk_cci_devfreq_exit(void)
>> +{
>> +	platform_driver_unregister(&cci_devfreq_driver);
>> +}
>> +module_exit(mtk_cci_devfreq_exit)
> 
> Use 'module_platform_driver' instead of module_init and module_exit.
> 
>> +
>> +MODULE_DESCRIPTION("Mediatek CCI devfreq driver");
>> +MODULE_AUTHOR("Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>");
>> +MODULE_LICENSE("GPL v2");
>>
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
