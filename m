Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F92309BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFbZuLTf9aztPRon8qWGSTEvVlW2pL1ZbKqetKP3/PE=; b=rRj3L0GjKt/h+I
	ZsfYuE7K/iiv0F0tCDEGsf+l6Jornt3naW6vq1AToVzMM2e/QgVtVLGkjO9490aG0uHyb1anKD9rn
	msp0f78FDLEYIGVvz2nU43uOlIJ4Nt86D79g+gnd5eW7snfR9nW2xas5eCeQFlFNK97xbQJbmnG5F
	PGUBMlPu2M/JSWwxuMHuP2ubMBJDOPxa24IuG4q4G3tD9gmpJ2hXaFH0I9UqIAhH52A1pBfx9NkdL
	O9ylPyjgGVyerSGjta14rC3Np8Nf6Scy3tBHbc1KHpMi3OjNdpIhDEy0GFOgOTyFe/bHtI7eP1gNk
	YOTH9qVk2lSEDHf9kjew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcPQ-0004Tg-QP; Fri, 31 May 2019 07:57:04 +0000
Received: from mail-he1eur01on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::61f]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcPI-0004Mm-0c
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PUNanSQS9LC1pT5UQhboECcs+Q/6GY5ZrtjTwqLVF3A=;
 b=pUsQFbpODN6tiKhXTPPX0HwyO+t8/cV21mpAuNFMfxOIVDdUFfRa3bGacLty6cuHXysXshv0Ew1ADwoEAbHwwN6rcuzWcDjjPVsc4XTOC8iFQZ6yA5gY5gZOMDBesMrnuX0A8OTs4ALPq77vSSbf0+n0dwYyQR9gKWyq+iRM938=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5041.eurprd04.prod.outlook.com (20.176.214.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Fri, 31 May 2019 07:56:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Fri, 31 May 2019
 07:56:51 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to audio_pll2_out
Thread-Topic: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to
 audio_pll2_out
Thread-Index: AQHVED6JGbhPMl1ASUycBcbN9uhZiqZ4tK8AgAoZTgCAAB1qcIAB/gsAgAACfsA=
Date: Fri, 31 May 2019 07:56:51 +0000
Message-ID: <AM0PR04MB4481853F9CF85F6B5CB7FA7088190@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190522014832.29485-1-peng.fan@nxp.com>
 <20190523132235.GZ9261@dragon> <20190529233547.B7F6F2435D@mail.kernel.org>
 <AM0PR04MB4481A7FF28A9AB9A1584423888180@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190531074633.GF23453@dragon>
In-Reply-To: <20190531074633.GF23453@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1753ada6-17d6-4672-d178-08d6e59d8a86
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5041; 
x-ms-traffictypediagnostic: AM0PR04MB5041:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB5041B57F9555945D443FF69588190@AM0PR04MB5041.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(136003)(366004)(376002)(189003)(199004)(66556008)(73956011)(66476007)(66946007)(86362001)(7416002)(4326008)(64756008)(966005)(14454004)(76116006)(186003)(3846002)(6116002)(45080400002)(478600001)(8676002)(81156014)(66446008)(81166006)(476003)(8936002)(11346002)(446003)(7736002)(33656002)(44832011)(2906002)(6246003)(305945005)(74316002)(52536014)(486006)(54906003)(5660300002)(229853002)(6506007)(99286004)(6306002)(6916009)(76176011)(7696005)(102836004)(55016002)(26005)(71190400001)(9686003)(68736007)(316002)(6436002)(66066001)(71200400001)(25786009)(53936002)(256004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5041;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +l2I7DAVaF5+LpP3NTIlJ2kWQlFOpzn6QSKe+V7v8uTZ4oOqedoDhXax1ZvlZLQlnz2sMd3HAk+8OV3Da7adVkizqhp8M07nokwYXJVA/xLfgZAeGKuaLG6QhEiXRHCtzXR7F1RH6ZJnyjXf7IN9xWLmUcqozrOiUmrPBDzEMJDjH5lYg7vTLsFvKwv63QVOTg7Ik3bWIQHCR9RCPIotcetm03PbD0fI9PzLqaF27NcGGQ9NgMlQ7ZdUVAswovVC/gDPtl16GzHK/zSN28a2uV/JOf3ooSw9AFe3UBBNHx+xaHogXCGqSMB67HudMV61n0gUO/1m+Bt2dGcymtkr3cO3DaDekOEtqqiXiCAdpRSGw0soz3CzxeqSHD2DpSbnVXSDP1abkmr8+L4NkySXn2U169tOn2vY659bRrf8wHc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1753ada6-17d6-4672-d178-08d6e59d8a86
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 07:56:51.5341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_005656_149241_4FDB83A8 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:61f listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: Re: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to
> audio_pll2_out
> 
> On Thu, May 30, 2019 at 01:22:57AM +0000, Peng Fan wrote:
> > Hi Stephen,
> >
> > > Subject: Re: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to
> > > audio_pll2_out
> > >
> > > Quoting Shawn Guo (2019-05-23 06:22:36)
> > > > On Wed, May 22, 2019 at 01:34:46AM +0000, Peng Fan wrote:
> > > > > There is no audio_pll2_clk registered, it should be audio_pll2_out.
> > > > >
> > > > > Cc: <stable@vger.kernel.org>
> > > > > Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for
> > > > > imx8mm")
> > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > Stephen,
> > > >
> > > > I leave this to you, since it's a fix.
> > > >
> > >
> > > Is it a critical fix? Or is it an annoyance that can wait in -next
> > > until the next merge window?
> >
> > I did not run into issue without this fix currently, so it should be
> > fine to wait in -next until the next merge window.
> 
> I was trying to pick up the patch, but the base64 Content-Transfer-Encoding
> make the applying difficult.  Please talk to NXP colleague Anson Huang
> <Anson.Huang@nxp.com> to find out how to fix it.

This patch was sent out before we find workaround in our IT.
Sorry for inconvenience. Patch was resent just now,
https://patchwork.kernel.org/patch/10969743/

Thanks,
Peng.

> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatch
> work.kernel.org%2Fpatch%2F10944169%2F%2322656941&amp;data=02%7C
> 01%7Cpeng.fan%40nxp.com%7Ca54e9a2a6ebf4411be7808d6e59c4c2e%7C6
> 86ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636948856849287143&
> amp;sdata=9ONV36WZT2owv07e%2Faf2IzQU5KzRE3S111joTBzsXJQ%3D&a
> mp;reserved=0
> 
> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
