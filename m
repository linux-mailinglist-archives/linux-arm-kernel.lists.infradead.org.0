Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E910F4C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 03:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ch67FmC29aTbyZs9h5B5xKHF2J75DLcSqDW+/570/iU=; b=qT/SQ26x9Bo3zg
	t297e1IhUM0LkYt1iJKHdzmijY/HZDwr9pGNv6bhpkVENiqvlS5WHHMpQ5U5AwSKaXagJ9G3ZbnxX
	7KIwjPqDhXlUtWFx0qBXzuwHP19+weVcCHolzjiWM3uLqvpFyny2/DE/kDHe8KmNzpIalTJGe2TpI
	JpQddauAu6pmM3e5RfQPqfgQbpNhjlnuFsEHuwoKaZBMdhcvmF6dNs2HYWrWANEA5oyRAAYqZJinU
	eFih8NXuGezNrfQncniYivoaago2/w5yhgUPyzzXgZEbYgZAIwnYyaKrEdAqTX2zGttbjC9fICUgZ
	IW7A5eieVeTfjTbmibYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibxaG-00010I-Q8; Tue, 03 Dec 2019 02:06:36 +0000
Received: from mail-eopbgr10069.outbound.protection.outlook.com ([40.107.1.69]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibxa9-0000za-5T
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 02:06:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TvbbLuFmGxZdFTad6MuCDP0sFxO3J6LQTOEITXDEB2konZ+aYSGcDTi2Qi3w08Hoza9tYdVV2FuRSZ4eJVVQDCdlksnhGJprZapi5j7kY9hVcO8gTZZr4c9o/Mik6e+7DgAbNp7h52NVoWirxBSdBBgnsNr4GbHu8u7uDm7hNkrcLUlwOWHwsljHxqLWp5UVEahvLodaUkDQjFcbUSBX1TP8307eO+t8WvMpRMzoBxCwBBm2GDy/LRDzAwCpNkEgCZmNSU/VwQj1//QH99QCMQ90wmlg10aumhPHZXYAamcZ//RVs7iv31eP+4kPSerXBIaRsn5rEY7GGCFcpK1Drw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFKHw7buYOeEI4jNps6gd2jlp+XjgOHTnaBECrN//zE=;
 b=inRwP0EWn1I/fBKxALDiV71saVUdkYxnXi//fY6QX7SbhP0RFjlkwUU7GC+1n1AMPW+ubQFTdx5gZf4sH+i2+kKg6Ve9OEAH3rbMtnk+2EwoYL9Jxagi5OWEXWFL8dvYyvYFwf9VTLoGviTpU5nCYWkMB6Qj370NArniG98zL2P3dWEffkjE+87MXUHsI2JfooSw5CKgsC1y/iIHE6BnGI6VUUCHt7C718MJQxZoDvmz3vdXB90brIMcr4c9vWTvWV3f3vF7ryaXjDkjy6jDFvyi6OC3su0l+VlJBfCGotZgoyGBz6kGGdbnHqR1vyR25zsdhRatG7TAJk2z0ucI9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFKHw7buYOeEI4jNps6gd2jlp+XjgOHTnaBECrN//zE=;
 b=UILtfsIP3ZlEOQohGGMMIQY6d6emA5+lXhqKrVORNSpIIFbv6a30eEQhJJfLyRwLVI2UakQawNGRYsFSZaoJpH3uAespPdHswCwP9cPvGQrjc47bko1NW4asJJ36yr9UGaLSbW464thRf4KzvmZXuik63iMG5eBy1hNjPuUopZg=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB2862.eurprd04.prod.outlook.com (10.175.23.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Tue, 3 Dec 2019 02:06:25 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::30e0:6638:e97c:e625]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::30e0:6638:e97c:e625%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 02:06:25 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Andre Renaud <arenaud@designa-electronics.com>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVqVLo4K9VUksIR0CZH5d48DlS+qenpL4wgAADpQCAAAElwA==
Date: Tue, 3 Dec 2019 02:06:25 +0000
Message-ID: <VI1PR0402MB36003D1412629B09289D977FFF420@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <VI1PR0402MB3600E87D07687EDD89AA1050FF420@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAEj2-1OXUguf-iT2E_HVE-c5LUkufCapsvCOZ0iT-knkLp1vFA@mail.gmail.com>
In-Reply-To: <CAEj2-1OXUguf-iT2E_HVE-c5LUkufCapsvCOZ0iT-knkLp1vFA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d230191f-b84c-4663-e1c8-08d7779566ac
x-ms-traffictypediagnostic: VI1PR0402MB2862:
x-microsoft-antispam-prvs: <VI1PR0402MB2862B844D705611D7BA19BBCFF420@VI1PR0402MB2862.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(376002)(346002)(136003)(199004)(189003)(66556008)(66446008)(6916009)(99286004)(66476007)(86362001)(66946007)(4744005)(7696005)(64756008)(305945005)(9686003)(55016002)(76116006)(14444005)(256004)(5660300002)(229853002)(14454004)(7736002)(4326008)(25786009)(33656002)(52536014)(76176011)(6436002)(478600001)(74316002)(102836004)(316002)(6116002)(11346002)(66066001)(446003)(186003)(3846002)(54906003)(8936002)(6506007)(26005)(6246003)(2906002)(81156014)(71200400001)(81166006)(71190400001)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2862;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wFQjA4eqoQyZCyGjNWxx8RKvO6zx7fkRfCSi6mBso5njIIsexGkTT/u4XvJD6DSAIt9OMPY+rwygywX6TeNXfiqkAo2uweM8GmmDDKItXmaZmsrjlsu00vWVKJE4/k5hCXveQsYBiNptNgZSV7VFWSmFg7PMJcETITNKjii6LBeu+QMDIM1WxjlO5KDR3EVkj87SgZLzkREr7a/X/UYMMHZXgVhUzOuXQKlYrZcpsp8l4Fyb0tbG0/1zNVgHaaabLy9/ux4ujdpurj/4HeYApra76OTxuQsZ537VrR/4M1XXwAR5UIGDJmYNpMDntzQcA1sWg/ZwR1wjLPIkWsOcGXNewjowVrq/l7kUt5go+9yOJPa/sxdrj117UI5Yb6IIURMRs/av9BrCEb7l8G5K5mVpE0HjY2XAvz/m+Xd9lwIQgyuyfoPYF9UuztVTlu5B
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d230191f-b84c-4663-e1c8-08d7779566ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 02:06:25.1103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UtZ1L+mPYfKqYV0EiklcRgIFHAh/6ZjvfrDLaBNkodvP8KMeHw+K/Zu3ySMFEguhcK2dNgwwZ5pFVWTJKd2hHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2862
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_180629_207507_B2BE71B4 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabio Estevam <festevam@gmail.com>, "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Renaud <arenaud@designa-electronics.com> Sent: Tuesday, December 3, 2019 10:01 AM
> > > Could you please try a vanilla 5.4.1 kernel?
> >
> > Please try 5.4 kernel firstly.
> 
> We are trying 5.4.1 at the moment, but will try 5.4 after that if the issue
> persists.
> 
> > Can you remove the sdma firmware
> > "/lib/firmware/imx/sdma/sdma-imx6q.bin" and try it ?
> At the moment we have CONFIG_IMX_SDMA not set, so I'm assuming this
> binary wouldn't have any impact?

Yes, if the config is disabled, SDMA driver is not loaded.

In generally, access uart valid registers cannot cause external data abort.
> 
> Regards,
> Andre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
