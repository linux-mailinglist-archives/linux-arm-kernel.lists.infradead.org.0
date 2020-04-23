Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C571B5D3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuGmVGar2Cjv0NA08luZf5RyVslhjdibG5z3jtGk6ks=; b=Tl/ad8IrNK5SfT
	RKVbGiSjjG3qTH3a/N8gnxrkZVZBzRF0jrNUov1waU8wIHdwcKhXqAJvKaMRlVswDuYsFZfi5iu2b
	YrZ6wvmVyk5xVaGAurRqZTsb+uwbNQp9y7pE/1Uii5zbe1PwGd6nBXOuZqD7WIIz7h1jfW+hglx6+
	7CND7sNrEY0Pcxh8geHyQTsRSgI9jv3j8xCsiLIddqPxDwAJFnzzwLjTOH9QCNRIxfljJpAqatfRi
	zalotfw8ZThBKXxHJMS4y+CchZK9ZQXW4CzgBqUMHFuHXrHa5GKtL4oiXuGRq+gfYCXF5R7qspfum
	23niJ7eIqn8aBRofZ+qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcTF-0003Aa-49; Thu, 23 Apr 2020 14:04:53 +0000
Received: from mail-db8eur05on2043.outbound.protection.outlook.com
 ([40.107.20.43] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcT3-000391-Kj
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:04:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFF9bHlv682Wm0nAzsgBtDj1vWFJ9EgyVJp2PT62jvBrv/B1E6Xw7usVannnMtv/H6BATIRjFLggDRXbOzv2ql61QDiNKkMbtAJXrFUbNi1crmLCguhUMzI22PrD9IytLWJL6c9IZt+OPXgjaISe1RNf/F7PnLm8KvMK/KSi5BI2eEGKHxMausynHQUk+VnLoQ5uNM/1MYXAusqstP9riVqlQgs2sPYp547RQ6iGxBWDkElWZfAgUL7uZq0GgXEwVQpHIWCNPfPSqjT1KExahnMkgJx+OD4cOmxhEuo1f5BrrJq/am2e9cqSYvfE5vqnew3QikBzqlupZ0GAuv7Enw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRe0Vl6e3fYbcWX06M5HAEOmvqk/aiY6g0c0IoPv+D0=;
 b=fzuXssN1lOp/FwRTy5O2d/rpjJ3Su85frOUoiXDFvVmTSW5K6ZHknK07YD7NdIa4IFSRT+zdXW1EJ4b390ukJNqjQtzWJCaljOgs1TS0755HYCwYpPdiEn33eEu7tzdAqngF3ysUad+VMS6gNAPZnOP5OniV1L7ogHj5f+ULupBlTCR0B6s3N+C1hlj9SUQ+W14a54br3mk8secRReEpVpimwpLCUA5HePcWpcJafi609wwsrE1mcDI4WhsRSwdVH1gDLbXwVnG2wrglTjiZRzBGKPbDOrZm7mrQLsU94ipxNsKdKbDTfqpFQPJkGF4SwnbUQ835JNdSQW6ppMpFeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRe0Vl6e3fYbcWX06M5HAEOmvqk/aiY6g0c0IoPv+D0=;
 b=SiM2fOEcxJ3YCf5I202EFkEuVkpmST+s0ZHNzsblZw5ZEph3wM+oDF4PyswYY7Hd+jBR+yb9skglDMVBx/k4g0Q6b6Kxdw0hgmwjWE8Tg69YaLrkPjhoc9GDfnopuG703AUrjr52DjOdOC5a++DVkoapVD6Pjys87woScYxHnIA=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB3960.eurprd04.prod.outlook.com (2603:10a6:209:3f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 14:04:36 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 14:04:36 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT38Z8g88FkqQ0uX8uLlRjqzhqiGeivAgAAPRACAADPS4A==
Date: Thu, 23 Apr 2020 14:04:36 +0000
Message-ID: <AM6PR04MB4966169A7CB00C084FEA601980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276030B2D59423AF0FD3769388D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB276030B2D59423AF0FD3769388D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b68fb112-d8d3-4206-98b3-08d7e78f41dc
x-ms-traffictypediagnostic: AM6PR04MB3960:|AM6PR04MB3960:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB39606919BDA4547BD8A7C5A680D30@AM6PR04MB3960.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(110136005)(316002)(76116006)(54906003)(4326008)(52536014)(44832011)(33656002)(186003)(66946007)(5660300002)(55016002)(9686003)(66476007)(66446008)(64756008)(66556008)(86362001)(71200400001)(8936002)(2906002)(8676002)(478600001)(26005)(6506007)(81156014)(7696005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jEGISpq9ABZVG67I+6dLlIWLIn/uY/uT0tDXCK00/Uc2PGCGBzcJUvu4GuMuMxHGCMs8IystY/7Lw97BVSmg9Zo4aN1PiNHqPvqoAXW/VD50e0UZYdAZDDDe9Wyk+HHNK11QLD6uUsSSM3MqGnX4tKn/ijD/b/32gBxBXaI0vKUCHKawrhWGStH9/NvHBF0Eokis48eMBTqlQESrP6BRJF9jF62k6aKSjE22djd46cZBRYAS8dfvrEtNBxwYRLCYjPnb1hA8xPHOzl1eYzM/n7H5sN12Cmpzk5+6On+Sf1S2+66mKbYWJwdD3TD3lFoIAmCU70ojh22EhpsVt/3TJUCLNibTZMbkXUQRcUAG96upGWHGmG1VmeVDa6x7wJRE5IzrC6fHXOocjC88pGlmFrGJANysra/cuUiqqsUBPTU2psbOBhBxul7XINeOOqed
x-ms-exchange-antispam-messagedata: EQ+TkoaMGzyqFi4+G+pRC5qgYyVIUv/oPzJnzt3CgM2ZAm5qABUlLzhiufh9707NWediCvwoaAxuIVfOXeuspG/Hn92EpGdTQgyt5wUQWcnWLReJubNy1I2f/BJr9uNqa2Sk57mmKsrWyOqi/XvIxw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b68fb112-d8d3-4206-98b3-08d7e78f41dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 14:04:36.6931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L3VokFAKyDhLG++N/6bGIV2AhvgN/ZluBXoy4G6gHgbiSCPNEvySxSlMEilRggsICswRDmwz+UgEd+6eCUeSjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB3960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_070441_811774_30073482 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, April 23, 2020 6:57 PM
> > > From: Peng Fan <peng.fan@nxp.com>
> > > Sent: Thursday, April 23, 2020 3:00 PM
> > >
> > > Add resource management API, when we have multiple partition running
> > > together, resources not owned to current partition should not be used.
> > >
> > > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >
> > Right now I'm still not quite understand if we really need this.
> > As current resource is bound to power domains, if it's not owned by
> > one specific SW execution environment, power on will also fail.
> > Can you clarify if any exceptions?
> 
> There will be lots of failures when boot Linux domu if no check.
> 

What kind of features did you mean? 
Could you clarify a bit more? I'd like to understand this issue better.

Regards
Aisheng

> Thanks,
> Peng.
> 
> >
> > Regards
> > Aisheng
> >
> > > ---
> > >  drivers/firmware/imx/Makefile       |  2 +-
> > >  drivers/firmware/imx/rm.c           | 40 +++++++++++++++++++++
> > >  include/linux/firmware/imx/sci.h    |  1 +
> > >  include/linux/firmware/imx/svc/rm.h | 69
> > > +++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 111 insertions(+), 1 deletion(-)  create mode
> > > 100644 drivers/firmware/imx/rm.c  create mode 100644
> > > include/linux/firmware/imx/svc/rm.h
> > >
> > > diff --git a/drivers/firmware/imx/Makefile
> > > b/drivers/firmware/imx/Makefile index 08bc9ddfbdfb..17ea3613e142
> > > 100644
> > > --- a/drivers/firmware/imx/Makefile
> > > +++ b/drivers/firmware/imx/Makefile
> > > @@ -1,4 +1,4 @@
> > >  # SPDX-License-Identifier: GPL-2.0
> > >  obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
> > > -obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
> > > +obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o rm.o
> > >  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> > > diff --git a/drivers/firmware/imx/rm.c b/drivers/firmware/imx/rm.c
> > > new file mode 100644 index 000000000000..7b0334de5486
> > > --- /dev/null
> > > +++ b/drivers/firmware/imx/rm.c
> > > @@ -0,0 +1,40 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * Copyright 2020 NXP
> > > + *
> > > + * File containing client-side RPC functions for the RM service.
> > > +These
> > > + * function are ported to clients that communicate to the SC.
> > > + */
> > > +
> > > +#include <linux/firmware/imx/svc/rm.h>
> > > +
> > > +struct imx_sc_msg_rm_rsrc_owned {
> > > +	struct imx_sc_rpc_msg hdr;
> > > +	u16 resource;
> > > +} __packed __aligned(4);
> > > +
> > > +/*
> > > + * This function check @resource is owned by current partition or
> > > +not
> > > + *
> > > + * @param[in]     ipc         IPC handle
> > > + * @param[in]     resource    resource the control is associated with
> > > + *
> > > + * @return Returns 0 for success and < 0 for errors.
> > > + */
> > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > > +resource) {
> > > +	struct imx_sc_msg_rm_rsrc_owned msg;
> > > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > +
> > > +	hdr->ver = IMX_SC_RPC_VERSION;
> > > +	hdr->svc = IMX_SC_RPC_SVC_RM;
> > > +	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
> > > +	hdr->size = 2;
> > > +
> > > +	msg.resource = resource;
> > > +
> > > +	imx_scu_call_rpc(ipc, &msg, true);
> > > +
> > > +	return hdr->func;
> > > +}
> > > +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> > > diff --git a/include/linux/firmware/imx/sci.h
> > > b/include/linux/firmware/imx/sci.h
> > > index 17ba4e405129..b5c5a56f29be 100644
> > > --- a/include/linux/firmware/imx/sci.h
> > > +++ b/include/linux/firmware/imx/sci.h
> > > @@ -15,6 +15,7 @@
> > >
> > >  #include <linux/firmware/imx/svc/misc.h>  #include
> > > <linux/firmware/imx/svc/pm.h>
> > > +#include <linux/firmware/imx/svc/rm.h>
> > >
> > >  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> > > imx_scu_irq_register_notifier(struct notifier_block *nb); diff --git
> > > a/include/linux/firmware/imx/svc/rm.h
> > > b/include/linux/firmware/imx/svc/rm.h
> > > new file mode 100644
> > > index 000000000000..fc6ea62d9d0e
> > > --- /dev/null
> > > +++ b/include/linux/firmware/imx/svc/rm.h
> > > @@ -0,0 +1,69 @@
> > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > +/*
> > > + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> > > + * Copyright 2017-2019 NXP
> > > + *
> > > + * Header file containing the public API for the System Controller
> > > +(SC)
> > > + * Power Management (PM) function. This includes functions for
> > > +power state
> > > + * control, clock control, reset control, and wake-up event control.
> > > + *
> > > + * RM_SVC (SVC) Resource Management Service
> > > + *
> > > + * Module for the Resource Management (RM) service.
> > > + */
> > > +
> > > +#ifndef _SC_RM_API_H
> > > +#define _SC_RM_API_H
> > > +
> > > +#include <linux/firmware/imx/sci.h>
> > > +
> > > +/*
> > > + * This type is used to indicate RPC RM function calls.
> > > + */
> > > +enum imx_sc_rm_func {
> > > +	IMX_SC_RM_FUNC_UNKNOWN = 0,
> > > +	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
> > > +	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
> > > +	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
> > > +	IMX_SC_RM_FUNC_GET_DID = 26,
> > > +	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
> > > +	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
> > > +	IMX_SC_RM_FUNC_GET_PARTITION = 5,
> > > +	IMX_SC_RM_FUNC_SET_PARENT = 6,
> > > +	IMX_SC_RM_FUNC_MOVE_ALL = 7,
> > > +	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
> > > +	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
> > > +	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
> > > +	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
> > > +	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
> > > +	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS = 12,
> > > +	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
> > > +	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
> > > +	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
> > > +	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
> > > +	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
> > > +	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
> > > +	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
> > > +	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
> > > +	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
> > > +	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
> > > +	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
> > > +	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
> > > +	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
> > > +	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
> > > +	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
> > > +	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
> > > +	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
> > > +	IMX_SC_RM_FUNC_DUMP = 27,
> > > +};
> > > +
> > > +#if IS_ENABLED(CONFIG_IMX_SCU)
> > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > > +resource); #else static inline bool
> > > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource) {
> > > +	return true;
> > > +}
> > > +#endif
> > > +#endif
> > > --
> > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
