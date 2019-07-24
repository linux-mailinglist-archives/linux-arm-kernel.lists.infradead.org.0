Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C6372411
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 03:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Td4tufCzObZPJTgTNM9FUQ0vuo7DTYuCbdAW7gJk/9Q=; b=ADUJx1M6393N4x
	ZFG06BLvRN3OSk5r1MDf/etR6CCPpQecznhEPYAvT5fY/xJFKM9TFbL0d/u75Kni7IDxGdH3FLkXh
	bsPpaxHSaTx1t0kpArdA/2JkyB4mCFjUYkpmKwPBuwgeU96TnUHia5HuAFYsz8fNTWaqBj1T8UcnA
	p/JdXEiYcGndZh3yDRyV+ZmrSuw7YqYl/UCceOMZu2wqI8YXuyiG7NiDYy4L7QEuvXCidbR2YZZlv
	8yI6aWR7mJUNtRTjdYYqRAIAU3d8iSf25ok1YsC4xN8ndKZm1o8RWXiXEq9Wixy7CUCKDPQo/sC3r
	9GysGvb92tsJ8dPeqAWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq6T7-0004wK-3K; Wed, 24 Jul 2019 01:53:25 +0000
Received: from mail-ve1eur01on061b.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61b]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq6So-0004vT-6V
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 01:53:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KQTOEWBkE04IY+YAyrzfpgwlv93BC/UfmnlY4I5Rnnu69m5crFIR3nMuozpmwShzXM0ZsO1TXuRI0kR4p2NnbGb/xSff8gpIlfCzRJ3sIRESxaSX8M9cm2e5ACvSYq0QKFf7CgIjTVs7IYsxDs80WRjL8+mnFVCogfVOgywjLniGkFndmxZesC8nd1CE/5WIkpUasqSCz0fX8IVPQ8ZaqWU9xXPviX82tNXbgLGfE9jh6cMaQ9yljidhpmBAtxqnb7J3p7WnGbfryBK0/VNMF++ppbC2zQTAKDzpo0Gl5BNQCe9mD28SRJzcyKql5QwTWnVV1/dHMWUe2Vd65naxNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XVRTQOJR8hUnc7CckOKhDvoVieXPJrdfQhUMUFZtr60=;
 b=mLO0BAXB5arqC6QvgNlnmklpthF2TszeSehQTJAPXTbf44gy0I4pNoEDGmimL2FkGP1H4XLKfssl8IDuZrMx8peRxw0uTDI6GSiBXrx39VBCbqQ8JsRrdwNN9O8lSSsUJ2sF0H+QMvoLVxqHukuUXesNfXZBANNjKFO3perFZdeWUdPX2LbuJfg9EGR8QY3bEB/1ttHFCLjrUY1iYd2D5Suymwjm3d8itf+M40os8k6xO+8yUF6OYTu1hbnXbG4V50ShUN2cJS3f8F5MhacFj63IuJDZ/ukoWPk3oB0ioj1giOIdONMCDIKgP5w336lCCFCiutvT2aPuUZURQ/6isA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XVRTQOJR8hUnc7CckOKhDvoVieXPJrdfQhUMUFZtr60=;
 b=rgxIEaoJ9pJjqTGIRqLjPk5AgUK6+HScSwjGq6hxjrRC1a69OpSMGZZkT9E2QYDsmuBDzlTTdy1S7WIIpurQiNVixdHwgmjh/lRs/zH/sEtimmv3XHwCr28oPKhPbtqyVX2U6Wr8SokWXAEgAnlmpH2/bbs3u/s1gMA1PDiQjfI=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1SPR01MB0007.eurprd04.prod.outlook.com (20.179.193.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Wed, 24 Jul 2019 01:53:01 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::905c:a110:72fc:3a49]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::905c:a110:72fc:3a49%7]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 01:53:01 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v5 12/15] ARM: dts: imx6ul: add dma support on ecspi
