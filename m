Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88C789ED5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMWFs0ekDdlTHCyx0llRn2jF5eLd9Uq6h3Hnmjfrx0A=; b=kdfKTRSGJgJs6r
	nznVDc3q0zdGvPmnY0R478lvzhhE/kKHY/kr7cutaQvgN0mCTiWbzUURPnT9FrM3tPSdCW48G7uK6
	X61fha07tmmyUR0SkpKH4RfNdFVIKjJgRc3kYcJn9i47XAwjR0LpW4mXjUdSBDYo5noUXQiSiBlnZ
	Eam3k2m72ikBmi36Ops5BcDNRCWHk5oGEWo6v8odYaVnaRm/6NnNfrA32wMdrcZ+TY43lsw8048AP
	UjWcoBwOwCT4eIJ7ZLcHnOs/qsF9AarDX7tEEkhIkQwAh7ldKfbw3s+tcW4uNt7DPQAi7naxrQ18M
	s+mRRwzVW2HFNKDfP/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9pd-0001js-Vc; Mon, 12 Aug 2019 12:53:50 +0000
Received: from mail-eopbgr10112.outbound.protection.outlook.com
 ([40.107.1.112] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9pO-0001ij-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:53:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TECit3S8Av7NAhgCOQ3hxlga81QIkQHgz5weRyjnH7e61JozRIC+AFdZEgdnLU0u6tGArenzh7bZpWO3ztsxxLrras47yYAzsVHTBhYWGL7qOadRgRPcKQ2jn/Orkv+eCi6NRcY/AxXC6hptDdaNW2IbuZPIuFF+1SPlbRIY+E1I+Tjn/I+7edZDAd6rvxTcDwk+kimGX/zsrt0GIGAH2M/N9Lq17EdGiF+TRTseHrHb26AXjoaNY++RpG0LUSdr6NasLB5YUeVhZNjSFI9Wpw7H+SKYvInu7iRWj0zGa6yGsdoJ4SvObAFAfWyvwdmAHxGCz9kQ7mvRBmoUE+XB1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i611ArID7UCiLd1fAoPehTbTVdHX+iMBapqY/7+2E1I=;
 b=Gj2RBzT42OEhA4mKnjiwWQyXysn3po2Fk97OdvZJdnRTlYep7wZ6p8hWGiXdAav9f5kHpF1RP22hnCYJDHNbla9Ge3Yk3FtXyeJqzpl6zApidvOYlDtyr6DFzf/f8b9Cae2NpqfjDNzPUYePPnUSRk3RYPEBsepxjiXoSFdeDx5mu7VAcGNlUXpL0zTSnQ1iTAuJ/E9vpcRxHmXSXy6Ws154gMuRO1Tl4KjRQFhTljq3MrzfAXqwMq88PA++lVRUDEzbf4/kXqOtLdaKHjaujiQ+3DRKYuVbef1SSPx5TBAdjQ0jdnAK2n/+SUbDy6W6RCctEyWXsNjHHoXA/hKDKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i611ArID7UCiLd1fAoPehTbTVdHX+iMBapqY/7+2E1I=;
 b=f0hkdDpI54ENKzXpEUzAsxX1TQKrDQJKXlcHpDbxAue1c7Hk23DxC7goWgG2Lnfa8w5t/Ahj/fP60jbjT48DjvHtq8f4cSL2lYta6f0zIfM9FjqX3b5SnntDw1xIpcbToRbkyrWaEE09o5FKQavfYeteiRXl0jKZyRx0+v9ohAU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2896.eurprd05.prod.outlook.com (10.175.25.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Mon, 12 Aug 2019 12:53:28 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 12:53:28 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 19/21] ARM: dts: imx6/7-colibri: switch dr_mode to otg
Thread-Topic: [PATCH v3 19/21] ARM: dts: imx6/7-colibri: switch dr_mode to otg
Thread-Index: AQHVTPnYpzmKFIEQakCY1BjdKzKruKby+m0AgASFfgA=
Date: Mon, 12 Aug 2019 12:53:28 +0000
Message-ID: <e9a6dea440a646d19c18f3487427bc0f754a7da0.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-20-philippe.schenker@toradex.com>
 <6fdbd56b71c1192c67b2e28accd611ced92de555.camel@toradex.com>
In-Reply-To: <6fdbd56b71c1192c67b2e28accd611ced92de555.camel@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 449e3220-0811-4b5e-33dc-08d71f2412b4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2896; 
x-ms-traffictypediagnostic: VI1PR0502MB2896:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB28966A2FB17EB6D77144B3BDF4D30@VI1PR0502MB2896.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39850400004)(346002)(366004)(136003)(376002)(199004)(189003)(7416002)(25786009)(54906003)(446003)(2906002)(2616005)(476003)(11346002)(8676002)(76176011)(53936002)(36756003)(2501003)(6246003)(6116002)(3846002)(186003)(6512007)(81156014)(99286004)(4326008)(86362001)(102836004)(6506007)(256004)(14444005)(81166006)(26005)(66476007)(66446008)(64756008)(66556008)(66946007)(5660300002)(6486002)(14454004)(118296001)(76116006)(91956017)(8936002)(229853002)(71190400001)(71200400001)(66066001)(7736002)(6436002)(305945005)(2201001)(316002)(110136005)(44832011)(486006)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2896;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1wU/I4v5kR1MT0UCluGl6Ws0+7BDlzCM5u/XebsgM8rEP1FPVe6LoQf47aS7c7F1N9oaAJHu9NqNQHTjw+BKHISO1yjj9K1w7+h8L6r+eiCHExujqEdisL8XPKfmj5PPGdcUljTMexneTDyG8qe1HVyOUOgKXjmCaQ2fXeZjlK7jRd5oU+H7g3O+WfI4I+TY1jCyA4ewM7szbT3Zll5OQ7JoCy3Ze14tJAekKg5fj2RqFADoe/wdEAgrgAPKe0mpdF9ZOf7kMJphl8/qWyxiTJM/cjA51vz9ehb+3v+5tqr/+Uq47faUs/6fe6WV8FJ/W2QU93pLMaX1dIz1tLuAS3IaSm4xEYNIghmNEDZDgoAhYOPTRrbta2Gr1D8tDmMs0XAdexRVMfO+tKC9GbV7cnclulc9DQwRgPY8wzbSLdc=
Content-ID: <7103F6984D8B004C9D2AA8AA0A4D7D7A@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 449e3220-0811-4b5e-33dc-08d71f2412b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 12:53:28.7478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vGPX10hUgT8PQuwoUg5Bko1FNCD3sxDkLecWi037QWF0bZTQDt0MioZ9OD2V5owR2YAocBqhs0v2Dq+7uZhSe4kpxi14TDQjQQAwKygeoNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_055334_379992_59C03E7B 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.112 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-09 at 15:50 +0000, Marcel Ziswiler wrote:
> Hi Philippe
> 
> On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> > In order for the otg ports, that these modules support, it is needed
> > that dr_mode is on otg. Switch to use that feature.
> 
> Isn't further extcon integration required for this to truly work?

Yes, I wasn't aware of that. I will drop this patch as this is a whole
new topic and will hopefully be a whole new patchset soon.

Philippe
> 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > ---
> > 
> > Changes in v3: None
> > Changes in v2: None
> > 
> >  arch/arm/boot/dts/imx6qdl-colibri.dtsi | 2 +-
> >  arch/arm/boot/dts/imx7-colibri.dtsi    | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> > b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> > index 9a63debab0b5..6674198346d2 100644
> > --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> > @@ -388,7 +388,7 @@
> >  &usbotg {
> >  	pinctrl-names = "default";
> >  	disable-over-current;
> > -	dr_mode = "peripheral";
> > +	dr_mode = "otg";
> >  	status = "disabled";
> >  };
> >  
> > diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> > b/arch/arm/boot/dts/imx7-colibri.dtsi
> > index 67f5e0c87fdc..42478f1aa146 100644
> > --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> > +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> > @@ -320,7 +320,7 @@
> >  };
> >  
> >  &usbotg1 {
> > -	dr_mode = "host";
> > +	dr_mode = "otg";
> >  };
> >  
> >  &usdhc1 {
> 
> Cheers
> 
> Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
