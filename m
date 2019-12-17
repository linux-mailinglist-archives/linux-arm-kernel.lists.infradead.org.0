Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EE8122839
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XosJy+bKEmAcEFobfQdJNiyLTc0OBx+HNxd3XQbbtxk=; b=r2rhg4KwLzlK63
	ptuLmAp/d1xkgebESboklQngIEPZQCR8XKjceBU5VSq6In+0Sumu6oybL7rySFpFuvxGhdqRfeJEK
	6Pcby5905kXTBL4waJLM/fKG8YEcO3acpoaFnjvqklStRwbmk6QvlE0PjVZyTe45+hPCGD94IG8ac
	SwPqekPOooBe25otrvmU/1CEG80t1+fgUhfFLHcw+KOZddAIWw7zMLA8KeNSXGSNlmNbfdBHT8rhG
	e6B53C7deBPsSLnIXxfgOKSp+f14OSJmuQyLTDForI18rCI2bptlF8+cVLm6ACNFAaWOZOM02nW0T
	zU/QcHki4QTeA9k4Ehfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9gH-00088y-Gr; Tue, 17 Dec 2019 10:02:17 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9g8-00087l-4s
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:02:10 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191217100205epoutp0457ff9cdbc847626ebe5aeb66996cfdd9~hIFxBVAmm1900219002epoutp04k
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 10:02:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191217100205epoutp0457ff9cdbc847626ebe5aeb66996cfdd9~hIFxBVAmm1900219002epoutp04k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576576925;
 bh=JnDHtsKVse5qbxPZE12i8FqY5KenMgul4NNtd3cn7lQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=OOHtG9yNfeIrmCRakcDVHL87XpUyZcRmrgrUnE/2aHF8xKJwhL8wBwYFohmiUqSew
 37k1SOK1K7ZmiEW1Qp5xz8XD3rOCTFtHcNjh8suZDEucw4yNJM//vph9vX48zBosPN
 oiB5W/bpJVzlBoYorRN1OmrwClLwnr0RXEh+1vak=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191217100204epcas1p40b1432eeaa2f8caf5ce6598e121ded75~hIFwTpUYc1066710667epcas1p4C;
 Tue, 17 Dec 2019 10:02:04 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47cYZw5LJSzMqYkg; Tue, 17 Dec
 2019 10:02:00 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 DE.65.52419.897A8FD5; Tue, 17 Dec 2019 19:02:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191217100200epcas1p2dd8a436ffe11e247299fa425f99e7336~hIFscPkRd1006710067epcas1p2D;
 Tue, 17 Dec 2019 10:02:00 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191217100200epsmtrp23ffac60c97a2ea017d5a3199d4e980ed~hIFsbdkqN0274602746epsmtrp2w;
 Tue, 17 Dec 2019 10:02:00 +0000 (GMT)
X-AuditID: b6c32a37-5b7ff7000001ccc3-ca-5df8a798bce4
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AE.F5.06569.897A8FD5; Tue, 17 Dec 2019 19:02:00 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191217100159epsmtip21fbba5e3799b5629b4a3716af351806f~hIFsHgfmT0466804668epsmtip28;
 Tue, 17 Dec 2019 10:01:59 +0000 (GMT)
Subject: Re: [v5, PATCH 3/5] devfreq: add mediatek cci devfreq
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, Stephen
 Boyd <sboyd@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <bc023722-824c-167e-1a9e-1ebbaef3892b@samsung.com>
