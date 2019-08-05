Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF303812FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 09:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEWrYZZPo97i5IzQoqps5ZSOwT1BKwqE6/k+e6BDp1k=; b=H9wr/kiJ4aIde0
	6kW1vDen/u50fZnxerrBa6OL/0Jz39tREGJlVB0UNnaSU2H+NMnri0hebtUwFG8p5Hskz/kvR81Bk
	FEgRuh0IkgcPO7U5AmxVduZBOd7gKhPHsxAjhkC8Ss+tVQvbUkyt30I3AdudsLsEXneER0/zU6hrB
	WR77MbVJmc1jXcpLrskpnrmmBMMWGbUa4loXYdav7rj2lm0Ea6Ouwlx+KmA/a8t6iW/koP5B4NXr5
	EFELA2CSK/ooruKzeeZkgNcsLllzaJ6cal301MonDdlEvtz1eawDwYVBeNZNpV5cRVHpB92xKhBeq
	szG1bG5GxPRXMEuQMD8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXHD-0004kd-Ck; Mon, 05 Aug 2019 07:19:27 +0000
Received: from mail-eopbgr80124.outbound.protection.outlook.com
 ([40.107.8.124] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXGx-0004jg-Uo
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 07:19:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMRyjgJy1vzyAta/K/XbUmcdj0cc/o4+uz2GCknr4fmz1UVykpltSmlSjqzWn/wSlEptdSzPnK1aT6eNX+4aKaLGwBB0gWdKcCZz6zCWDxRvCsEn6nZ9aqcB8CccZ1MElPiBnZHVsLuqF0i3zJ6ys8gppSaYnPhWDhBfcISZNMBeIE+RW1nI7UmlaNLaFwTpI7evNPiICUZ/yZ3zLgBE2B+lgKERPOhn6RBTHQT2fhdOXAPQ1PSRc2uiZ8uvQULThObhy3pO0f7d7gI8yaB/I7Ij7yvGQVTCAA0Wr2ri9hd97DTSF+CIDea+LbymwtghC+XD9NxTsXHIM+XV1hrSZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ifzT0Rd2fgYCxbAlomcJsAOHjMab4VeLkWhU/H7j6xc=;
 b=aBFMzwscwR8jL+jAXmdZtFORTW279dhSZV/PUxZG6eFOJFmPWg/xaFpdKf2XhytuuM59ZMK5zLFQRDAoF2dXQDkAk64VPUyhzm9TITuygBlEO3AVYtdhN+Zi9Vnkto2Fc/o8qtoGKxKlOC1tkhE0nRPhy7yvCATmZa9M5Oi1kXw8B4G6stOHEv5gdVMy58C/L53hN/Ykma+GRK1Q3/lFsYyDFrQ0+7GFNq48+1ETDiMWKAKoFULhcsmXndvP7I1J7pVCFsNQce8igXi86RFgc55FP+2EwW/z7SWmHbL5Ej6iEs6E25mMhMbcdzWZjnjWJMPLKonCOZGXl7y66uSZyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ifzT0Rd2fgYCxbAlomcJsAOHjMab4VeLkWhU/H7j6xc=;
 b=VUwdd8B58qO2wTjlnSekBeTWz6CZDiUL4xSLPWOU8HaDD4hqe+pq9lafnC9DNgwi9ODxYSJ3iJJcnzRLC+ziiIjOoHpTVy3PRhJRX47CfZVCBgB8imOykfVwJr3kdpI1I2488b+uAQnuSnSnVg5OniT1XYBvhr/+kdAFokr3iQ8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3053.eurprd05.prod.outlook.com (10.175.22.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Mon, 5 Aug 2019 07:18:59 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 07:18:59 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>
Subject: Re: [PATCH v2 07/20] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Topic: [PATCH v2 07/20] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Index: AQHVR5zQtB0dzN8FYEudcspMVKQYmabkr2aAgAAgjgCAAr/AgIAEnSoA
Date: Mon, 5 Aug 2019 07:18:59 +0000
Message-ID: <90509acd1da1aa85699952e012fa1034255f1a06.camel@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
 <20190731123750.25670-8-philippe.schenker@toradex.com>
 <CAOMZO5B5HnqpLrDjyGtqSQpVXmcoZuGLvCzKVUhwLb-_ZO_Xog@mail.gmail.com>
 <723f191c5893984c8fbe711163524dc7ebf09a5b.camel@toradex.com>
 <de6bec64012876c07267024cd4b2d2d5@agner.ch>
In-Reply-To: <de6bec64012876c07267024cd4b2d2d5@agner.ch>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc248fa8-9b65-4054-774b-08d719752f85
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3053; 
x-ms-traffictypediagnostic: VI1PR0502MB3053:
x-microsoft-antispam-prvs: <VI1PR0502MB3053ACE8542CC895AE0B936CF4DA0@VI1PR0502MB3053.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(376002)(136003)(39840400004)(346002)(199004)(189003)(3846002)(2906002)(229853002)(7416002)(6116002)(6436002)(54906003)(6486002)(8676002)(1730700003)(81156014)(86362001)(81166006)(99286004)(5640700003)(76176011)(186003)(486006)(102836004)(71200400001)(71190400001)(2501003)(2616005)(476003)(14444005)(316002)(8936002)(6506007)(53546011)(26005)(2351001)(44832011)(256004)(118296001)(478600001)(66476007)(64756008)(76116006)(91956017)(66946007)(446003)(11346002)(66066001)(6512007)(14454004)(6916009)(5660300002)(66446008)(66556008)(6246003)(36756003)(68736007)(7736002)(25786009)(53936002)(305945005)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3053;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tUGv+UQDWwYdzHzTF//jSapVHDWo9eEJ02EtG/us1cT5mvfr7f+5NfWovgZBYm17euZ3e3ev8sJRa3YPBn2UQBtornIBVvgObyB3oT0sgcvKapLxbxA1IKcTAAd/Jy5reoblnNjanAMJdFMPZgn3j0tJ8i7KhT94Cc9cULg1PmCKmJWFYbDr8SrU/itUMblstTbMq445S56oKiBJ6YCaELzAgvkUXRoe8xcdABiPZloeWUHbZDqAf4XNYiKXUw+3FWiJxvGWnJ4l4T/ZDxq2ClRAygiZO+jwvYdEVPAQPfLu419ap1Awg1vumkcshgxUiP6X8LR5rBHjOpSpAPdWOj5xQTEKLU6YpM4pXG5Qh9MeL2lJtYhSXdtJbJt7GUY3oLu3yueTxr4ecw83zUwfyvEDSInxYXjQ0e0aDirj9cE=
Content-ID: <1D6770331469E54389A2882CE1F4A824@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc248fa8-9b65-4054-774b-08d719752f85
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 07:18:59.1720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_001911_999888_20D6DA79 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-02 at 10:51 +0200, Stefan Agner wrote:
> On 2019-07-31 16:52, Philippe Schenker wrote:
> > On Wed, 2019-07-31 at 09:56 -0300, Fabio Estevam wrote:
> > > On Wed, Jul 31, 2019 at 9:38 AM Philippe Schenker
> > > <philippe.schenker@toradex.com> wrote:
> > > > From: Stefan Agner <stefan.agner@toradex.com>
> > > > 
> > > > Add pinmuxing and do not specify voltage restrictions in the
> > > > module level device tree.
> > > 
> > > It would be nice to explain the reason for doing this.
> > 
> > This commit is in preparation of another patch that didn't made into this
> > patchset (downstream stuff in there). But I will do another patch on top
> > that
> > will use this patch here. That should anyway be in mainline.
> 
> I guess what Fabio meant here is explain this patch.
> 
> The commit message really could be improved, e.g.:
> 
> Add pinmuxing and do not specify voltage restrictions for the usdhc
> instance
> available on the modules edge connector. This allows to use SD-cards
> with
> higher transfer modes if supported by the carrier board.
> 
> --
> Stefan

Ah, sorry Fabio. I indeed understood you wrong and thanks Stefan for clarifying.
I have the new message in for v3.

Philippe

> 
> > Philippe
> > 
> > > > Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> > > > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > > > ---
> > > > 
> > > > Changes in v2: None
> > > > 
> > > >  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
> > > >  1 file changed, 22 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> > > > b/arch/arm/boot/dts/imx7-
> > > > colibri.dtsi
> > > > index 16d1a1ed1aff..67f5e0c87fdc 100644
> > > > --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> > > > +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> > > > @@ -326,7 +326,6 @@
> > > >  &usdhc1 {
> > > >         pinctrl-names = "default";
> > > >         pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> > > > -       no-1-8-v;
> > > >         cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
> > > >         disable-wp;
> > > >         vqmmc-supply = <&reg_LDO2>;
> > > > @@ -671,6 +670,28 @@
> > > >                 >;
> > > >         };
> > > > 
> > > > +       pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
> > > > +               fsl,pins = <
> > > > +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5a
> > > > +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1a
> > > > +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5a
> > > > +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5a
> > > > +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5a
> > > > +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5a
> > > > +               >;
> > > > +       };
> > > > +
> > > > +       pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
> > > > +               fsl,pins = <
> > > > +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5b
> > > > +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1b
> > > > +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5b
> > > > +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5b
> > > > +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5b
> > > > +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5b
> > > > +               >;
> > > > +       };
> > > 
> > > You add the entries for 100MHz and 200MHz, but I don't see them being
> > > referenced anywhere.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
