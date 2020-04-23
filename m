Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985531B59C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzN3W0Amwr87IzaD9CmvRI3OgD7iMc+/bsHrU5NWkx4=; b=e9DBWz6zbgQqZ2
	w+txJ8/zDhMCYOYUwXCPyJqyBG3x4QgPJwjHztglcuPIYQLF/7DYRBVU/r3kpHiM0h3tOArbYk8bQ
	MEJ9/I0p6LsdjbdNpjl5brVh0fzgV66uAOMqRXkiCdttiG1CrcVHLbXjQznxixLyzEP0cBq7BocYR
	nIgtmIaovLlq5AkV/raGG5tZWIrgn7D1WSbhveNz7GNHzI4IjGIGWjDnVizHgEpZJegP2vTM7nHgL
	iX3ViQnzOCf9lkQGw1ILV3TiYfy7I4EWb+2ULgLOasqI9eNk5/vyin+jOHewt+D71kftN97IK4+27
	DX/bkY3uT+Kioflmw+NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZXv-00011y-J5; Thu, 23 Apr 2020 10:57:31 +0000
Received: from mail-db8eur05on2065.outbound.protection.outlook.com
 ([40.107.20.65] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZXn-000111-3v
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:57:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dv6GFdvvg6dtwbUwcQ07JwyrVFIWZUVEzWTJF9XMKzIpj26+IGiPBjlyH56dOz3sdYz/PyT6cl+ZDcu0Fcl2dikVQo6hP6fv2vLJOnYMjy7Sax1Z8CaOwdZMtnaG2yt3BYvgZuuwduc+oXDNjvib8OGFYXdGQcHrbNV0JksdWvSH+cVxm/ki7DMqmfAzmSmLAeNNW2osHAqijBa3C6wwX3hLgy+2g6P3lBw7KrQCNfq3rvNI/h3doeTJUJMFQsUTx+gES5wuJ3jDv9y9fF4pZ3yzwZDLqsroqzB3K7TcIOMsXoZjBmJiPWzSjAsdH7/xLsrba+FnF6Ge77kK0uDVxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8IpFPas55nW/5x4+KAT2CQzGVt7RKIc6llwxuy9o49A=;
 b=NxNLN518YSaV7mCP6U513fgB/V10Flk/2z6cywG5FpXUEiK24tSm3Pyf9V5JkD2Tmj7HNLhiXZ+Pq95B+JzoPs0/Ie8IL8i/9h4Fdzp7WAwti7An8XlfG+mZbLvFcifxfR7zFKqdFw9RziI5OZPAK9K++M/yj5dzGZadjacApimbyToT/rlKUhC5v/q/WXQNuLGIa59Z2AfZsvcEDIQN+7eqiF+IFpB9Yxs/ytqXIl98BgblDxHQqdCwG/9wwm6Gvkkxo+FP+1NpfRwt34I6hJ+5wltOzJFJ1/k4Wm55LFTMqCqfmgaV+Kj1JqcU7i3FUgWzZpkVdGexAUNTwuj/hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8IpFPas55nW/5x4+KAT2CQzGVt7RKIc6llwxuy9o49A=;
 b=N9kwg9tzu3WJVzyysSdOL2L/uFgr4mrg0aoYbGRTVqu5pC3ofm45hiN7u15YOV3FW6OTeGklLhioc6lNWbVizZk0M81zv/UjSfZww00wdFKU0vSxcgy22hR3PdijGxsHJF1Byw+ZKWO+jnBV72lHQAeBw7uVDfhVSLkt/HhUodc=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2823.eurprd04.prod.outlook.com (2603:10a6:4:95::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 10:57:20 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 10:57:20 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT37doAjG8vSF0ywBJjXXTGn3qiGerCAgAAOdvA=
Date: Thu, 23 Apr 2020 10:57:20 +0000
Message-ID: <DB6PR0402MB276030B2D59423AF0FD3769388D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f702d9e4-5d46-4cfe-efe2-08d7e7751878
x-ms-traffictypediagnostic: DB6PR0402MB2823:|DB6PR0402MB2823:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2823B9F39BC50B607B955D4D88D30@DB6PR0402MB2823.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(86362001)(33656002)(316002)(110136005)(54906003)(5660300002)(478600001)(52536014)(71200400001)(7696005)(186003)(8936002)(2906002)(4326008)(81156014)(8676002)(26005)(76116006)(9686003)(6506007)(66946007)(66476007)(66556008)(64756008)(44832011)(55016002)(66446008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: biakb3Dna1Y2GlDfC3yX6JSIYe8LfDfk+dMcXC2FfjubUhmMDcZ52HrBRskgZmEN+2LuI85gY9xB51dylz+V6SSageX371GV5sHutdBn5PII/ymSABqvpocODC8yJCKatq3DGuKxjCmPnLqR2p0StRFQDWzP3HE5Xyn4GcAUnQv/i5Bng6XC+oyjshLQ9k7b39fM8L+w9gFQYnGwMkkl1eHNLKf2K0gq1ckWj8phPBV5Us4i0Yxg3pGXr8ay7qI1VkwabV8LaJt0rtyPJ0y4Tx5Vv/At/fOmR78sEtnYE/9348jpF/DjPMl6hM6lTzhUIE9M8THhVN+R1pOoUvKYKbIYmJEUBIQ9LVPEODmsr41SNR6vBovENIT34Qz78L0Gv9iu+d5J3B3/nz8ixf4AGWlv1MnURQHcB7ZlVSv3/GYkzrKi6dD0Uz79EqqMLE6X
x-ms-exchange-antispam-messagedata: //iZeDFceTExmhgKc9hopxFl6/eeEgBMqqHL0ZCKAU6Bxn7+dPeYl4MNCbdcqsnTa+1Bu81QN0g54kZ2gJtKgvxrmUuof3RjASYFmACsU6WP+79XUgxCmCQCqTbtq6A9MBDLyq7v1NwQ/uxSarWO8w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f702d9e4-5d46-4cfe-efe2-08d7e7751878
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:57:20.2344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1FOQDhoD7il7a5TjsnH+giZi9vhx7q2YtLqvkTIlb/NqbTsrojmHm0gh3LQT2Ixss9G+fQDp806LPKnG73OYRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_035723_268233_3BD17284 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.65 listed in list.dnswl.org]
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

> Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Thursday, April 23, 2020 3:00 PM
> >
> > Add resource management API, when we have multiple partition running
> > together, resources not owned to current partition should not be used.
> >
> > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> Right now I'm still not quite understand if we really need this.
> As current resource is bound to power domains, if it's not owned by one
> specific SW execution environment, power on will also fail.
> Can you clarify if any exceptions?

There will be lots of failures when boot Linux domu if no check.

Thanks,
Peng.

> 
> Regards
> Aisheng
> 
> > ---
> >  drivers/firmware/imx/Makefile       |  2 +-
> >  drivers/firmware/imx/rm.c           | 40 +++++++++++++++++++++
> >  include/linux/firmware/imx/sci.h    |  1 +
> >  include/linux/firmware/imx/svc/rm.h | 69
> > +++++++++++++++++++++++++++++++++++++
> >  4 files changed, 111 insertions(+), 1 deletion(-)  create mode 100644
> > drivers/firmware/imx/rm.c  create mode 100644
> > include/linux/firmware/imx/svc/rm.h
> >
> > diff --git a/drivers/firmware/imx/Makefile
> > b/drivers/firmware/imx/Makefile index 08bc9ddfbdfb..17ea3613e142
> > 100644
> > --- a/drivers/firmware/imx/Makefile
> > +++ b/drivers/firmware/imx/Makefile
> > @@ -1,4 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
> > -obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
> > +obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o rm.o
> >  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> > diff --git a/drivers/firmware/imx/rm.c b/drivers/firmware/imx/rm.c new
> > file mode 100644 index 000000000000..7b0334de5486
> > --- /dev/null
> > +++ b/drivers/firmware/imx/rm.c
> > @@ -0,0 +1,40 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2020 NXP
> > + *
> > + * File containing client-side RPC functions for the RM service.
> > +These
> > + * function are ported to clients that communicate to the SC.
> > + */
> > +
> > +#include <linux/firmware/imx/svc/rm.h>
> > +
> > +struct imx_sc_msg_rm_rsrc_owned {
> > +	struct imx_sc_rpc_msg hdr;
> > +	u16 resource;
> > +} __packed __aligned(4);
> > +
> > +/*
> > + * This function check @resource is owned by current partition or not
> > + *
> > + * @param[in]     ipc         IPC handle
> > + * @param[in]     resource    resource the control is associated with
> > + *
> > + * @return Returns 0 for success and < 0 for errors.
> > + */
> > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > +resource) {
> > +	struct imx_sc_msg_rm_rsrc_owned msg;
> > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +
> > +	hdr->ver = IMX_SC_RPC_VERSION;
> > +	hdr->svc = IMX_SC_RPC_SVC_RM;
> > +	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
> > +	hdr->size = 2;
> > +
> > +	msg.resource = resource;
> > +
> > +	imx_scu_call_rpc(ipc, &msg, true);
> > +
> > +	return hdr->func;
> > +}
> > +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> > diff --git a/include/linux/firmware/imx/sci.h
> > b/include/linux/firmware/imx/sci.h
> > index 17ba4e405129..b5c5a56f29be 100644
> > --- a/include/linux/firmware/imx/sci.h
> > +++ b/include/linux/firmware/imx/sci.h
> > @@ -15,6 +15,7 @@
> >
> >  #include <linux/firmware/imx/svc/misc.h>  #include
> > <linux/firmware/imx/svc/pm.h>
> > +#include <linux/firmware/imx/svc/rm.h>
> >
> >  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> > imx_scu_irq_register_notifier(struct notifier_block *nb); diff --git
> > a/include/linux/firmware/imx/svc/rm.h
> > b/include/linux/firmware/imx/svc/rm.h
> > new file mode 100644
> > index 000000000000..fc6ea62d9d0e
> > --- /dev/null
> > +++ b/include/linux/firmware/imx/svc/rm.h
> > @@ -0,0 +1,69 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> > + * Copyright 2017-2019 NXP
> > + *
> > + * Header file containing the public API for the System Controller
> > +(SC)
> > + * Power Management (PM) function. This includes functions for power
> > +state
> > + * control, clock control, reset control, and wake-up event control.
> > + *
> > + * RM_SVC (SVC) Resource Management Service
> > + *
> > + * Module for the Resource Management (RM) service.
> > + */
> > +
> > +#ifndef _SC_RM_API_H
> > +#define _SC_RM_API_H
> > +
> > +#include <linux/firmware/imx/sci.h>
> > +
> > +/*
> > + * This type is used to indicate RPC RM function calls.
> > + */
> > +enum imx_sc_rm_func {
> > +	IMX_SC_RM_FUNC_UNKNOWN = 0,
> > +	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
> > +	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
> > +	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
> > +	IMX_SC_RM_FUNC_GET_DID = 26,
> > +	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
> > +	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
> > +	IMX_SC_RM_FUNC_GET_PARTITION = 5,
> > +	IMX_SC_RM_FUNC_SET_PARENT = 6,
> > +	IMX_SC_RM_FUNC_MOVE_ALL = 7,
> > +	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
> > +	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
> > +	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
> > +	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
> > +	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
> > +	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS = 12,
> > +	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
> > +	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
> > +	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
> > +	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
> > +	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
> > +	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
> > +	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
> > +	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
> > +	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
> > +	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
> > +	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
> > +	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
> > +	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
> > +	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
> > +	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
> > +	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
> > +	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
> > +	IMX_SC_RM_FUNC_DUMP = 27,
> > +};
> > +
> > +#if IS_ENABLED(CONFIG_IMX_SCU)
> > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16
> > +resource); #else static inline bool
> > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource) {
> > +	return true;
> > +}
> > +#endif
> > +#endif
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
