Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68EABE99C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 02:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ehov7f9whizS39Gv96RG9XPEQDoJvpmAGuAWQWHxzo=; b=KS+w3QHh0GuTc4
	HLqV106raPTvfIxqyBbxxkJhlB+2+urQk9s0uAQNEsYYfrziScHlTEI9DfvPF5oiDOI902b22Xj1/
	g/F08Ka906lHf/aXT2vJxnCpixsCT8198CNd0dkOHdjY2/bQzoLxNeGnAzlBiZ5kU16b43GGu4LHR
	8SRq4N9jxkq6NbLfS1vjg4Dc1Wii5T55CRwmFfhKx9LSzTlkwlfUldddV0G67qu3Gztp2i8LYeyNi
	WKxlCp3Y9248W03rJHzl9HMg4zEVihXqw/6LNUKbAcwFNn7nFhceL2RGDe/uu4aF9QMOulstCokTY
	zQZWkMTuPrlmJWFEu7fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDHka-0001L2-0i; Thu, 26 Sep 2019 00:35:16 +0000
Received: from mail-eopbgr20068.outbound.protection.outlook.com ([40.107.2.68]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDHkO-0000KV-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 00:35:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4kEelbW/ZGGXyhN3APElIbZVe3rW4auFxtXGeA01Ui82D3d9n/33OizDfwc3E6M2sCfK2uCNu+cZRjyZmRty7NG+qpvVd/HLkOaAnu8HtIJCyAAqMZGeZ1lRPjknRIYCgMpNqnzU4ZeTBnUoPthRM049TCjzKI91WjPJw4UbFOSBouXGfpCRAMdF3CZXn4Gp3GHtC5nCNsrozrpjFjtIZJDLqs4MBE+7dkah6Aa5KPbsY7L5Q011BHcixQnmfL6pKc/3oVqCnq9w65B+IGaxgJb21R8yIGPorPyGonadPU/x4CCyfvY/djaU/11SJOnE0x0vl7Kea0RNoRpsD/GLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWM+pGzWk+tdXhbVO/nMawLljwi+CaqOh7QRT8bxLrQ=;
 b=GOcM86D9Kf3TSON+zwhsS1y5N2JVUU5dPZz9d3EyOLbAlzHhDCwRcv1pd/Udlw4se45d5bqYbB5iQeVe4ZWSNzp/tf9tZdsVMIRVdsrhMnSn2qos6tZz2dWxUXuSyd2MOwCql1lk9CXaIdDhK6SapQkDGYrU9Vg1tmJ3Jz+0VniCdlz91cbI8/1hPzgAIooWTGqd/Vhu3LDoDyCvjBcGLTTE99e8QD+JSk1+QVDi4E1Dogdc5HieGJUBUYXVxsXqbAB0okByw6tacVnLNs1/i1QXutsp0/yVHEVcxn0tbF1iiyPhRUoAx2Sw6nKgOFxwzTtJFvyatcW4MBRGYKL9Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWM+pGzWk+tdXhbVO/nMawLljwi+CaqOh7QRT8bxLrQ=;
 b=hqW13FakOrgZKzOsc7f6yaQp//Fszr+ksQAhSSgsMUUWiIUG7bP/b+X4mrFZ5rJnRxAf5IkbFhk3XTf0+6Nv2o2jSS+qH/UYajro6jfm9ftGi1HZIzea1H/wZ1liL4+KaRwDBg5ZF38k7fFrAJLvF65/UD5VJ5+xf4Dee5DRgxA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3755.eurprd04.prod.outlook.com (52.134.71.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.22; Thu, 26 Sep 2019 00:34:59 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.028; Thu, 26 Sep 2019
 00:34:59 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqc9G1eA
Date: Thu, 26 Sep 2019 00:34:58 +0000
Message-ID: <DB3PR0402MB391628462C06E3BD28E1AC60F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB70232DEA67972332611480CAEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB70232DEA67972332611480CAEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37e6867d-1993-4bf2-d030-08d742195c8f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3755; 
x-ms-traffictypediagnostic: DB3PR0402MB3755:|DB3PR0402MB3755:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3755178641650E2BD5CA778DF5860@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(189003)(199004)(6636002)(8936002)(55016002)(229853002)(66446008)(66946007)(86362001)(6306002)(66476007)(64756008)(256004)(74316002)(110136005)(7736002)(66066001)(25786009)(9686003)(6436002)(305945005)(76116006)(66556008)(316002)(44832011)(2906002)(2501003)(71190400001)(54906003)(6246003)(71200400001)(4326008)(5660300002)(14454004)(476003)(33656002)(8676002)(478600001)(3846002)(102836004)(6116002)(186003)(76176011)(966005)(7696005)(446003)(52536014)(11346002)(81166006)(81156014)(99286004)(53546011)(26005)(45080400002)(486006)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3755;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bDgfMDRRSDfy4Pi1JJmgRewGAYelfYC6skqS8xu4N1veLcqqILXs+AiZWyhrZLwVgDJMQYNfLKcY9PHccA9IUEwXct5gEeIBQajBS8VlHASv/ZLtfD1wJvT7muBRXHxOavbBpswz6ZoZB2JK6PqTfaAQBEuA4xQuTflUlTqzJuISczazeXXAaTl7YYCFFAAfHidzm4jyy95HJ6E0EWRK5p7qnDit+GIXQx2tR2TjV6wp0UORMs3p2TesLApD2k1r1NeRU73ly420MUDUHHNJ4yWyd8msYAVhUGaFmfxQtiV3479TLPIFV44SIC7cTB5HnqHCXF2PaQ9kT6D3IeFQUGcPdyUOQCeTZJaohJUNJSigyw5pMXQo73mdnD7po77bwd9CAyEkyCEN8OhsLclcyW9Z27TlNn6zWfn4o4XRcVU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37e6867d-1993-4bf2-d030-08d742195c8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 00:34:58.8860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GvV7RK4dJmOJRtTIh1ZNAj970sicNvxO1llzrfcIepcy0aM9COjwWunT8S/xzdAfdbi2P4rqlcJ0olNYa1peIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_173504_499244_A5B0C574 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> On 25.09.2019 13:09, Anson Huang wrote:
> > The SCU firmware does NOT always have return value stored in message
> > header's function element even the API has response data, those
> > special APIs are defined as void function in SCU firmware, so they
> > should be treated as return success always.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > 	- This patch is based on the patch of
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Cleonar
> d.cres
> >
> tez%40nxp.com%7Cc0ced6cd07f04023977008d741a07367%7C686ea1d3bc2b
> 4c6fa92
> >
> cd99c5c301635%7C0%7C0%7C637050029712216472&amp;sdata=Ccq%2Fb2R
> JdMqmnL7
> > VXrl8YhOlUwC7bWiUG%2BNmiw4OsSM%3D&amp;reserved=0
> > ---
> >   drivers/firmware/imx/imx-scu.c | 34
> ++++++++++++++++++++++++++++++++--
> >   1 file changed, 32 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/firmware/imx/imx-scu.c
> > b/drivers/firmware/imx/imx-scu.c index 869be7a..ced5b12 100644
> > --- a/drivers/firmware/imx/imx-scu.c
> > +++ b/drivers/firmware/imx/imx-scu.c
> > @@ -78,6 +78,11 @@ static int imx_sc_linux_errmap[IMX_SC_ERR_LAST] =
> {
> >   	-EIO,	 /* IMX_SC_ERR_FAIL */
> >   };
> >
> > +static const struct imx_sc_rpc_msg whitelist[] = {
> > +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> 
> Until now this low level IPC code didn't treat any svc/func specially and this
> seems good.
> 
> The imx_scu_call_rpc function already has an have_resp argument and
> callers are responsible to fill it. Can't we deal with this by adding an
> additional err_ret flag passed by the caller?

Can you make it more detail? The have_resp is a bool, so where to add the flag?
The caller ONLY passes imx_sc_ipc, imx_sc_rpc_msg and have_resp, ONLY
imx_sc_ipc can add a flag, is it what you meant? 

imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)

> 
> We can add wrapper functions to avoid tree-wide changes for all callers.

I agree, maybe we can add a new imx_scu_call_rpc function for those special APIs?
The new API will be ONLY for those APIs with response but without return value check,
then other callers will NOT be impacted, what do you think?

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
