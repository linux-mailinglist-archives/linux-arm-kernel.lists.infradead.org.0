Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF5EA933
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 03:18:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dj8gn5ipFlxzjx74fFbSX5hB7t5oK/QCa40PDPnToqM=; b=GOpAuXPTSIe/ui
	20atwNE0FSfJbmJQbYavM8Tvgr9rE4UYP9ha4kqXrubO3NUUtYhUNvSda7aQkcoyHyRglpgtOBw2w
	kJU5vepv6si103xHBFzo66kzrcG6g6qVj9IPimNrO1xskDN9txbSSxjkMD/ZDKAtKQgqQaYJnNfji
	GljRY+CgV4TDAr+Z6N72n/EmvadhDk40ZzLSUipTQA5uA2x4iizFL1dy/rn/BIs895NyHgWiY3Gkq
	yAT2siRDNZSj9n18xaWq/vJzjeHZpHiEPqlNq3Q8jSw1yFd5lnuVMMK826po0nwL94xJiPLyCheO2
	4xEHlxs/enHSLBzzJElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ036-0001AL-GB; Thu, 31 Oct 2019 02:18:56 +0000
Received: from mail-eopbgr00057.outbound.protection.outlook.com ([40.107.0.57]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ02x-00019k-IF
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 02:18:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E5ffXTor+7r2v5+iz6vUBOh8fWU/1JzSZfmxUQb5K44mBSWtioLfSejY8bjlW2X8XOnmbva5dYrMXn5RS9kv+CNL0kSfu/27JlPWFkx6lQ0Y3WPBiknLMoY4QwZlVLp7QTud42ULijJBw2TRsQ6jZ/W08ZMrmaLA62tUMpDEn/ibhcP/aXF/6c2saOuKcPfnZx4cN+6BN7/QdhU3MNdLiaXho7kNLf01UCXAl6jIhhVbCA9IAS0YkbbPs4crForFLh4MwXzgcI1hx/zd2b/2D9jbWTf5kSAQNCwIkV+uy8Wpf3K328JmKKPwNGAO28AxnsKgLXvLzih+39IA86XjQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LvGKz4Tmg46hV7Pr2ofSj9WUxlN1CTwa+VL+V03XPls=;
 b=G32jv5zA38pHE0XwRw3OBthSR5dPj4y3HniDBoIckDiadln+CQ/Ft/tTSfDdp8ollUg+SW/uc0YuV/A6dJI7Rpzas/gGT4feL9eHaQrjO494X1hI0CoRHBtvnBhpKhkGk3I0SrKscZcOqFqs2/BNfK1w8Dd7ZFNYW35u7uOC1B5rYaWuQ/bRvWHYpA1hUoN9iPLUIcVAHxel3ve3DAOgSqx0lyiLnMevoFSd4UQ1pNxPgARUK5O3pMijQEM0BNxbPHy5w4oPk5XuMvjj4vqvBAnPW+/r619h5QpyVyu90raN+vDhx/7V7C7bB3aut8Xubxk1WiO3AgCTzZD7q5bIvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LvGKz4Tmg46hV7Pr2ofSj9WUxlN1CTwa+VL+V03XPls=;
 b=GzLIlgD3nbjMSjXHfSPmTOW42ib1NsbKAWiQ+4OP714YkPUZFcRNQfV2pWN6LIbWR/M1Br7bh4Zb/8BMxzH4xMrD2Qent8T60JZIIC8ia5LRoJ5YEix/7uRaLLxT/RHhJbSpD/HghUwTr3IGwU2HhLZpcLLjzXTi1XooaHbCkBc=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.51.23) by
 VI1PR04MB4510.eurprd04.prod.outlook.com (20.177.53.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 31 Oct 2019 02:18:40 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::68e3:e1a6:78fd:7133]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::68e3:e1a6:78fd:7133%3]) with mapi id 15.20.2387.023; Thu, 31 Oct 2019
 02:18:39 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH 1/1] ARM: dts: imx7s: Add power domain for imx7d HSIC
