Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86571D737E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/8JjWNV6n9p5SQK8wlrNuhzIXMsdJD4LXL1cetlvbM=; b=cvgFBCoFtbUPBO
	bSePeimXkm8x8ZwfpOEEaE5sKeoxt02BS0DQK19X+s5wawc3f9FVah8NUuBl4azKKyBIoshwZSX43
	EPhW4DPp3cdN3EmmkY3FLpzzI5nX1+c44LoSbdIe9dtsIg1X1t5Ig8C50c1kFOxphJFd9auliCBQb
	REBv1+ycI3EJflbM2061so0hUdmrYwMUQsrZkpZbBq802brnfu2Qetq6V4a22AAuVeHzMmi/65lZ8
	LTIaSsnz+NdASSJzXfk2XTsYxRA8mTmAIriB/YUsxk5MnFJSRPvbcKYx/+/C0ibjvEAxljUKLcVGd
	ECmaaVyVLb32xDcGUo2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabmW-0002Tv-1U; Mon, 18 May 2020 09:09:56 +0000
Received: from mail-eopbgr60084.outbound.protection.outlook.com ([40.107.6.84]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabmJ-0002TD-Qz
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:09:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PlYEloSHZP8h9no9Pat/qVbOzCFaVxc71zZtLwOWgQ9LLdQQss6NgIeN1OoDo98KoouNRNOrj9Lq9CoVVHIEQ9rbxpI6f32rjamnOeLjsxVVvZHmUgpz1TMURbHsbKOULvSwuPJTtxDso4QBwcT0gMcVoMt54kk5dsmjA/Um7OV64L34BvN8AKKVYklyYZV+gsiVj/EYYXNe7cOGFb0Uha77PRPfv5Im8GtO/ris8N4yy3W2jDJ4i7cL0I8C6KyjpCOFl2Hn2D9qMMn8AoG9DvUWj41JcfmeWLiMRm+WSoRLR1Nywrk9IzBr/rOpXT5LAHxCSxSp3ck8Y1iNIjrhxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JbhOV8NPs1hJXzCgoEoOnmTsLnn4fXCc2oE1WQZtExI=;
 b=HtL/CtlVg/Cck6sijmXsLxlYdPLADH+Mr2Rr0q0kZoPvHXiip6zVHJF9EyM0S17VrnZjIeQ2yDe5IBj2svouxC9yDX20JWoNiP8+ZoemHZ5of3LMPQ/3pdxrU9WM3ClNM1tx9sw3LjnAsQ/DGO2hZi7wa4+MxWpyIqKUo1adjcLRj0xhTwxik/9Wj4BOw5fSS+heXnBBzSRCXI32C2/sEDdQZiuOwEvAUUS45TZwX4ceNKOiDdRxV6d2m8dExDt/jGNBjZoXJlS1uRe8VYMbam9A+IT56n14Rz88m10PfhShGM7FUQyzXS6ncsy9JrD26jxDpgai1+X82D7dYzImCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JbhOV8NPs1hJXzCgoEoOnmTsLnn4fXCc2oE1WQZtExI=;
 b=oE8L5bRDzjWpYAFETq7da6oPKwgLmnVhb6rccNJszXqsB7zVOEJPYGkJOAmUiusewl9HqpIwFCJTUjQstO2rTvp0qI+plYigbEQi2zOYybWF131pw5fr2bB66oKspMeBU3XD0hl4PoNWiojuP3CxbsHCKQe2ikWKFLvfXiOrVxc=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5509.eurprd04.prod.outlook.com (2603:10a6:20b:28::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 09:09:41 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:09:41 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] ARM: dts: imx51: Add src node interrupt
Thread-Topic: [PATCH 1/2] ARM: dts: imx51: Add src node interrupt
Thread-Index: AQHWKAXeNUM3Dc7i3kKbaOY3gSyNJKitl5sQ
Date: Mon, 18 May 2020 09:09:41 +0000
Message-ID: <AM6PR04MB4966830C391C7E69E6CE203080B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589250307-29662-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589250307-29662-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ceb642d6-bb43-42ac-caae-08d7fb0b32d9
x-ms-traffictypediagnostic: AM6PR04MB5509:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB55091587714BD92790ADC13980B80@AM6PR04MB5509.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dD6Evep7HJP2bsmY5t8XJQxEUJ+SkLfhGk0WmjeK3K9vqXxyhXmoK697AEeUeJHoufmyvI+2EOW3tYF1iZ6P1vcJOPXDHAv4HtKcwCQrUembUlCYkJ4qd5i5619cmVVZwsbf3q7CqHlQzQcYEF7mpTSynwFbZe3d0j0DWbdc3i+LN4vO0OGbjPZlWob9DZd6W2+InCAsOw0OpJS5hBgGn4zeIVtZNxyDzOB9SrXCytlwGcPId7nkamrvPbkD43EthEZS/zL1BvkWK2qFMRtRA87lLP3h/s32nuWr+CIkFNgUWmGEbjX31mZMUcdKcNuxVnUqBXkC96XOG0SStIsFmuRjAIBG+GFiAi7gjzogqksjYsmcApZbpo2ReSgGXR6d6gjenlN1JTpNU1gS6Dbklln8jPt+DKj0h6gCpiypUEHH969DovDiqMTx8KYSO3tr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(5660300002)(55016002)(8936002)(8676002)(26005)(186003)(71200400001)(6506007)(9686003)(4326008)(478600001)(7696005)(316002)(110136005)(86362001)(4744005)(44832011)(66476007)(33656002)(64756008)(2906002)(76116006)(66446008)(52536014)(66946007)(66556008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: QCpH/DrL0c8LBa5n2rdUWsPlQq4K0LVqaXH8AsNkdkZUEHfkgdoNIf/hScHTvTzmSwUvi7/RV664JPx4TSsc1cG1YNNES/N0WixPw8uk/ZZ76qSoVYbnDhjfI6B86pIdf2BYz+ZGG6k5iIeqYbwfzUJWEsJ4vukVkFmnN3i+MV2Ipv+RPuxMHixPIHvx2faMcgNBdcWB0fPIiuIYaj2Z3KgaO1iZ9rO0NZTkWPdHL3i8Wiq3c4FRh6WBRl0LGrLU2i9/fCnTD/ZOmuGFDm3eFhD6CyQBZNLi4jvEdR2iExL8ROHxaK7eDj5EXt4AUCgbWLETQVRHd1VCrdvgAS0+SyYrVYkn+mfADcHxBMUJl03lxYCf+vGNqhO8Uh16AoHiyc6bNo0vTL4HAl6ex7TOENYdw6hyoIfHHN8LiqA9QmcFJ9OZa62t7/ogLTj5/TtGKImSIhxJxfmpIJSadbl5Tu8945PiOxpZ0GrG1zlXQd2r/N1MHaeDZewpMq4LpGaM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb642d6-bb43-42ac-caae-08d7fb0b32d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 09:09:41.1980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MLr7XIHQhEiOxjuH/VXyWFTD4zM8dQTtWuamH0aPwJ0L80iekzH1Qhow4Z9vXNZ0+mx2FjFlcM3BbPyBbxZxMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5509
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_020943_876642_7F8C4264 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.84 listed in wl.mailspike.net]
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
> Sent: Tuesday, May 12, 2020 10:25 AM
> 
> Interrupt is a required property according to SRC binding, add it for SRC node.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  arch/arm/boot/dts/imx51.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi index
> 92fbb90..3f1e913 100644
> --- a/arch/arm/boot/dts/imx51.dtsi
> +++ b/arch/arm/boot/dts/imx51.dtsi
> @@ -442,6 +442,7 @@
>  			src: src@73fd0000 {
>  				compatible = "fsl,imx51-src";
>  				reg = <0x73fd0000 0x4000>;
> +				interrupts = <75>;
>  				#reset-cells = <1>;
>  			};
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
