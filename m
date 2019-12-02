Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF67410E58A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 06:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ED6fd6Go3uDR4AF92GipTCM48RtMVugUB3q9Ysi4e4=; b=VbQCipHByv72KP
	r8FQYseiWBjUyOecMehNjgTWM03xtsJtBNS0KkNWXRvN0pYtKuL2dH9Js+UiKiUuUZwfuJo0rv7pk
	4Sny4k6d/d8FhEanfVh89ZrbVByzu3m2VhnoZHCwbAmcZ2SfxaAHpGehcti7bHHLMAwK6AT75zPNr
	XP9p/HZYuYzqIt6Y2ydygOqEXxSBjBbpi7Vc4iQ/QgjOAZiTDOK73wOGv5ZPIvKA/nn9CFMeNQ7tp
	iRvXtVRuIgUd7azfW81/1QyY513zEy4PH3tPKJ4gld3Kd5gAO+pcgXB0ZlFUuAXr+AveyY2bloeJ5
	gBwsfeGS5aumacILvHAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibeUi-0001Kw-DB; Mon, 02 Dec 2019 05:43:36 +0000
Received: from mail-eopbgr20085.outbound.protection.outlook.com ([40.107.2.85]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibeUY-0001KO-97
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 05:43:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dcO9+ZGNEmSIcisQ5xSS3PhebMGsNw5Wbdtp7pUtpEDoEXYnbuf4b8a1GzVMJKr/bvQHgjmReoFRFUrMmAmEbpzGnR90pKvp0iZIma2hnjhIzt7f+i18t7BU5bOkTrr7Dilo4DdpfGSCeA75EkNGifEb8gHDvpe0ZX+n6/higM5E0VEJ1PDvTOEsA8u5KN27wHrtIqgu99GXb1SQ6FnnoP5sZsEM0jOFscF8qaapfrMaUKweGD7Iy/fr3FAnSGjccCQ271oU6WFFQBrn+Jb4Owq/kKctwfQaOg+G9Heil77TycL29edVGo26LiTXgasE0QMn4oVK6iOnnY4oggpStg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0mGa9R5++e7rDSKn6rr1bc75KdorayaimobJ7+6+Ug=;
 b=cgXEZmGP5l9xuKiwQPPAAHYxFNVR4HDxwEUixkDaaCH6sDhjSLCjRJZ3VrPamAoa/GMA460dDJJY2UW2PgmlwPxFI1t84YHbMpxONsHr8KnAW98rKZ5zA6ibHPCeDZS6ohETKOD8QR/k5GAWLb5iPvA96pmxe9BKGLqu9YB6VBiBHcACoK2ERjbCQgH/tJTyWcz60fNyEywqu68arRCqgZxhNzJCcZaAyiAO0JBIPOYkovZlvHb2sMR0Opfx74FVVKzBCzitH3eMK65h5jTHFbJU+IVGheRyUEY0OITaH4w4wfxDHNzE8kwu+M0U92SHfekd/SasxrA/VnmcqOVEag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0mGa9R5++e7rDSKn6rr1bc75KdorayaimobJ7+6+Ug=;
 b=rQinLrZ4doCMFz+52/rilIABPn6Lv7n3EfEU9BGRmnYM8kZCjuCI4QX3s9vXB579vhB9rfUepBg0glXWY1UBgTmVmh5BZZXEcfJ+DIT+ww99Vcq10PQGhZkv9KSfEa0CRfZHLVOV7YvdB3sqjEaruAY3WlX7/GFAXnu2vRK5RJk=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3569.eurprd04.prod.outlook.com (52.133.44.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Mon, 2 Dec 2019 05:43:20 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::e885:ac97:fca8:c4e]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::e885:ac97:fca8:c4e%3]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 05:43:20 +0000
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: Michael Walle <michael@walle.cc>
Subject: RE: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
Thread-Topic: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
Thread-Index: AQHVojp/XO5z0jeXk0+aNgRvimpOIKedAjswgAA8FYCACSO5MA==
Date: Mon, 2 Dec 2019 05:43:20 +0000
Message-ID: <AM0PR0402MB35568D79CBFDC28B32561085E0430@AM0PR0402MB3556.eurprd04.prod.outlook.com>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-4-michael@walle.cc>
 <AM0PR0402MB3556804FB47D182173C6A7AAE0450@AM0PR0402MB3556.eurprd04.prod.outlook.com>
 <afde04b888418e9e4f4fdb946a579e70@walle.cc>
