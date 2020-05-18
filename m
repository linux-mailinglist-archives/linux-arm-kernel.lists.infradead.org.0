Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A593D1D6F75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 05:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zc+4ScTj7ON001rr/ak6mIu+35knHE/KBcSC01jM51c=; b=Cc0FEm1VCeJavG
	tmGF6NZBVc0mb1YOPetsQzReYI1VqQKV4nf2NSHTebPrJ+pvL74q95F/LOtVdPAUCaOeBpyvvlvWe
	9NiN2AuP+FWSKGaWepV9rvSRnj4lvxb89A9Mn2F1Tci/DjmQ5H1FhOuHdKD9x06oK1nGL6eVaB8v5
	4u9+oTapJs6Ls7F/gfi4WFwDHe/2LBqwMbPEXnCq0Cx3hwiy9ze61pnrVc6IQMk8EiTpVCZ18HEHT
	Xfm9fZtzsdGEheOXwfT9ZgBUDEwn4Yx/iyXlGYPLSxis+MgurxiurXpUrf0LcqQBHJsnC8KxgAd3/
	Ofs6Kane3ygcKvA4OG1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaWrz-0003VZ-FM; Mon, 18 May 2020 03:55:15 +0000
Received: from mail-eopbgr150074.outbound.protection.outlook.com
 ([40.107.15.74] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaWrj-0003UI-4E
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 03:55:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpEVV6aafvRKG+Lgm489oMJiptUamWkn9u17g0rk8sBILT/FnEMhxbMsMe9nsV66SC9srhqp8YlwlVJnxsb1IopOuMJeTM69A2zeSE4T8/sCz0IStr79RbNzjMk/SJpPTRFDumS0jz48XDjfzX+bDEB7YgRBH8pDZ2l36RPNOPoJ08UJL13ttRtdg1zo3UVjYuhnr44DVQVKoacPINOGNv2ttqdWZ7pGvXP0buAG3wI8ow/eXjLyg32tVyHwEnEpKnMWnI1IkDySevQOJvQqllnNa7+Yt8ZswkbdOqkvgEx5g0SwpJh6eFHd5hYzDNOvqxaqTGBvpi4FAWMUEFDUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDlj1KOs9VAS/9D89/aoTz2D1FuYyhihz9bfNNiT3ZA=;
 b=SkbmsGaQ3rpJJEjQp+41L1uI//eGYpvEDqspzcm973qSKZCIYTYw6XhrbF57g6fGRhMRnSZOJR0nGcPKf3JNv9JlpSKKRqV5evJVVgdHsZp32GDBg76PoxBrMXduOAtVzAGub8+fx8BfM45/edIHf/aqQN1+uYoyT62407Cnswx8TVenzxMWLSBYmQXY1in0TRyrmGVr4p5hXNfesUsjLtokMVhylEElhjXS0Dm0ZDuZaKFfScx1SfcaLnKNN0ubSwDjh+CHEoZuzx2ODoXZ6Mdw/XFdDs27hV5XweMFntCVCOCF/wOKFBw/eF+oE3/9nUIJFW3UaaJVwQjeoPOhFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDlj1KOs9VAS/9D89/aoTz2D1FuYyhihz9bfNNiT3ZA=;
 b=HQjD1MxTot2Gg3M9H7dGCin6GMWzaJadkv2Fu3705U3oEUxsgPTIhFZsE29Eee9p8HoiU4a+VZ9CPs/TeAJ5TOwOAWCnmz75Wx0Nnmcc6QLHMrSKtR4rk+QBzCUHiKezhwtGAYDDxk0pV2lce90WGvBiDwKaBhS7zhvfDDzNlN4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6742.eurprd04.prod.outlook.com (2603:10a6:20b:f2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 03:54:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 03:54:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Shawn Guo
 <shawnguo@kernel.org>, Andy Duan <fugang.duan@nxp.com>
Subject: RE: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Thread-Topic: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Thread-Index: AQHWKq3aOdOVoo6/TEyJrflUDB2tmaitOnaQ
Date: Mon, 18 May 2020 03:54:53 +0000
Message-ID: <AM6PR04MB4966710261BD821190B2F0FD80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200515114151.6516-1-s.trumtrar@pengutronix.de>
In-Reply-To: <20200515114151.6516-1-s.trumtrar@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a067da20-d4fb-4931-9e9d-08d7fadf393b
x-ms-traffictypediagnostic: AM6PR04MB6742:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6742FF24262FF0ACB07518CF80B80@AM6PR04MB6742.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BiNPqQVNqyY+gdfvwFCJMLp0KIZwjIfVypBeFJIA2N+3kF2xnEuch2hL4xesdlo0wULEn2YAFCvzaZT0NTil2KrrDz5VfBmaoLyMPFPVWx4G3nuQHM3XjVgnAC4w5CCfU2T4TrKwIa7fm+RXMLyzUz0vzfQl6saKBvLuAEVlGN1GebGBJZGVRhxzMMY7gPwNxk8yzG0dZHe3eFmBxHZNKaaRk+eGkJHIlJDA0dUSdUejw0epBTpRmZAuaPaAl4lpWwGLmn06iG+VSYprAQAyHGc+EnByoO7/7AeaBi3WGQSYQ3NiDOJgnRZuAMKYUQTbxCKTzVXkrvk6u6NhzJPcgK8pUDIDxBNHYx5EDJKCRQj5lVrgX0HphCo1msMdW5eUGv1r9o+lll6eQ2AzYzOt72EqypKPDE+GOCZuWknLyC/o4ef8es62yyq8LimZ57aW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(39860400002)(396003)(478600001)(6636002)(33656002)(52536014)(86362001)(9686003)(44832011)(71200400001)(186003)(110136005)(54906003)(8936002)(6506007)(4326008)(76116006)(8676002)(316002)(55016002)(26005)(66476007)(66556008)(64756008)(66446008)(7696005)(66946007)(5660300002)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 6YAAC50VHG1TY/EAav/rAD31EDvz35nnsisxnV0CczjYP28e97v5nTi9yJw0hScGXJweWnAeyR2K1ds9WKl5tzAzL1L4sBJmj71TSWVJJcb78fSkiV93Zxj61GgW2Ixa4/lEs/1Okf0XYqSw1b/BspSJUr0d5XKz58ENkz1JDas/zE4RDCSlONjBjZIkCiEkruen6e7VFGujvJIu7mO/Nckos+PvMMdGC1lsNHxx5hgcE7GEJJAk+A9TYDKT1mNBg48FJbmeABnY7Bd0sK2pkDKqZgW9PLRf/L8aX5pmxuEGGl2zjZjr/MZnl+Q31gIfzx8xaAN8AVU8a1WPik1xvYVtT6IHdNb3uHcCM8EJVpUrNtz7jVb9g8vFgSux18DcBDN0AQsLE8gNCLAozKjbO+3Nmacsw0DNQO2kfZbNzhfRSYyjabcZAVZYQ3YSWK17V32p/7UvmBxxJDEk96HWmYx7yritGSK07KaQKANcG0s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a067da20-d4fb-4931-9e9d-08d7fadf393b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 03:54:53.9874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DAsblxXjRQMzgi2bDwx7Vnd2PZJoxB+Vl8jgZMezrBBsZz0vG72CIntTpa++hfNaSQCh1ttp90bdTm13OZaUdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_205459_170417_B57F26E9 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Sent: Friday, May 15, 2020 7:42 PM
> 
> Add the missing input mux for ENET2 mdio. Without this setting, it is not
> possible to read the MDIO answers back from the PHY.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boot/dts/imx7d-pinfunc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx7d-pinfunc.h
> b/arch/arm/boot/dts/imx7d-pinfunc.h
> index 08ca1608fdb1..69f2c1ec8254 100644
> --- a/arch/arm/boot/dts/imx7d-pinfunc.h
> +++ b/arch/arm/boot/dts/imx7d-pinfunc.h
> @@ -592,7 +592,7 @@
>  #define MX7D_PAD_UART2_RX_DATA__ECSPI1_SS3
> 0x0130 0x03A0 0x0000 0x3 0x0
>  #define MX7D_PAD_UART2_RX_DATA__ENET2_1588_EVENT1_IN
> 0x0130 0x03A0 0x0000 0x4 0x0
>  #define MX7D_PAD_UART2_RX_DATA__GPIO4_IO2
> 0x0130 0x03A0 0x0000 0x5 0x0
> -#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO
> 0x0130 0x03A0 0x0000 0x6 0x0
> +#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO
> 0x0130 0x03A0 0x0574 0x6 0x1

It's strange that I didn't find this select input setting from latest RM.
Anything I missed?

Also copy Andy to comment.

Regards
Aisheng

>  #define MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX
> 0x0134 0x03A4 0x0000 0x0 0x0
>  #define MX7D_PAD_UART2_TX_DATA__UART2_DTE_RX
> 0x0134 0x03A4 0x06FC 0x0 0x3
>  #define MX7D_PAD_UART2_TX_DATA__I2C2_SDA
> 0x0134 0x03A4 0x05E0 0x1 0x0
> --
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
