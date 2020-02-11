Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1331A158954
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 06:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TFbRrHlhSFQMvpbvjS8gel6ej0FoblmobFX6Isp5Po=; b=gfjE9+6exOzFed
	G054RixnRYvZji9zYIwpY/PSTYhTY3qbFA99vlJuJOkW9eDjr3FcqBQd5dtk0+7Dp9waePY3pTpg/
	S43QJNUjnqFYJ2ib7n6C2aXbndSnHJnjHuZUmV+/GCKkaiRvQKfugURTG1zzLAefTpn4sIoGfG+dy
	9wE0izSzpYDUOgZHp5KAhduNVh5DlgDGA6R5MJL25vzfLb5+03jdVHaAYgbnXAGwPLgDQS4B09Z5u
	4aaWF7gBtzEAt+OGIQNEUlfbYz/fefJTeB6ERfWFJ4ad/F/1OADaFUPag5ouoTff4MlLLuj80+K30
	1sEd8q43pDlr4k3hB+zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1NkC-0004f2-Lw; Tue, 11 Feb 2020 05:05:56 +0000
Received: from mail-eopbgr80084.outbound.protection.outlook.com ([40.107.8.84]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Nk2-0004eA-Sc
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 05:05:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaFTqhr1vjc1Ntb+1o1SsR2gssufBySL0MEomJLSAxaapMqUjVWi//S1wQ6qrnFQqeEoCvvLp5UWLqm7Z5hXWpCXbR7KIWafTcIiR3lHeZe773tx0R8/UAiJmxilUhq1aQXkX/KDJLWftrGSpehjbJZrpxPU9uT/X7hqNcdyvjGO2vcV8HWiChQ2nWbPRlZNRWkh8trZ8fYZFYl4Zldzlp2gN5AbN5ofgVkHEZnlUcari7brcqvnl4KIM7QIg9Mfk9Bn/dgaJugKz2vl4jSdB0Kx+gVSViMxyU8B+omE71gw3RFpVcG8a1BIFcMfbTU5bAB1e5kkq8B0s2WPpzY+mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M0aDlr3daBnB01IYNZHJnhYlvDJPErOzfHxiKqdS4og=;
 b=HjxfQEMtKVCr5Gl/ZdxNJX3V8G3Iye9tnAmdN2TcCqA2nQRe71NwSBDRkGdoWS1Bww6yxzO/5iEUrjCkZSvnt7QmqjnH9+vXAfT0NwHOeKFiMI+Ps4mVlQsGpH71FDIqlaQm38rgLNC7vUu2zMMMEiW/6T/T0MQjO7/FrFncGIaaM/GrIsCuDc7Yb/L33+uialUvF+mFL40wXJWUMqGGMxb5CBRzPQFmtY/WD4AAYs4WFRFKlu76Z5A0N9RksK/wFv7sWSXYZ62FJO0TAnhupUuX6zkpaUUMvj4Xeva7F7afeZflTZ7hp29DDESg0kNN20HKws2AHfhANDTUfHmHcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M0aDlr3daBnB01IYNZHJnhYlvDJPErOzfHxiKqdS4og=;
 b=Eg0EGebOSl3WfA9UWpb9SW9usGTKLgfIzxvJ5wtDSoYPvkHz1VF60jq01qdOJk36vzMn9lGKPkpdWatc1vsKyaASIBIXMMEzpK7W5E6n5LF8EadPvtOgOSBb0SXzWUEItxrQ33v+7c0SR6jnA9QymDIAEzROM97W9PgL6FhACeQ=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (10.141.174.88) by
 AM7PR04MB7190.eurprd04.prod.outlook.com (52.135.56.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Tue, 11 Feb 2020 05:05:44 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::8a5:3800:3341:c064]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::8a5:3800:3341:c064%7]) with mapi id 15.20.2707.028; Tue, 11 Feb 2020
 05:05:44 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: RE: [PATCH] arm64: dts: ls1088a: support eMMC HS200 speed mode for
 RDB board
Thread-Topic: [PATCH] arm64: dts: ls1088a: support eMMC HS200 speed mode for
 RDB board
