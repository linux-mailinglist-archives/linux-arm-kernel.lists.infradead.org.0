Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3153A19B96D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 02:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/bHF5O8eEbhnPeRQTsUpYM4AFWvxzgZjyJg6G3N0GU=; b=YR8Ks0zHY3UYal
	fnpJpMgd8Mym2izTWd35+O00hvRaj66DhQ1wR523RT3Ri18FPeo2UU8lO3Ork7CBTtq9X9qgSwP11
	nKlJ62OU+UJ8cujMpGKIFR+gzNsw1wt0i8JqlihVVZvDkWeTco26VUea87a3hqEX3KVJztejRuM8B
	F2QY5qJcPmjwaKoyVpaJPNGeuqmGJJAPnSwLB2Moyx5aRg9/FeKjDIdl0UxakRIEmtimDRFFoznvA
	rGTTtZqKUABSiT9djTEddZdcBexvKnFnd2WY9qK6+NSq3MjSDUqXmDYAkoIb59gxm+P+tQ6iz7NXc
	e8oMP+63jNrAXFAQY/YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJnTs-0000JZ-Kr; Thu, 02 Apr 2020 00:13:12 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJnTk-0000IQ-Bn
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 00:13:06 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200402001259epoutp01adf5915a32c6fcaff3b127ff98ea9219~B2E_FqosZ1007910079epoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Apr 2020 00:12:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200402001259epoutp01adf5915a32c6fcaff3b127ff98ea9219~B2E_FqosZ1007910079epoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585786379;
 bh=HTlTzDrUOZMGWtTFmq5h9wjUi33RAp6L3LRI/myBP/w=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=N+cCgPQgTsRXUCl/fzVAUpL7KWem/Ok2WE7ae526AVqWcOiWyJh8+OrD7K+rC9TLU
 NrN4qhFTm2TfICUXwXf+3+oP8EFhmeBK0TD8B/LRxb3Xlx7NKe6oBsu8tac4ArphBK
 9Ddon2IdWcHCTRi5IieOKpfC6oyw7WesjwxJCGas=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200402001254epcas1p39c6c94d32e571360c332edb394bcbc80~B2E40MKUI3104931049epcas1p3s;
 Thu,  2 Apr 2020 00:12:54 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 48t3Rl4BqPzMqYkX; Thu,  2 Apr
 2020 00:12:51 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 05.8B.04140.30E258E5; Thu,  2 Apr 2020 09:12:51 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200402001251epcas1p45f8e03f6cf6239a5f4ac713aa36b101f~B2E120rIb1559215592epcas1p4A;
 Thu,  2 Apr 2020 00:12:51 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200402001251epsmtrp20c7b6d1e2715fdc380466d1c9230382a~B2E11mxvZ0522405224epsmtrp21;
 Thu,  2 Apr 2020 00:12:51 +0000 (GMT)
X-AuditID: b6c32a36-412c19c00000102c-ed-5e852e03597d
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 97.F6.04024.20E258E5; Thu,  2 Apr 2020 09:12:50 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200402001250epsmtip2349d96b3871485671a790c44ce4ee618~B2E1bMQJN0076400764epsmtip2-;
 Thu,  2 Apr 2020 00:12:50 +0000 (GMT)
