Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C57E1B8BCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 05:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DZ+el8EOuDDrK7kLf/9XfubdYLbekJbCe9QJ1UA22E=; b=AWzq+CfIH7RdNB
	Y51XAPxMHrkDWgkyvqJGAOXAs54I+K4PZMwwA1v3cNqDiH25dDhBd3OncngTK9V8n8Aq7UeXehXvb
	UsJex/FGHR9pmx9jsFau7ChDOtS9jN+9g4nf/iKcu+ICjbK29aURlS2xG27OAZ+X2JIeXjvUYFRHl
	2YqNcjwrV+DHfTZmTrENUbbf5J+2bQnfmIyTlnLEgumKc+4USCgwQrk+hZEtK0LlDIUQK89LqkmIn
	4KLHfM0eMS03UtL1u63CJos64eTZMV62gKpVWyeIIDjNhhy2sHXD3hKsIOXDn6neK0WvMpViIEbJd
	VyhkZ4AoDHheVvVav2eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSYKf-0005rg-UA; Sun, 26 Apr 2020 03:51:53 +0000
Received: from mail-eopbgr40055.outbound.protection.outlook.com ([40.107.4.55]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSYKX-0005qD-9r
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 03:51:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jqE98cPLBTXLKkNOMt+Y0Ufzu2wihg9QFI4ibRGU1CBMM6d0FE9IYVH6nDCWZTZZD6G1ROI0MQn9C2nlNJvx4HwPN7/NI8ynBRTlPmCkZn/N7DwIVzxHfURemIgbCGDEH7EooC3shAtD2jKToRrMWJDdsQTiA4ZcNhLfO6myzyWgPFKMWVlGZivxn2/ufhsnaIxSX2+Cv2sBhyL5wojnQ8EyyCPSCRmPOtaxUPELqY49m5zM5r1h9rcjudeiiW6gX9J5CzVwzPnJFWcStU/Q90MOlcGdyxb6zLQhNFwi99+2ovrqzytVmlhYhJFGCJbZRuTVhIrQsStoqZ1CUOr5/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ysgr1oE8kwAfdgxxxpOfehNix3vo5ZDLXS5bmOhxZA0=;
 b=UwhqZAcw1litNJjPt5CHfyH3f85/3DVK9VKBYJ6WFHHdmTwUSDTx2QhX0QvF4KJY5uhPTQy4BlxHFCbfJTu2Sv1l9NFgOLv+JJEhAuFXeGmTiw/QhVq1U90h3r/0ygO6TzeSKJxi5t6J/B1xs4stG/ag6TNcWOt2fVpjsr/TLfRW73EyFtNsiivOh3kItm7CGfMLR0l/EAiNufGo8cpWA22jVBSFnKdMC9H3zQ6Fj5PXnCFA1Isu1G+jFFfn5d5lY9Noj7A9BlJb5OXpRmZqAp5/sK5r4iNxwcxVu2SXGRUJ+mjUqV/jc5IRXT3v/q9T/HSJyeyka1cpugGN5if4MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ysgr1oE8kwAfdgxxxpOfehNix3vo5ZDLXS5bmOhxZA0=;
 b=Yt/aoh6PWqaM/cundvkGuzhYTrcwAI1ToCC0mWwwVJB3+YX+jPym6m33Zex1vVA6IM0ZvWCOwZ3L1dObvrlUAnmE/SCxWiZ6QTvUoiNSKYekf6DLMPNNzGQU6zrk4ZXaloWZOc9gQhJRxYRe4YTQrIZyJQ0bMCYuK1iSVYWYyIU=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5478.eurprd04.prod.outlook.com (2603:10a6:20b:97::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sun, 26 Apr
 2020 03:51:39 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 03:51:39 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 01/10] arm64: dts: imx8m: assign clocks for A53
Thread-Topic: [PATCH V2 01/10] arm64: dts: imx8m: assign clocks for A53
Thread-Index: AQHV+Fi3TCc+ShM16kOvHnoU4uoIS6iLCmAw
Date: Sun, 26 Apr 2020 03:51:38 +0000
Message-ID: <AM6PR04MB496640B6A28BBD8F491EB1C980AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-2-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 242cbd64-8eb5-4d64-3583-08d7e9951fea
x-ms-traffictypediagnostic: AM6PR04MB5478:|AM6PR04MB5478:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB547856A0AB3DB4BF35D53C5C80AE0@AM6PR04MB5478.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(366004)(136003)(346002)(376002)(9686003)(110136005)(4326008)(55016002)(7416002)(186003)(8676002)(86362001)(5660300002)(52536014)(6506007)(7696005)(44832011)(6636002)(2906002)(54906003)(66476007)(66946007)(316002)(478600001)(64756008)(66556008)(8936002)(66446008)(33656002)(81156014)(76116006)(26005)(71200400001)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pJDk36fUdnEvHoY5FNA71gJpb+L7hjaVhOCbnLwSCmUhFclTaDPJPIP0ABy6sO2YFMPdZH0r5k2fKTiYus5o9ztlz4etup/mqzOd3wEzO5/vih+WTT5Z77bf1S9BGS2ta3hYMFHLP7CRuJdcphYpb5Q5Jw1XZuYRs4q8EPq6GNYJ5lsDgsjSqnT1OzYKjP1KoBCu2O46iX3E+8/9c0pLmjakfgoL0IgxPzGTCNbH6mYefChIQfTWWT/fVGR6Z6WME2FlL+AzBWgCOFY5E+sCnQZLli9qzYbSbPVdm7roP/En2FxvbZenQrstPSE32EAT6TmungFwVFUcUW8TytkTzdo9W2YjJXIjybXsDyEVo23gZaZoHl43heT/ey2eXz4vSyZCMK0GN41RT8X/g2+U2/emlI8sgi5YUoD6tOeHpkUoh/l3lmvAert+barC6wV+Xu4hl86F7q7cdV3AaXPwPTDoa1dD4z/k4knCFf7b5uvBt1UtfCMylkiE9aNs20yC
x-ms-exchange-antispam-messagedata: 8+NdaKTiPg3ql+/3vV0uxcz4h6610tMn/qbKiTG/eqQOmumHT8XezL42EdBJRwf/MqFYfEbWL1hWVStx11chK8SykuSMuc8Fv6q1+P/kxBeMFoWrUt5Vi6g+Kn79NKVsXjdgo6tLywE7sAKvbMPNJangnIALUftYE+rvh0z4a0E3HcRxgAL9NFZdtVGeyigqj9g8NQ6Lo1ZqRCCFdRsHOte6aQ5N/DeZKkqyohOkatik/uI/uCG4Te7Jf2gzqP0IQSVKyTQ8J4Kxtnb/WCZ/wZ14+Cy78/uYMFWrtbNmCXG5lMViTYrjtAwVlUemMPZKSStI4lcrhch5aeWhZgeZqJegt1m0IMB69wa1tB2vAqHp2UX0Ta2D4LFX2/Vw+5M6W+l5B49Up3Cb0y8PRHLDdmsgcnlFAgQFgBT/aXrQqGlNRfoxiPeL8/fHy1jJJIy/9yVB5DyyaDl1NBSrME88jO2oYQG6OI/M7aHBtdRj/WJi7nIQHQFK/tahjEYqcY9vAbgj+Ui+0ZiYcECSckWA8Lcho+bJarTd3ksJwWzRG8pi/oCav6QrugcYbpEB6DCP7XYSvhq3niKMzrJCtHhClSrXtxHKdLSPwwsn51NCXXQ5LVD9Ga2afzCohROyX5DDLxW4h/rhLGUJiVi5O8W4khiYoO2Iw4hei9h5zA6e9dx3UI1TTeH+pGVpD0EacqRaAUQSxb02EB2BoViz4eL6Q9MxYqOQAie1a49afcr0qLRdmf44l3xQ1nUBTx4Ynn6vGFjx5GFTVmdDpydIgNmbSkVqbIveOsSJ0zKmVMUng9A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 242cbd64-8eb5-4d64-3583-08d7e9951fea
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 03:51:39.0136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wzZS7x9rI53NNTEsJl+rMGXkUaJLzq7ME+Co7qlmlNCXQcBN0WQQlQqrCYkYKMllQDps+hisb5YPtagd1FD8gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_205145_444722_4D0EC371 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, March 12, 2020 6:20 PM
> 
> Assign IMX8M*_CLK_A53_SRC's parent to system pll1 and assign
> IMX8M*_CLK_A53_CORE's parent to arm pll out as what is done in
> drivers/clk/imx/clk-imx8m*.c, then we could remove the settings in driver which
> triggers lockdep warning.
> 
> Reported-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 10 +++++++---
> arch/arm64/boot/dts/freescale/imx8mn.dtsi | 10 +++++++---
> arch/arm64/boot/dts/freescale/imx8mp.dtsi | 11 ++++++++---
> arch/arm64/boot/dts/freescale/imx8mq.dtsi |  9 +++++++--
>  4 files changed, 29 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 2e5e7c4457db..8d2200224db4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -471,16 +471,20 @@
>  					 <&clk_ext3>, <&clk_ext4>;
>  				clock-names = "osc_32k", "osc_24m", "clk_ext1",
> "clk_ext2",
>  					      "clk_ext3", "clk_ext4";
> -				assigned-clocks = <&clk IMX8MM_CLK_NOC>,
> +				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
> +						<&clk IMX8MM_CLK_A53_CORE>,
> +						<&clk IMX8MM_CLK_NOC>,
>  						<&clk IMX8MM_CLK_AUDIO_AHB>,
>  						<&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
>  						<&clk IMX8MM_SYS_PLL3>,
>  						<&clk IMX8MM_VIDEO_PLL1>,
>  						<&clk IMX8MM_AUDIO_PLL1>,
>  						<&clk IMX8MM_AUDIO_PLL2>;
> -				assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
> +				assigned-clock-parents = <&clk
> IMX8MM_SYS_PLL1_800M>,
> +							 <&clk IMX8MM_ARM_PLL_OUT>,
> +							 <&clk IMX8MM_SYS_PLL3_OUT>,
>  							 <&clk IMX8MM_SYS_PLL1_800M>;
> -				assigned-clock-rates = <0>,
> +				assigned-clock-rates = <0>, <0>, <0>,
>  							<400000000>,
>  							<400000000>,
>  							<750000000>,
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index ff9c1ea38130..ad88ba3bf28c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -380,13 +380,17 @@
>  					 <&clk_ext3>, <&clk_ext4>;
>  				clock-names = "osc_32k", "osc_24m", "clk_ext1",
> "clk_ext2",
>  					      "clk_ext3", "clk_ext4";
> -				assigned-clocks = <&clk IMX8MN_CLK_NOC>,
> +				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
> +						<&clk IMX8MN_CLK_A53_CORE>,
> +						<&clk IMX8MN_CLK_NOC>,
>  						<&clk IMX8MN_CLK_AUDIO_AHB>,
>  						<&clk IMX8MN_CLK_IPG_AUDIO_ROOT>,
>  						<&clk IMX8MN_SYS_PLL3>;
> -				assigned-clock-parents = <&clk IMX8MN_SYS_PLL3_OUT>,
> +				assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_800M>,
> +							 <&clk IMX8MN_ARM_PLL_OUT>,
> +							 <&clk IMX8MN_SYS_PLL3_OUT>,
>  							 <&clk IMX8MN_SYS_PLL1_800M>;
> -				assigned-clock-rates = <0>,
> +				assigned-clock-rates = <0>, <0>, <0>,
>  							<400000000>,
>  							<400000000>,
>  							<600000000>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index d92199bf6635..3a96082e8717 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -284,7 +284,9 @@
>  					 <&clk_ext3>, <&clk_ext4>;
>  				clock-names = "osc_32k", "osc_24m", "clk_ext1",
> "clk_ext2",
>  					      "clk_ext3", "clk_ext4";
> -				assigned-clocks = <&clk IMX8MP_CLK_NOC>,
> +				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
> +						  <&clk IMX8MP_CLK_A53_CORE>,
> +						  <&clk IMX8MP_CLK_NOC>,
>  						  <&clk IMX8MP_CLK_NOC_IO>,
>  						  <&clk IMX8MP_CLK_GIC>,
>  						  <&clk IMX8MP_CLK_AUDIO_AHB>,
> @@ -292,12 +294,15 @@
>  						  <&clk IMX8MP_CLK_IPG_AUDIO_ROOT>,
>  						  <&clk IMX8MP_AUDIO_PLL1>,
>  						  <&clk IMX8MP_AUDIO_PLL2>;
> -				assigned-clock-parents = <&clk
> IMX8MP_SYS_PLL2_1000M>,
> +				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
> +							 <&clk IMX8MP_ARM_PLL_OUT>,
> +							 <&clk IMX8MP_SYS_PLL2_1000M>,
>  							 <&clk IMX8MP_SYS_PLL1_800M>,
>  							 <&clk IMX8MP_SYS_PLL2_500M>,
>  							 <&clk IMX8MP_SYS_PLL1_800M>,
>  							 <&clk IMX8MP_SYS_PLL1_800M>;
> -				assigned-clock-rates = <1000000000>,
> +				assigned-clock-rates = <0>, <0>,
> +						       <1000000000>,
>  						       <800000000>,
>  						       <500000000>,
>  						       <400000000>,
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 9bbdaf2d6e34..1f3ffc8c8a78 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -594,8 +594,13 @@
>  				clock-names = "ckil", "osc_25m", "osc_27m",
>  				              "clk_ext1", "clk_ext2",
>  				              "clk_ext3", "clk_ext4";
> -				assigned-clocks = <&clk IMX8MQ_CLK_NOC>;
> -				assigned-clock-rates = <800000000>;
> +				assigned-clocks = <&clk IMX8MQ_CLK_A53_SRC>,
> +						  <&clk IMX8MQ_CLK_A53_CORE>,
> +						  <&clk IMX8MQ_CLK_NOC>;
> +				assigned-clock-rates = <0>, <0>,
> +						       <800000000>;
> +				assigned-clock-parents = <&clk
> IMX8MQ_SYS1_PLL_800M>,
> +							 <&clk IMX8MQ_ARM_PLL_OUT>;
>  			};
> 
>  			src: reset-controller@30390000 {
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
