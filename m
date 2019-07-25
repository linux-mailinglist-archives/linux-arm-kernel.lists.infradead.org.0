Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB867432D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 04:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90be+/Zp/g/L/gqjCx1OhS4cXhciJUmTvz0CXyh9K5g=; b=pPYF/cmox+6E4o
	9nvP24pb3DDRJZ1R8VqNzgCQOMuJZxSaYNIo15WobVjqb8BCBl/EMgehi6yauKNnKRYXUh0TbQX93
	LHxYIGOHv4VIw+5kHDugk4TOqoHG9wYe+daG0UaDHQNJj1kn4USgANgAs1UMrS4rwfAdfWSwYHX82
	Ftc+yceOVnrSaBr0Jhq1wv3KtF7bN5NFzv5+6lrlyxC741pYZdc1GSt5L1iogpb2d76up/NLTYvSK
	GXQDfbra5nuB1zf+h+J2LX0t6aIR600C0074QI17VnfaUQjlM462CYqtp3oqAr4xWSfvnLYzHS8hY
	qxsYRYAIa5VCZ458RRJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqTK2-0007Mc-Kj; Thu, 25 Jul 2019 02:17:34 +0000
Received: from mail-eopbgr30060.outbound.protection.outlook.com ([40.107.3.60]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqTJf-0007M4-JY
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 02:17:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EO8Iv2SKeBpJVB6EgrynBzMsGVq9vzc3lXl01spDJ76ItNKoGYJ62K67dYq+buV8ulSP95AiYZWpsmomshryER+0kB4wOj2CT7E3jQwZgbEOW6VopKWqOpFBm2wjSZ2vq4eSv8jwnGxQMjvEuPJecxbq/6aiNte+4gzn6wY4X7P//pn3SAGkLGGrxT8O6vS3H+23WXaBs3J++jyU0ah0yrO4X4YPRD+XHFKubNfoVJiex+TGJjXO7Vbk0hMFcmroBoGzDicWtjRKYN9zDecK5RKpjSHEHs7bOjF8jX542q+OWEgGpPLNWDCtrBkekfj0w1GzwxRElwD2AxvuiWeRPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0mgIKzVyCphgL25EDVWyAurRhll0FtVykQBdQiTs0Q=;
 b=dscdgEf3F2guTArPNvi4759e6/7hNRh0ZF6YYzlX8w3rMuW9dBWt8zHrz7QQbmkBwu7c96/ICj+tc7foipEilEr51aR3y+bQljComsynu3mGy3sO/5UVv+leYd7MqRuZ9B5sKw+VEeHWqyc2rl0MeNmrUfbC/ZJMqOxf6a6VHCptW2TgqS2m4unz/9b8mkhPN/owMiau3F4l91qrbC5c0yuIoJLcF6e4BrwNTM6GjHS7ukFoNWM0RCOsILpXPdD4+yy8ESrMxQ7sQTyzGvyhn2IKZzudcfn6WH/zqYH7Vw4I1PKfOHd++QOHxUc65wqJM4puz73X9e7mMxlv8OAJXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0mgIKzVyCphgL25EDVWyAurRhll0FtVykQBdQiTs0Q=;
 b=hXVnN4YPU7L4YB2+pkTo9a4EnfcygtJwTAZ6plQETCVohXs+2e0qU5jm3itaHk6v4b4E2KkNGIFzuBapHfgwL1BdgSoGZ9JyIQQ6mJQL/Ig1zMQeOQSDmY/YkTTk/NHFGqw6WrTI5oK/GqDt4hwoELkuESrYlUOwQ0zTto4LvwQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3705.eurprd04.prod.outlook.com (52.134.70.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Thu, 25 Jul 2019 02:17:08 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2094.017; Thu, 25 Jul 2019
 02:17:07 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V5 1/5] dt-bindings: imx: Add clock binding doc for i.MX8MN
Thread-Topic: [PATCH V5 1/5] dt-bindings: imx: Add clock binding doc for
 i.MX8MN
Thread-Index: AQHVJmMF006ndGW3RkqrRMH2CdLcnabWEvkAgAP8B4CAAMHU4A==
Date: Thu, 25 Jul 2019 02:17:07 +0000
Message-ID: <DB3PR0402MB3916A6EF2B9A34FB798120F3F5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190619055247.35771-1-Anson.Huang@nxp.com>
 <20190722015043.GP3738@dragon>
 <CAL_JsqKv39XdFABuRvxwiXg6qQpHSuykwgqTwsGw1g+D2wA1+w@mail.gmail.com>
In-Reply-To: <CAL_JsqKv39XdFABuRvxwiXg6qQpHSuykwgqTwsGw1g+D2wA1+w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e457c78a-ad0c-4eff-6cde-08d710a631a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3705; 
x-ms-traffictypediagnostic: DB3PR0402MB3705:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB37054A7FE6B0A73AD53089A4F5C10@DB3PR0402MB3705.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(189003)(199004)(229853002)(99286004)(476003)(8676002)(110136005)(446003)(53936002)(11346002)(14454004)(76176011)(478600001)(76116006)(7696005)(305945005)(66476007)(7736002)(66946007)(54906003)(186003)(74316002)(66556008)(64756008)(66446008)(4326008)(53546011)(966005)(102836004)(5660300002)(52536014)(81166006)(81156014)(26005)(86362001)(7416002)(66066001)(25786009)(44832011)(68736007)(4744005)(33656002)(6506007)(486006)(316002)(8936002)(256004)(6306002)(55016002)(2906002)(6436002)(6116002)(9686003)(3846002)(71200400001)(71190400001)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3705;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Wy6h3EaLCvHxyT0+rpNeDPu1FlojLXi5O0HOZgkQeo3qSAux3+xFePgA26LIRxsiD703T8w6TEenO8pG9kQXBbMXLL1m+ofzx7kLUFYwPTUTwRSmzlHkEGj09ADpx+aBtehBwvDhJJItrD47d8ttNJ+SkR6c4Y5uj62lih7vQw0D0toXpf7GvLwwjyWn6JYZBclRaTCujgf4aKkc3raf/hdYajJli9pl3e+ZmZWvOAHnC6MsdmWD/DgRa6b1Se7lMnid2ytMM6XFl3rb8+fswbuRhXz+UdJ+YNDGzkGb0DnQVYCNYBCJIm+GOO0keN33aFxdzhL8TWn/rN6PWTfO+emMQIR4ERKLliuCsDjtVqcl6RfZSrvMCukykenZJRTlQJ+6K03MY5dcpymTdMorbV6u+WVD9quDoAjighiQ55E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e457c78a-ad0c-4eff-6cde-08d710a631a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 02:17:07.6947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3705
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_191711_731469_63DC4422 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Simon Horman <horms+renesas@verge.net.au>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Sun, Jul 21, 2019 at 7:51 PM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> > On Wed, Jun 19, 2019 at 01:52:43PM +0800, Anson.Huang@nxp.com wrote:
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Add the clock binding doc for i.MX8MN.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > Reviewed-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > Applied all, thanks.
> 
> This breaks building of 'dt_binding_check'. Looks like there are tabs in the file
> which doesn't mix with YAML. Please fix.

Ah, yes, there is a tab in file and break the YAML format, I have send out a patch to
fix it, and YAML file check now can pass. Sorry for it.

https://patchwork.kernel.org/patch/11057815/

-       clock-output-names = "osc_32k";
+        clock-output-names = "osc_32k";
     };

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
