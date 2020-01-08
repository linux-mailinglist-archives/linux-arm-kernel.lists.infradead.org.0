Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19268133C9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 09:06:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qErwLG03qo+uxW8//B90maLggB/dlyZWRlqFapOv3Yg=; b=Wyb84hse60wJ+N
	0KZ2fPElM6Pl3IA3lIXz3Pn9ZLPCQeTKc2T+r2mJvNXNi4NGqt+mir9ExsPJTUMq496niO/G9Yjdw
	4AoGjm7LCwltgqbCDHRgq9vh1IHNowWl2PIR3V58xb2cHiWdxKqnZXTLbNjnG3I8eQJeo6FcnLOv2
	qtchzr7bkpjKiWAnrTJCjqpy7D4IxtSKxJQBjFuFzJFkkyy2JM05MYeEuESKi55yD9OGDi6ccfNXa
	2/k3eRiOjCJTdUvyt7H9v9Svl7wUDLHScCPicb8YKxlTD7RKP3FxIKlw2XWtiU7K1mjPSntAY9xz7
	ClPUpnebDVXz/CJMMKqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6Md-0005JD-M1; Wed, 08 Jan 2020 08:06:51 +0000
Received: from mail-eopbgr140074.outbound.protection.outlook.com
 ([40.107.14.74] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6MW-0005Hx-3F
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 08:06:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g70Go7EUvhE5Nrr1ECCN3WrgMK1MiUYrggszMz5PaNSnIEqp+e4n8U2CZhFxLqSAJHtVh99OaI1liI5Ijq9QaTjtpNLtxmpWZKag/n8twssdomvmVpSQuwDx3knK+xhqKxFICnA/JR1h4HQ/MaJ+/TLuUETdb9JSKipIqYrj+9JiccWeupLVB5nQmkICIZBVmiud/8PtlOCI+VqnmPV6i3oHHnKYC5+B7ChXoo75/fJSzK2UdWMN9rsVhjm5h548cuFleqeGc/ozLn8ZPFuBmFJ3hAfffOaXVvjUS6j2ASCehIAPD6wbx2KZtASEJ+Cmq4h/52BmjgUxrceTbO3LGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CO1JY97odh1SEKMNWMfN5oAB2HaTljlKNmW8/jUfzzU=;
 b=ZEJ47Vr70XlpaXNL6sBz6LdF+pxYAMzf8UTQHZ4hqRSISyMPZMHeo3Hd4903h9lg7V5LxjOkCmTRkFK9tO52uV5X0pAZPjByqTb0sYDziUcSZGq4xijl5YuTdYxutiwzLZsD4mHEC9cQmWnbs3Fg8K/BThQYgi2GfvX9TKhMTk72RcVOjOf2hMqI40inK/l/u1Y6I+Vt+FEE3hzkyesucMKF2y9jjkNt0i8H9wIv2M8IwpQ1Ek8GnyTUP0s0KEzJJqjAhORNx35dS3za3aJ18tdCQUfP3h5iE2qE0zfjc+pGtyDGQ3/eO/87M9SEvntuucxeVtrU0iyNB1AzXiCGyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CO1JY97odh1SEKMNWMfN5oAB2HaTljlKNmW8/jUfzzU=;
 b=J8DMYG2FebFuF0uE3AtvyqCa+5BoG+ZQra7ICh+6APhLhTv/Zieah4lD7t9ke1Pf0P39l670IXjLKDI+P2RjfGg8gn/YvdUEP4CUocfANFC3g6r7ttmyc4kqnAjllndtFWsCqtmqVzxP8fZcMLqQAaufcLpklAeGzpcaKdduKoE=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3790.eurprd04.prod.outlook.com (52.134.18.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Wed, 8 Jan 2020 08:06:39 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2602.015; Wed, 8 Jan 2020
 08:06:39 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>, Jun
 Li <jun.li@nxp.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan
 <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "aford173@gmail.com" <aford173@gmail.com>, Anson Huang <anson.huang@nxp.com>, 
 "S.j. Wang" <shengjiu.wang@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: Memory node should be in board DT
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm: Memory node should be in board DT
Thread-Index: AQHVxfVdXcchcCRfCEWB2x7J7LO1cKfgaS8A
Date: Wed, 8 Jan 2020 08:06:39 +0000
Message-ID: <64c1429303c9dfc6331e1476cbf4564ddb9137c4.camel@nxp.com>
References: <1578468329-9983-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1578468329-9983-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ef06812c-4b49-4d74-e3b6-08d79411b096
x-ms-traffictypediagnostic: VI1PR0402MB3790:|VI1PR0402MB3790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB379007201FABF4E699EDFF86F93E0@VI1PR0402MB3790.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(199004)(189003)(76116006)(71200400001)(26005)(66476007)(478600001)(2906002)(6506007)(7416002)(6512007)(66446008)(316002)(91956017)(66556008)(44832011)(2616005)(64756008)(66946007)(86362001)(110136005)(4326008)(36756003)(6486002)(8936002)(5660300002)(8676002)(186003)(81166006)(81156014)(99106002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3790;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mSkKITBy5x+XT0wg5ZOtxtoYDb5i5C83JV1J4GTIYsyxteiOjibm4el1gyYI4G/yLajkdqweMheOPztB69spo/29CUym9EUcc+oOz1LQZM0k6jDloWjETEI3nmPeytRLGaSMkT1SSGSKUDrA+rYAxDGPCpSHzC2IQT3aiA65NhxtOAJZ9N5ynwhZjDW30WBmfG65IX43ZHgzUAygmadNj4pML3ioyFY1MuPPHj6WJwx+TDAC7Q9IetTvduyuIuX2ck2Gjl/lFazZwBkfXAKgx+KtkvdGt/HRnQ5MeWewydYBRw1olFj12h8IEfzgVq0qjlm9CAllQ4CIBVzrFnufqSKaiQCe7IEZKhw1VqK+r2H9I1pmugIOOqdP+KO78OnBM4yYJuNytyQpqmFh7BExtCVspov9XgvPGrUf1JRVhZmmHmHyeIrLSNxG8RkSV/2Duyse+srxV2GdayBA88578vKX+DB5CbbnLYaHrqiLKoXdBIoBENCOitoWq6dsRLwSuzAGh5ohba9PXrPxS6fFRC5L+AIvRw9lKG66WCJDDuJR/VlukxYQuNXG4JVjEYAP
Content-ID: <DF375F58A9822D44AF24114DFB27A9E6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef06812c-4b49-4d74-e3b6-08d79411b096
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 08:06:39.3128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E8ANtxzf/7beePSGTwBnXzqlhbb4o6CA4Vq6a2Ok5oNy6xUsVIP3+W4uonWRpr/Tt0G+jHxpGuP7mx3hSYmcpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_000644_141161_9305CA01 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, 2020-01-08 at 15:25 +0800, Anson Huang wrote:
> Memory address/size depends on board design, so memory node should
> be in board DT.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

Care to add a cover letter for your next patch series? :).

Just use --cover-letter argument for git format-patch.

Thus, we can keep revision history centralized and can just one
Reviewed-by/Tested-by tag :).

> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 5 +++++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi    | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index cf044dd..9e54747 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -16,6 +16,11 @@
>  		stdout-path = &uart2;
>  	};
>  
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index a3d179b..1e5e115 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -140,11 +140,6 @@
>  		};
>  	};
>  
> -	memory@40000000 {
> -		device_type = "memory";
> -		reg = <0x0 0x40000000 0 0x80000000>;
> -	};
> -
>  	osc_32k: clock-osc-32k {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
