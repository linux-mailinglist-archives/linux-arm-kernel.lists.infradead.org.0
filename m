Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3958A1EB517
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 07:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vLe4r8Fg4d/Ow8NuisNnOJqLtkLVtSAfWUcMA1mUsA=; b=CQdlspHIfJMs41
	Sv8CiW2/+RN+RqXNnnZalJBJMg0+87fVw/Ss7Wnsw1dvtlpq3MZw+2tps2mhi3zsJGjNIttfBnhbT
	0OxeKCsiJ8KnuT4I6ARj5FXN4DQlnrXpURwCe/zlrTzGPWY1UHpjUDv5l+PF5nh5oP46AMywlYM6O
	rBjuxRJufxSc8unlAlIa9OI1ZN35qirNnng/gm10LupVCcrXHHUsjdrxNE8zZKZi8yck55yRw3g9z
	50GvyPVNv35Aj58nl3qBSWG2OTS4FywLdqRv0Z3Jmq+PruQHMyzBMYa8G4sF/6ZsAleJl+fFfJQSW
	gD7tq1nR1bzn18oYJOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfzOt-0001N2-7k; Tue, 02 Jun 2020 05:23:47 +0000
Received: from mail-eopbgr150058.outbound.protection.outlook.com
 ([40.107.15.58] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzOl-0001ML-IH
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 05:23:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3J0HRkgSFiXU3kBBkVKSE8cMFp8nxYOptwnkyaA59eoQheDqsX5wogKXAwYWmGaNNP6HsqErYqDvIfi2e4H4rckBJ2Qv/S27W6PQ+2wW/UyvRWYP5JdxsYzr6J/c7v5zfm9QaH43A5kaSeJ2UBkEMC0N0fKDpxPiXaAIuiBgCUYQDNoi4+UdaKFXLHxMyYaHYH5KkKMTYbdHBJztp4f1Qi7yOUc829leaO80M8FNYIwuQ6Ca+sim2+uln+mQitsgp7goeLanYySjvmmCSAGE2fTkJUdW8tTyNYNl4aRPU23/co31SLFkNyRQgJ5dGEr7bpjm4lG3B5ykyEbO984Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+JR0oLX+9LIYjafyMccGNcvX7rb5hyW24CZVQdNzmCk=;
 b=V5vXntYcwf5AKSMLdqNIYTjIM6kb+tzJC+nCxCoYm5nYFtTLRCu/hUGStTWXOjJkMDtQGvc/zB4We0khKLcl7bd4AuEX/JKOuEgxEVCb/tyC4jlI972Wgomonynqkv62rHOIUWEAsSPl+Q+XSrDbg54KhaZmtMcEmbGVbJkrt9lZuOP+1Nh+e275+WtbiSRhMdpqk5SEwFSp3zyNyCymdQ6Naw1eph6l9jkH5rFFV5iM9MGPo/G0/8A2Vf2PtSv4QkzyPNj0D2t5khxqwoPjYTvpkBV85Sx6xRZGM6SEBnUXx5NMvyUnv1lOJi8SYUHGfctWwJSY9V0VoTKTDaPr8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+JR0oLX+9LIYjafyMccGNcvX7rb5hyW24CZVQdNzmCk=;
 b=hiTtpfzd3cLlLcaiK0mXI+U58xAuUj1rKqBKNcP+yG83bIve/KNAMxuuyC5rGF56DM05pa6BPO78VKz+BQIx4hOvgXO9OcwPyf4fmNILRTh2ixTvrm1+Sr4PkkxZYeS7V+9GL2S5z1S2S1Pg4ThqL/0EoTlRFk4AacP0J0rI1+I=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2887.eurprd04.prod.outlook.com (2603:10a6:4:98::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Tue, 2 Jun
 2020 05:23:35 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Tue, 2 Jun 2020
 05:23:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT37doAjG8vSF0ywBJjXXTGn3qjE43+AgAAlTCA=
Date: Tue, 2 Jun 2020 05:23:35 +0000
Message-ID: <DB6PR0402MB2760C2AC0CAEF7D8EEB1CA49888B0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966DA95F44FA63CDEF7E4F5808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966DA95F44FA63CDEF7E4F5808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 754c3067-3e46-41fb-2bde-08d806b51913
x-ms-traffictypediagnostic: DB6PR0402MB2887:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2887E6A2B8BAA27738C14C2B888B0@DB6PR0402MB2887.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vvkG2gmcaNhvxPmhfgihsGWWiGIg6n3M/iI1jJlzw8pkQ2Pfx6w3GPPKt+JjHOpKofuNXYy9VVZabKuDCs0Qlcj/q5ewJk9D+Ru19TsLHp6Wua02YF7W/f70JTuzCflUQHWy+yXUJ8r9wQZ/LrriJ91PKzmkXeBfPdewRuFwt/iCMm5gYEgjd+24N6WfUAoXv2uQLDhzYj+g4hGK1p8jUos1YHtahIeUrrjh7pD5UlpYxfuvathWjjN8oAzCsAqW+onVUevYmq60ndJhCJ3cwKx47NTvLk3pgji/5cUP6FShGoZryPvmXMLEeNDaKBW19j2NEvCey76x/wbUrZfo6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(55016002)(44832011)(33656002)(7696005)(8936002)(86362001)(110136005)(54906003)(66556008)(66946007)(9686003)(478600001)(2906002)(186003)(66446008)(64756008)(66476007)(52536014)(5660300002)(71200400001)(6506007)(26005)(83380400001)(8676002)(4326008)(316002)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: wFrhF7BCqn48LvYF2d7JActO8DItA6DJcL0hulBWDkAAei2AGGECGz55cyVzm+6YPk8A1/7h+fsQPtFrWoC/q7TiEmhatm+eYeVslxtHUTEeEoJ9xgkvDBXejEDmsO93g1MdRJ0zzyqWQPv8Y4rg6re8QyMYVc6Q5H+tlu2jNMNNvfYE6RP8vSQNvb4cWK/mLGhYMOWAcr32if3gXmG/rz5QUDZVPoRyBvRk5NrHNZSlGTpP86CZnWWOEbzQDIA4UWrEWgLIRxc1iEfP51R5UTZOQqSN0D2b3DbFSHVIplE4vPxwkExmPW7mdzROcXe6dA5uYtwUtjWv8JSAIyMwqzsDfFULAoz5zAbmn+ezdAkbuagU6GTPJQtQ+VqXqmZCckNFTQh1kLe6YnCGho6irFoWYPloV6znlC3OAnfaMJDXF2CSy0bk+QrY/ijLcuwNE64ZtrNzy5HvuwMXkO3yLJifSs51o8KrOtCpCgbacIFP2LXwWIB0bQFNQGzeHr2f
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 754c3067-3e46-41fb-2bde-08d806b51913
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 05:23:35.0819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vqbjy5j3V0gqVGr2ay4SGImNUQTFzlWBkjufUzobiSiX1LZ1UUU+vIMei5jAevPf8dRwynpdozvaZPc9Ptg9AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2887
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_222339_737594_1E787CC5 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.58 listed in wl.mailspike.net]
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
> 
> No need check err return?

No. it use hdr->func as the resource owner bool.
However imx_scu_call_rpc also use hdr->func
to check error value or not.

When hdr->func is 1, imx_sc_to_linux_errno
will report it -EINVAL. However here 1 means
not owned.

> 
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
> 
> Update copyright

ok

> 
> > + *
> > + * Header file containing the public API for the System Controller
> > +(SC)
> > + * Power Management (PM) function. This includes functions for power
> > +state
> > + * control, clock control, reset control, and wake-up event control.
> 
> Fix the code comments
> 
> Otherwise, I'm fine with this patch.
Ok.

Thanks,
Peng.

> 
> Regards
> Aisheng
> 
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
