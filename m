Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B114F152509
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 04:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igVAL+64M/aCS2fzOPKn9AM/tpqrLnM6n+hoZlegECA=; b=XBjgIcrxjflNm0
	6MEhFBSBqkntG4XBbizLGxW82E+qbQXkgoMYN3r9nz7a9N+gCJJTHO1qE6yzWzZRpLJ3/Oe2OrnuS
	arvCdgAeXPaJVmVvflE3cv3KbxfXyZaUdM+hlRt5kaWZ0S/FITAs+Ga5reVXr2vGMh3avJ26Da0VK
	RUQDy5sHEfkFJXMyRYQOaDIpdwteuQLGujtMJJ6liC8SATzvNDsyAHtbXDPYaZzD1gzQl9bb4+02g
	sPQHX4GOry+8RHoBaaWFFxbVVrPqj5CADhl0O9ThwgSnCgm5qWOLUvfjueBTIeU0O7u6o3ARxzAFq
	zi3vT6CqQLFtm6fWb05w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izAvH-00058A-5x; Wed, 05 Feb 2020 03:00:15 +0000
Received: from mail-eopbgr70049.outbound.protection.outlook.com ([40.107.7.49]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izAv2-0004wj-6o
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 03:00:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+1LaayEGlt4Y7gb++ZXur7A7k/IdeuitSGCeAscvk8fUej/5wAaHEoZlsNUBhI3CE0HpJlh6KDmXNZFAEoENavGQEi7wQLkE/nyArQV3h+DOonsKky5JoS8At6zKRFpkUVr5PtRLflFez5rIIS6DWu2sgXljDq0oVZdABXdhjIi95/zxTeo/3VtQUTnaUUgA2hrIJGZZMwhO6T83OKvPn2gd/NM/COYpospbf5fA8ocY7E3dGknLeFF4l4H4jUm2Z2WeSEqxFDYqqqCz1jUSpgiIoSuOAjbv6Nd2KeD8XiF7ITG8bUcDs4LvicJUh73fuGQRA06oX8Zbe5Guyn/rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pR58iCd+nNAnYwF+mvJyhklT4v/MM5nupao3qGVrJMY=;
 b=iMpUkWArFlfTxlJN6I1xiqr2+1Vbd7XjMz9zrNyTq9m+1BcTME/OPPVxnb2sDTymyQXCGh6V2mE6kdSSFl6HseLG77lVxaX6Yb0Fupf2h4gDhxQhEpb276kq2IXRI81DoipGhU4NMBO8kIg+3Tcg/lg07WdiyMyxHMdjFcrPzMwuvSUlMumOw3Gcl0gfi4tilbumSNfjS06jbp7C5wqg/Mbe1Q3LD+SAkrfiFQ77fXuuGch/cv0tUm+tEWv1X62HXIfDwvRO8UNzrgrymjCBVhVcez38J8B8ixl8/kepqj+TiaWIiDwjoTMI7EB/3XflzW+3h0RNcrB7/SkTEJuqfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pR58iCd+nNAnYwF+mvJyhklT4v/MM5nupao3qGVrJMY=;
 b=dvNIFkodcdHo7mE+ekvNsKFJ7FpXkDv/1z8lcdhOwGYX3zb7apSIbMSpSquMblawxUS1zwkgWJ+/0XcTr7RQLL2hKpabXpXkoGi1yFgE0Lf5IXLgoJ/iJmnYRG21JuYapkpIr6YCBTmvHwUhXCp+w6XR05x7tUwIpU4lrXtqpr8=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4249.eurprd04.prod.outlook.com (52.134.108.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Wed, 5 Feb 2020 02:59:50 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0%7]) with mapi id 15.20.2686.035; Wed, 5 Feb 2020
 02:59:50 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH 6/7] ARM: imx: imx7ulp: support HSRUN mode
Thread-Topic: [PATCH 6/7] ARM: imx: imx7ulp: support HSRUN mode
Thread-Index: AQHV22DS1fobjwyzsECLZwnJ5ghp3qgLDWuAgADcRAA=
Date: Wed, 5 Feb 2020 02:59:50 +0000
Message-ID: <DB7PR04MB449032635121DD11181FC2F388020@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
 <1580823277-13644-7-git-send-email-peng.fan@nxp.com>
 <CAOMZO5BnfGdbDuobV=qi4zbzKriM0kNmAyd8zFCSdv2krVj=Og@mail.gmail.com>
In-Reply-To: <CAOMZO5BnfGdbDuobV=qi4zbzKriM0kNmAyd8zFCSdv2krVj=Og@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: edb6c81b-869d-4d2f-1ab6-08d7a9e777b0
x-ms-traffictypediagnostic: DB7PR04MB4249:|DB7PR04MB4249:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4249401F0E1416725761329A88020@DB7PR04MB4249.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(189003)(199004)(53546011)(6506007)(4744005)(478600001)(2906002)(33656002)(186003)(4326008)(81166006)(54906003)(8936002)(316002)(81156014)(26005)(86362001)(5660300002)(6916009)(44832011)(64756008)(52536014)(7696005)(55016002)(71200400001)(8676002)(66946007)(66556008)(9686003)(66476007)(66446008)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4249;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W5orJE7IQxN7yeB9UKpsxs030NCFNvTd7dUBBHQNenbNOTIDM53YjeJ1wvktrtyoSa1I7WhkIJTp0ZUvmjs6tY2YlofN7SgH4rY34Tx389Sp9lEJ+ttecnwCfresBTykc49rXfu11TbPEJymNuMJXlWDhgzDp3Kx1fkahgiJtRNRpndnniIBLAfXnYYN1bEpuvMYJOkDS+SzWQ6xOyikqyzGmIdL/Es9Gj9LB8hDNZWMc2LJoF3JIuBEaID8ANlkWQV9izOkStR52LMkWDoqfOQ6ApEvxGpmA7+JcI7TYWeqJRnORGOR5+gQCl4Nw2u1VtQBr47EpmkHpoo42Z8N/UIFLQGJljdurRPWFKNUBPpm8vowDKxB2s7NUVhQvuoVKYV5mxDSLwz1WGknWQNgU3CYPz2rQ8VVMIOaO5DbhNwsmXVfGKOo8RNDTQUQlWC9
x-ms-exchange-antispam-messagedata: YTRKumUAfQEYVoY8MhlQjLX4YD+pB6O/Htn4YDyKHfZWA20cXzQ0DeflwFF0sLW9xfrcY7f3cXQKJXHV3rXg9Et/chCssI/d0Ges2QXvS/EK0ZVSQSx/afY+NMpzd6LHt5ESs42GwGU3GlA02tXPUg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edb6c81b-869d-4d2f-1ab6-08d7a9e777b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 02:59:50.6044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t06Kas5yTlEY9Jbzxnkzs8F9xI88t+EXvP/no90vV9U8fQcNLli/9P9OtSuIKxxhxSxft32TQXGSyWilWTMEyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4249
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_190000_256773_9A5A9DCD 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 6/7] ARM: imx: imx7ulp: support HSRUN mode
> 
> Hi Peng,
> 
> On Tue, Feb 4, 2020 at 10:41 AM <peng.fan@nxp.com> wrote:
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Configure pmprot to let ARM core could run into HSRUN mode.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> > +       writel_relaxed(BM_PMPROT_AHSRUN, smc1_base +
> SMC_PMPROT);
> 
> HSRUN cannot be configured unconditionally because if i.MX7ULP runs with
> LDO-enabled it cannot run in HSRUN mode.

Thanks, I'll update to add a check LDO mode here.

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
