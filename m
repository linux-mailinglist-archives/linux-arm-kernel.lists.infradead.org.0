Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793FD97041
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 05:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvX4co8PANUahLGwl3Dz804dIr56fG03cCQhNkIzzFY=; b=Pko1YNkRI+FF3l
	vkgy3bwoTuZj9CKvzOYUJTwc3yhH7E6U7m+NoONMkA250uHnefEKbN4h17sYaqD94fgPUJqehRBE3
	5cnfpKDzF62dyI/M0B2DF2IGhvapP5zTCaEcSepqQYp753rqaFyh+AnOwKVubR/aRIh70G7VRe5KA
	+uZ/FAoIC/T4M3W8S5osqutyGhPUzZYmqxS041V3pqih/rO/ATvgGhLAgLYKttx3ng6vPnZQcZYqs
	IZng/Vj5DCLciHORdu38DFi1E3KhLjpwp3od+r+hW9h1ToDiTOs78rEWYler5az+Xfh8WrfVkWzNH
	l6zYlm/RIqBNZ+PmiIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0HE6-0005Xn-NA; Wed, 21 Aug 2019 03:23:59 +0000
Received: from mail-db5eur01on062c.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::62c]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0HDJ-0005XO-BC
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 03:23:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KA6l9oksfdodztgb/eM5GGJ7DrCS/v9kw4aGr8G30VPvr3RlUQqMOmqQkSRBDZcXNt0bM9ZVs5vMzQ7k03JbnFn0Ph2yHqq5QvURqgtbW2j8idIZhStti8tYVOsOIuPgFC8l4RfiIC9F4ffOjMiMD64KvKoASf0Qq5EKaCPQf1oBnRjMLc2AZct891hQNPyIZjYqWKBP9O6bBP/EFYz+E9IVBrY1QZyPjctFgqL72VxIBExbr8KQXcslnxbaaqidMSYp/OfPiPiDJzbIjLeyuw3SNGEgbw91fX2bzLUwy/dhvBRqbOHIP7+HDUC6i15QTTbEbfpe9fK7Wu4Th4h2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8INZdbMIuxRP1RCe+Q65qVraJ2MHvIO9xEjiXyDDipI=;
 b=Y33AwDMRDckrO/Fiq3Asdt/Ebd1vkTZUj7cfd87ZTZPentPISncKDwZ7+XFx8IlGWIBtAS11Mu7DuhFD4Lz4Abw6h3uOBcOo1yt+joT8oqzJYDWZ1KLjXaSG/745JxaZ91+FrUXU2Q0R7WfR9gzqD0h75BoZnQMJeYbm3iejEMCOvX/I0gkMZUtLAwISmuHu/8JnXVkAwlb2rfsDbpTpbN1daekFA2N/cidcnVTaNBSTVtmCkWPNQeFoyP/zoxrV6P8BiCKA24BFwusVQiqEuwQdEDEFD1h2KyjduavDSB1B0kmh79dTv5nxCvraDTybYpTpbyV/F51PWcZhDRy4nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8INZdbMIuxRP1RCe+Q65qVraJ2MHvIO9xEjiXyDDipI=;
 b=ls+SDhXvWVpQTGV4ijMt7HR2b5O7HGqUX0RI9qDn/5ouiOj13zmFE9NFFFUbuewE5hROKghFP20qI79Yq7xYjDGV40ZLJ862E3CVLvfyZYS24mtrFSfL7h6Eyq0sySPbRWJ0iQLEwXvgmwt+MjF8r4iTP/jBgG4lWC5+SqeX8Wo=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.240.82) by
 DB8PR04MB5804.eurprd04.prod.outlook.com (20.179.9.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 03:23:06 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::ad63:e8df:f0c2:7246]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::ad63:e8df:f0c2:7246%2]) with mapi id 15.20.2178.020; Wed, 21 Aug 2019
 03:23:06 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: RE: [PATCH v6 3/3] soc: fsl: add RCPM driver
Thread-Topic: [PATCH v6 3/3] soc: fsl: add RCPM driver
Thread-Index: AQHVV853EP8qJNnbnUCw+G/991XNcacE7dtA
Date: Wed, 21 Aug 2019 03:23:06 +0000
Message-ID: <DB8PR04MB6826A9EA5D9232D55FE8BDEFF1AA0@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20190821031537.46824-1-ran.wang_1@nxp.com>
 <20190821031537.46824-3-ran.wang_1@nxp.com>
