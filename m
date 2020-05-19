Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB5C1D8DCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tC0ZZZitKjcXJ0lu4tZsd5f0aJdSxUwVqLM6yfQ2oyI=; b=c1kByN3BZw1173
	bx9ACstgSSQVnHqf4h8ZX+FaGsNt+cyEWcpp69sYCG8TfWLdQ6OqHE5GCvpbW+XYD+Ryp5TmL8wCu
	Pwja52A6EtUSdWfDDPaf+6zHNUVrz4RrAG8E9r2QLV5Zqdz0EHRdOLm83YtAiBdmkiFDsys0cLCh4
	168hQ/D/0KbtaMji25o44sTkSPsaojp3DSYw6hv7ovYVar1nLvtmHKZ3Vp8J9K1i9eAM/J9lxHjMZ
	OVnyr9QHkDzDDkEbmP2ZANAQs59l2JDGo30AdEBkHoevXqZ/k2U58JnoVTqOcfe/UAoz2HXPfcDoL
	T0cSzIhCWR4bRXjsxzvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasMf-0005c7-4M; Tue, 19 May 2020 02:52:21 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasMU-0005bZ-Gz
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:52:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q+tImLjypJdUYoxinvONaKlzUkmhbl5jW22qbNTwShQv85noayOy+nKMIB2eccms9PKaHd9GCDYwR0Nlj0uYumZbodIjJlse+uT3wWE0lmCk23vYQ1FpQk9XJhcH6cjiluDWERrdd6MIUX6OfXgRCT6ZM+TNQD5GqYag7y35y3644eNTcVZJyG2cxVdvNR7OioWoVOaGudJDr8Gs9YtYYikiXirzUVdOrqER5Um/Jp63yyxm809pJpuwHcfl1toDT22edLey7haxq3CW6w3tYMPSnPRo2D8JVgFAd7n/I09C6q96ugc38D55ruMfkk7o2vXul5vP7YhK2+Rjo33HEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cfS3wnXt8n+gmfL+5U0TSIrTn/Ii8p/2F4+ryA56y80=;
 b=H8eROt9oxFbAEfQlnTZp4LwV3woE3SPb35GkmBLpVHzOXwEdnDGffg1hMawHFQ10qq/fLspCBp3LqdH7j8xx5epz6amisf090+Acksu2v+nVk3hsusGhRbOTLcDc4ZBxaGk9VW+tPDwP9WMKQmdlY9daGTOqDYeA6Ob9mAVXor9lI/eV5SeV+2DfxbM+LnPNEwUOVqcQ5Vy8b+1VrKQ4TthnNmoPQGzxUupVaYAIzYhlMDdaWlyPiLjkSd+4PXDmco1/8Tu7IH0XKGyrDfAy2hj8Vn0AdQVDtBgtuQeo6MZpdJGo4qoxYlZPBs3V6chR60grdgydvxyJbnoXEq7KxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cfS3wnXt8n+gmfL+5U0TSIrTn/Ii8p/2F4+ryA56y80=;
 b=dRt1REJSaqr2rheYTtrcfqa5t9/I1vqPvY3gcGk9CWaw9n6JAM0Bdcj2SSWcJCw3oG2FBAIkmR8Rmtt+BSd3sE67XtpYHrdULPlk9UksRRb1PbMl9qh+337KBBZt5GHDCb16DBS89eZdRjgrc573I+PWfaPlJ7Juh+VilwWxJX8=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4150.eurprd04.prod.outlook.com (2603:10a6:209:43::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Tue, 19 May
 2020 02:52:07 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:52:07 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: dts: imx: make src node name generic
Thread-Topic: [PATCH] ARM: dts: imx: make src node name generic
Thread-Index: AQHWLRLKO6MQZuvP8UGLsHrjKwg3HKiutrFg
Date: Tue, 19 May 2020 02:52:07 +0000
Message-ID: <AM6PR04MB49664D39DBFCD2525D30C70C80B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589805593-14164-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589805593-14164-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1957db49-1ce4-483c-a008-08d7fb9f9ed7
x-ms-traffictypediagnostic: AM6PR04MB4150:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB41506A3B5F3B1857E62BD13080B90@AM6PR04MB4150.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UyikRMSQ6CDZ7WeUA0HWaIy9/jZGg5O0Rrh7lC7afU9wwv+olhsdm4P4Q6ZAUj8RofIZbeEYyvDhtSFuZWcEFouE+TO96hrkDsaPb8sl+jNbSnlyQ/8zVDp64e9zmqxs3wdLYViZXwRNzbBJrqK2r4UB4PKZ6Mm2TD6B/+QRT/ZqI0NkdezxJCaQ806COuifQJMUcw1XYDQ9Bkq1c17WCReQnp0RXkt9Qd9xiO1BFkmnpwta2M+K9Xa3NsQiOyv4dm527tlFjWDfrTZAqMsdrvyD/KZYaJt/eNYoSRUQjI4bclvHDg8trMLh7E3tYpQ1xgNx3HiECA7k2b8crgb0OfvXmyB58LFvkZjdchorlrsiSjMcKLA/qwPX3dGS03zhaca4q7p9pu+qm8wj0qP62COCZJqo8ljuFUOSLLxLaJzV0eVNfC8ayXbS9LyFsAEtsA4861C7don4dnxZMDSKV9Q1WzIaHAff/Rz9B9uU0S/Eq97VGIPDWOpR40wPAjyO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(316002)(66446008)(110136005)(52536014)(86362001)(9686003)(6506007)(4326008)(8676002)(64756008)(478600001)(71200400001)(186003)(5660300002)(26005)(76116006)(66556008)(66476007)(66946007)(2906002)(44832011)(55016002)(8936002)(7696005)(33656002)(41533002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: MSnE9B4/hrE5IFAqqqv+AQ+1bTzEzUtSytRRpv+76RmfD47FqMx/Xwfa2AbgB2UWChslmXxG6xW5RMUxbFlhkUV1SE3vFafnVDZvHbAC1eWsNgKsKfiwsL5LyMUQsvIVgey//yFEdccpqAcoFG3h6ubsrY22DARLp+64ZGhBlpsv1PmUDiDgbXNF6V5iAZ5oA9WuKW8p0dIjR+G8JcC3XXO3YS/Ekvi799YcVLnJKLKfbB1aKwN8c3VxaWGNMplYMca3+8MFDrKQi7MV0XK3dPP6D+PN+1kuFuF/mxLCJSAwZApRMxDdadi8ABcUyVOymULtOGusGRliRrk2mcnrTL6V0n8HFIHnUYufaEOT538AOku7aQchUKP0gU3b9obDmrUmCaH1ASDOdVMIB0/aEUahM/IAx5FrZc4bNneVqKTYaIe8KhKx0KsQ2nrlXkI5tj9+74ty2C4jGV7BMGSMvTMDlgxk4FKBbgrX1XhERtjzYELAi3tTmO2g8K/J/2yo
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1957db49-1ce4-483c-a008-08d7fb9f9ed7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:52:07.9057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NWJtaQEWH2Tc3rRIhNd8LcK+UkDqkiGodCWoUoLyo123ZFkk5FBdocEXoan6quUleEweSUj51JE+q5orWpiFaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_195210_562918_B3A1D50D 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.61 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Monday, May 18, 2020 8:40 PM
> 
> Node name should be generic, use "reset-controller" instead of "src" for
> i.MX6/i.MX7 SoCs src nodes.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  arch/arm/boot/dts/imx6qdl.dtsi | 2 +-
>  arch/arm/boot/dts/imx6sl.dtsi  | 2 +-
>  arch/arm/boot/dts/imx6sx.dtsi  | 2 +-
>  arch/arm/boot/dts/imx6ul.dtsi  | 2 +-
>  arch/arm/boot/dts/imx7s.dtsi   | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
> index 1763c2b..39d4afd 100644
> --- a/arch/arm/boot/dts/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl.dtsi
> @@ -858,7 +858,7 @@
>  				interrupts = <0 57 IRQ_TYPE_LEVEL_HIGH>;
>  			};
> 
> -			src: src@20d8000 {
> +			src: reset-controller@20d8000 {
>  				compatible = "fsl,imx6q-src", "fsl,imx51-src";
>  				reg = <0x020d8000 0x4000>;
>  				interrupts = <0 91 IRQ_TYPE_LEVEL_HIGH>, diff --git
> a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi index
> fcb84fe..911d8cf 100644
> --- a/arch/arm/boot/dts/imx6sl.dtsi
> +++ b/arch/arm/boot/dts/imx6sl.dtsi
> @@ -678,7 +678,7 @@
>  				interrupts = <0 57 IRQ_TYPE_LEVEL_HIGH>;
>  			};
> 
> -			src: src@20d8000 {
> +			src: reset-controller@20d8000 {
>  				compatible = "fsl,imx6sl-src", "fsl,imx51-src";
>  				reg = <0x020d8000 0x4000>;
>  				interrupts = <0 91 IRQ_TYPE_LEVEL_HIGH>, diff --git
> a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi index
> d6f8317..e031337 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -754,7 +754,7 @@
>  				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
>  			};
> 
> -			src: src@20d8000 {
> +			src: reset-controller@20d8000 {
>  				compatible = "fsl,imx6sx-src", "fsl,imx51-src";
>  				reg = <0x020d8000 0x4000>;
>  				interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>, diff --git
> a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi index
> 2ccf67c..35e7301 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -676,7 +676,7 @@
>  				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
>  			};
> 
> -			src: src@20d8000 {
> +			src: reset-controller@20d8000 {
>  				compatible = "fsl,imx6ul-src", "fsl,imx51-src";
>  				reg = <0x020d8000 0x4000>;
>  				interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>, diff --git
> a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi index
> 76e3ffb..8bac491 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -624,7 +624,7 @@
>  				clock-names = "ckil", "osc";
>  			};
> 
> -			src: src@30390000 {
> +			src: reset-controller@30390000 {
>  				compatible = "fsl,imx7d-src", "syscon";
>  				reg = <0x30390000 0x10000>;
>  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