Date: Tue, 17 Dec 2019 19:08:34 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <1574769046-28449-4-git-send-email-andrew-sh.cheng@mediatek.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNJsWRmVeSWpSXmKPExsWy7bCmvu6M5T9iDeZP17bYvv4Fq8X8I+dY
 Lb7d+c1kcbbpDbvFpsfXWC0u75rDZnG5+SKjxefeI4wWS69fZLJoajG2uN24gs3izY+zTBZn
 Tl9itWjde4Td4t+1jSwW0+8KWWz86uEg6LFm3hpGj52z7rJ7bFrVyeZx59oeNo/NS+o9Wk7u
 Z/HYcrWdxaNvyypGj+M3tjN5fN4kF8AVlW2TkZqYklqkkJqXnJ+SmZduq+QdHO8cb2pmYKhr
 aGlhrqSQl5ibaqvk4hOg65aZA/SNkkJZYk4pUCggsbhYSd/Opii/tCRVISO/uMRWKbUgJafA
 skCvODG3uDQvXS85P9fK0MDAyBSoMCE748Dcf4wFSwIrHhyZw97AeN6hi5GTQ0LAROLVn1OM
 XYxcHEICOxglTv57ywqSEBL4xCix+pkWhP2NUeL7Z3uYhlkzZzBBNOxllNiy6jGU8x6oYe5U
 9i5GDg5hATuJnTedQeIiApOYJSZsfsAI0s0scItR4vV+NhCbTUBLYv+LG2A2v4CixNUfj8Fq
 eIF6m/88BbuCRUBV4u/VXjBbVCBM4uS2FqgaQYmTM5+wgNicAr4Si9acYoKYLy5x68l8KFte
 YvvbOcwgR0gI3GKXONu3gxHiBReJvmc/2SFsYYlXx7dA2VISn9/tZYOwqyVWnjzCBtHcAfTm
 /gusEAljif1LJzOBfMksoCmxfpc+RFhRYufvuVBP8km8+9rDClIiIcAr0dEmBFGiLHH5wV0m
 CFtSYnF7J9sERqVZSN6ZheSFWUhemIWwbAEjyypGsdSC4tz01GLDAmPkyN7ECE7oWuY7GDec
 8znEKMDBqMTDW1D2PVaINbGsuDL3EKMEB7OSCO8OBaAQb0piZVVqUX58UWlOavEhRlNgaE9k
 lhJNzgdmm7ySeENTI2NjYwsTQzNTQ0MlcV6OHxdjhQTSE0tSs1NTC1KLYPqYODilGhj1Zm5g
 znjyTvFFnMieFx3dM7WnRoe0rdsZ1Ln3Q46eYofZ8lU/a8wWiuy59T7mzXaJJ0+cY89utTgs
 uCyMm3WSwPu1u5LVfy9uZjvuVbDz0pvvukIzePNuTg2pK7L4WGN1b45b2JqLQd6z+szWhvhv
 +ri976PGxbIDSw4sbqytZ0/OfsHg0DJFiaU4I9FQi7moOBEAtS84y/4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBIsWRmVeSWpSXmKPExsWy7bCSvO6M5T9iDe7dYbPYvv4Fq8X8I+dY
 Lb7d+c1kcbbpDbvFpsfXWC0u75rDZnG5+SKjxefeI4wWS69fZLJoajG2uN24gs3izY+zTBZn
 Tl9itWjde4Td4t+1jSwW0+8KWWz86uEg6LFm3hpGj52z7rJ7bFrVyeZx59oeNo/NS+o9Wk7u
 Z/HYcrWdxaNvyypGj+M3tjN5fN4kF8AVxWWTkpqTWZZapG+XwJVxYO4/xoIlgRUPjsxhb2A8
 79DFyMkhIWAiMWvmDKYuRi4OIYHdjBLvf+5ngUhISky7eJS5i5EDyBaWOHy4GKLmLaPE/M59
 LCBxYQE7iZ03nUHiIgLTmCWe/nvNBuIwC9xilNjUfIQdouMxo8TDKX+YQaayCWhJ7H9xgw3E
 5hdQlLj64zEjiM0LNKn5z1NWEJtFQFXi79VeMFtUIExi55LHTBA1ghInZz4Bu45TwFdi0ZpT
 YHFmAXWJP/MuMUPY4hK3nsyHistLbH87h3kCo/AsJO2zkLTMQtIyC0nLAkaWVYySqQXFuem5
 xYYFRnmp5XrFibnFpXnpesn5uZsYwfGtpbWD8cSJ+EOMAhyMSjy8EiXfY4VYE8uKK3MPMUpw
 MCuJ8O5QAArxpiRWVqUW5ccXleakFh9ilOZgURLnlc8/FikkkJ5YkpqdmlqQWgSTZeLglGpg
 ZJnUpy789+KDtT+NV+ZPUpJZcv5huszZaq9tXp3xDkFfZs1jrzSdbzdVuZl5pkurwuWrnVYu
 jF9P/lw12+pMYHq3Yfolq4frzs1YeioiM+zkn8iFy5tyRTdus9wv+unSJ+dJp1i2hRs8qjvD
 0bcoYae74UHN0xMs7vsYTV0Vnn9fuerq14QLr5RYijMSDbWYi4oTAexo4iTrAgAA
