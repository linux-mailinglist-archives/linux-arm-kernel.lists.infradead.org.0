Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CE47C024
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvnHxoCZsh5zxLyXFpPuht33uZeNllDBdYEBs0vDmZk=; b=PQGezlBRDaJtqs
	dyrJl3Orws2NL8nYlDvmNxUF963V7zaQRG207l++lUoJm/V1zmSL/Iot+Ycq3W0CxRyBD+G61ShrO
	/n/FnPqbEKCv/JZqqRPEWhHTRmPirsua8o0dfJlb6tKTifBA7hGlGCimVKab8dgisVZ/G+uiP9AMH
	TJ+rVMw7U4ClQY+D1o1DtJml4wm6kEeBJAZF0vPhZnk5ZMCl5yMQigHTCbyTCtRYcwPc8jXgRU0yQ
	yBGGlNyd9p8uXvwpicZUn81JVUt5WRzBrqdHb3p5N4h1KvSU4Yz0NYG1iemj6uFI40cv/gGZy56ng
	uuyK2LSrrdg2IYd3oJog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmuv-0000Lw-UA; Wed, 31 Jul 2019 11:37:13 +0000
Received: from mail-eopbgr10130.outbound.protection.outlook.com
 ([40.107.1.130] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmuo-0000LZ-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:37:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WR2x1acSmbYbMaNIB8NtoZ3kOhomuK0kuUId3YYbGTWG3F9Gfy2e+Ga05Cy82uW2NUyA6cMia7VOVluqHFTeHQPPYAqEizhLa+ql8wbbZ1tUqzH/5kYT4T9qOG6zVH7X7vj3Fp5n/MKxX9c9howx1DV0KzlF+OSUbUuitIUjCGkYjLT8scRiHzH3hrvQzZg1+s8cr241vljuoLOU2Ar5b7LB7ITkqy+hdo77qnOI5NDvp3pPMaFGJ/kMaUtKFKoIeJ4/xpHX+FRHoS51u5HGWntCNS/q+ZEVI1gbBhxbDrV1g07svnFnXvy5N+vn/eOk8J6oTwCjCi38uSqTtYkxRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7aFHZlTWyjlPsp6xp0vTSNG8pSRuXDYsXfXdUt+4/+8=;
 b=NGueaxUOseCuX+D4OENg9ZRGL2KFXGiC68qNSC10IjoCeVo6r50Nfv209Ota6VHWa2WLMcCq7WIaQ5KhiMZCluznKAuh4jqt/+0X0vB8X37ltjs1tJrOL1V5uKd3R5RfouzZ4RzfUHClS7SVWQvCM3XF6URp+RkZ72uwMPaqIu81/G+Ng+gzUqO40MHKHzmUlLKMhtftc7xmB1SJTMCYtD71Tch3cxpft9YlLsNwigR/iYhr+TkAeraoYbpxrHsQJg32PbABKOgKj8kr2aoVCpIE0WFskpKH5aHZnB9SYKNPSpwKZgvnLjxcrmQQCucLsuIDIWAokFlxwh7mJXVw6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7aFHZlTWyjlPsp6xp0vTSNG8pSRuXDYsXfXdUt+4/+8=;
 b=YdtBAZhZUT4lXBhxyPd5LGEiGR+AjI0Bbowm4d7t+F8ieLq5VyNkYPXoV3WQbb30Xz4gCDb7KZXlhh8BVnBg+T04Mg2+ySyXqJe8yG7cDCGLykEZtBurVMIcuHUqLR2jw3F6sx/+UG8XIaZ/C9HvgZg21hbFmM3HIbMk3BSmMeU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3936.eurprd05.prod.outlook.com (52.134.8.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Wed, 31 Jul 2019 11:36:59 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 11:36:59 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH 14/22] ARM: dts: apalis-imx6: Add some example I2C devices
Thread-Topic: [PATCH 14/22] ARM: dts: apalis-imx6: Add some example I2C devices
Thread-Index: AQHVRucp6AbYXDObNEykhBnWam5wmKbjo94AgAD22QA=
Date: Wed, 31 Jul 2019 11:36:59 +0000
Message-ID: <cd35b9553397f51153ccb5cea9205f91f659cfdf.camel@toradex.com>
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-15-dev@pschenker.ch>
 <CAOMZO5BtXFR7kDuiHedsDA0AaNZqsO_L2x9d3u9ZuULkovChoQ@mail.gmail.com>
In-Reply-To: <CAOMZO5BtXFR7kDuiHedsDA0AaNZqsO_L2x9d3u9ZuULkovChoQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 826cc606-761f-409d-1108-08d715ab6622
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3936; 
x-ms-traffictypediagnostic: VI1PR0502MB3936:
x-microsoft-antispam-prvs: <VI1PR0502MB393652737B36BF888197A43CF4DF0@VI1PR0502MB3936.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(376002)(346002)(136003)(396003)(366004)(189003)(199004)(66066001)(76116006)(66556008)(64756008)(66446008)(66476007)(71190400001)(66946007)(91956017)(2906002)(478600001)(316002)(44832011)(6916009)(446003)(2616005)(71200400001)(11346002)(6486002)(476003)(6246003)(7416002)(1411001)(486006)(229853002)(25786009)(14454004)(118296001)(4326008)(2351001)(8676002)(36756003)(86362001)(81156014)(3846002)(305945005)(6512007)(14444005)(76176011)(6436002)(256004)(102836004)(53546011)(6506007)(1730700003)(6116002)(99286004)(7736002)(5640700003)(5660300002)(54906003)(8936002)(2501003)(53936002)(68736007)(81166006)(26005)(1361003)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3936;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2Gi13gKNTvC/rCdxlnoiydr1SQuq4Z6/XSCXWPJgsuOtj1fSymBCp0kQpI9CojT1JY5tpHD09/es7tDVDJD07qGK6VpEgPLhGtcD5MchD1MTQfOxY/16jIMN1zrZ+4kjwiEtpWWBqhcVQlgbO4COV9bbQpiQuWZw8AUlFJ4oDNeGcs/JAV373IW0IRWM5i92RemBFgVUTlSbVVL6loiY5T6ypm2zNH5M6vFEbCbvaTIDSGjF7fh+R/izi0BPYAaYWtTN0LkrSBD1i0bpGqgMCm4oLJQxGxEXHC/oPwUmPzGasUawKTYuOy7AsV5I5rJTOzlfwC6nR03lUARN08hMPGJmcSFELkRkwhNpBeqDvPJeugLmJ0iwbhGn3+ICAKpSFGzIFdY8p+oXSwK+FIblVuTI4LnlSPFE4PEFwGK0wjM=
Content-ID: <95B9859292AAB34A95A9803C3C1320F2@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 826cc606-761f-409d-1108-08d715ab6622
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 11:36:59.2304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_043706_948880_3C292CE5 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-30 at 17:53 -0300, Fabio Estevam wrote:
> On Tue, Jul 30, 2019 at 11:57 AM Philippe Schenker <dev@pschenker.ch> wrote:
> 
> >  &backlight {
> > @@ -204,6 +228,77 @@
> >   */
> >  &i2c3 {
> >         status = "okay";
> > +
> > +       adv7280: adv7280@21 {
> > +               compatible = "adv7280";
> > +               reg = <0x21>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&pinctrl_ipu1_csi0 &pinctrl_cam_mclk>;
> > +               clocks = <&clks 200>;
> 
> Please replace this 200 with a proper clock label.
> 
> > +               clock-names = "csi_mclk";
> > +               DOVDD-supply = <&reg_3p3v>;
> > +               AVDD-supply = <&reg_3p3v>;
> > +               DVDD-supply = <&reg_3p3v>;
> > +               PVDD-supply = <&reg_3p3v>;
> > +               csi_id = <0>;
> 
> This is not a valid property upstream.
> 
> It seems you just ported it from a downstream vendor kernel. Please
> make sure you test with the dt-bindings from mainline.
> 
> > +               mclk = <24000000>;
> > +               mclk_source = <1>;
> > +               status = "okay";
> > +       };
> > +
> > +       /* Video ADC on Analog Camera Module */
> > +       adv7180: adv7180@21 {
> > +               compatible = "adv,adv7180";
> > +               reg = <0x21>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&pinctrl_ipu1_csi0 &pinctrl_cam_mclk>;
> > +               clocks = <&clks 200>;
> 
> clock label, please.
> 
> > +               clock-names = "csi_mclk";
> > +               DOVDD-supply = <&reg_3p3v>; /* 3.3v */
> > +               AVDD-supply = <&reg_3p3v>;  /* 1.8v */
> > +               DVDD-supply = <&reg_3p3v>;  /* 1.8v */
> > +               PVDD-supply = <&reg_3p3v>;  /* 1.8v */
> > +               csi_id = <0>;
> 
> Same here
> 
> > +               mclk = <24000000>;
> > +               mclk_source = <1>;
> > +               cvbs = <1>;
> > +               status = "disabled";
> > +       };
> > +
> > +       max9526: max9526@20 {
> > +               compatible = "maxim,max9526";
> 
> This is not documented in mainline.

Yeah, too much downstream stuff in here. I will drop that patch for now...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
