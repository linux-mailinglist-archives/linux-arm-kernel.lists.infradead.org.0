Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9151F1AA961
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KfXPitPO8qDLAwUwWedUPDv0oZ2BR7nfObOpwumhII=; b=EfZ76GUMmJkpyD
	ZSdy95nZlHwZIZa/z4BoKKMTmX5Z1bZckaeSCm4uQQXiRENpe1ZGeoHLo7FKrEcRscxXfkGiwSvbe
	jOfu5T0hkDV74pDvVHNiutT/3OUV4MRj35ZLSMwwMbgLgNesqRCW0ofyPIGKs/0Hkta3pUsA7YDg5
	1qVuwU19hwhjbHnFOx3x6tKXh5TGmfZTu7IaJwdg82ZAM7gRWc33slWrUrbgJTfbXnrGiOFfGiwjy
	n0zSaCYHa7h4QbczyLZd+UNlvGmaaADxuH6XvQwhNRMk/TSjh4xO7ieiEevDuIgoArFJT7jXo5Kkx
	oJVIij6WXevOz98uDsVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOigK-0000YM-7i; Wed, 15 Apr 2020 14:06:24 +0000
Received: from mail-eopbgr140084.outbound.protection.outlook.com
 ([40.107.14.84] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOigB-0000XD-Ub
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OEnOjYGxE34jC0Uy+ymaLmNCgzC+oAlzBr/7bncj9NhHNS+4PkTO8KpZFoXgxiFjSDcOrXlX2vT0LtKL8QAHrnigp55UAH/jnGLdYSbRuH9rp6au+DncCy3h0Ah/VBM0+meXCfSA2OHfVEYGzsOPGioifsQcHxJ+yY5owtqfFV9t0XzXvOT7pWvhIa/zHR5ZvGiZKAhVtgEXu2ZIZxw7x6zQ+x/ynJmo/wGeWBropi3Cioz2t5+v+5Nhgt6mE1aGJ54eTkiJ4MixJc1I077RnOQvRr74hQ4Sj7dr+e7xOTvjTYMcNBn4SO4c3AhqkfW8cBxf+x+CwvO1dW9eClxzIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMkVlUwUIanYqi27DHk/5CVh6hwbNbnoytghIDK2gMw=;
 b=YepMgtM/Gsr74ngedzNSczdDei8NWXl2jixzWQ8qNp7Dcwnj4BUul2GTirIa3PZrJ2qJHq4WTNP10zz0B+ZestCoOSLA42Ez25EldEKBScJp3ZbpIvg85F6NVVXOTVyfpF+aE2RYvX6gaiS9qFC1hKBrfLCITafNERFfcagO4vSy1E6JAqeEgBT6bM9s0yOdSP2wMWqjElw5ASI/rgIBM1uW9sdE+Kd5Uavwydc8VE30iz3IYbDqygxkEY+tjOPXohHTJiXGT4TQ8ikqoUVedzLp7iOxlnFXHBOQ79g3O+VsHFXJ2oeu6ULM6wOLOIxi37AxU7DWhWpRk9FeDnfgXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMkVlUwUIanYqi27DHk/5CVh6hwbNbnoytghIDK2gMw=;
 b=K08vQLwguVhykzbWetoSGcv65OUDeyNZxKG0Qtjaq7ZJwz8KLG5cP5KvxN8hTrv4RUlGfdG4jLoGWFMhyLBKWmOCGIoMfeW2pHbiRL03qiBl9SmSsxP1ikrNDO8ddXE5MthYjd5NYWWJR/eh+8I8gMzN4GtrlXAglUdedLrSJ6s=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6704.eurprd04.prod.outlook.com (2603:10a6:803:128::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Wed, 15 Apr
 2020 14:06:12 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 14:06:12 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "Fuzzey, Martin" <martin.fuzzey@flowbird.group>
Subject: RE: [PATCH v7 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Topic: [PATCH v7 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Index: AQHV93/7B768gsXihk2i42KIYKNYiqh6JquAgABGloA=
Date: Wed, 15 Apr 2020 14:06:11 +0000
Message-ID: <VE1PR04MB6638479E728795FA28F7614A89DB0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
 <CANh8QzwanSewjJ98HL_yR1juiHo1RN77JQyNNKrMrud3B0dnww@mail.gmail.com>
In-Reply-To: <CANh8QzwanSewjJ98HL_yR1juiHo1RN77JQyNNKrMrud3B0dnww@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [183.192.239.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87fe4f26-beab-48e6-eb1e-08d7e1462754
x-ms-traffictypediagnostic: VE1PR04MB6704:|VE1PR04MB6704:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6704324F6B7CB16875706E5489DB0@VE1PR04MB6704.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(136003)(346002)(376002)(966005)(186003)(64756008)(33656002)(66446008)(81156014)(6916009)(5660300002)(7416002)(76116006)(316002)(8676002)(52536014)(54906003)(478600001)(83080400001)(66556008)(66476007)(66946007)(86362001)(8936002)(71200400001)(26005)(55016002)(45080400002)(7696005)(6506007)(9686003)(2906002)(4326008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nrW1o9UWANAF2hJ6m5XHJx8I6uZzAD/nlS/AgFF2DtuRyWzX6Lh+SG9PyM3mXu1+i0ldVZLzTyxO5QkLNEXhmc61z3dOPg+xf+XWT/eKS93ptM2RvBCFeyMqe66N3584VY1kKJnwDFYDSItNH7ju/AXMFFVg0oqNE0yDQ0At5RdOM4I+7VT/jAba4yHuQHCtevtEZsaQDnwBX0tYyrNj5oMOnRBekAmrrLxMC1a2/feAE9JPLNFKi4CNfPDeQQMIso32RbI9VEIYPobYLOWWgUxDJOd/FJtSUwjNzSgcxUUxqPwcrM+QKT6AlbFpKhC2i/ZDB/VUk+XRm3jG0SkdthQF61PsoeTP9QjytzbYjJDcHmdpf21N6sBobUcTHEKmLgnbE/IfixPUUUwH4jlWAlX3LHt9X2g0xbW1pcxDhqqULhJCMu6NtT1xuuGGMrojkFnozwxIa4yRSh0g2/hzncpCxRQMZXQP9Qydl6SLBOY1fkNaZqr49r8WRpwYnjw9Sb0OWxqhPMerXkUUfw0pPg==
x-ms-exchange-antispam-messagedata: BIAP8AE0QmRTfz/6Yu5n5ffDJ8UaNGZuJT5S/EkIB+SST+sUx19s5RJSnB8Eku3hcea0TTxKPzSzsskd+mqWSihPXaDT3WyMqUOuYoIV5IP10vZDMOJ4C9sh9kJTLa4IJdRL7F9xt0oTGHhqsglRoA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87fe4f26-beab-48e6-eb1e-08d7e1462754
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2020 14:06:11.7642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kt8RvLTh088XiEvPR8PwflHDUPPTLu9S6WQgxewzjOmnrzKA6JuTR3bsFo5FAKlfnip2d2nkzEKn/XG8pEHHGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_070615_988545_A290DD5E 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Will Deacon <will.deacon@arm.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/04/15 17:47 Fuzzey, Martin <martin.fuzzey@flowbird.group> wrote:d
> Hi Robin,
> 
> 
> On Wed, 11 Mar 2020 at 09:35, Robin Gong <yibin.gong@nxp.com> wrote:
> >
> > There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
> > transfer to be send twice in DMA mode. Please get more information from:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
> >
> nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=02%7C01%7C
> yibin.g
> >
> ong%40nxp.com%7Caf3ad866d3274fce2aaf08d7e121ffb8%7C686ea1d3bc2b4c
> 6fa92
> >
> cd99c5c301635%7C0%7C1%7C637225408450989272&amp;sdata=av3%2FnSaP
> pQ6rHlkmFAooZS6P8fnxC%2Bm7sJrBg30dUZs%3D&amp;reserved=0. The
> workaround is adding new sdma ram script which works in XCH  mode as PIO
> inside sdma instead of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0.
> The issue should be exist on all legacy i.mx6/7 soc family before i.mx6ul.
> > NXP fix this design issue from i.mx6ul, so newer chips including
> > i.mx6ul/ 6ull/6sll do not need this workaroud anymore. All other
> > i.mx6/7/8 chips still need this workaroud. This patch set add new
> 'fsl,imx6ul-ecspi'
> > for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need
> > errata or not.
> > The first two reverted patches should be the same issue, though, it
> > seems 'fixed' by changing to other shp script. Hope Sean or Sascha
> > could have the chance to test this patch set if could fix their issues.
> > Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not work
> > on i.mx8mm because the event id is zero.
> >
> > PS:
> >    Please get sdma firmware from below linux-firmware and copy it to
> > your local rootfs /lib/firmware/imx/sdma.
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.
> >
> kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ffirmware%2Flinux-firm
> w
> >
> are.git%2Ftree%2Fimx%2Fsdma&amp;data=02%7C01%7Cyibin.gong%40nxp.co
> m%7C
> >
> af3ad866d3274fce2aaf08d7e121ffb8%7C686ea1d3bc2b4c6fa92cd99c5c301635
> %7C
> >
> 0%7C1%7C637225408450999264&amp;sdata=%2BgcoGJqUKAkZbc%2BXgtXPsp
> d6X7p0G
> > Ds7ndyHY4i1wp0%3D&amp;reserved=0
> >
> 
> A couple of questions
> 
> 1) Is this series needed for the i.MX6DL? (the document you linked only seems
> to mention i.MX6D/Q
Yes, it's needed for all i.mx6 legacy chips include i.MX6DL since they share the same ecspi IP. Show the i.MX6D/Q document as a sample.
> 2) If the laterst SDMA firmware mentionned above is used will this break
> systems running mainline kernels without this patch series applied?
No basic function broken with the latest SDMA firmware and mainline kernel without this patch series, but the ecspi issue ERR009165 is still here then.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