In-Reply-To: <afde04b888418e9e4f4fdb946a579e70@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7481655d-b4ca-4a14-3752-08d776ea89d2
x-ms-traffictypediagnostic: AM0PR0402MB3569:|AM0PR0402MB3569:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB3569AB53833C5DAC733B3F98E0430@AM0PR0402MB3569.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(13464003)(199004)(189003)(5660300002)(966005)(54906003)(229853002)(4326008)(6436002)(66066001)(81166006)(8936002)(11346002)(52536014)(102836004)(186003)(26005)(6506007)(53546011)(76176011)(7696005)(14444005)(256004)(44832011)(71200400001)(71190400001)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(14454004)(6246003)(55016002)(6116002)(3846002)(4001150100001)(446003)(86362001)(99286004)(316002)(7736002)(33656002)(6916009)(8676002)(81156014)(74316002)(305945005)(9686003)(6306002)(2906002)(25786009)(478600001)(45080400002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3569;
 H:AM0PR0402MB3556.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HgZdN5DE93MNvR3HO7CWqjsg1vxfhfplcYB/48z9mro+3EgBR531KekG+cSy+G/pLR0hBagZhJv5sn2Lkwb7Vj8KssPYXZSWL+zS59c3sO+vSBYM8WGCMsgn9deZZOlfcaS/1tvTztfaTQyVNkKwnfH0ZbswDyyBJQH64utckWNlbYstLjLA43DEHflod3iJieZVne/y79SNSArKgfhxsvQkvcS+7fzvTJ7H++HHBOp7uCtsoFZkqqe2hF2QseKHPyN1ft4Rtx2gRkT0/OJPXf0bhNB/iSitnSZivzaPeUgK9TEk7Otd0HVYA4AAzdcnttWFFq9RBv2UM68axdfemsKOnnop2FANfzigbeSm6Ae/KBCf70ofP2rgdiRQAXYb3kWe7j4q7JeYTFy2+tF2/T8GseGX3MmvzOkX9EeNRcDQuLQ5Zke1uSP0cdpZ2B6g
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7481655d-b4ca-4a14-3752-08d776ea89d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 05:43:20.2215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3ET/WXoyKIE3NktYwSfIxn3AG+RLmv8V8jE7Go88XrhzilqS7QYNxXGZyb5YEgQCVuPHk8Sn4ohPqVdccqc5rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3569
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_214326_328327_FEB7D4B0 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> -----Original Message-----
> From: Michael Walle <michael@walle.cc>
> Sent: Tuesday, November 26, 2019 3:38 PM
> To: Kuldeep Singh <kuldeep.singh@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org;
> linux-kernel@vger.kernel.org; Shawn Guo <shawnguo@kernel.org>; Leo Li
> <leoyang.li@nxp.com>; Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>
> Subject: Re: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
> 
> Caution: EXT Email
> 
> Hi Kuldeep,
> 
> Am 2019-11-26 07:40, schrieb Kuldeep Singh:
> > Hi Michael,
> >
> >> -----Original Message-----
> >> From: devicetree-owner@vger.kernel.org
> >> <devicetree-owner@vger.kernel.org>
> >> On Behalf Of Michael Walle
> >> Sent: Sunday, November 24, 2019 1:43 AM
> >> To: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org;
> >> linux-
> >> kernel@vger.kernel.org
> >> Cc: Shawn Guo <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>;
> Rob
> >> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> >> Michael Walle <michael@walle.cc>
> >> Subject: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
> >
> > There's already a patch[1] sent upstream and is under review.
> > It includes dts(i) entries for LS1028. I will be sending the next
> > version
> 
> I've seen that, but there wasn't any reply for almost two months now.
> But
> if you're sending your next version, this patch can be dropped from this
> series.

Okay.

--Kuldeep
> 
> -michael
> 
> >
> > [1]
> >
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11139365%2F&amp;data=02%7C01%7Ckuld
> eep.sing
> >
> h%40nxp.com%7C327363e5ba97483c9add08d77258875d%7C686ea1d3bc2
> b4c6fa92cd
> >
> 99c5c301635%7C0%7C0%7C637103596868168346&amp;sdata=yDJ1ggrIuR
> v1%2Br%2F
> > 9Ez1uvv0EpFB8Mns5%2Ffn%2F7zG5InA%3D&amp;reserved=0
> >>
> >> Caution: EXT Email
> >>
> >> Signed-off-by: Michael Walle <michael@walle.cc>
> >> ---
> >>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 13 +++++++++++++
> >>  1 file changed, 13 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> index 6730922c2d47..650b277ddd66 100644
> >> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> @@ -260,6 +260,19 @@
> >>                         status = "disabled";
> >>                 };
> >>
> >> +               fspi: spi@20c0000 {
> >> +                       compatible = "nxp,lx2160a-fspi";
> >> +                       #address-cells = <1>;
> >> +                       #size-cells = <0>;
> >> +                       reg = <0x0 0x20c0000 0x0 0x10000>,
> >> +                             <0x0 0x20000000 0x0 0x10000000>;
> >> +                       reg-names = "fspi_base", "fspi_mmap";
> >> +                       interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> >> +                       clocks = <&clockgen 4 3>, <&clockgen 4 3>;
> >> +                       clock-names = "fspi_en", "fspi";
> >> +                       status = "disabled";
> >> +               };
> >> +
> >>                 esdhc: mmc@2140000 {
> >>                         compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
> >>                         reg = <0x0 0x2140000 0x0 0x10000>;
> >> --
> >> 2.20.1
> >
> > Regards
> > Kuldeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
