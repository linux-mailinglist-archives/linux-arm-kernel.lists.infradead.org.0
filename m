Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819671B6B06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u22LlivioQK/LoSZlnG8xD+YEmZGKhcRed6O8iFuZ3U=; b=SsTuQGILfENEuE
	83svveWk5u8Aa1BGpkMpz1Rn32hUtHKA9BYSuKflNVv/Q6v7hduXXuH/bOVprRMVoI6O/OHXAxzmL
	kL7tlWLFdTrPrJnxQI7eQZzbZz/hCmAxmE72n/nQM1HnCkJxJr/csZG5ZTcsV83ti80wMqdkVdKWC
	2PKo/qYv+jGUdx7R4vBLBJG+uzJFMrcdqrofiPcXuz7/QLv/6EVmn+5dZN5N+4i4Vr6QCfQH8UxmU
	F/x9E5r6r+HrfYhN4r5cA2n28WKv5lC32x6y/N0bfx1LKQ3X1XSEyOdRBA8eHwnThB52W+bJfmdzP
	SHeGN7gVb9GfNHtP4gLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRni3-0003l2-8p; Fri, 24 Apr 2020 02:04:55 +0000
Received: from mail-eopbgr10081.outbound.protection.outlook.com ([40.107.1.81]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRnhs-0003jA-Ty
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:04:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LPWs/08zmAKLPzNYXOIWpcYnmYvQxHa4P0di4Hkkmje83wrmw3e/NkHzU2oHHD7uiMM81sDmTmqZANdS+qf+fSBsCFl1ziWqzqFs9A7X2WrSO/Vt0XVqP9v+uKf5X+70VNBpFE4dwRIPMlb9MpN8IVG68Dq36MmhebFeMmmAXPfS++g8U2anUIyKq90J23o6aCiZ3m9Ix0h/xyA5GaJguNSB/Y59InFjHpydaMxDNVxhhCXVv0EDXErqQlMorqQeo86lSv1vsHSXNuxu6EnfhIv/218C7reEfRlGRHZQEYR7/XZ4xCfKa/JBlJXaHb+qopHySLZLBTKw0+SlfklrIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o5/O25PMYvWem3hG6U9D0FnJcPQLJH4Ge0ZPriNYhss=;
 b=LgCp5KyWiXDIo3MIy+Zd4qQ/0wVybqGVswHqBIh5Jgu7F7mw1MZSmigbhlCbBUcVVqeEStlfv2S6fltPdksP70mbLpvCEV0Pz0mPuoSPgSEghQHsvT3ND2rq/8pD+3FF2jIXD6yXB1evRPRG5/VCU3I14iKoVt7SvhE8RJ2psEXXmUIdjcOoCR4L5Nw2p6OfoIgqGFELg/GSGrVG0ucxgGGmoApxBuRGm6Hc7YlrjD9Fglet9nqyjtanxRsQlGKhefFnKGTIt1/54xMlbLksZKfb032+MdIQA9Kc6I2My45lWqmCCc1b/OkTRBcCAXZifBnjAb0RqxWA63iYrHg62Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o5/O25PMYvWem3hG6U9D0FnJcPQLJH4Ge0ZPriNYhss=;
 b=EEFT1TjZ9XXDkBzJJmirgQYIU8U2Vrnv3VPq2ZQV70WlvtBBgO7Vq5nSpf7GO02jZS2VuhVQu2EM6yMTeze2TP7jCtIfrMo9BSZ5LEvq+ED1SxiKreJzSR7S7IwEojHJ4nXkEWQ9RRNkPs6Sx2v5M7qhMWd6xRiAwzmu4Rc/c2Y=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6328.eurprd04.prod.outlook.com (2603:10a6:20b:b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 02:04:41 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 02:04:41 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT38Z8g88FkqQ0uX8uLlRjqzhqiGeivAgAAPRACAADPS4IAAuu8AgAANZXA=
Date: Fri, 24 Apr 2020 02:04:41 +0000
Message-ID: <AM6PR04MB4966A484AA8E480D7E479F9E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276030B2D59423AF0FD3769388D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966169A7CB00C084FEA601980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276083583D788E2685B78C3F88D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB276083583D788E2685B78C3F88D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cc1af426-180b-4854-4047-08d7e7f3da1b
x-ms-traffictypediagnostic: AM6PR04MB6328:|AM6PR04MB6328:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6328AB5EC00A296665ED076B80D00@AM6PR04MB6328.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(81156014)(8676002)(64756008)(8936002)(71200400001)(86362001)(66476007)(2906002)(5660300002)(76116006)(478600001)(66946007)(4326008)(33656002)(55016002)(7696005)(110136005)(52536014)(54906003)(9686003)(66556008)(316002)(26005)(186003)(6506007)(44832011)(66446008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vm4YD73gyRI7Hdv9J+bYATY6ruiwBt5lWeEuEWPB6vHatcjDWRyKi/Pb7e6ilG8blXL8PdxP096Q8LXNx+tTsH8ZGcvhiNZiFpdrS7ED0tOjT6lJ+bhy9sUmCOk/NOYQkQtW8DeHgk4JbZYY88NDpMRUplCwIsg1ToEB0xtuV+SPv23Ze3o9/IRTKyRHoJxLJMHEOtFNMWZjhkJrxYkgvpHSmoQJTjnuZW2yALeKjrWv5ZTLYyU1fzBMhvVbBwevPs9/iLjoXDR6MHmJZmSCGZFw38gtPjvxgGwTSWD8MtK3apeTNloE6TIi3mddheDGbR7R2nvBIfuqka85xgCWGwbRj4YNh1BJCFHivUWW9IuMQ5tSWpGCrEB2SiWGWioN1V5MIqiGptAlSBLqxBX4rUBe46UIl8jFxpmJut6+fzeeF7CqG/Hla7c7SRGQ/eyi
x-ms-exchange-antispam-messagedata: ZO52Y+rjrh79/semyNyjB+I9sEDVmnTlDBgkyt+4iLjm5thdfomdwLUNuNi94du5aNo47XU3m26ioe+kQ2abfp91SAb+TTBBczWRwRFrLPT40F7tItBsaTXpZM34n+LS4TiI4ETcG0B9vYSCz9tfiA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc1af426-180b-4854-4047-08d7e7f3da1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:04:41.7045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ooHm3ZGW90DvK1SXuUJBrJapw1gJAw86LJKXwfrtWabEYV1DNGTDnd6eDekvrKrP1kehItWsb44tiNENhWPYdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_190445_143508_6324CDD3 
X-CRM114-Status: GOOD (  28.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.81 listed in list.dnswl.org]
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
> Sent: Friday, April 24, 2020 9:12 AM
> >
> > > From: Peng Fan <peng.fan@nxp.com>
> > > Sent: Thursday, April 23, 2020 6:57 PM
> > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > Sent: Thursday, April 23, 2020 3:00 PM
> > > > >
> > > > > Add resource management API, when we have multiple partition
> > > > > running together, resources not owned to current partition
> > > > > should not be
> > used.
> > > > >
> > > > > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > Right now I'm still not quite understand if we really need this.
> > > > As current resource is bound to power domains, if it's not owned
> > > > by one specific SW execution environment, power on will also fail.
> > > > Can you clarify if any exceptions?
> > >
> > > There will be lots of failures when boot Linux domu if no check.
> > >
> >
> > What kind of features did you mean?
> > Could you clarify a bit more? I'd like to understand this issue better.
> 
> When supporting hypervisor with dual Linux running, 1st Linux and the 2nd
> Linux will have their own dedicated resources.
> 
> If no resource check, that means 1st/2nd Linux will register all the resources,
> then both will see fail logs when register resources not owned to itself.
> 
> Same to partitioned m4 case.
> 
> Would it be better without the failure log?
> 

Is it power up failure?
If yes, it's expected because we actually use power up to check if resources are owned by
this partition. It functions the same as calling resource check API.
That's current design.

Or it's other failures? Log?

Regards
Aisheng

> Thanks,
> Peng.
> 
> 
> >
> > Regards
> > Aisheng
> >
> > > Thanks,
> > > Peng.
> > >
> > > >
> > > > Regards
> > > > Aisheng
> > > >
> > > > > ---
> > > > >  drivers/firmware/imx/Makefile       |  2 +-
> > > > >  drivers/firmware/imx/rm.c           | 40
> > +++++++++++++++++++++
> > > > >  include/linux/firmware/imx/sci.h    |  1 +
> > > > >  include/linux/firmware/imx/svc/rm.h | 69
> > > > > +++++++++++++++++++++++++++++++++++++
> > > > >  4 files changed, 111 insertions(+), 1 deletion(-)  create mode
> > > > > 100644 drivers/firmware/imx/rm.c  create mode 100644
> > > > > include/linux/firmware/imx/svc/rm.h
> > > > >
> > > > > diff --git a/drivers/firmware/imx/Makefile
> > > > > b/drivers/firmware/imx/Makefile index 08bc9ddfbdfb..17ea3613e142
> > > > > 100644
> > > > > --- a/drivers/firmware/imx/Makefile
> > > > > +++ b/drivers/firmware/imx/Makefile
> > > > > @@ -1,4 +1,4 @@
> > > > >  # SPDX-License-Identifier: GPL-2.0
> > > > >  obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
> > > > > -obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
> > > > > +obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o rm.o
> > > > >  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> > > > > diff --git a/drivers/firmware/imx/rm.c
> > > > > b/drivers/firmware/imx/rm.c new file mode 100644 index
> > > > > 000000000000..7b0334de5486
> > > > > --- /dev/null
> > > > > +++ b/drivers/firmware/imx/rm.c
> > > > > @@ -0,0 +1,40 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0+
> > > > > +/*
> > > > > + * Copyright 2020 NXP
> > > > > + *
> > > > > + * File containing client-side RPC functions for the RM service.
> > > > > +These
> > > > > + * function are ported to clients that communicate to the SC.
> > > > > + */
> > > > > +
> > > > > +#include <linux/firmware/imx/svc/rm.h>
> > > > > +
> > > > > +struct imx_sc_msg_rm_rsrc_owned {
> > > > > +	struct imx_sc_rpc_msg hdr;
> > > > > +	u16 resource;
> > > > > +} __packed __aligned(4);
> > > > > +
> > > > > +/*
> > > > > + * This function check @resource is owned by current partition
> > > > > +or not
> > > > > + *
> > > > > + * @param[in]     ipc         IPC handle
> > > > > + * @param[in]     resource    resource the control is associated
> > with
> > > > > + *
> > > > > + * @return Returns 0 for success and < 0 for errors.
> > > > > + */
> > > > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > > > > +resource) {
> > > > > +	struct imx_sc_msg_rm_rsrc_owned msg;
> > > > > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > > +
> > > > > +	hdr->ver = IMX_SC_RPC_VERSION;
> > > > > +	hdr->svc = IMX_SC_RPC_SVC_RM;
> > > > > +	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
> > > > > +	hdr->size = 2;
> > > > > +
> > > > > +	msg.resource = resource;
> > > > > +
> > > > > +	imx_scu_call_rpc(ipc, &msg, true);
> > > > > +
> > > > > +	return hdr->func;
> > > > > +}
> > > > > +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> > > > > diff --git a/include/linux/firmware/imx/sci.h
> > > > > b/include/linux/firmware/imx/sci.h
> > > > > index 17ba4e405129..b5c5a56f29be 100644
> > > > > --- a/include/linux/firmware/imx/sci.h
> > > > > +++ b/include/linux/firmware/imx/sci.h
> > > > > @@ -15,6 +15,7 @@
> > > > >
> > > > >  #include <linux/firmware/imx/svc/misc.h>  #include
> > > > > <linux/firmware/imx/svc/pm.h>
> > > > > +#include <linux/firmware/imx/svc/rm.h>
> > > > >
> > > > >  int imx_scu_enable_general_irq_channel(struct device *dev);
> > > > > int imx_scu_irq_register_notifier(struct notifier_block *nb);
> > > > > diff --git a/include/linux/firmware/imx/svc/rm.h
> > > > > b/include/linux/firmware/imx/svc/rm.h
> > > > > new file mode 100644
> > > > > index 000000000000..fc6ea62d9d0e
> > > > > --- /dev/null
> > > > > +++ b/include/linux/firmware/imx/svc/rm.h
> > > > > @@ -0,0 +1,69 @@
> > > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > > > +/*
> > > > > + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> > > > > + * Copyright 2017-2019 NXP
> > > > > + *
> > > > > + * Header file containing the public API for the System
> > > > > +Controller
> > > > > +(SC)
> > > > > + * Power Management (PM) function. This includes functions for
> > > > > +power state
> > > > > + * control, clock control, reset control, and wake-up event control.
> > > > > + *
> > > > > + * RM_SVC (SVC) Resource Management Service
> > > > > + *
> > > > > + * Module for the Resource Management (RM) service.
> > > > > + */
> > > > > +
> > > > > +#ifndef _SC_RM_API_H
> > > > > +#define _SC_RM_API_H
> > > > > +
> > > > > +#include <linux/firmware/imx/sci.h>
> > > > > +
> > > > > +/*
> > > > > + * This type is used to indicate RPC RM function calls.
> > > > > + */
> > > > > +enum imx_sc_rm_func {
> > > > > +	IMX_SC_RM_FUNC_UNKNOWN = 0,
> > > > > +	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
> > > > > +	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
> > > > > +	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
> > > > > +	IMX_SC_RM_FUNC_GET_DID = 26,
> > > > > +	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
> > > > > +	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
> > > > > +	IMX_SC_RM_FUNC_GET_PARTITION = 5,
> > > > > +	IMX_SC_RM_FUNC_SET_PARENT = 6,
> > > > > +	IMX_SC_RM_FUNC_MOVE_ALL = 7,
> > > > > +	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
> > > > > +	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
> > > > > +	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
> > > > > +	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
> > > > > +	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
> > > > > +	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS = 12,
> > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
> > > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
> > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
> > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
> > > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
> > > > > +	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
> > > > > +	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
> > > > > +	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
> > > > > +	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
> > > > > +	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
> > > > > +	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
> > > > > +	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
> > > > > +	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
> > > > > +	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
> > > > > +	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
> > > > > +	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
> > > > > +	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
> > > > > +	IMX_SC_RM_FUNC_DUMP = 27,
> > > > > +};
> > > > > +
> > > > > +#if IS_ENABLED(CONFIG_IMX_SCU)
> > > > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > > > > +resource); #else static inline bool
> > > > > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource) {
> > > > > +	return true;
> > > > > +}
> > > > > +#endif
> > > > > +#endif
> > > > > --
> > > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
