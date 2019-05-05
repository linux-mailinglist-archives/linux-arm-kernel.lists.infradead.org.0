Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B0013DC9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 08:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFNOfm0YjWiwSlC9eKeJmg4atLhPLf4aTi7TjvMCbxw=; b=mC+U9RxWT/FNVV
	mwGSVUCkffmlzIY3Ogx4YyucEXR+lWHt1w7KnXgvVjhfw/WlWiJ4uUjDeUDOHwMqZx5KqH6OFOnNF
	pbCRsdg9B32xo2o5nBy2i8IajFS0zvPb5bTVXhBBLQcKNaCBaxRzHe9fj3ysWAOZweJc6FKrByUK5
	C4URo/XGUPVVRn8hjEA6Jw3KfjuH/Cpdl7tcRZlmgb/2tbb3HfN869tKY1duYJtPhU3prFxwfk3Ke
	VWxs0ql1um/mIC7NOyQpPpdusDXmCVQoqNPenfKLAPeKUpmUe8b131bjWQIapiosPjmZw7EC2q5MB
	/cxa3Yk7NVI6dDtwC73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNAUm-0005hW-OC; Sun, 05 May 2019 06:19:32 +0000
Received: from mail-eopbgr00069.outbound.protection.outlook.com ([40.107.0.69]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNAUG-0005Pt-U9
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 06:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yy8R0MvHKzj411tNX4gfJsUNaKlHZwVSg7Jb/ueDwO8=;
 b=LwCEbAUyw4dHFSgee2v5gZgwkJJvIUd1xBFhoPFT+Ws9GSGIanxqUuvNrZKPH7RNYUeaLBd74GiGavwddVrlkGPswldUNEsYSQ/4QeBYmZl0ETNpLL6c73RvLWblbpnvfLEBIyaL76KDyhqJbOknev9PcFpkw6erKJ0nWtP3ndU=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4354.eurprd04.prod.outlook.com (52.134.90.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Sun, 5 May 2019 06:18:55 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 06:18:55 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Anson Huang
 <anson.huang@nxp.com>
Subject: RE: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Topic: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Index: AQHU/u+rfzNhsf6HmUqZui5Dk6oOlaZWxBSAgAHvysCAAODygIACgJxA
Date: Sun, 5 May 2019 06:18:55 +0000
Message-ID: <AM0PR04MB4211AC8E7CC006F31565BB9880370@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556585557-28795-1-git-send-email-Anson.Huang@nxp.com>
 <155674445915.200842.2835083854881674143@swboyd.mtv.corp.google.com>
 <AM0PR04MB4211B63333AB7C50497AE17680350@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <155689923561.200842.16988174858654134777@swboyd.mtv.corp.google.com>
In-Reply-To: <155689923561.200842.16988174858654134777@swboyd.mtv.corp.google.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9539e486-3764-4c01-7dde-08d6d1218d42
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4354; 
x-ms-traffictypediagnostic: AM0PR04MB4354:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB4354C78C53FC8C28CD4BAEA180370@AM0PR04MB4354.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(366004)(199004)(189003)(2501003)(86362001)(26005)(966005)(110136005)(33656002)(71190400001)(53936002)(2201001)(7696005)(99286004)(6636002)(76176011)(316002)(3846002)(6116002)(14444005)(71200400001)(2906002)(102836004)(44832011)(256004)(478600001)(6506007)(53546011)(14454004)(186003)(486006)(11346002)(476003)(446003)(305945005)(66066001)(66556008)(66946007)(7736002)(64756008)(73956011)(66446008)(76116006)(8676002)(81156014)(8936002)(81166006)(66476007)(6436002)(5660300002)(229853002)(68736007)(74316002)(52536014)(6246003)(6306002)(55016002)(9686003)(25786009)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4354;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0scLZRmpCkb9Q2RH0poq9nBOqY7FG6R+wf/KqmV7kPoGpQuya/KD5WDIvoaoXxhaOgbZsLzRCmM/QdYcymXr4edCAYdhOL3e3fylhQamyXPuvF06SYXAs2Psf8nuFfPuWBPo9b22wi1+hBOihAKuoZUUXjj99fhaq6SVhVa+A1JILq+z53+2fEVCpIHUv0oXRWOfgKnLVip1Bee7tUWNl6NWBS5IggiYnCZLpsUKzenplNR3eYjc48bKopOVDvleQa23RFjvBXKYXTtSnm0yvx7MMp/MnAnDX60T9sb9U6VX8+i2XKyBsbEiDR8SH4xiyZQRGrg29npb72q7IRK8fO7ALtxfd93olr9bLiNI4Vrng/tokcTCNRXyp1voawWaOepGOyru5L8BxAEUO6ZDFWLSiw6R+KynXJQ7W3/PiWo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9539e486-3764-4c01-7dde-08d6d1218d42
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 06:18:55.2995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_231900_977531_6559C838 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Stephen Boyd [mailto:sboyd@kernel.org]
> Sent: Saturday, May 4, 2019 12:01 AM
> Subject: RE: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
> 
> Quoting Aisheng Dong (2019-05-02 19:38:34)
> > > From: Stephen Boyd [mailto:sboyd@kernel.org]
> > > Sent: Thursday, May 2, 2019 5:01 AM
> > >
> > > The Content-transfer-encoding header is still base64. I guess it can't be
> fixed.
> > >
> > How can we know it's base64?
> > As I saw from the 'Headers' in patchwork, it's:
> > "Content-Type: text/plain; charset="us-ascii"
> > Content-Transfer-Encoding: 7bit"
> >
> > https://patchwork.kernel.org/patch/10922657/
> >
> > We'd like to fix it this.
> >
> 
> Also, if you look at the one for linux-clk mailing list you'll see
> base64 CTE:
> https://patchwork.kernel.org/patch/10921115/

We suspect it's our server configuration issue.
I've already submitted a ticket for our IT department to check.

BTW, for why we did not see base64 encoding from arm Linux maillist,
Not sure if it's automatically converted to 8bit encoding by arm-linux
maillist patchwork.

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