Thread-Index: AQHV2xE41KpYu0AHxEOqeh0APNS/1KgVeyDQ
Date: Tue, 11 Feb 2020 05:05:44 +0000
Message-ID: <AM7PR04MB6885669DCE6306B3309DB669F8180@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200204040928.32320-1-yangbo.lu@nxp.com>
In-Reply-To: <20200204040928.32320-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [223.72.61.127]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: afa15340-bfe6-4be9-4ab8-08d7aeb00c63
x-ms-traffictypediagnostic: AM7PR04MB7190:|AM7PR04MB7190:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB71900D6B573072E19737BC0FF8180@AM7PR04MB7190.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(366004)(39860400002)(396003)(346002)(189003)(199004)(86362001)(7696005)(478600001)(4326008)(71200400001)(8936002)(6506007)(53546011)(76116006)(66556008)(55016002)(66446008)(110136005)(54906003)(6636002)(52536014)(66946007)(316002)(66476007)(9686003)(64756008)(26005)(2906002)(186003)(8676002)(5660300002)(33656002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB7190;
 H:AM7PR04MB6885.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pN9o4N/nGoApEet6I1yNDhPCf6zP7mZrjhAOVrKCAj1m2t3aTMrwboj5UhubjHZGNqWbs5mS4RZXjes6Glbge2v+Nb2xv+ULkI3DjXKAiJZmC9a/CzijdRCAl7ko5V4r8JaC3D8th6FYSSr0fskggJLWXwSvSyd8Pt57utxkY5+KGR+NubuuY9xImP4J9I1KI8uCnz8GrPMfUyyr7WDNJIkiBQZV1Yum1B6ZfdBYLHQGdURLTRAZmg8W9qqoAIWKy5T5gPk9BPPZqAApjMKIa5AliGAWsVFt46FUoEcDh1mx3cG803ujPWormKj0INqAGwyWn5emD9ilom6HGlWw2OvdbjKVp099YbIEzcoYbM7VaSZKZa2axTOQcR/hPpP90P4IuB+GBEIz/3bKOSd+RNTGaYk+TMVEAxVven1HsgxcUo76QXhrkdHhfWlrtipa
x-ms-exchange-antispam-messagedata: DN39uAeTmTxM+aRewfDVgZsaswH5Xanycw3hc/lajKgpjOq/pRl0djLguCPIQgJGvy/6m5U+toiyREIfp5w5OD47wULCnY57llZJ5rckL8rakJp6Cj+ETCvMt9vIkjMFAj9bkt788HniIW/cpi9aBQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afa15340-bfe6-4be9-4ab8-08d7aeb00c63
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 05:05:44.0559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RPnjEADDNDAItS+CTOsaNq8UbTzfdWAYfgfiLMzJ4tTOHLBIn9uM7bFDH5MXMzsHN6WYphtQiUjN8dAydLhPcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_210546_929102_E3BB86B1 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.84 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Any comments? Thanks!

> -----Original Message-----
> From: Yangbo Lu <yangbo.lu@nxp.com>
> Sent: Tuesday, February 4, 2020 12:09 PM
> To: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org;
> linux-kernel@vger.kernel.org; Shawn Guo <shawnguo@kernel.org>; Leo Li
> <leoyang.li@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Y.b. Lu <yangbo.lu@nxp.com>
> Subject: [PATCH] arm64: dts: ls1088a: support eMMC HS200 speed mode for
> RDB board
> 
> This patch is to add eMMC HS200 speed mode support on ls1088ardb
> whose controller and peripheral circut support such capability.
> And clocks dts property is needed for driver to get peripheral
> clock value used for this speed mode.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts | 1 +
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi    | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> index 4d77b34..5633e59 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> @@ -83,6 +83,7 @@
>  };
> 
>  &esdhc {
> +	mmc-hs200-1_8v;
>  	status = "okay";
>  };
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 5945662..ec6013a 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -393,6 +393,7 @@
>  			reg = <0x0 0x2140000 0x0 0x10000>;
>  			interrupts = <0 28 0x4>; /* Level high type */
>  			clock-frequency = <0>;
> +			clocks = <&clockgen 2 1>;
>  			voltage-ranges = <1800 1800 3300 3300>;
>  			sdhci,auto-cmd12;
>  			little-endian;
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
