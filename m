Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323921841A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 08:45:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ERdh+SsgbhSlA76LoJHZZjx5vCRumQjHjhbECJ7zqo=; b=trcyB3jBY2h4H2
	B0MVYnd+yxRL06I/yftYfkz8TqgB+ytD7gHoJVnq37aJjTzRS6DT9Fs9M5A5sZB2wrQlt1qvnhWES
	ec9jZkapecikU76iqWGLt6MhYWjCck6TSWyAd2KoL5d7Cy4nz6lVEeji12f+Bilnb62cQLteAdycH
	fwEn7pkIIk5xVbBoDpCXN17TQP0GIFJzdAj2wiUccN3wuadf5OVtD43+OrFjliSNpOwrMYnlgrrx8
	DQlm2P9wBepZXTIn8gHVgeMedL6yMnINfeYL1ldFil2a+pG+VSBPHh1v20Mjz8v52kI/8009gN4z/
	ph+Kg2C8FfJOihainhiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCf05-0004Gc-Vi; Fri, 13 Mar 2020 07:44:57 +0000
Received: from mail-eopbgr60059.outbound.protection.outlook.com ([40.107.6.59]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCezu-0004G5-7x
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 07:44:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKpEVfXd7pbW9wbtJB4D+HASW+o0Ebh81PntPC5oy9JLbiixUaOXFVXjUyFJeaAGXikAPrvqB6UGIw+Wd8ibBi+ZEeVLByfBrGjgW9ewC4PXq9MHAPiIMpStSS4xFjXM0u/Eu0QluPHfhmZtF+KPAMhYsyVku7gWQWaZUcCD1iPVPGERTaMlI7df7KWE7BTdA8Z+pQjMScQ+jxAKLA45wnGio1+EnSjjFhiC20J/U82UxYU0wIDut1JYncxA9hF2U+zeDGVeFLpHMT3oHg3FHib8VpI4MtSx+zfr/Ua/YGf5czPh+k0/FqzkNA5PuWN7S0puEX6tUx3XZLmPl6js7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ai388t4pbrHUWWvXOdgsXw4crg3dgRkaRBSyIkjwYGk=;
 b=R+cVdS7yNsW49QsYXpwUAY0lzDoKP6O/oil4iCZSAtl6fIKzhNeRzqBlV4yjdf+iX/Lu8zsWwnHihr3/qATIz2fo6Bkhpd4q2Pb/BcyvQFnktlLIwQeBqDVXVqWrENFWIU/lZ2f8oLgZrW3cStWN3rkL3lEwmaxMJG5h+vx2cgio3olxDuB45G/ESIN/YD0iO17ZBElYdbBhC6Gv7yAxrfhlNJ013djpXcgOUPPBbNaejCOF8F6RC+gjrOQDYqaO7/bqOSQT+CVv2kYEuh6KMV46mCdzDmJNTcpKYveC24/ep/0BSxXse2i++figIkSxEdBb/QtWck5xGt9EmTkWzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ai388t4pbrHUWWvXOdgsXw4crg3dgRkaRBSyIkjwYGk=;
 b=AlQmI+7HKR9b7SBrnTsHHmEQhbcdSu2Xx+uJwlM59wtXNcV9X0vKmcLnMQtV5+VqQWmpCeyl6adX9JwSbTEsJ3Yx4SkRQB8ER3Gel+y7QZLE637JyS6ySg44Mj4SKmEvQGD3WSmT31/qm9AFxe9WGVOttinnC5gaULKuQjq7HOg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4705.eurprd04.prod.outlook.com (20.176.214.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Fri, 13 Mar 2020 07:44:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 07:44:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam
 <fabio.estevam@nxp.com>, Mike Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Lee Jones <lee.jones@linaro.org>, Anson Huang
 <anson.huang@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>
Subject: RE: [RFC 02/11] arm64: dts: imx8mp: Add AIPS 4 and 5
Thread-Topic: [RFC 02/11] arm64: dts: imx8mp: Add AIPS 4 and 5
Thread-Index: AQHV8TqlJIxDUMbhF0CTiGOzlk4moKhGM6iA
Date: Fri, 13 Mar 2020 07:44:43 +0000
Message-ID: <AM0PR04MB44814EAE53E091499C639F3188FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-3-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1583226206-19758-3-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 90a22e50-89c5-49c8-8224-08d7c7226518
x-ms-traffictypediagnostic: AM0PR04MB4705:|AM0PR04MB4705:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4705826ADCD8D53CB897D17488FA0@AM0PR04MB4705.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(199004)(71200400001)(110136005)(4326008)(76116006)(8676002)(9686003)(55016002)(86362001)(33656002)(66556008)(66946007)(64756008)(66476007)(26005)(186003)(66446008)(6636002)(7416002)(316002)(2906002)(478600001)(81166006)(52536014)(44832011)(54906003)(5660300002)(7696005)(6506007)(81156014)(8936002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4705;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w9ZJUtRfYHz3YAB4gX3J+rxam1nkwtZfCHAvWZtXbbbAX3m2VLSLvdxDhLTqNWIYwGKJ33NRcra2mdKt8m2Ql6H56VslKqILKxDhPhsX1PVIuGy7XFTEeFjdm281XydsI+E3jLDXx6L0qixCwQm0ziIhBDuL4r+mwEvqJRHcZNNK1C+rNkRAChEgcstUMfLDFASZm/QU9nMCr8n/nQ3OUswBVzqlG1cWsEa9VMo9guEYRge/36P4uW+RBn5XOL1dA+HKQOGKmrfMtuQ0VIIRbquBAkBUqc7zUvh7EsCCP/iHLbwYsX7W2oKlkM3LWUAhsYpKQEfiXk5pkalkQ7ik+mGsgOpzOksRshzQcHkIwDUy1WF9RNYONBBo3MgJwwwxCX/FUH2aJ64maQ81Kia/Z1KCN+u5fV41SDDdvWbIqFrDoPtfMh6GOPb+KiGSSTuc4JzKI131SZHZSGxDUPxoYoC75LQv8nYbBFvEXe1xBfSAYHrcoM0lhFHlEDdA6dsibvTXqz46cfBqMQz5N0zm3Q==
x-ms-exchange-antispam-messagedata: bhb6xHcRK0huRitZgwerF3TQdDVVw66DZpJUVkbOghsks++4jr2CIGaqk5wxH54GdZn7m11ZAQpFdz3dWHFQZHiKiGOS5sJASHGsQMaN4IOj+hb0KUlO5CdpAPFlJueee6jBfy7JN6kL0lLsBZkvVg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90a22e50-89c5-49c8-8224-08d7c7226518
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 07:44:43.3475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nexJETpg4UQP4/k7DHUnoo60Lean89EP17GHk9fz6njgROUuSTzxVEkq5XasHKVs60D85NF3Q7V+lwpM5/AsKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4705
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_004446_287135_F2236006 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [RFC 02/11] arm64: dts: imx8mp: Add AIPS 4 and 5
> 
> There are 5 AIPS maps in total, according to the RM. Add the missing ones
> here.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 71b0c8f..a997ca7 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -603,6 +603,22 @@
>  			};
>  		};
> 
> +		aips4: bus@32c00000 {
> +			compatible = "simple-bus";

"fsl,aips-bus", "simple-bus";

> +			reg = <0x32c00000 0x400000>;

Size is 64KB

> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +		};
> +
> +		aips5: bus@30c00000 {
> +			compatible = "simple-bus";
> +			reg = <0x30c00000 0x400000>;

Ditto. Please correct compatible and reg.

Without this, I think there is no need to only
add bus here? It might be better to also include
subnodes under aips bus.

Regards,
Peng.

> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +		};
> +
>  		gic: interrupt-controller@38800000 {
>  			compatible = "arm,gic-v3";
>  			reg = <0x38800000 0x10000>,
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
