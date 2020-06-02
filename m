Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AD61EB644
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 09:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ioGMaXZwdDgbl9CpvBYCxMMR3Rkl2VSSCuiOd5vmUS4=; b=jKur4msNZU7g3l
	shD5ETOBp/IxpfuswL5Plz8lTv+mp0IRwGEIoBCz4wbzgBsy04j/4NFi9aJBH3RVE2w91Mv4URmZR
	RFk35ZFafdP/5E8zk/cZDjh45Omv3lQSjo3Uwm1kHwMB7BmGqJXKdY7/6+A1rFunUcERmbcTyWshd
	jFq20KqXJSdXH+JdxEs1hnyBs5sheMpTTqAR+YNXqLGyLQ+eISS0jguXJ+VcIe4b21BkbyEiYQNrU
	4mbsgSCwQVyWUSCubyWBo66a9B/MPLlr/TFp5YAsQX7XZvbyy4qYqqD6ccP95mPsrC/FcN1r/sno4
	aKAFue39vLf60mmM07Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg16L-0005is-3i; Tue, 02 Jun 2020 07:12:45 +0000
Received: from mail-eopbgr70082.outbound.protection.outlook.com ([40.107.7.82]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg16E-0005ht-3N
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 07:12:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e3EfUZMDoslAjrFNJKCAt9s1lKoXbkxz1z0c/J6JfbCQ/KHU4Zx1XWV9ZTrIdJB+qG9rkqB6vgD5qgCV7IxDKnwGEG0vQ/EAL5Wa3VVk/0+ZSTyVjBm57qXamTBmnzcCAuNgUrG5BkuNEFPvek0BRf6xJ0dPn0OwkuW4YjweR7UuRMeDE/VKKbgo4D6jEtdaK7jFCx90pGjxL0H7aUjSnNMfB6tVyIpdkJTBU7AlEIGQaqLA/bANdPGWifbJfe+elg9VgAwXGVMPnkIE4EdgGAxBTd4j7LIS4MuYY7nYPtEBFCTCkLULgoqAqk+JGv/Jx/PHOnWlGwH/mBbHz0zalA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsxmZ/YLu7JJW2OouJhks77DKqu4qeSXkNgNvYah7g8=;
 b=in3xcik2E72JX6jR9VyK0Ddk4monPpRZVlr3xRvs+O9Yrv9pTrFM21f9vTlMBFlw6IjxNzFBEdnHiJU7LVH4+gF++7LxwJE8Yv7rQJzUSznmIVbAFpBS6cveu+sJ1zJG3PPpKeUk2K1wssW9Hkb7+Nvn50ozaOunfC0Mt1qRXSUID8fWFOYNq79nqCCQnkTGKt7XwISna+9389GKOiKV3iZMOZ5uYJBde+zVNeLkEnTko+vFSoVvaSFe/GbwkutDmrFm/88K3YMcg2e7p6+THNmjXlQ5Dh7lFsd0LuCmpM4k6wjQ0HnUPvegQ0FwpuP4OLwK1exLde628s87C9fSZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsxmZ/YLu7JJW2OouJhks77DKqu4qeSXkNgNvYah7g8=;
 b=msSkVLst3vKF1CkOoUJpOHRXpEOn0//aR1kGpWtFC6vV4RrKfU3yiHzhs1vGdQqUVcSrwWHc2HudZob9eK0X0KmHnGwDB+v6yqs3znisyxNgXOkBcCWhYGIFVPj5VdruwF6TSFIb/SGDs0dgLVYZrgajvXhmrO9B0Q9R0QhjINo=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5061.eurprd04.prod.outlook.com (2603:10a6:20b:9::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.18; Tue, 2 Jun
 2020 07:12:32 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3045.024; Tue, 2 Jun 2020
 07:12:32 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT38Z8g88FkqQ0uX8uLlRjqzhqjE34aAgAAp6oCAAB4oMA==
Date: Tue, 2 Jun 2020 07:12:32 +0000
Message-ID: <AM6PR04MB49669AFB17E0FC1ABB6C6994808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966DA95F44FA63CDEF7E4F5808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB2760C2AC0CAEF7D8EEB1CA49888B0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB2760C2AC0CAEF7D8EEB1CA49888B0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 66ecf813-ec98-46ee-9ae0-08d806c451bd
x-ms-traffictypediagnostic: AM6PR04MB5061:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB506106AD07C1D7BFF755E4F7808B0@AM6PR04MB5061.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yQ/cV9MjgVbMJF3OCu7o8nm53ED8/T5tG3Oq4yJaWvr9lwZjgy+M8btZdXWabWFpegF6csTIGmf35LHxDkbwO7AcjaCj29T4nCqCTMYVJVLd3+anDhMi9rqDzEKCUMRCdGWCP9lDxV+vl6zaZEMvP76721EA/Or4OOQ6G2Fm76GoV0aUgYWH56Fll6nJYrc67j8WyMmGAbwWExx+BgdRF7DiMeOZLVADHzOuY40ddN8HQEh7TMriJJN5NwxjIFXVzEFXn9w+5Zvhjb7gj/3JrR7IXgDhIgeoFEtFmJjfMFR39NOU8oIqWAeqvtrTq0YAA8MEDjpewJ5Bl8qgk1G5og==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(7696005)(478600001)(52536014)(9686003)(110136005)(66946007)(2906002)(53546011)(8676002)(55016002)(6506007)(33656002)(44832011)(8936002)(54906003)(26005)(316002)(83380400001)(5660300002)(4326008)(76116006)(64756008)(66476007)(66556008)(66446008)(186003)(71200400001)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 6miIeCzGxVv4JbW5TdY/hG9Ne15J2fsJGh6UEBAb2NxP9fvEzjjQu3rkAAc2N9MxEpSFrq4s5Xp5V9TMPWanBndKHaXX7ahsz4Fc9PqxLRUsN9T6o+CfG84LGaWLydgQuScd9PDXkqgmA8gjDyTNZVKYEZR1JYnCwc0lDNqZbR2pauSAC+ItBxcLQpP/LSsD7xD2YcawZwWpt3HYsvvcm5HRsTGgPKcrxfcCjLeFbx4RYUMoz/VUIrbLOGX+3Y4O+TkrG8EWAPp/FgIc6gLvHjBhikcbL3b+YKcR29MJVZjbnYMyVv5ainQyaxwT/H+k7S96Tge3nN7y3JbBh9sva6kl03Dd3GQIq/aNkKMA0aHAqc01qtjH4RA3ICuJzJFEbyyhXFMv8EWxBPhcIiTxauhSlHR3SOlHeU+FA/2HJmL87AzIfpmV+QhE9AxcFtOK5QVzd2cxTuttkwwaERXwYdk/LLXEaImvs+0/0GyuhMBW/QfvTNiYewfNDSmGSjiL
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66ecf813-ec98-46ee-9ae0-08d806c451bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 07:12:32.6313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IAVoOImy7naqak1kckJsLgXQePDngzkk0n1iVoswFxGT97GWCS42A7EjhTu2emD0aFCsVOmG9Y32tWqUh4bf4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_001238_357595_E2373B93 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.82 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> Sent: Tuesday, June 2, 2020 1:24 PM
> 
> > Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
> >
> > > From: Peng Fan <peng.fan@nxp.com>
> > > Sent: Thursday, April 23, 2020 3:00 PM
> > >
> > > Add resource management API, when we have multiple partition running
> > > together, resources not owned to current partition should not be used.
> > >
> > > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
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
> >
> > No need check err return?
> 
> No. it use hdr->func as the resource owner bool.
> However imx_scu_call_rpc also use hdr->func to check error value or not.
> 
> When hdr->func is 1, imx_sc_to_linux_errno will report it -EINVAL. However
> here 1 means not owned.

For this special case, pls add a code comment about it.
Refer to:
drivers/input/keyboard/imx_sc_pwrkey.c

Regards
Aisheng

> 
> >
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
> >
> > Update copyright
> 
> ok
> 
> >
> > > + *
> > > + * Header file containing the public API for the System Controller
> > > +(SC)
> > > + * Power Management (PM) function. This includes functions for
> > > +power state
> > > + * control, clock control, reset control, and wake-up event control.
> >
> > Fix the code comments
> >
> > Otherwise, I'm fine with this patch.
> Ok.
> 
> Thanks,
> Peng.
> 
> >
> > Regards
> > Aisheng
> >
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