X-CMS-MailID: 20191217100200epcas1p2dd8a436ffe11e247299fa425f99e7336
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191126115136epcas5p241f7e64102dab29530370fb5e7f9c6fc
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <CGME20191126115136epcas5p241f7e64102dab29530370fb5e7f9c6fc@epcas5p2.samsung.com>
 <1574769046-28449-4-git-send-email-andrew-sh.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_020208_594583_0427F898 
X-CRM114-Status: GOOD (  33.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

"mtk_cci_vmon" governor looks like the devfreq passive governor.
But, the existing devfreq passive governor depend on the other devfreq device.
"mtk_cci_vmon" governor depend on the regulator with regulator notifier.

I think that it is better to extend the passive governor
in order to support the regulator notifier.
It is possible because passive governor already used
the devfreq notifier. 

Previously, the patch[1] tried to add the cpu based scaling to passive governor.
[1] https://lore.kernel.org/patchwork/patch/1101049/
- [RFC,v2] PM / devfreq: Add cpu based scaling support to passive_governor

Regards,
Chanwoo Choi

On 11/26/19 8:50 PM, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> This adds a devfreq driver for the Cache Coherent Interconnect (CCI)
> of the Mediatek MT8183.
> 
> On the MT8183 the CCI is supplied by the same regulator as the LITTLE
> cores. The driver is notified when the regulator voltage changes
> (driven by cpufreq) and adjusts the CCI frequency to the maximum
> possible value.
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/devfreq/Kconfig              |  10 ++
>  drivers/devfreq/Makefile             |   1 +
>  drivers/devfreq/mt8183-cci-devfreq.c | 247 +++++++++++++++++++++++++++++++++++
>  3 files changed, 258 insertions(+)
>  create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c
> 
> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
> index defe1d438710..76bc42657787 100644
> --- a/drivers/devfreq/Kconfig
> +++ b/drivers/devfreq/Kconfig
> @@ -92,6 +92,16 @@ config ARM_EXYNOS_BUS_DEVFREQ
>  	  and adjusts the operating frequencies and voltages with OPP support.
>  	  This does not yet operate with optimal voltages.
>  
> +config ARM_MT8183_CCI_DEVFREQ
> +	tristate "MT8183 CCI DEVFREQ Driver"
> +	depends on ARM_MEDIATEK_CPUFREQ
> +	help
> +		This adds a devfreq driver for Cache Coherent Interconnect
> +		of Mediatek MT8183, which is shared the same regulator
> +		with cpu cluster.
> +		It can track buck voltage and update a proper cci frequency.
> +		Use notification to get regulator status.
> +
>  config ARM_TEGRA_DEVFREQ
>  	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>  	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
> index 338ae8440db6..1fa05e39e4ff 100644
> --- a/drivers/devfreq/Makefile
> +++ b/drivers/devfreq/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>  
>  # DEVFREQ Drivers
>  obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
> +obj-$(CONFIG_ARM_MT8183_CCI_DEVFREQ)	+= mt8183-cci-devfreq.o
>  obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>  obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>  obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
> diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
> new file mode 100644
> index 000000000000..818a167c442f
> --- /dev/null
> +++ b/drivers/devfreq/mt8183-cci-devfreq.c
> @@ -0,0 +1,247 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> +
> + * Author: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/devfreq.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include "governor.h"
> +
> +struct cci_devfreq {
> +	struct devfreq *devfreq;
> +	struct regulator *proc_reg;
> +	unsigned long proc_reg_uV;																																																																																															
> +	struct clk *cci_clk;
> +	struct notifier_block nb;
> +};
> +
> +static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
> +					  unsigned long val, void *data)
> +{
> +	int ret;
> +	struct cci_devfreq *cci_df =
> +		container_of(nb, struct cci_devfreq, nb);
> +
> +	/* deal with reduce frequency */
> +	if (val & REGULATOR_EVENT_PRE_VOLTAGE_CHANGE) {
> +		struct pre_voltage_change_data *pvc_data = data;
> +
> +		if (pvc_data->min_uV < pvc_data->old_uV) {
> +			cci_df->proc_reg_uV =
> +				(unsigned long)(pvc_data->min_uV);
> +			mutex_lock(&cci_df->devfreq->lock);
> +			ret = update_devfreq(cci_df->devfreq);
> +			if (ret)
> +				pr_err("Fail to reduce cci frequency: %d\n",
> +				       ret);
> +			mutex_unlock(&cci_df->devfreq->lock);
> +		}
> +	} else if ((val & REGULATOR_EVENT_ABORT_VOLTAGE_CHANGE) &&
> +	    ((unsigned long)data > cci_df->proc_reg_uV)) {
> +		cci_df->proc_reg_uV = (unsigned long)data;
> +		mutex_lock(&cci_df->devfreq->lock);
> +		ret = update_devfreq(cci_df->devfreq);
> +		if (ret)
> +			pr_err("Fail to raise cci frequency back: %d\n", ret);
> +		mutex_unlock(&cci_df->devfreq->lock);
> +	} else if ((val & REGULATOR_EVENT_VOLTAGE_CHANGE) &&
> +	    (cci_df->proc_reg_uV < (unsigned long)data)) {
> +		/* deal with increase frequency */
> +		cci_df->proc_reg_uV = (unsigned long)data;
> +		mutex_lock(&cci_df->devfreq->lock);
> +		ret = update_devfreq(cci_df->devfreq);
> +		if (ret)
> +			pr_err("Fail to raise cci frequency: %d\n", ret);
> +		mutex_unlock(&cci_df->devfreq->lock);
> +	}
> +
> +	return 0;
> +}
> +
> +static int mtk_cci_governor_get_target(struct devfreq *devfreq,
> +				       unsigned long *freq)
> +{
> +	struct cci_devfreq *cci_df;
> +	struct dev_pm_opp *opp;
> +
> +	cci_df = dev_get_drvdata(devfreq->dev.parent);
> +
> +	/* find available frequency */
> +	opp = dev_pm_opp_find_freq_ceil_by_volt(devfreq->dev.parent,
> +						cci_df->proc_reg_uV);
> +	*freq = dev_pm_opp_get_freq(opp);
> +
> +	return 0;
> +}
> +
> +static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
> +					  unsigned int event, void *data)
> +{
> +	int ret;
> +	struct cci_devfreq *cci_df;
> +	struct notifier_block *nb;
> +
> +	cci_df = dev_get_drvdata(devfreq->dev.parent);
> +	nb = &cci_df->nb;
> +
> +	switch (event) {
> +	case DEVFREQ_GOV_START:
> +	case DEVFREQ_GOV_RESUME:
> +		nb->notifier_call = cci_devfreq_regulator_notifier;
> +		ret = regulator_register_notifier(cci_df->proc_reg,
> +						  nb);
> +		if (ret)
> +			pr_err("%s: failed to add governor: %d\n", __func__,
> +			       ret);
> +		break;
> +
> +	case DEVFREQ_GOV_STOP:
> +	case DEVFREQ_GOV_SUSPEND:
> +		ret = regulator_unregister_notifier(cci_df->proc_reg,
> +						    nb);
> +		if (ret)
> +			pr_err("%s: failed to add governor: %d\n", __func__,
> +			       ret);
> +		break;
> +
> +	default:
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct devfreq_governor mtk_cci_devfreq_governor = {
> +	.name = "mtk_cci_vmon",
> +	.get_target_freq = mtk_cci_governor_get_target,
> +	.event_handler = mtk_cci_governor_event_handler,
> +	.immutable = true
> +};
> +
> +static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
> +				  u32 flags)
> +{
> +	int ret;
> +	struct cci_devfreq *cci_df = dev_get_drvdata(dev);
> +
> +	if (!cci_df)
> +		return -EINVAL;
> +
> +	ret = clk_set_rate(cci_df->cci_clk, *freq);
> +	if (ret) {
> +		pr_err("%s: failed cci to set rate: %d\n", __func__,
> +		       ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct devfreq_dev_profile cci_devfreq_profile = {
> +	.target = mtk_cci_devfreq_target,
> +};
> +
> +static int mtk_cci_devfreq_probe(struct platform_device *pdev)
> +{
> +	struct device *cci_dev = &pdev->dev;
> +	struct cci_devfreq *cci_df;
> +	int ret;
> +
> +	cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
> +	if (!cci_df)
> +		return -ENOMEM;
> +
> +	cci_df->cci_clk = devm_clk_get(cci_dev, "cci_clock");
> +	ret = PTR_ERR_OR_ZERO(cci_df->cci_clk);
> +	if (ret) {
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(cci_dev, "failed to get clock for CCI: %d\n",
> +				ret);
> +		return ret;
> +	}
> +	cci_df->proc_reg = devm_regulator_get_optional(cci_dev, "proc");
> +	ret = PTR_ERR_OR_ZERO(cci_df->proc_reg);
> +	if (ret) {
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(cci_dev, "failed to get regulator for CCI: %d\n",
> +				ret);
> +		return ret;
> +	}
> +
> +	ret = dev_pm_opp_of_add_table(cci_dev);
> +	if (ret) {
> +		dev_err(cci_dev, "Fail to init CCI OPP table: %d\n", ret);
> +		return ret;
> +	}
> +
> +	platform_set_drvdata(pdev, cci_df);
> +
> +	cci_df->devfreq = devm_devfreq_add_device(cci_dev,
> +						  &cci_devfreq_profile,
> +						  "mtk_cci_vmon",
> +						  NULL);
> +	if (IS_ERR(cci_df->devfreq)) {
> +		ret = PTR_ERR(cci_df->devfreq);
> +		dev_err(cci_dev, "cannot create cci devfreq device:%d\n", ret);
> +		dev_pm_opp_of_remove_table(cci_dev);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const __maybe_unused struct of_device_id
> +	mediatek_cci_devfreq_of_match[] = {
> +	{ .compatible = "mediatek,mt8183-cci" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, mediatek_cci_devfreq_of_match);
> +
> +static struct platform_driver cci_devfreq_driver = {
> +	.probe	= mtk_cci_devfreq_probe,
> +	.driver = {
> +		.name = "mediatek-cci-devfreq",
> +		.of_match_table = of_match_ptr(mediatek_cci_devfreq_of_match),
> +	},
> +};
> +
> +static int __init mtk_cci_devfreq_init(void)
> +{
> +	int ret;
> +
> +	ret = devfreq_add_governor(&mtk_cci_devfreq_governor);
> +	if (ret) {
> +		pr_err("%s: failed to add governor: %d\n", __func__, ret);
> +		return ret;
> +	}
> +
> +	ret = platform_driver_register(&cci_devfreq_driver);
> +	if (ret)
> +		devfreq_remove_governor(&mtk_cci_devfreq_governor);
> +
> +	return ret;
> +}
> +module_init(mtk_cci_devfreq_init)

Use module_platform_driver

> +
> +static void __exit mtk_cci_devfreq_exit(void)
> +{
> +	int ret;
> +
> +	ret = devfreq_remove_governor(&mtk_cci_devfreq_governor);
> +	if (ret)
> +		pr_err("%s: failed to remove governor: %d\n", __func__, ret);
> +
> +	platform_driver_unregister(&cci_devfreq_driver);
> +}
> +module_exit(mtk_cci_devfreq_exit)
> +
> +MODULE_DESCRIPTION("Mediatek CCI devfreq driver");
> +MODULE_AUTHOR("Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>");
> +MODULE_LICENSE("GPL v2");
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
