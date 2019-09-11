Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EEEAF87F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crdSIZ5/fVbN4EDBzJfadC1KOmDuEk6nGI4uviKqbVw=; b=Z117ox7oqb7+Jz
	6BeeT2DtlZIW5tcuBTL0sx7D2Dk18opeWTTNjo3DRElZg6CTZnIhOwkPYdEo1DSjXdPGPokhJnqCt
	w3dW1gt1nPjAZtq5KfIbh0/ZmqiOiVCJ1q/0VXT59ib3lrChDfMu6qPSY2+aiopMNA2ijdyZKDcao
	gLgqoYQPDsQRN++20mLyw7or3aIQ4UpNQcT2cJKzhjt4hXWlqW5JQdmw2Hs48M/NqqwDIk5+dnEki
	VsPLl4WJ9VTzitjN+Ls4fQ77BR/AHuyIp3ymv7KWiaA+CfQ7Y0DBd2MCoALdH2hq7HRZkwvEZN0d6
	itbSXYzAhJCuI6xexPRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7yZt-0004di-O5; Wed, 11 Sep 2019 09:06:17 +0000
Received: from mail-db3eur04on0612.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::612]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yZY-0004cG-Iv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:05:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zdx4Ap8Mt8cDQThthX5MAVSiqnpgoJ7Nr1iKTrDtcBPHqQtiWSYblPcP7IqAWNCc3u5tBhs19o31jiEFRuT8CJKHRGKJiopOtGC/Ni6Ha5NOObZKhdJI42t4SeARt81r7hNSx4RwTIwi6wwN3M4yHy9BkCdK/JB9+ajMOdnydzYMT7SCQspc9cD3GWF2dWEHN+tHHHtWnZVfchn9PImqtOWPhy3433KpqmVo+VJo2nV++dXbFYevGpD5pxg09glRC5NtOmuEc2Z+Bd1Dc9OhFRF66JJvTBNYW95JdmmmGNW/jCbEWGNc+gjn6x6UHKTfl5YSPF+MkdEDWlr/BOH/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shYRdOn542kr59cJ/yeN+B6cSnvXUnMqxkIDkhbu4bc=;
 b=HVOQdnEl0dGSR9KZYSE2V5IdgBpwwaJMixnPY+qwkTVQlRf0nrqM+jGfB7FCka3RyAQxH+RoDMThKJaQ5Qr/dD7+NoOFDHsNKJi/jdK4LZjm0WEGhIkm8fQIEJxCzO5LO3Vu7pGgkEgDgMwp7/Mguq5fAW0dS+mSO491PiuPCOGA2EZtdDKDEiF0jOoXsrTy1Tqu+TIibJzQR4yUo3i215eArr1dVnZ0HIAVkmJflp887cknGgN6f1VWOeBBIeQ65r+etn0d2X+gUZLEL/74ljGzgnxIWp2HD6xxRWMlLMdBYZipaCttxAuszlBfBvswRnoRXvuYAb33Bt3qjKiUnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shYRdOn542kr59cJ/yeN+B6cSnvXUnMqxkIDkhbu4bc=;
 b=ivJzrRiOo9nSR8aurEgupzhbXokVusL5gzCy5naAqoAWfYTiTupA5iV/fUF+HU/nHFfm88Gyeqj+MdPkAKkDk0CS7ri+tEdWZCypZRyQ4B3wFdMJ0DsFAHJgWp15vtHlsL7qg2CHXj9u360kgzgwmIOK90O1ul1fC4aCql50KfY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3738.eurprd04.prod.outlook.com (52.134.70.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.20; Wed, 11 Sep 2019 09:05:49 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:05:49 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Jun Li <jun.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] arm64: dts: imx8mm: Remove incorrect fallback
 compatible for ocotp
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm: Remove incorrect fallback
 compatible for ocotp
Thread-Index: AQHVaEhGKGtAvaf22kyiQ0mRpSHPJKcmLmYAgAAA3GA=
Date: Wed, 11 Sep 2019 09:05:49 +0000
Message-ID: <DB3PR0402MB3916E0F566E35DD30275A8E9F5B10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1568211887-19318-1-git-send-email-Anson.Huang@nxp.com>
 <749f8dc6-dbf9-127c-9924-33432b8af00a@linaro.org>
In-Reply-To: <749f8dc6-dbf9-127c-9924-33432b8af00a@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b583f22-ec72-49e8-dff3-08d736973da5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3738; 
x-ms-traffictypediagnostic: DB3PR0402MB3738:|DB3PR0402MB3738:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3738E8AF6540EE7D19DA906EF5B10@DB3PR0402MB3738.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(189003)(199004)(25786009)(99286004)(7696005)(478600001)(6436002)(76176011)(186003)(53936002)(6246003)(4326008)(9686003)(55016002)(14444005)(5660300002)(44832011)(486006)(52536014)(11346002)(446003)(476003)(256004)(26005)(14454004)(102836004)(53546011)(6506007)(71190400001)(71200400001)(64756008)(66476007)(66556008)(66446008)(66946007)(76116006)(66066001)(305945005)(74316002)(3846002)(7736002)(8936002)(81166006)(8676002)(81156014)(7416002)(229853002)(110136005)(316002)(2501003)(6116002)(2906002)(86362001)(2201001)(33656002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3738;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HaAE6X+nIqMlETLTELSVZgQVNHC5rml4qe9QNewN9KHrHIqd8L6QXNa7Y/x+JTCJr5RFPeXAlF/ze82+WZl67+LvC8mtLdiIm5Zbx05ksJ/JeBQrNxj8Mux/wGHXc72fXbIke02piiAQbt/H6S31BeWm7tkpnzFYqe1SiLsSN7Zjm6bzV9paAZcmaANGECbdbeo0usSSlyicCKCJN/BPe9GZ+b9JBogAvedNIGWeKv3EQPjyi5UwjTC8F/Y9eDDCl4o1kHRW7OAPVobj9tgmBP6FLUgyCD8I/LlXItzsL0YfMLCK2Yy+aoBHdF5R0p7fYIX0TRT68CLtns/nxkcDkA3samqEH8EZe8wDBGPhPhoN8tElcozsHN2KWzRWeAlXhJDaraRbSeCTZknmepBRWDxtX5nEfgD63xQt/z3sY9o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b583f22-ec72-49e8-dff3-08d736973da5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:05:49.7297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: veAKiUd828/ci5usBnO9ImFmz8gF2AtUiELTdlEoDzIOkM2IARYXh4WVv76kbNQZrlUTb+cI/TZLHKkgcM1BEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_020556_696743_14885D62 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:612 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> On 11/09/2019 16:24, Anson Huang wrote:
> > Compared to i.MX7D, i.MX8MM has different ocotp layout, so it should
> > NOT use "fsl,imx7d-ocotp" as ocotp's fallback compatible, remove it.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index 5f9d0da..7c4dcce 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -426,7 +426,7 @@
> >  			};
> >
> >  			ocotp: ocotp-ctrl@30350000 {
> > -				compatible = "fsl,imx8mm-ocotp", "fsl,imx7d-
> ocotp", "syscon";
> > +				compatible = "fsl,imx8mm-ocotp", "syscon";
> >  				reg = <0x30350000 0x10000>;
> >  				clocks = <&clk IMX8MM_CLK_OCOTP_ROOT>;
> >  				/* For nvmem subnodes */
> 
> Why not fold the two patches?

For i.MX8MM, it just removes the incorrect fallback compatible, for i.MX8MN, it needs
to replace the incorrect fallback compatible in order to support SoC UID read, so I think
this should be 2 separate patch?

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
