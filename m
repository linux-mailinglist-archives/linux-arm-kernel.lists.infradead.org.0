Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A13370E57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 02:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJHwE5wt47I6bs8V5eqGJ9g266w4jbvPfz2BgMy+Tw4=; b=imV0vyuVL40djY
	dBZ7VrQ1zAhUHxHjUbGwXSM5NYt4avzSZGS/8j4psBDhM9nhwqYgDG80WkgpARtmUaxo8b1iOrH0F
	VUHD+AP4jXcSAkqSCfkZnF89dLMoM49AqELPX+klGZDl+7Jy3FWH2ND1nQcUZe0RBkNXQ5G9e6xNM
	MC4k0frh3AWYCoaPwjWeOsaaWpiFEtvkSKPpqH1yYQk7pUSXL6hp5dsyfGeNt/sO90eB6MVsJ3nrt
	baPvR/kKzlVxJUfZD7yO5akILTmjIOVo1meKcDTqb43BP5qe9G/ddm1UxbUkSHy9+34lujTPehoFW
	gsWplC9UDCTlhOKkMhng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpj7u-0004vi-HW; Tue, 23 Jul 2019 00:57:58 +0000
Received: from mail-eopbgr80083.outbound.protection.outlook.com ([40.107.8.83]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpj6r-0004uo-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 00:56:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fLjszwKIGOtF4Uvhw3zxUADTNBqvc95tWKQRsyHK1bcfzzEr8xbq7wgVvQG/gtD+1E/53Iysf+sMMU6rrKbY+xzMPITOrUVA72d/MsCaHY6xcPoqasMMaKm7pjUZKOlKKYhkYX5+w4a6W540FN5X8DAKh5Rp34MpJqgikS+aAEvtTN3oQ7GNxLc5J1oegx96M+Bw+7hVogkEy330oGNTcWwBQaEVKAbjP2OOtxsUACVOTTF43wgKvqlelrSm73qIT/fJ031ZarZddLInSMTIpSFDKvZO1Wjqdgr1SRof4oacKnUAxLJ1pFhAZbg4NX3ZiXY2rOwr91jflFXYIA7vvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2i0WmTErKnjdY6v4nm4iXLBxTZGu71iCTTFKfLzfNoc=;
 b=VOMo4bTbqzEgg8nMBYPXmES4wZL5PqH8HnodV/xH9EAY5h/vFVhy1U8064ruKxqEaX7TEg9H5Oa8YPj8AQQyRAPLXBHdQdgvxor2tDWzCbH0W+IOUmgQKCmkTXOR+OXSsMg6N+Awaa4vRJGf1uW9hhYCtNy8zxcdNeGGrx44a7OrWr5FsHyYDYhNKe9SbzWHLZJLYKpdCNN8IdjhqHdtOJWl4wEvx9QjWBh9/GtD9XkQAaYsuS/oC1tLi8XgNN1Ej6fjmUuYGvGNaVTnhpupLw1kAROJRy5ep1MGc5UxkQdcHkdfMa3apacm7pFDM9EB1R3Tk0of6UXqJfYUkTA4Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2i0WmTErKnjdY6v4nm4iXLBxTZGu71iCTTFKfLzfNoc=;
 b=bkYeL3+k6B7vosPFKlIJArp9pQAdwdrAmjH6kutQpgf3+77n8/iZ0qvJY54aBEHaa46Ueru+wcX9grMternivbN3XY/EHPEBn4cfBHxNa140mvjxCOsJSuIgy/t3rWVX83UE3wcTj7HbCFnBnwD8Jk0WJyXwg+8tRnPanlP8imE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5763.eurprd04.prod.outlook.com (20.178.117.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 00:56:47 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2094.011; Tue, 23 Jul 2019
 00:56:47 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH] clk: imx: imx8mm: fix audio pll setting
Thread-Topic: [PATCH] clk: imx: imx8mm: fix audio pll setting
Thread-Index: AQHVOrjKqRILo4kj1ESmmUTSG4SPJabXPg0AgAAvSDA=
Date: Tue, 23 Jul 2019 00:56:47 +0000
Message-ID: <AM0PR04MB44815D9F3B2ABC00D0CF311288C70@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1563157783-31846-1-git-send-email-peng.fan@nxp.com>
 <20190722220645.C51BC219BE@mail.kernel.org>
In-Reply-To: <20190722220645.C51BC219BE@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af149ee4-5aa8-4909-d091-08d70f08a36d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5763; 
x-ms-traffictypediagnostic: AM0PR04MB5763:
x-microsoft-antispam-prvs: <AM0PR04MB5763F7879112970DC5A6277B88C70@AM0PR04MB5763.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(54906003)(11346002)(476003)(110136005)(316002)(66446008)(66556008)(6246003)(64756008)(229853002)(66946007)(66476007)(76116006)(446003)(33656002)(9686003)(76176011)(55016002)(44832011)(2201001)(66066001)(3846002)(2906002)(6116002)(71200400001)(71190400001)(81166006)(81156014)(53936002)(4744005)(7696005)(86362001)(8936002)(14444005)(25786009)(74316002)(7416002)(7736002)(305945005)(2501003)(8676002)(478600001)(26005)(6506007)(5660300002)(102836004)(52536014)(99286004)(486006)(186003)(256004)(4326008)(14454004)(68736007)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5763;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6xxQ+OeQRQ+eX/NE46zPTPsOgXJZNJvi1qyzEZfU1rJKwsfOBaxRAb5xMFwOzOmIkpd4KmJEmYzQf8LEQoaI3i3c5wVnKusTJ8t4qKSIoyM0M8djLuqOeUKXxXwEwxCyE9hGTo5+k2rc2yoFIgiKl8yFBuQHZ6HHERoXcNDOtD5iojm1CYFm9GXGQnFff7smk2PocenFHic0Y5ze4F0HSPOCv424+wQ3KupDOQLHFSNqtY0BvpWFr8wKX+FqxItfYXTlKM9caYjini+8bAvpiS7pGGG5WLDzlsxhKyT/W8O6ZzAh8ZIKJkqh73y6ePKKJlTr1d4enK8wRJ1aRAn/qPvpAyirwyJeePkQXdg0wy707Uo+wmveUNkHumpaZ8ymw5hemJeJ7DZ9hm+kenYB/WgMBh0dii0GF3Pnsf2EF1A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af149ee4-5aa8-4909-d091-08d70f08a36d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 00:56:47.1373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_175654_086858_18BDC1C3 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

> Subject: Re: [PATCH] clk: imx: imx8mm: fix audio pll setting
> 
> Quoting Peng Fan (2019-07-14 19:55:43)
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The AUDIO PLL max support 650M, so the original clk settings violate
> > spec. This patch makes the output 786432000 -> 393216000, and
> > 722534400 -> 361267200 to aligned with NXP vendor kernel without any
> > impact on audio functionality and go within 650MHz PLL limit.
> >
> > Cc: <stable@vger.kernel.org>
> > Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> Is this a problem right now, i.e. should I apply this to clk-fixes? Or can this wait
> until next merge window?

Could wait until next merge window.

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
