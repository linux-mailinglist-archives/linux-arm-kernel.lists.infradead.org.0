Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E891CDE869
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ov46DW1Mbmidr0NVh1F7N06vKnHRxY5sYpBgeRD9SE=; b=tJ+ipOLV9advHH
	c4BpYDFXsh5do24q4FR0gJkOlzb7aVYTM8Z5PpqepdNZ8PSAku82ghQ1XRLw9fOmO3fPicEqRsgA/
	Eabs3c2iTtMLKWvpFHxPxEmd8Ef5aFviXEo0ANeiZqGX06EmMfk2fvXnRt2ftXP3JkcnlUaCbnUlr
	Ja7lt4upR2XR1yr2F6pTn8k7YON/52Gm3MVhqFCE458G+eckxRVfpk09/odf/v44j8pBWoL4gFH1O
	julg3r9MA3af0VKfLW78/ReaOAri8VlMZWJAxQmx3iZed9YVAZs3A226FVNagq28+ZBS/i6DdGuSy
	UHvsflmUasa0ATsgY1jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUGm-0002fl-Tj; Mon, 21 Oct 2019 09:46:32 +0000
Received: from mail-eopbgr00059.outbound.protection.outlook.com ([40.107.0.59]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUGU-0002ey-1I
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:46:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I2BCTOevcFAQnysL2F0XaNP9NLdxmngZeSer+PfChys81jZEKCTdaLYmQ6GL5tTgr4ItVh00biJAFYmuNVbN9HTuXB6lIUlev67oekOjDYTDZlzBRO6tenJqc2DlnHX0J24krczjENYvwlIj9z8zbmtQsN83RH+lHFHUCriM8pZNV74j6DigQEChUmx/QZAJdCGdl6uyHNL/My+exRLEYC/ut4zNsp1ZmTA4BLCIxHxhaD2hJVMGwYaGanW1D8jfJr36G3xSzy/U+J96bBlM4jBB3o8USONrG3LnwldecRQdqUuRpzUfdGnfF8EpKG9J2TEHFfQY3lTgOEYP/AjpFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S1qd6vposj/8oi480fFU2VqPFpyV8WM6Z8sl4PEVAaU=;
 b=ERC7N++r7FWE841ra+rVmur2MpB6D2g2OyZe/By2byq1+urZLIKPPjAhEYbFkVgnS92TLTLAr1IokI8t35n56CCjWz5/4sMOEce7178Oy2CwQHYLY2gGcQ0Q9ibl15OiAW2DppZGGPbop1cST8uwfbOTjkiYDOupkswowjFQ8ujFJzCS9GYUXmJiJW8B0zv8AEY5TyqD8RlEQ42/iwnZ2OMnMycOEnHJpionHegfLkUK2vRVlBevBFrQi6Gw4JHk+MVQbL6I+9B52YES7FQ43lxtiglW84/j4/Mdb7NrxS6Z7fbZ3z/HuEzH9dPGwCYB95ImnbmsNINma1sm8Woc/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S1qd6vposj/8oi480fFU2VqPFpyV8WM6Z8sl4PEVAaU=;
 b=nTDJLKpBciS0hnRh1A6/yItt8Mx3uwKUL+Ys5+2uQTNL4QgNXQTKI811qdPRVgpkgd38yakhUUmPaXxtu9z5e9Xlih+xnGo9YZb1nc4JGpro1hKULBT9qwE/IGJsOCzsWiWph380m/yJIbbaR81bxBn7sZ9+HEiZ1yWQn87IMAk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4612.eurprd04.prod.outlook.com (52.135.146.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Mon, 21 Oct 2019 09:46:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 09:46:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for fec1
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for fec1
Thread-Index: AQHVh/DvpHNuw1YCQUS80eeiIyy4HKdk2FcAgAAAb0A=
Date: Mon, 21 Oct 2019 09:46:10 +0000
Message-ID: <AM0PR04MB448170DA0486707775C3DABA88690@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1571649512-24041-1-git-send-email-peng.fan@nxp.com>
 <20191021094420.wmy5w2tp532dibqm@pengutronix.de>
In-Reply-To: <20191021094420.wmy5w2tp532dibqm@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08ad44a4-615c-42ad-53f9-08d7560b8156
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB4612:|AM0PR04MB4612:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB46123A7B40361AA4E9D7080288690@AM0PR04MB4612.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(376002)(396003)(39860400002)(199004)(189003)(74316002)(52536014)(3846002)(229853002)(86362001)(6116002)(81156014)(102836004)(6436002)(6916009)(2906002)(8676002)(71190400001)(71200400001)(14454004)(81166006)(4326008)(6246003)(5660300002)(99286004)(486006)(478600001)(305945005)(44832011)(186003)(966005)(66446008)(316002)(66946007)(7416002)(64756008)(66556008)(66476007)(33656002)(9686003)(7736002)(6306002)(54906003)(25786009)(8936002)(45080400002)(76176011)(66066001)(11346002)(476003)(446003)(256004)(55016002)(7696005)(76116006)(26005)(6506007)(53546011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4612;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P7/Llm1JHMvAM9MNHaCvuKyPLSxDryL5JKdiegf2j5voUqwTovGDJMCuhiJeSwBv9R6F0KMUlMTOhAZJg95MtpiJG5n141YbSSvy4wjx6AZfTivYN/qmEli6Gi+5NBJ031wkjLmXeZzitUx6Yf7cdS82lAWxRkdPWr/7Ej2DKHjptI6ljxqcE75T37i8PWiHDqKYK3aacGkx96q/x4p0yDAik3NNSP1KxiSHycHS8Tk39X/saoNog/n51AVc73DsSxJusUR8cTaiY9uxSLg0EfUwPwM+gUVKuztBF/FpG6WVCX6BCNzvhEdrUD7YGCxTYnCVrbmMZ75qxP+3iFUbw+2XIAexR/H/qL7P8CYrFAPLaEeQM0Cw8VqTKuF39TwFnZLbAk5pVdW0mN3ZtSeKpYXcdcwU3gNLaiVePl6GtWigrvY9chWh+htYTAn1hxpkWJ+k6XjB4pXlNMtwUyj3FA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08ad44a4-615c-42ad-53f9-08d7560b8156
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 09:46:10.9702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XMdnxD4KWgsBByXxc38AQLGbCAO4HoWwN2OCgp6RPUF638rETexCTUQCcHoI4PsRl26HOPEryCKp9/6/rBpmew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4612
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_024614_087995_831018BF 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.59 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
> fec1
> 
> Hi,
> 
> On 19-10-21 09:21, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > We should not rely on U-Boot to configure the phy reset.
> > So introduce phy-reset-gpios property to let Linux handle phy reset
> > itself.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > index faefb7182af1..e4d66f7db09d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > @@ -80,6 +80,7 @@
> >  	pinctrl-0 = <&pinctrl_fec1>;
> >  	phy-mode = "rgmii-id";
> >  	phy-handle = <&ethphy0>;
> > +	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
> 
> Where is the pinctrl done?

https://elixir.bootlin.com/linux/v5.4-rc2/source/arch/arm64/boot/dts/freescale/imx8mm-evk.dts#L328

Regards,
Peng.

> 
> Regards,
>   Marco
> 
> >  	fsl,magic-packet;
> >  	status = "okay";
> >
> > --
> > 2.16.4
> >
> >
> >
> 
> --
> Pengutronix e.K.                           |
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.p
> engutronix.de%2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Cb40bb6
> 4c5e39449ade4808d7560b43ca%7C686ea1d3bc2b4c6fa92cd99c5c301635%
> 7C0%7C0%7C637072478688921047&amp;sdata=xZI60uyyQ%2BkX%2Fpf07n
> CgVhGt1ApYBKSnndGB3Dk2578%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