Subject: Re: [PATCH v2 2/8] PM / devfreq: Add generic imx bus scaling driver
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <31da2f90-e1a2-610a-2d9c-b4e41a8aceb6@samsung.com>
Date: Thu, 2 Apr 2020 09:21:55 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <ebbde0287f3644644cf8db5b449338b0758db1b5.1585751281.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0wTZxjO17teD0O3WwH5VqfWm1kGCdACxc9F3MZwuWz80WSJJMtSvMBZ
 CP2VXmv8kW2MWYbN3CBLp1SpTgcrFZyUrlQ3BoNOg5uwqlQiM5gUE5mIm7VDcbK1Pcz473mf
 93l/PO+Xj8RkfRI5WWe0chYjq6eJVXhgJKcgD8u3a5UzHevRtNsOUPyXiwB1Xv4ZoAfOcxiK
 Tk8B1N9WjY6FxsSot28KR4cGfATyOs/iaHz8jARdapyTIM+Nv8TIF42IkWOxC0OxgyGAOq6F
 RSjiaRWj2JkoQOGL29DURx4CnRr7iUDtD5wYsg+EJMgx/IRAS5FeHN32Z6OOkxEM9caZ19Yy
 TocHMN3ubsDcm7RLmCMNYZw57rMxPu8Bgvk98gPB9H39IdM7HxQxnz9RMosjWcxnfi9gYr51
 Gum79VtqObaGsyg4Y7Wpps6oK6XffqfqjSp1iVKVp9qMNtEKI2vgSunyCk3em3X6xFFoxS5W
 b0tQGpbn6YKtWywmm5VT1Jp4aynNmWv05s3mfJ418DajLr/aZHhFpVQWqhPCHfW1PfFGsflR
 8e65Jg/RABZyHSCNhFQxHFnyAAdYRcqoIICHg3cwIbgPYOz6HZEQ/A3glfN24mlJYCFKCIkB
 APv+6ZEIwT0AZ091gaQqg6qAY51/4kmcSe2DLZcaU60wKiyB062TomSCoHLh4O3JVNtnqQ1w
 4mE0VSyltsJ/+5sTXUkSpzbCpfadSTqL2g5HA/uXJc/B0baZVP80Sgu9/vYUxqhseH3mmEjA
 62H/3aOYsHWQhB8PbRNwObzv7lrmM+AfF/wSActhbH5g2eU+2DUaSrmEVDOA/sHfxEKiCA52
 fCFK7oZROfDbcwUCvQGefdwOhLnPwPn4p+KkBFJS2NwkEyQvwis3b4gE/Dw8+ckBogXQrhVu
 XCscuFY4cP0/7DjAvWA1Z+YNOo5XmQtXvrYPpD5MbkkQnBirGAYUCeh0qWLnfq1MzO7i9xiG
 ASQxOlN6pDxBSWvYPXs5i6nKYtNz/DBQJ27dismzqk2J72e0VqnUhUVFRahYVaJWqehsqfOa
 XiujdKyVq+c4M2d5Wici0+QN4HA0J7gp+J1myKD5saDidBMvfy9etv3Lt6b4sgs75uZvzT5y
 TtTPzt2lyjDr1ZwTr5IR1+Wv1unSV6/VnV50P+55eaHUFuj+PrPSsWbClTEqDa053xnOjBc2
 uh1XA+PqofK9DZUf3Dz4QvOhppb0jf3vty04gtrdla9/c8v20sNx+lca52tZVS5m4dn/AIVq
 BAJGBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRzGeXfOzo7i7DRvr6aZQ8wGmYLYG5hIKJ1CzL6ERsyGnlRyU3bU
 NKFMMnSQ2QeVeYdU1vI6xXlJJS9FiorWlqVpOTORaYWOmanlNgK//Xj+z4/ny5/EBDVcDzJF
 lsHIZZJUIWGPdw0LvU9zAgrEgb3vz6LFmgKATONjADXOjAK0VdqLIcPiHEBaZQKqHZnkovaO
 ORyV92sIpC7twdHUVBsPTeQbeUj1+RcXaQx6LlLsPMfQ5uMRgBo+THOQXvWUizbbDABNj0Wi
 uQcqAr2YfEWg6q1SDBX0j/CQYmiPQPv6dhytdrqhhmd6DLWb6HAvulShAnRTTROgf8wW8OjK
 vGmcrtNk0hp1EUHP618SdEf9fbp9o5tDP9kLpHeGXejiTjWgNzXHY/jX7UMTmdSULEZ+Juym
 fXKzKZ+b/js42/hIReQBs0gB7EhIBcMus4FQAHtSQPUBqFcO8GwHd1g2PYopAHnATnB4mLV1
 1gFsVs4Qlo4TFQUnG3/iFnamcuHuyhvMUsIoHQ8av9dxbMYSgF9NA1aDoERwcHXWykcoH6jb
 NgAL86kw+FdbyLOs4ZQv3K++ZYldqGuwp97AsVWOwrfKZeuYHSWG6s5qK2PUSbhbM4PZ2A1+
 Wq7l2NgbatersBLgVHFIrzikVBxSKg4pdQBXA3cmnZUmSdmg9CAZcyeAlUjZTFlSQEKaVAOs
 XyM61Q3e1ccPAYoEQgd+dvJDsYAryWJzpEMAkpjQmV8ZcRDxEyU5dxl5Wrw8M5Vhh8AxEhe6
 8b/JXscJqCRJBnObYdIZ+f8rh7TzyANXQhyLY/tA4XpKruTihN8aKQ7fa0lN9F8zR8bp4WiC
 XHdi5dJoUPXyhW2fqs4bUf4Tni1firoXydaSe7GuC+fMEcYMV2UCsSqkt325Hz1dFjIu+/Vf
 yWLDmfOD447RG39CRDG+oWXCelWr1muJWXRwuxqpJby95uOU0bryNCHOJkuCRJiclfwDmTYY
 NDEDAAA=