In-Reply-To: <20190821031537.46824-3-ran.wang_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 413aca58-0f71-4ea6-ffe0-08d725e6e230
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB5804; 
x-ms-traffictypediagnostic: DB8PR04MB5804:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB58049D261CF499F0550B3779F1AA0@DB8PR04MB5804.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(199004)(189003)(45080400002)(81156014)(5024004)(6116002)(54906003)(14444005)(8676002)(8936002)(81166006)(6436002)(3846002)(4326008)(6246003)(55016002)(99286004)(6306002)(229853002)(71200400001)(7416002)(9686003)(71190400001)(53936002)(256004)(7696005)(74316002)(76176011)(316002)(52536014)(33656002)(966005)(66066001)(76116006)(305945005)(66946007)(6916009)(7736002)(66556008)(86362001)(5660300002)(64756008)(26005)(66446008)(6506007)(53546011)(14454004)(476003)(11346002)(186003)(478600001)(25786009)(486006)(2906002)(102836004)(446003)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5804;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sBuhLcASpbyTPSC+WjDyKaG+B03SidyovRvsRnmyIQqLKVMREeXtkIhfq4KwnRC+kgXKD9PkzxxUiRc9U1Vxc2wZmQSzDMGcAhCoprNXuJQP8DL3lv89WAEFi3YGMbPDQW1k887EJpe/fALeRy6BuAVA1LMpXWEe97P4LOJ09bOrxDrrvMSPBTOdmxNGZ80rmJSbLHK/I5RmT7eIzq9RgLy6+9vnkAXlz3JHse3vp1JK9U5PX2eAs27ZFLEo+XzN5uX50p3uO/43ZZ7hoFhWHG6JX4QzEmEOTxJZqOazHtwUyK9qVKssnYJSulxfoBWCCernIB3u6UExP2sy1kgG8+1Hxkx7wS1+JaTMqnDOB83RtKUa8SHuuR0JBsnEZsQYnZzL9tFn+9yVg4t3Av9KHbqGqope3qvNbRBFAhGA69M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 413aca58-0f71-4ea6-ffe0-08d725e6e230
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 03:23:06.2351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kUZUFl29B54CP3zUT3z2Kf2J/RG2h5klhxcK8ac4Vz39J8uwlFFr+ruMyxYakCMKgoQlFEr/Y5D17AIrHCOZhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5804
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_202309_489115_407F8575 
X-CRM114-Status: GOOD (  26.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:62c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Biwen Li <biwen.li@nxp.com>,
 Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Ran Wang <ran.wang_1@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Wednesday, August 21, 2019 11:16, Ran Wang wrote:
> 
> The NXP's QorIQ Processors based on ARM Core have RCPM module (Run
> Control and Power Management), which performs system level tasks associated
> with power management such as wakeup source control.
> 
> This driver depends on PM wakeup source framework which help to collect wake
> information.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Change in v6:
> 	- Adjust related API usage to meet wakeup.c's update in patch 1/3.
> Change in v5:
> 	- Fix v4 regression of the return value of wakeup_source_get_next()
> 	didn't pass to ws in while loop.
> 	- Rename wakeup_source member 'attached_dev' to 'dev'.
> 	- Rename property 'fsl,#rcpm-wakeup-cells' to '#fsl,rcpm-wakeup-cells'.
> 	please see
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kern
> el.org%2Fpatchwork%2Fpatch%2F1101022%2F&amp;data=02%7C01%7Cran.wa
> ng_1%40nxp.com%7C27cff523c0a54ce89afe08d725e5987b%7C686ea1d3bc2b4
> c6fa92cd99c5c301635%7C0%7C0%7C637019540358555022&amp;sdata=4YYGD
> lwvB%2B4Y1436c1bOUzFyjYEqTU5HbiUFv5%2FCxi0%3D&amp;reserved=0
> 
> Change in v4:
> 	- Remove extra ',' in author line of rcpm.c
> 	- Update usage of wakeup_source_get_next() to be less confusing to
> the reader, code logic remain the same.
> 
> Change in v3:
> 	- Some whitespace ajdustment.
> 
> Change in v2:
> 	- Rebase Kconfig and Makefile update to latest mainline.
> 
>  drivers/soc/fsl/Kconfig  |   8 +++
>  drivers/soc/fsl/Makefile |   2 +
>  drivers/soc/fsl/rcpm.c   | 128
> +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 138 insertions(+)
>  create mode 100644 drivers/soc/fsl/rcpm.c
> 
> diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig index
> f9ad8ad..4918856 100644
> --- a/drivers/soc/fsl/Kconfig
> +++ b/drivers/soc/fsl/Kconfig
> @@ -40,4 +40,12 @@ config DPAA2_CONSOLE
>  	  /dev/dpaa2_mc_console and /dev/dpaa2_aiop_console,
>  	  which can be used to dump the Management Complex and AIOP
>  	  firmware logs.
> +
> +config FSL_RCPM
> +	bool "Freescale RCPM support"
> +	depends on PM_SLEEP
> +	help
> +	  The NXP QorIQ Processors based on ARM Core have RCPM module
> +	  (Run Control and Power Management), which performs all device-level
> +	  tasks associated with power management, such as wakeup source
> control.
>  endmenu
> diff --git a/drivers/soc/fsl/Makefile b/drivers/soc/fsl/Makefile index
> 71dee8d..28c6dac 100644
> --- a/drivers/soc/fsl/Makefile
> +++ b/drivers/soc/fsl/Makefile
> @@ -6,6 +6,8 @@
>  obj-$(CONFIG_FSL_DPAA)                 += qbman/
>  obj-$(CONFIG_QUICC_ENGINE)		+= qe/
>  obj-$(CONFIG_CPM)			+= qe/
> +obj-$(CONFIG_FSL_RCPM)			+= rcpm.o
>  obj-$(CONFIG_FSL_GUTS)			+= guts.o
>  obj-$(CONFIG_FSL_MC_DPIO) 		+= dpio/
>  obj-$(CONFIG_DPAA2_CONSOLE)		+= dpaa2-console.o
> +obj-y += ftm_alarm.o
> diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c new file mode
> 100644 index 0000000..82c0ad5
> --- /dev/null
> +++ b/drivers/soc/fsl/rcpm.c
> @@ -0,0 +1,128 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// rcpm.c - Freescale QorIQ RCPM driver // // Copyright 2019 NXP // //
> +Author: Ran Wang <ran.wang_1@nxp.com>
> +
> +#include <linux/init.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/of_address.h>
> +#include <linux/slab.h>
> +#include <linux/suspend.h>
> +#include <linux/kernel.h>
> +
> +#define RCPM_WAKEUP_CELL_MAX_SIZE	7
> +
> +struct rcpm {
> +	unsigned int	wakeup_cells;
> +	void __iomem	*ippdexpcr_base;
> +	bool		little_endian;
> +};
> +
> +static int rcpm_pm_prepare(struct device *dev) {
> +	struct device_node	*np = dev->of_node;
> +	struct wakeup_source	*ws;
> +	struct rcpm		*rcpm;
> +	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
> +	int i, ret, idx;
> +
> +	rcpm = dev_get_drvdata(dev);
> +	if (!rcpm)
> +		return -EINVAL;
> +
> +	/* Begin with first registered wakeup source */
> +	ws = wakeup_source_get_start(&idx);

Since I have mad some change in this version, could you please take a look on this.
If it's OK to you, I would re-add 'Acked-by: Pavel Machek <pavel@ucw.cz> '

> +	do {
> +		/* skip object which is not attached to device */
> +		if (!ws->dev)
> +			continue;
> +
> +		ret = device_property_read_u32_array(ws->dev,
> +				"fsl,rcpm-wakeup", value, rcpm->wakeup_cells
> + 1);
> +
> +		/*  Wakeup source should refer to current rcpm device */
> +		if (ret || (np->phandle != value[0])) {
> +			dev_info(dev, "%s doesn't refer to this rcpm\n",
> +					ws->name);
> +			continue;
> +		}
> +
> +		for (i = 0; i < rcpm->wakeup_cells; i++) {
> +			/* We can only OR related bits */
> +			if (value[i + 1]) {
> +				if (rcpm->little_endian) {
> +					tmp = ioread32(rcpm->ippdexpcr_base
> + i * 4);
> +					tmp |= value[i + 1];
> +					iowrite32(tmp, rcpm->ippdexpcr_base
> + i * 4);
> +				} else {
> +					tmp = ioread32be(rcpm-
> >ippdexpcr_base + i * 4);
> +					tmp |= value[i + 1];
> +					iowrite32be(tmp, rcpm-
> >ippdexpcr_base + i * 4);
> +				}
> +			}
> +		}
> +	} while (ws = wakeup_source_get_next(ws));
> +
> +	wakeup_source_get_stop(idx);

And here.

Thank you.

Regards
Ran
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops rcpm_pm_ops = {
> +	.prepare =  rcpm_pm_prepare,
> +};
> +
> +static int rcpm_probe(struct platform_device *pdev) {
> +	struct device	*dev = &pdev->dev;
> +	struct resource *r;
> +	struct rcpm	*rcpm;
> +	int ret;
> +
> +	rcpm = devm_kzalloc(dev, sizeof(*rcpm), GFP_KERNEL);
> +	if (!rcpm)
> +		return -ENOMEM;
> +
> +	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!r)
> +		return -ENODEV;
> +
> +	rcpm->ippdexpcr_base = devm_ioremap_resource(&pdev->dev, r);
> +	if (IS_ERR(rcpm->ippdexpcr_base)) {
> +		ret =  PTR_ERR(rcpm->ippdexpcr_base);
> +		return ret;
> +	}
> +
> +	rcpm->little_endian = device_property_read_bool(
> +			&pdev->dev, "little-endian");
> +
> +	ret = device_property_read_u32(&pdev->dev,
> +			"#fsl,rcpm-wakeup-cells", &rcpm->wakeup_cells);
> +	if (ret)
> +		return ret;
> +
> +	dev_set_drvdata(&pdev->dev, rcpm);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id rcpm_of_match[] = {
> +	{ .compatible = "fsl,qoriq-rcpm-2.1+", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, rcpm_of_match);
> +
> +static struct platform_driver rcpm_driver = {
> +	.driver = {
> +		.name = "rcpm",
> +		.of_match_table = rcpm_of_match,
> +		.pm	= &rcpm_pm_ops,
> +	},
> +	.probe = rcpm_probe,
> +};
> +
> +module_platform_driver(rcpm_driver);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
