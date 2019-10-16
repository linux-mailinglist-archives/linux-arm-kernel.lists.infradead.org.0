Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B59D8F11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgaIZ98ZqC9pW7eejg8SMdtdDZSJ0looH6O74p1xGuA=; b=vDGecQBh54zSdn
	tAKOWh3+IRoE03rkiOkyZ6shWl0Ov+5osUJKjd+FAjlQUNU/HCvFyLEkhVQgpQIC6Q8SVKhsMR8bC
	MzCBXhkqiy0nTozmAc1CkLs5/fOj0NJhH+CeKDe9Kcrbmy23QGdhK+Up2M70Kr2gdICm3Y5CWyj+l
	I3iPoBNAq+wh079go7gDlAI32YCu+z2C4HUB2QAi9DzdjN812fCOgvt74WR0wf6iVGO6pC71/9QyK
	tgR8GaYXOcoHhBGD78rSkffCmRIaQN8E6q+fTQRt7xmUAbBqBGh5T5UmEMcKdsefZzjyH7xEBjYOf
	sAFEyXkdYoVyoQOGxPmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhFw-0008Rx-WF; Wed, 16 Oct 2019 11:14:17 +0000
Received: from mail-ve1eur03on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::60b]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhFo-0008RI-Iq
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:14:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fX4hycvLAiPTz/9rA9KBls+DzljUYg5XFtt/FL8tGyhOh9svl7Y2dUw7m6HuUwl+BtQSteCDW4Z14+6tAMV103S915ZOaQIT6kan6uF/my/eb95/ODWxjVsUmNRKhwqKWIQSC6KQ3rY/OPsLtenvg2xte34xch9+3k+XSLa9xaf3CMgLFQTd0yKs761QTaSPqRzyMSiuW8Ne54sX8ilNEyZA2rY6s2q7zawxD++B/M9o1Op8PD0gnhD+Pie2YqAesgTryU02wjxKufpb6J8BcpEedcQOG7LOXASPGhNx0F95EjmPiHYod4S9RZy57Q7S5c6JmeJAlUFk4BULvCOFxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xf7j5xtXdMuSThi7WjfxEfgX6e44woI9XB3HkeKiWPk=;
 b=Lz/yYq8u45sSnd7jkmDhib5fO3AtOdzKf1Hr7zdckvWes6stu6vRwFCsg41h+4MhR9P9lKI4LqRfR3KNPGZW37oQRdyq63XlHuL2c3nQJuxurzGLPIOBYt2WzE4R80jDcod/xAU23I0iM8DbwuIneeL1AxH2pjA3dhkxdvXBKly6+m15vYjVaix+KbY368daVZ8VIfv0AVVVwto4QqilS0Sht5nPH1sPGEcP0XEoVkOhvat9VsxPR7iNEN9NPoBItV0IoM9hbry/wVu8Kgx1LT1JrYC9/hpuwT0OfDJzqLv4in55c7taUa8mn6WsBnmzr2RcH8UHWnw+5Hwe9U0ubA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xf7j5xtXdMuSThi7WjfxEfgX6e44woI9XB3HkeKiWPk=;
 b=P69BrBNd7febrBKJgY07einPIR6T5GYunkeG9tnxdf16zqrii5nVF/H37dZwf3Ue4cnxvu+9NVBoTMx/o7AhUqXHY/zEIxmdC2ke7HmAY80lu0SoA0CLjk567KX7tvyTk5wzQOSHnwvL+wjwM4nyRNwiAIgE5/JSkH8yc1qFdoU=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB5728.eurprd04.prod.outlook.com (20.178.127.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 11:14:04 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::b835:b58c:26b2:ca8f]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::b835:b58c:26b2:ca8f%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 11:14:04 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: dl-linux-imx <linux-imx@nxp.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>, "festevam@gmail.com"
 <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>, Jun Li <jun.li@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, 
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM64: dts: imx8mm-evk: Assigned clocks for audio plls
Thread-Topic: [PATCH] ARM64: dts: imx8mm-evk: Assigned clocks for audio plls
Thread-Index: AQHVhA2D/VrUFzy1602vrssfnC7nGqddHYeA
Date: Wed, 16 Oct 2019 11:14:03 +0000
Message-ID: <c878dec9a2d0c47f23806ce3db7b0361badf17c8.camel@nxp.com>
References: <20191016103513.13088-1-shengjiu.wang@nxp.com>
In-Reply-To: <20191016103513.13088-1-shengjiu.wang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb5ebbc5-e02a-4929-f73b-08d75229f438
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB5728:|VI1PR04MB5728:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5728166E0D6B812FC76C2351F9920@VI1PR04MB5728.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(189003)(199004)(6246003)(102836004)(25786009)(5660300002)(7736002)(44832011)(478600001)(118296001)(3846002)(186003)(229853002)(66476007)(6116002)(66946007)(26005)(81166006)(6506007)(2906002)(8676002)(71190400001)(71200400001)(81156014)(99286004)(8936002)(50226002)(76116006)(91956017)(76176011)(86362001)(2201001)(14454004)(7416002)(476003)(64756008)(6486002)(110136005)(4001150100001)(305945005)(316002)(446003)(6512007)(256004)(66066001)(11346002)(486006)(66446008)(2616005)(6436002)(2501003)(36756003)(66556008)(99106002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5728;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q35NQS/Nr2IloofI2VOnh0K+I01WEsrI1TyJq1qWjhhN5TfaE+st9pdUvjuCABCMiB7ikcaZXoe4DsQvAmUfLLC3bX3+xi+4dsqpTOzHpJmgpxQWPomLz26g7d5QKakYxPpZmXauVHx2+K0QkB8na84E2s3fyXN53d106tmGHl9wxgBI+LRU8USEEKLXn7BdQvYc4UVRNrPbBTxlsJh2wsB8zPIJK2TRyRFJ97HkVDQ0Bzls77VdaexNVD1O/Gsl6BB0Jzhg3x6whKc/NyReiSA3I+A26g/LBOHT4h/P5ZaMVeQew2veUSt7y2UxuMXZv6fL9NJdJ5fo7fsaj0Jn3iGOck4VKdcAmnZf6bX6go4N3GJ4Uy9YE0w0cmO2RFLbJfbYYvn2K+sIWLf7Cb0gtkSjdwXFuZ7badPRsaNVtLM=
Content-ID: <550357C19BD2FA49A77A0992F0D97170@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb5ebbc5-e02a-4929-f73b-08d75229f438
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 11:14:03.9116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sjev/YwwKxa9fgAHvBjYzOGOz+p4NQhiUihhbSckxP9jn+TXjJEAv2rzKoYoHsFKuQeTML0FuxKdqh1Y7HYmSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5728
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_041408_624919_C8D73F13 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:60b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-16 at 10:36 +0000, S.j. Wang wrote:
> Assign clocks and clock-rates for audio plls, that audio
> drivers can utilize them.
> 
> Add dai-tdm-slot-num and dai-tdm-slot-width for sound-wm8524,
> that sai driver can generate correct bit clock.
> 
> Fixes: 13f3b9fdef6c ("arm64: dts: imx8mm-evk: Enable audio codec
> wm8524")
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 2 ++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi    | 8 ++++++--
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index f7a15f3904c2..13137451b438 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -62,6 +62,8 @@
>  
>  		cpudai: simple-audio-card,cpu {
>  			sound-dai = <&sai3>;
> +			dai-tdm-slot-num = <2>;
> +			dai-tdm-slot-width = <32>;
>  		};
>  
>  		simple-audio-card,codec {
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 5f9d0da196e1..2139c0a9c495 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -479,14 +479,18 @@
>  						<&clk
> IMX8MM_CLK_AUDIO_AHB>,
>  						<&clk
> IMX8MM_CLK_IPG_AUDIO_ROOT>,
>  						<&clk IMX8MM_SYS_PLL3>,
> -						<&clk
> IMX8MM_VIDEO_PLL1>;
> +						<&clk
> IMX8MM_VIDEO_PLL1>,
> +						<&clk
> IMX8MM_AUDIO_PLL1>,
> +						<&clk
> IMX8MM_AUDIO_PLL2>;
>  				assigned-clock-parents = <&clk
> IMX8MM_SYS_PLL3_OUT>,
>  							 <&clk
> IMX8MM_SYS_PLL1_800M>;
>  				assigned-clock-rates = <0>,
>  							<400000000>,
>  							<400000000>,
>  							<750000000>,
> -							<594000000>;
> +							<594000000>,
> +							<393216000>,
> +							<361267200>;
>  			};
>  
>  			src: reset-controller@30390000 {
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