X-CMS-MailID: 20200402001251epcas1p45f8e03f6cf6239a5f4ac713aa36b101f
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200401143322epcas1p17ddfd5b7782014ed491e3ceda7549f07
References: <cover.1585751281.git.leonard.crestez@nxp.com>
 <CGME20200401143322epcas1p17ddfd5b7782014ed491e3ceda7549f07@epcas1p1.samsung.com>
 <ebbde0287f3644644cf8db5b449338b0758db1b5.1585751281.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_171304_586585_BF0AB2C1 
X-CRM114-Status: GOOD (  32.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

As I replied on v1 mail thread, it needs a dt-binding document
under Documentation/devicetree/bindings/devfreq.

And I add one comment below. Except for them, looks good to me.

On 4/1/20 11:33 PM, Leonard Crestez wrote:
> Add initial support for dynamic frequency switching on pieces of the imx
> interconnect fabric.
> 
> All this driver does is set a clk rate based on an opp table, it does
> not map register areas.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Tested-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
>  drivers/devfreq/Kconfig   |   8 +++
>  drivers/devfreq/Makefile  |   1 +
>  drivers/devfreq/imx-bus.c | 139 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 148 insertions(+)
>  create mode 100644 drivers/devfreq/imx-bus.c
> 
> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
> index 0b1df12e0f21..37dc40d1fcfb 100644
> --- a/drivers/devfreq/Kconfig
> +++ b/drivers/devfreq/Kconfig
> @@ -89,10 +89,18 @@ config ARM_EXYNOS_BUS_DEVFREQ
>  	  Each memory bus group could contain many memoby bus block. It reads
>  	  PPMU counters of memory controllers by using DEVFREQ-event device
>  	  and adjusts the operating frequencies and voltages with OPP support.
>  	  This does not yet operate with optimal voltages.
>  
> +config ARM_IMX_BUS_DEVFREQ
> +	tristate "i.MX Generic Bus DEVFREQ Driver"
> +	depends on ARCH_MXC || COMPILE_TEST
> +	select DEVFREQ_GOV_USERSPACE
> +	help
> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
> +	  allows adjusting NIC/NOC frequency.
> +
>  config ARM_IMX8M_DDRC_DEVFREQ
>  	tristate "i.MX8M DDRC DEVFREQ Driver"
>  	depends on (ARCH_MXC && HAVE_ARM_SMCCC) || \
>  		(COMPILE_TEST && HAVE_ARM_SMCCC)
>  	select DEVFREQ_GOV_SIMPLE_ONDEMAND
> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
> index 3eb4d5e6635c..3ca1ad0ecb97 100644
> --- a/drivers/devfreq/Makefile
> +++ b/drivers/devfreq/Makefile
> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
>  obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>  obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>  
>  # DEVFREQ Drivers
>  obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
> +obj-$(CONFIG_ARM_IMX_BUS_DEVFREQ)	+= imx-bus.o
>  obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>  obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>  obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>  obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>  
> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
> new file mode 100644
> index 000000000000..7915d7277349
> --- /dev/null
> +++ b/drivers/devfreq/imx-bus.c
> @@ -0,0 +1,139 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/devfreq.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/pm_opp.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +struct imx_bus {
> +	struct devfreq_dev_profile profile;
> +	struct devfreq *devfreq;
> +	struct clk *clk;
> +};
> +
> +static int imx_bus_target(struct device *dev,
> +		unsigned long *freq, u32 flags)
> +{
> +	struct imx_bus *priv = dev_get_drvdata(dev);

It is not used. Need to remove it.

> +	struct dev_pm_opp *new_opp;
> +	int ret;
> +
> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
> +	if (IS_ERR(new_opp)) {
> +		ret = PTR_ERR(new_opp);
> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
> +		return ret;
> +	}
> +	dev_pm_opp_put(new_opp);
> +
> +	return dev_pm_opp_set_rate(dev, *freq);
> +}
> +
> +static int imx_bus_get_cur_freq(struct device *dev, unsigned long *freq)
> +{
> +	struct imx_bus *priv = dev_get_drvdata(dev);
> +
> +	*freq = clk_get_rate(priv->clk);
> +
> +	return 0;
> +}
> +
> +static int imx_bus_get_dev_status(struct device *dev,
> +		struct devfreq_dev_status *stat)
> +{
> +	struct imx_bus *priv = dev_get_drvdata(dev);
> +
> +	stat->busy_time = 0;
> +	stat->total_time = 0;
> +	stat->current_frequency = clk_get_rate(priv->clk);
> +
> +	return 0;
> +}
> +
> +static void imx_bus_exit(struct device *dev)
> +{
> +	dev_pm_opp_of_remove_table(dev);
> +}
> +
> +static int imx_bus_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct imx_bus *priv;
> +	const char *gov = DEVFREQ_GOV_USERSPACE;
> +	int ret;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	/*
> +	 * Fetch the clock to adjust but don't explicitly enable.
> +	 *
> +	 * For imx bus clock clk_set_rate is safe no matter if the clock is on
> +	 * or off and some peripheral side-buses might be off unless enabled by
> +	 * drivers for devices on those specific buses.
> +	 *
> +	 * Rate adjustment on a disabled bus clock just takes effect later.
> +	 */
> +	priv->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(priv->clk)) {
> +		ret = PTR_ERR(priv->clk);
> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
> +		return ret;
> +	}
> +	platform_set_drvdata(pdev, priv);
> +
> +	ret = dev_pm_opp_of_add_table(dev);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to get OPP table\n");
> +		return ret;
> +	}
> +
> +	priv->profile.polling_ms = 1000;
> +	priv->profile.target = imx_bus_target;
> +	priv->profile.get_dev_status = imx_bus_get_dev_status;
> +	priv->profile.exit = imx_bus_exit;
> +	priv->profile.get_cur_freq = imx_bus_get_cur_freq;
> +	priv->profile.initial_freq = clk_get_rate(priv->clk);
> +
> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
> +						gov, NULL);
> +	if (IS_ERR(priv->devfreq)) {
> +		ret = PTR_ERR(priv->devfreq);
> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
> +		goto err;
> +	}
> +
> +	return 0;
> +
> +err:
> +	dev_pm_opp_of_remove_table(dev);
> +	return ret;
> +}
> +
> +static const struct of_device_id imx_bus_of_match[] = {
> +	{ .compatible = "fsl,imx8m-noc", },
> +	{ .compatible = "fsl,imx8m-nic", },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, imx_bus_of_match);
> +
> +static struct platform_driver imx_bus_platdrv = {
> +	.probe		= imx_bus_probe,
> +	.driver = {
> +		.name	= "imx-bus-devfreq",
> +		.of_match_table = of_match_ptr(imx_bus_of_match),
> +	},
> +};
> +module_platform_driver(imx_bus_platdrv);
> +
> +MODULE_DESCRIPTION("Generic i.MX bus frequency scaling driver");
> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
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