Thread-Topic: [PATCH 1/1] ARM: dts: imx7s: Add power domain for imx7d HSIC
Thread-Index: AQHVgj+FYhY0rbJTp0Gp7eSjJfMAsKd0HncA
Date: Thu, 31 Oct 2019 02:18:39 +0000
Message-ID: <20191031021828.GB11664@b29397-desktop>
References: <1571023588-9870-1-git-send-email-peter.chen@nxp.com>
In-Reply-To: <1571023588-9870-1-git-send-email-peter.chen@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 287c7434-81f6-4561-7d7c-08d75da8a4ef
x-ms-traffictypediagnostic: VI1PR04MB4510:|VI1PR04MB4510:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB45107635035BE180B12CE5958B630@VI1PR04MB4510.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(396003)(39860400002)(136003)(346002)(376002)(366004)(189003)(199004)(53546011)(6116002)(6436002)(81166006)(2501003)(33716001)(6486002)(316002)(54906003)(1076003)(66066001)(81156014)(1730700003)(229853002)(9686003)(71190400001)(14444005)(44832011)(33656002)(8936002)(256004)(6916009)(2351001)(476003)(3846002)(4744005)(86362001)(486006)(11346002)(446003)(71200400001)(2906002)(5640700003)(8676002)(66446008)(6246003)(76116006)(6512007)(4326008)(66556008)(99286004)(76176011)(478600001)(26005)(64756008)(66946007)(5660300002)(186003)(25786009)(6506007)(102836004)(66476007)(7736002)(305945005)(14454004)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4510;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rc54CrwRZXSkw0HjqjqArlSPbE7V0X5D4BQdOORQDG1iqMmAHS6FJVWpB6bk3+eqCKLZxrRwOlRXo3+3epn+7gh5mC9VZApePTa6V9jrVtWWAxJpmwS83z2GQ1Jpb2yXhTeIQds/7xu9+sX3ZHMV1lXXpjkV7Hcit7X828a3CyzXTHaB1xGtrYt1R+tsZ7YE04omak4V/RwPBVfYgSuil+um//RIhnTje1no3ZKIoJ5qwvS8gMVuepvqnJKFBIP4Rck2xd52lDb0pQeJwMZc0pdbF9nGu5rD9kGF7xw2P+A7b5QTfgzmdJhuZdCo3sPU3QlcIALuWPapOwuPEYkHJeV+jmQnWHJ5vxBXvKDJ+3IukdSDuh5etwYz2xWh9TRalqwekJToFyRFwLgkPbDuZQ/SebmRPn4mSAwTJq7UoM+VKMDc1/1w5yd6hZhqG9k+
Content-ID: <6B06016749C44649BB5B940BA2477C8B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 287c7434-81f6-4561-7d7c-08d75da8a4ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 02:18:39.7842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mT79CsUqhw6aLl0A3o9rVewFqy7qhi+DdhCoVuLh91u8t887XBqED5FDdmFWhCbc2gxTIIY7MzIlV2K0TdobOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4510
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_191847_604181_09C76290 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?iso-8859-1?Q?Andr=E9_Draszik?= <git@andred.net>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-14 11:26:28, Peter Chen wrote:
> Otherwise, the system will hang if USB driver try to access
> portsc register.
> =

> Cc: Andr=E9 Draszik <git@andred.net>
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  arch/arm/boot/dts/imx7s.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
> index c1a4fff5ceda..a5b380f530f8 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -658,6 +658,12 @@
>  						reg =3D <1>;
>  						power-supply =3D <&reg_1p0d>;
>  					};
> +
> +					pgc_hsic_phy: power-domain@2 {
> +						#power-domain-cells =3D <0>;
> +						reg =3D <2>;
> +						power-supply =3D <&reg_1p2>;
> +					};
>  				};
>  			};
>  		};
> @@ -1101,6 +1107,7 @@
>  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
>  				reg =3D <0x30b30000 0x200>;
>  				interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +				power-domains =3D <&pgc_hsic_phy>;
>  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
>  				fsl,usbphy =3D <&usbphynop3>;
>  				fsl,usbmisc =3D <&usbmisc3 0>;
> -- =

> 2.17.1
> =


Gentle ping...

-- =


Thanks,
Peter Chen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