Thread-Topic: [PATCH v5 12/15] ARM: dts: imx6ul: add dma support on ecspi
Thread-Index: AQHVH2TVoxrocaPAG0GbhXUgE95pRabOlrSAgAmbW7CAAQJGgIAAEIzw
Date: Wed, 24 Jul 2019 01:53:00 +0000
Message-ID: <VE1PR04MB6638F60965CD3D5CE47F26C489C60@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-13-yibin.gong@nxp.com> <20190717064204.GA3738@dragon>
 <VE1PR04MB663894FA5BC88B130C70AC0789C70@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20190724004848.GV15632@dragon>
In-Reply-To: <20190724004848.GV15632@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 153fc810-43c0-4ffa-be34-08d70fd9a8e4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1SPR01MB0007; 
x-ms-traffictypediagnostic: VE1SPR01MB0007:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VE1SPR01MB0007C7C8F79C9966AFE4CB7589C60@VE1SPR01MB0007.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(6436002)(33656002)(55016002)(966005)(66066001)(4001150100001)(6306002)(486006)(9686003)(53936002)(2906002)(102836004)(8936002)(6116002)(68736007)(25786009)(6506007)(53546011)(76176011)(7696005)(478600001)(186003)(11346002)(66556008)(66476007)(81166006)(4326008)(8676002)(99286004)(64756008)(14454004)(26005)(305945005)(316002)(7736002)(256004)(4744005)(476003)(76116006)(5660300002)(229853002)(66946007)(54906003)(52536014)(3846002)(446003)(71200400001)(74316002)(66446008)(6916009)(7416002)(81156014)(86362001)(71190400001)(6246003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1SPR01MB0007;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GHJD73MEUaC/tMFOsrJaSUhVSGrdVXLWUG8i8gVF083Z8djAh+aZH4AtLNofEPr0hzxubHDvFE9hsUYLtaOphE2LSOSpTmvH/hyoOT+XB0/KgcvV2wM+sdv1iBhL8Oamhv4eLMqMy+2gELHLrwfReLZbwU4OJ03bPguINsp85dYeUjQxPG7y9A9w+OgbKx67F1fkZ3WlLEahuwtTAkc6rEw3Dr1mVqa1oQ9+BP8eUJwNRSt7Tp8wSCl/eq+XbpmlBEhKy8OtxIA861rYfjEObHNznoESU20iz7eWqpsCoeyn27Y60JQ3/SaAX/UaQ3TYavsDlIBNovRFIeadrZFm7nt2gB8CRV+krHmZZMrx4OSC1QgQBVkurTCtBFpOEDz0Pw/T4c3t1+T4eAi8FZGmUnjbENxAGbTv7yK4eiwC3UQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 153fc810-43c0-4ffa-be34-08d70fd9a8e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 01:53:01.0358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1SPR01MB0007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_185306_246475_41FB152C 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:61b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-7-24 at 08:49 Shawn Guo <shawnguo@kernel.org> wrote:
> On Tue, Jul 23, 2019 at 09:39:38AM +0000, Robin Gong wrote:
> > On 2019-7-17 at 14:42 Shawn Guo <shawnguo@kernel.org> wrote:
> > > On Mon, Jun 10, 2019 at 04:17:50PM +0800, yibin.gong@nxp.com wrote:
> > > > From: Robin Gong <yibin.gong@nxp.com>
> > > >
> > > > Add dma support on ecspi.
> > > >
> > > > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > >
> > > Applied, thanks.
> > Thanks Shawn, but how about other dts patches such as 01/15,02/15?
> 
> I need the authors of the commits being reverted agree on the reverting.
> 
>   Sean Nyekjaer <sean.nyekjaer@prevas.dk>
>   Sascha Hauer <s.hauer@pengutronix.de>
Seems Sean's mail can't be reached.
Hello Sacha, Could you please help test if my patch set could fix your issue even
I revert your patch?
https://patchwork.kernel.org/cover/10984301/
> 
> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
