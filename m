Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568791B6AB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 03:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uF5w542yCgqKURH2QHbZl3Vnd8nLAt7jSfQLfEKXGbA=; b=f8HxQS4CWVbaz0
	wj2GIZJl/yXvwyiJeaev7CJrvPoenKEoVHknHYQWhEPQlunLd/wj/n1Lv+0cVhL7Ei6dHBNDBSF32
	t5ge4fkqCL4pToOcrYwliaPQuS8B+MS3OIg2B1AWlgVrKoAliWyWqvLVAl5uwmeHqkCoviglc2GTa
	zyj7+nLNEwfqaZgqDom6hLI7YMIjYKl0OLUtsHPuMg8a1yO6wji/KR+AWKYZwOpWq1Iq3kLvmP8kz
	aM63HYBdaeAlbUvkVeHhU0NvcJtMw6sOripB02xGqyimR5koFzKQEVcLHQO5rgVK47YG8bYUO/YSM
	TASuSOWbuEL1U5KeYfhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRmsw-000336-GC; Fri, 24 Apr 2020 01:12:06 +0000
Received: from mail-vi1eur05on2055.outbound.protection.outlook.com
 ([40.107.21.55] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRmsl-000323-OE
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 01:11:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J1vZwJDlxAAMRj6rrEz02/+wyxRf9rQcKo3TQHYkHirzCXchna9bgeYmIWL5mBCzWWggcZZwE6aMiVMz6D3ZI5TMD6T4QFBnUbDoyTDfaHtgfPLiFw95sDrgjJe6l3PvdXZyO5aEH/UAKKCytfOGUDQ53CTG82TFXcEtYMAGeigkcWeXfARK68kgWVt0vys28d2gUAQ1AzVAVaBMAlfEP3Ikxtsu4ZIa1tx4bq708hZTrCk0rBtZ43dY26pTa7VIMIs2u3Eampn8XtF6cxK9xibUwSA66RzcHTq+VCI0RsZ8pDOndrVj0JEWzOA2urmk1Zf2Y90kMVzhM3gZxNhnbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61n0ODq1b1baZZ94TqWJQEw3qZ8PHUDOi80ksIOqK9s=;
 b=KjQ/7BHT4MVvMLAxaxMqdFwEctoDLyq3vUfTepIoH7gYDRmiHt6PNry+mCqAqUTjdvGTRMCMHTzb+9WKCUIChTL4UuhBT2RwDGG4Dsb94IsMF3BMA5LVDREjSmBY2ALRWuuviRU/kkAI4MZrIikaQaxml6B+qG3OZP6RVBsbcF7+KZ8lU+o29m0uJdBajPt+Rft7r6gQ9VRXc+k9vKng4VOMxEiWqMukLmBYtoFyzZ29kJuwEY/eCH8nU6lO5veEFFCoOpdcW+jIhaQts9FlYMQR5Tw3qnzZadaSUbW05Px/QSD4BoU/J6WBhmb4oIpt4YaRZwzbL6YUNNLZl000bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61n0ODq1b1baZZ94TqWJQEw3qZ8PHUDOi80ksIOqK9s=;
 b=mceXdnlb5qH1gLigpaFseFhG4f+QEnhZPQNDeNNZdcQRbbvnXRnnDEzjsNcJz2l9OttxpZ8yOqJxcBO4TZsEpx1iq3FlJPVnA/yDncAfbB9ccoPSQugg4yIoSGAvnw2V9ZnTSimBFcJNujRS4gHAOitMEnLpEangNs8bsCh7zrc=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2709.eurprd04.prod.outlook.com (2603:10a6:4:97::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 01:11:52 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 01:11:52 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT37doAjG8vSF0ywBJjXXTGn3qiGerCAgAAOdvCAADSbAIAAuXGA
Date: Fri, 24 Apr 2020 01:11:52 +0000
Message-ID: <DB6PR0402MB276083583D788E2685B78C3F88D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276030B2D59423AF0FD3769388D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966169A7CB00C084FEA601980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966169A7CB00C084FEA601980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 279e9ad2-800d-4f39-5ff3-08d7e7ec7922
x-ms-traffictypediagnostic: DB6PR0402MB2709:|DB6PR0402MB2709:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2709CE1CA3B701279342D5CE88D00@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(4326008)(66556008)(76116006)(66946007)(66446008)(66476007)(64756008)(55016002)(52536014)(9686003)(33656002)(86362001)(5660300002)(71200400001)(26005)(8936002)(81156014)(8676002)(54906003)(2906002)(110136005)(186003)(316002)(6506007)(44832011)(7696005)(478600001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0+3HKDNXPTPbGVOoCV9WujxMp0mAmHDaOty7Hbci5LvNFpfkZos+rrWdPJ50Kz4idYPJ0EmvJIFcY8YSWYNivQ03MeKCwtwHwCqjh1TTzOsrPkABCWB23ss+8sdbrAXKFE9qroIeONUV9VYsIDp+ysTXlfgBmBGAr73gMrSQvUeVigIbKi2UHRyfysEfl/1o8CfQiiGacOA4ietOEUyxXCLkxZJFpZC2tCRrkoNLXn7WiSOKAi+ABP1K7y+hg30Onhajq18TVB6kkwgaN9Hd8IeOMtmWxRdMRTwTGuMEruL6xs2zaQwoBAHM8/ZTetXAyFTlAa3jkLzxP7ihutcunlzWnQDTD8OkXPFsrncB7LKCjnbqF6ojYiaWmtpfGb3vEnakvTdfhbWokadrj0dC13Qrcbqmly5ABRkmobFkCdkZDwCOegmOE6rXS+NwP+Qz
x-ms-exchange-antispam-messagedata: KeaFio0zg2FL9i8DXiCcbW4UvsZzA29TE1uW+ZvNkN5Ikw1O1Vicgl15oOrmWMeD/q7CpByNDdmnxAmlenEOQ0VRWPgZDj9w/Fr/w87XRJNsMTlrgsmp4mURiJooH/Y9RdQCW85LnjWvj+/8HCFg0A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 279e9ad2-800d-4f39-5ff3-08d7e7ec7922
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 01:11:52.5709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9JVSxL/mYy8PyadwwuBNUp23YFuseTDP+S3PcfjlSdGoLJN+0zbOr3DF4aABwAYo18uDJtmgN+JmP2DMX6VlmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_181155_951931_EC6CED77 
X-CRM114-Status: GOOD (  26.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.55 listed in wl.mailspike.net]
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

> Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Thursday, April 23, 2020 6:57 PM
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > > Sent: Thursday, April 23, 2020 3:00 PM
> > > >
> > > > Add resource management API, when we have multiple partition
> > > > running together, resources not owned to current partition should not be
> used.
> > > >
> > > > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > >
> > > Right now I'm still not quite understand if we really need this.
> > > As current resource is bound to power domains, if it's not owned by
> > > one specific SW execution environment, power on will also fail.
> > > Can you clarify if any exceptions?
> >
> > There will be lots of failures when boot Linux domu if no check.
> >
> 
> What kind of features did you mean?
> Could you clarify a bit more? I'd like to understand this issue better.

When supporting hypervisor with dual Linux running, 1st Linux and the
2nd Linux will have their own dedicated resources.

If no resource check, that means 1st/2nd Linux will register all the
resources, then both will see fail logs when register resources not
owned to itself.

Same to partitioned m4 case.

Would it be better without the failure log?

Thanks,
Peng.


> 
> Regards
> Aisheng
> 
> > Thanks,
> > Peng.
> >
> > >
> > > Regards
> > > Aisheng
> > >
> > > > ---
> > > >  drivers/firmware/imx/Makefile       |  2 +-
> > > >  drivers/firmware/imx/rm.c           | 40
> +++++++++++++++++++++
> > > >  include/linux/firmware/imx/sci.h    |  1 +
> > > >  include/linux/firmware/imx/svc/rm.h | 69
> > > > +++++++++++++++++++++++++++++++++++++
> > > >  4 files changed, 111 insertions(+), 1 deletion(-)  create mode
> > > > 100644 drivers/firmware/imx/rm.c  create mode 100644
> > > > include/linux/firmware/imx/svc/rm.h
> > > >
> > > > diff --git a/drivers/firmware/imx/Makefile
> > > > b/drivers/firmware/imx/Makefile index 08bc9ddfbdfb..17ea3613e142
> > > > 100644
> > > > --- a/drivers/firmware/imx/Makefile
> > > > +++ b/drivers/firmware/imx/Makefile
> > > > @@ -1,4 +1,4 @@
> > > >  # SPDX-License-Identifier: GPL-2.0
> > > >  obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
> > > > -obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
> > > > +obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o rm.o
> > > >  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> > > > diff --git a/drivers/firmware/imx/rm.c b/drivers/firmware/imx/rm.c
> > > > new file mode 100644 index 000000000000..7b0334de5486
> > > > --- /dev/null
> > > > +++ b/drivers/firmware/imx/rm.c
> > > > @@ -0,0 +1,40 @@
> > > > +// SPDX-License-Identifier: GPL-2.0+
> > > > +/*
> > > > + * Copyright 2020 NXP
> > > > + *
> > > > + * File containing client-side RPC functions for the RM service.
> > > > +These
> > > > + * function are ported to clients that communicate to the SC.
> > > > + */
> > > > +
> > > > +#include <linux/firmware/imx/svc/rm.h>
> > > > +
> > > > +struct imx_sc_msg_rm_rsrc_owned {
> > > > +	struct imx_sc_rpc_msg hdr;
> > > > +	u16 resource;
> > > > +} __packed __aligned(4);
> > > > +
> > > > +/*
> > > > + * This function check @resource is owned by current partition or
> > > > +not
> > > > + *
> > > > + * @param[in]     ipc         IPC handle
> > > > + * @param[in]     resource    resource the control is associated
> with
> > > > + *
> > > > + * @return Returns 0 for success and < 0 for errors.
> > > > + */
> > > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > > > +resource) {
> > > > +	struct imx_sc_msg_rm_rsrc_owned msg;
> > > > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > +
> > > > +	hdr->ver = IMX_SC_RPC_VERSION;
> > > > +	hdr->svc = IMX_SC_RPC_SVC_RM;
> > > > +	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
> > > > +	hdr->size = 2;
> > > > +
> > > > +	msg.resource = resource;
> > > > +
> > > > +	imx_scu_call_rpc(ipc, &msg, true);
> > > > +
> > > > +	return hdr->func;
> > > > +}
> > > > +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> > > > diff --git a/include/linux/firmware/imx/sci.h
> > > > b/include/linux/firmware/imx/sci.h
> > > > index 17ba4e405129..b5c5a56f29be 100644
> > > > --- a/include/linux/firmware/imx/sci.h
> > > > +++ b/include/linux/firmware/imx/sci.h
> > > > @@ -15,6 +15,7 @@
> > > >
> > > >  #include <linux/firmware/imx/svc/misc.h>  #include
> > > > <linux/firmware/imx/svc/pm.h>
> > > > +#include <linux/firmware/imx/svc/rm.h>
> > > >
> > > >  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> > > > imx_scu_irq_register_notifier(struct notifier_block *nb); diff
> > > > --git a/include/linux/firmware/imx/svc/rm.h
> > > > b/include/linux/firmware/imx/svc/rm.h
> > > > new file mode 100644
> > > > index 000000000000..fc6ea62d9d0e
> > > > --- /dev/null
> > > > +++ b/include/linux/firmware/imx/svc/rm.h
> > > > @@ -0,0 +1,69 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > > +/*
> > > > + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> > > > + * Copyright 2017-2019 NXP
> > > > + *
> > > > + * Header file containing the public API for the System
> > > > +Controller
> > > > +(SC)
> > > > + * Power Management (PM) function. This includes functions for
> > > > +power state
> > > > + * control, clock control, reset control, and wake-up event control.
> > > > + *
> > > > + * RM_SVC (SVC) Resource Management Service
> > > > + *
> > > > + * Module for the Resource Management (RM) service.
> > > > + */
> > > > +
> > > > +#ifndef _SC_RM_API_H
> > > > +#define _SC_RM_API_H
> > > > +
> > > > +#include <linux/firmware/imx/sci.h>
> > > > +
> > > > +/*
> > > > + * This type is used to indicate RPC RM function calls.
> > > > + */
> > > > +enum imx_sc_rm_func {
> > > > +	IMX_SC_RM_FUNC_UNKNOWN = 0,
> > > > +	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
> > > > +	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
> > > > +	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
> > > > +	IMX_SC_RM_FUNC_GET_DID = 26,
> > > > +	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
> > > > +	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
> > > > +	IMX_SC_RM_FUNC_GET_PARTITION = 5,
> > > > +	IMX_SC_RM_FUNC_SET_PARENT = 6,
> > > > +	IMX_SC_RM_FUNC_MOVE_ALL = 7,
> > > > +	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
> > > > +	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
> > > > +	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
> > > > +	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
> > > > +	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
> > > > +	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS = 12,
> > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
> > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
> > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
> > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
> > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
> > > > +	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
> > > > +	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
> > > > +	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
> > > > +	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
> > > > +	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
> > > > +	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
> > > > +	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
> > > > +	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
> > > > +	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
> > > > +	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
> > > > +	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
> > > > +	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
> > > > +	IMX_SC_RM_FUNC_DUMP = 27,
> > > > +};
> > > > +
> > > > +#if IS_ENABLED(CONFIG_IMX_SCU)
> > > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > > > +resource); #else static inline bool
> > > > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource) {
> > > > +	return true;
> > > > +}
> > > > +#endif
> > > > +#endif
> > > > --
> > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
