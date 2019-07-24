Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3E872518
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 05:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhrH4RzHMHfuEcqTc89WwzXOUKdcL79h2R1xTQuOwzM=; b=pppk2Oy/KlOzeF
	ysZNgBl1924L+F8LD3tcc/brkhkOSGMK9EbIOz6B42x6t1QqRyiFdtp3Y1QmnYJicADjdJLgFGGEh
	hU0IagC2P8yjyqHTSM5ECpafLbbFHJ5JwwkrrtGT3ghx3/bD/X/R+3uquI5WNv+IM2QcjSLUew82z
	mVWJWDA2BT8sC+DBxDWBzTU+3xThVsEHbOpV5DAm9Zgblaor7BHPvmSYoWn8TeXkPJ4k4btJecnxt
	U/zdd0UJxBqp6oD2lxH7NXgjG+q0sl+01KNR9bY1eIcAcHyoQYRTOYWWQ130eoFYzPV/XtNdPUDNA
	IvfcRuVh4xcoDjbSFDyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq7cH-0002qg-7F; Wed, 24 Jul 2019 03:06:57 +0000
Received: from mail-eopbgr150075.outbound.protection.outlook.com
 ([40.107.15.75] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq7c3-0002pZ-Eh
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 03:06:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gc0t4/vgLuTbnn+q2yt4zQNfl7SY70gjuF9lf+2ftWWbXitjvwBw+JDq+gx6fwYBoSI3D7nKUjarOpwG9yzv7iMwdKz05hPqx+kdm3sMpEi2PWQli22wtoOxtFWvv5yvTIKNx7epm3p+0kfh6IFl8ADjX1tM8zqHggpgZkTaUUP6J6U29LjyU6tBFuKMM3RjKLWoRND/I1fauwITCCEXM3/4E9SsYYJj+f5oWzEE/jywtfLv1ZnlqRFqTo58thHf/GNocGb81SMQR71pV4gKhvNHpNK2QPV9TWasIHqPFMdqIDQpVvtwzWFDqgNsg0xMtwXfPuFDFMWOIVyiVAj3TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NpnA/kDHrnqKDIH0xV7iVmTZtnTpKZl0UMNOaNrC4Rs=;
 b=XYTrMTzn4Ychi72rHGR2Z/FAXd3cS87Q76b6uKQ/6kMKXL/ia0ATSZqUKQRiSG0LBDCsAROoPFLeBtrcBN0CjNFIzNJxyEFSfOn5VVf02PbAaWPTkO/fT9olX9n+PhT5Qkx6+FHe4i91T6bKWhyZAv0GVJ2XJoKfki/ufKyiD1vRg70Z+lCtjtSElvto4R0rpJIdlY2DlHdv6AYShw39TXgMzORpsAwQAjpWT3QFW0OxXVVGbgMsY+cGune0E+TTc4TIXsKJv9u9LkhTobh3UoFWEbzXIKApuehLdPTnmuXDw2LRoQacV1vUJvf25wTSDgUVcnXn9omcyCLWv2bDVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NpnA/kDHrnqKDIH0xV7iVmTZtnTpKZl0UMNOaNrC4Rs=;
 b=EGS0nJNZVlwHME7NtBUrkvilAB4eERVaZLaPpzhOPpNQIiILTZpGOqjQEOL2+zngs+K9LF+3UkiDY1X3CZ8hKFi0DmDShYgxXFnsvmmIllDZOy5f+5qwtmgj71KHtxoLx+pMR39b9Bw1HXZDSIatJ/vM5iGG6CAa3xL/U0+sAgU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4226.eurprd04.prod.outlook.com (52.134.91.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Wed, 24 Jul 2019 03:06:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2094.011; Wed, 24 Jul 2019
 03:06:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: RE: [PATCH v3 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH v3 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVOvV+noaG+fijQkS+Volhv7SWk6bZI2cw
Date: Wed, 24 Jul 2019 03:06:36 +0000
Message-ID: <AM0PR04MB448115B329F1207A802BF24988C60@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
 <1563184103-8493-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1563184103-8493-3-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e41a1c1a-99f4-4b72-9b3c-08d70fe3f0df
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4226; 
x-ms-traffictypediagnostic: AM0PR04MB4226:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB42262F9C34D47CFF14C6DF2488C60@AM0PR04MB4226.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:525;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(396003)(366004)(189003)(199004)(53754006)(66066001)(25786009)(2501003)(2906002)(99286004)(33656002)(6246003)(7736002)(478600001)(305945005)(15650500001)(2201001)(14444005)(256004)(966005)(4326008)(76176011)(7696005)(14454004)(71190400001)(74316002)(71200400001)(44832011)(68736007)(6436002)(446003)(11346002)(476003)(486006)(186003)(26005)(102836004)(5660300002)(229853002)(6506007)(55016002)(6306002)(52536014)(6116002)(3846002)(316002)(86362001)(53936002)(110136005)(54906003)(9686003)(8936002)(81156014)(81166006)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4226;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FQHoPbcLBIkoBoiyJFiGE3PsUnoOlGnRek9tSIh9iDaE+g2miGKo8/YVnj4GkXBd70V2PnQwPcogmtkLvqqhUF3fQTneRuG7HjvLkiZqmQHWccctUxL7MHo/mDzxYPchVVTBc6lVn5QSosyzAgue2S8dmpRYN8eJ44FdUprIbirfzw9Fv4axpcMUnbp6vEiUatoAOgUPoB+b9tU64FAGfVkj6UT8JaTK/tpAPhGnJAKiE15XFoubOLqzbSm+fKcC8c6j4yiHBeUt7A1UeM4osWtYYNkGFojfcaP5hhK4kmV0dngaHklnsBPkv3uUC0M04czGt4YrTCdReyHZIJ8hoY6IwOF77/NcoHa4eupU8MpO4jdGCctz4SPatEcFgDBfhU3eqLQIKPoxp4A5nvmq49bcaDFADt7T5M/jMfZTFts=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e41a1c1a-99f4-4b72-9b3c-08d70fe3f0df
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 03:06:36.8334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_200643_633355_D8EF2499 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

> Subject: [PATCH v3 2/2] mailbox: introduce ARM SMC based mailbox

Any comments with this patch?

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> This mailbox driver implements a mailbox which signals transmitted data via
> an ARM smc (secure monitor call) instruction. The mailbox receiver is
> implemented in firmware and can synchronously return data when it returns
> execution to the non-secure world again.
> An asynchronous receive path is not implemented.
> This allows the usage of a mailbox to trigger firmware actions on SoCs which
> either don't have a separate management processor or on which such a core
> is not available. A user of this mailbox could be the SCP interface.
> 
> Modified from Andre Przywara's v2 patch
> https://lore.kernel.org/patchwork/patch/812999/
> 
> Cc: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V3:
>  Drop interrupt.
>  Introduce transports for mem/reg usage.
>  Add chan-id for mem usage.
> 
> V2:
>  Add interrupts notification support.
> 
>  drivers/mailbox/Kconfig           |   7 ++
>  drivers/mailbox/Makefile          |   2 +
>  drivers/mailbox/arm-smc-mailbox.c | 215
> ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 224 insertions(+)
>  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
> 
> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig index
> 595542bfae85..c3bd0f1ddcd8 100644
> --- a/drivers/mailbox/Kconfig
> +++ b/drivers/mailbox/Kconfig
> @@ -15,6 +15,13 @@ config ARM_MHU
>  	  The controller has 3 mailbox channels, the last of which can be
>  	  used in Secure mode only.
> 
> +config ARM_SMC_MBOX
> +	tristate "Generic ARM smc mailbox"
> +	depends on OF && HAVE_ARM_SMCCC
> +	help
> +	  Generic mailbox driver which uses ARM smc calls to call into
> +	  firmware for triggering mailboxes.
> +
>  config IMX_MBOX
>  	tristate "i.MX Mailbox"
>  	depends on ARCH_MXC || COMPILE_TEST
> diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> c22fad6f696b..93918a84c91b 100644
> --- a/drivers/mailbox/Makefile
> +++ b/drivers/mailbox/Makefile
> @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)	+= mailbox-test.o
> 
>  obj-$(CONFIG_ARM_MHU)	+= arm_mhu.o
> 
> +obj-$(CONFIG_ARM_SMC_MBOX)	+= arm-smc-mailbox.o
> +
>  obj-$(CONFIG_IMX_MBOX)	+= imx-mailbox.o
> 
>  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)	+=
> armada-37xx-rwtm-mailbox.o
> diff --git a/drivers/mailbox/arm-smc-mailbox.c
> b/drivers/mailbox/arm-smc-mailbox.c
> new file mode 100644
> index 000000000000..76a2ae11ee4d
> --- /dev/null
> +++ b/drivers/mailbox/arm-smc-mailbox.c
> @@ -0,0 +1,215 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2016,2017 ARM Ltd.
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +#include <linux/interrupt.h>
> +#include <linux/mailbox_controller.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +
> +#define ARM_SMC_MBOX_MEM_TRANS	BIT(0)
> +
> +struct arm_smc_chan_data {
> +	u32 function_id;
> +	u32 chan_id;
> +	u32 flags;
> +};
> +
> +struct arm_smccc_mbox_cmd {
> +	unsigned long a0, a1, a2, a3, a4, a5, a6, a7; };
> +
> +typedef unsigned long (smc_mbox_fn)(unsigned long, unsigned long,
> +				    unsigned long, unsigned long,
> +				    unsigned long, unsigned long,
> +				    unsigned long, unsigned long);
> +static smc_mbox_fn *invoke_smc_mbox_fn;
> +
> +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> +	struct arm_smc_chan_data *chan_data = link->con_priv;
> +	struct arm_smccc_mbox_cmd *cmd = data;
> +	unsigned long ret;
> +	u32 function_id;
> +	u32 chan_id;
> +
> +	if (chan_data->flags & ARM_SMC_MBOX_MEM_TRANS) {
> +		if (chan_data->function_id != UINT_MAX)
> +			function_id = chan_data->function_id;
> +		else
> +			function_id = cmd->a0;
> +		chan_id = chan_data->chan_id;
> +		ret = invoke_smc_mbox_fn(function_id, chan_id, 0, 0, 0, 0,
> +					 0, 0);
> +	} else {
> +		ret = invoke_smc_mbox_fn(cmd->a0, cmd->a1, cmd->a2, cmd->a3,
> +					 cmd->a4, cmd->a5, cmd->a6, cmd->a7);
> +	}
> +
> +	mbox_chan_received_data(link, (void *)ret);
> +
> +	return 0;
> +}
> +
> +static unsigned long __invoke_fn_hvc(unsigned long function_id,
> +				     unsigned long arg0, unsigned long arg1,
> +				     unsigned long arg2, unsigned long arg3,
> +				     unsigned long arg4, unsigned long arg5,
> +				     unsigned long arg6)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
> +		      arg5, arg6, &res);
> +	return res.a0;
> +}
> +
> +static unsigned long __invoke_fn_smc(unsigned long function_id,
> +				     unsigned long arg0, unsigned long arg1,
> +				     unsigned long arg2, unsigned long arg3,
> +				     unsigned long arg4, unsigned long arg5,
> +				     unsigned long arg6)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
> +		      arg5, arg6, &res);
> +	return res.a0;
> +}
> +
> +static const struct mbox_chan_ops arm_smc_mbox_chan_ops = {
> +	.send_data	= arm_smc_send_data,
> +};
> +
> +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> +	struct device *dev = &pdev->dev;
> +	struct mbox_controller *mbox;
> +	struct arm_smc_chan_data *chan_data;
> +	const char *method;
> +	bool mem_trans = false;
> +	int ret, i;
> +	u32 val;
> +
> +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> +		if (!val) {
> +			dev_err(dev, "invalid arm,num-chans value %u\n", val);
> +			return -EINVAL;
> +		}
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	if (!of_property_read_string(dev->of_node, "transports", &method)) {
> +		if (!strcmp("mem", method)) {
> +			mem_trans = true;
> +		} else if (!strcmp("reg", method)) {
> +			mem_trans = false;
> +		} else {
> +			dev_warn(dev, "invalid \"transports\" property: %s\n",
> +				 method);
> +
> +			return -EINVAL;
> +		}
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> +		if (!strcmp("hvc", method)) {
> +			invoke_smc_mbox_fn = __invoke_fn_hvc;
> +		} else if (!strcmp("smc", method)) {
> +			invoke_smc_mbox_fn = __invoke_fn_smc;
> +		} else {
> +			dev_warn(dev, "invalid \"method\" property: %s\n",
> +				 method);
> +
> +			return -EINVAL;
> +		}
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> +	if (!mbox)
> +		return -ENOMEM;
> +
> +	mbox->num_chans = val;
> +	mbox->chans = devm_kcalloc(dev, mbox->num_chans,
> sizeof(*mbox->chans),
> +				   GFP_KERNEL);
> +	if (!mbox->chans)
> +		return -ENOMEM;
> +
> +	chan_data = devm_kcalloc(dev, mbox->num_chans, sizeof(*chan_data),
> +				 GFP_KERNEL);
> +	if (!chan_data)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < mbox->num_chans; i++) {
> +		u32 function_id;
> +
> +		ret = of_property_read_u32_index(dev->of_node,
> +						 "arm,func-ids", i,
> +						 &function_id);
> +		if (ret)
> +			chan_data[i].function_id = UINT_MAX;
> +
> +		else
> +			chan_data[i].function_id = function_id;
> +
> +		chan_data[i].chan_id = i;
> +
> +		if (mem_trans)
> +			chan_data[i].flags |= ARM_SMC_MBOX_MEM_TRANS;
> +		mbox->chans[i].con_priv = &chan_data[i];
> +	}
> +
> +	mbox->txdone_poll = false;
> +	mbox->txdone_irq = false;
> +	mbox->ops = &arm_smc_mbox_chan_ops;
> +	mbox->dev = dev;
> +
> +	platform_set_drvdata(pdev, mbox);
> +
> +	ret = devm_mbox_controller_register(dev, mbox);
> +	if (ret)
> +		return ret;
> +
> +	dev_info(dev, "ARM SMC mailbox enabled with %d chan%s.\n",
> +		 mbox->num_chans, mbox->num_chans == 1 ? "" : "s");
> +
> +	return ret;
> +}
> +
> +static int arm_smc_mbox_remove(struct platform_device *pdev) {
> +	struct mbox_controller *mbox = platform_get_drvdata(pdev);
> +
> +	mbox_controller_unregister(mbox);
> +	return 0;
> +}
> +
> +static const struct of_device_id arm_smc_mbox_of_match[] = {
> +	{ .compatible = "arm,smc-mbox", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, arm_smc_mbox_of_match);
> +
> +static struct platform_driver arm_smc_mbox_driver = {
> +	.driver = {
> +		.name = "arm-smc-mbox",
> +		.of_match_table = arm_smc_mbox_of_match,
> +	},
> +	.probe		= arm_smc_mbox_probe,
> +	.remove		= arm_smc_mbox_remove,
> +};
> +module_platform_driver(arm_smc_mbox_driver);
> +
> +MODULE_AUTHOR("Andre Przywara <andre.przywara@arm.com>");
> +MODULE_DESCRIPTION("Generic ARM smc mailbox driver");
> +MODULE_LICENSE("GPL v2");

Thanks,
Peng.

> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
