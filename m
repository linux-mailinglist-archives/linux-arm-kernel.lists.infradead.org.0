Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEC5CEE69
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3T0gxixvm/nXwoERfIvK4AqsXoJ+pS95JHko3CKqicE=; b=ubBLFlyNLmXXwe
	j6Qf9vLRvKIjZp8HAhaseuWBw4IlKPjSCPacY8R8UcjcYs4h9bRemgWbIhSTitTo6VE6eTrc9kRMJ
	N9ko20IPs6WVRpXaUZ26A823c+aXrOoSwjHcwpJQSS+Ig/yVwPmCPIu64deYTYXqZwhbofNCsp+3V
	JNgeVA76LMowhJAPEwjDIrZSdReF9i95xl4J6m+Jhbw2G1dpTn8xygzOxe5wbUQQf0grPli8bKPx+
	2hjNiz+bFRpXfgqf7vMUPsK6byw2MdEwtHCMjIle0op9QV+PorTzzC9ehIG7odYojnu7PUL0SQV3R
	8zDKeqS8/WHR34VPMjmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHaZC-0001Af-KB; Mon, 07 Oct 2019 21:29:18 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaZ4-0001A1-Dq
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:29:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RX0Sw6q2tINHkblb9D4zuW0NgUo6Aj5R07ovF+CdrpyDGb2qBNyiKlPNdOOJfzPXLVLg61EL+iqtsCGFLBwLoiK9YSbv0wWxiLCrgooueRZfGKHuy79MO/gtgPxG6BNVWwqM7t330y9/oJrJHCxI54crx13aEnOIDCF/BcW3IRxCXK20saHYEqdc9WsO/1FszxnAuv8Q3eHoZH/BLsujq1wkY7orST6tFyyx4a0B7TGt0B7c6NWbltlQn530otVQ1h/oTjULIUNzhS4F0F8s16J1t9II02PJtQ/KL2iwq1MzP6iYJrUKkYabys2cXhl+rHiGl0f0Y3d9tRthYvWpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dQZOqUsbFsCWC1X2Q71QaN6e07yIhpF2OaCSFCSoEbo=;
 b=nBxCClpMs1VI5rWYXEtOsunNUTFESHV+WsYL5nqaelWu78mpDHEgf3GW7O4XyR2bgi5JB73LJWZulaodd6DxHmF0U0UZhvjNm5jvixNJOp1OqP6QdrlHWcWepY80XVnilmRZSBTYvW4pCjudDspfUQWLL/GX7fF2sTIeN1zoiUy4dWXiLyMcIWmdiKYzSaEZ626IAvxQ05L+dvc078bTybJIy6WuYEb4Vpz+zDuF/QYxTGEsCYq/yiXIgvK4+sDtkZApWrp3o6kLrs/h5ZleLnNImeyqcMWdgxiY9ijVcoUyu8gFWZPAVk9ULielgSKvcR7CnBahdwmBXYYujFb5PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dQZOqUsbFsCWC1X2Q71QaN6e07yIhpF2OaCSFCSoEbo=;
 b=HW3DLpkiOg0G4uimEcRRm3FOFhvDwTc+AZ+dkLNkPb1FpTA44t8N8pNGLTPR2NngpDK4an4i+dFrHyRQ3NXSh7qb2ehPrYBDHevq8SDqGI2eqTWWt07VjfA/pwPef+RSCwBt2Zf0KXPbreguwKP0PCcE+f7pQU+Tq1FXX66tX0w=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6624.eurprd04.prod.outlook.com (20.179.234.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 21:29:05 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6%3]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 21:29:04 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Wen He <wen.he_1@nxp.com>
Subject: RE: [v2 1/2] arm64: dts: ls1028a: Update the clock providers for the
 Mali DP500
Thread-Topic: [v2 1/2] arm64: dts: ls1028a: Update the clock providers for the
 Mali DP500
Thread-Index: AQHVb4/BB/czJT1iOU+K17Me+HjXaKdPN1eAgACV0dA=
Date: Mon, 7 Oct 2019 21:29:04 +0000
Message-ID: <VE1PR04MB66870A436BB8DC00979693D98F9B0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190920083419.5092-1-wen.he_1@nxp.com>
 <20191007123203.GL7150@dragon>
In-Reply-To: <20191007123203.GL7150@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a59e3c4-9c32-4021-48de-08d74b6d6122
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6624:|VE1PR04MB6624:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB66248614C34F076BC26BA80F8F9B0@VE1PR04MB6624.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:561;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(39860400002)(376002)(346002)(13464003)(199004)(189003)(102836004)(256004)(55016002)(6246003)(52536014)(14444005)(71190400001)(66066001)(76176011)(74316002)(305945005)(9686003)(7736002)(66446008)(66556008)(66946007)(66476007)(64756008)(33656002)(6436002)(110136005)(99286004)(6306002)(478600001)(229853002)(5660300002)(26005)(71200400001)(8936002)(53546011)(6506007)(316002)(81166006)(81156014)(54906003)(8676002)(4326008)(14454004)(11346002)(966005)(6636002)(446003)(2906002)(86362001)(15650500001)(45080400002)(25786009)(486006)(476003)(7696005)(3846002)(76116006)(6116002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6624;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wzdBB9LJ/d95tfCw69xJ73v0fnLhse9CVZkPx7y27/2bpW2Fw0VOAH0KIUseTIO/K2qtOhQSDqea47e2s2WI7TqFiFWEBTn9cFif5BJ2M2mcGMkB20U+I9BxnXklmWh358r9He3Q7Tae6KCr5502+dn58hA/NQCzc8tDqy5PnPNBmc9aQRo6g4PWEgzTMnwZhNySzefO63rgIxTjoMTcsN/MYe8JyckaHYMaJZAaQ5T3pd8odl704kV/PvYIk4BO9aZv2RD3sbQpsTzBXUjwkyvxjCrKbM6nrOGPCNh1iDv4bw05RcojO9ws6cVsSO8cCNZZ+ApeP4IdEs6hZvFeNPiELVYnl5zWsJu/9WHaTLqMNoZ9kg2xezdk8jWPox3MbKiqrDXPpV+nshf8cuUo0L+ikbRcXlUThcrQHUDz/As=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a59e3c4-9c32-4021-48de-08d74b6d6122
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 21:29:04.8430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3FlobGwHACM4pohE1ApgmbIZN0h1Hd8Kjfs7OlVD7LYF/VqEDjYdZa7ww1f00lAduMX8JBXZIZRhhO4RGul0lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6624
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_142910_673564_DE1A4972 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-devel@linux.nxdi.nxp.com" <linux-devel@linux.nxdi.nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, October 7, 2019 7:32 AM
> To: Wen He <wen.he_1@nxp.com>
> Cc: linux-devel@linux.nxdi.nxp.com; Leo Li <leoyang.li@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [v2 1/2] arm64: dts: ls1028a: Update the clock providers for the
> Mali DP500
> 
> On Fri, Sep 20, 2019 at 04:34:18PM +0800, Wen He wrote:
> > In order to maximise performance of the LCD Controller's 64-bit AXI
> > bus, for any give speed bin of the device, the AXI master interface
> > clock(ACLK) clock can be up to CPU_frequency/2, which is already
> > capable of optimal performance. In general, ACLK is always expected to
> > be equal to CPU_frequency/2. APB slave interface clock(PCLK) and Main
> > processing clock(PCLK) both are tied to the same clock as ACLK.
> >
> > This change followed the LS1028A Architecture Specification Manual.
> >
> > Signed-off-by: Wen He <wen.he_1@nxp.com>
> 
> @Leo, agree?

Yes.

Acked-by: Li Yang <leoyang.li@nxp.com>

> 
> Shawn
> 
> > ---
> > change in v2:
> >         - add details commit description for this change.
> >         - v1: Link:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > .kernel.org%2Fpatchwork%2Fpatch%2F1119145%2F&amp;data=02%7C01%
> 7Cleoyan
> >
> g.li%40nxp.com%7C628134d8d86548af60ab08d74b227a54%7C686ea1d3bc2b4
> c6fa9
> >
> 2cd99c5c301635%7C0%7C0%7C637060483779667257&amp;sdata=vX2DqsXlKE
> SqesXy
> > LwTqnBFt0GftY0XNphkmx5dR7vA%3D&amp;reserved=0
> >
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 17 ++---------------
> >  1 file changed, 2 insertions(+), 15 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index 72b9a75976a1..51fa8f57fdac 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -86,20 +86,6 @@
> >  		clocks = <&osc_27m>;
> >  	};
> >
> > -	aclk: clock-axi {
> > -		compatible = "fixed-clock";
> > -		#clock-cells = <0>;
> > -		clock-frequency = <650000000>;
> > -		clock-output-names= "aclk";
> > -	};
> > -
> > -	pclk: clock-apb {
> > -		compatible = "fixed-clock";
> > -		#clock-cells = <0>;
> > -		clock-frequency = <650000000>;
> > -		clock-output-names= "pclk";
> > -	};
> > -
> >  	reboot {
> >  		compatible ="syscon-reboot";
> >  		regmap = <&dcfg>;
> > @@ -679,7 +665,8 @@
> >  		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
> >  			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
> >  		interrupt-names = "DE", "SE";
> > -		clocks = <&dpclk 0>, <&aclk>, <&aclk>, <&pclk>;
> > +		clocks = <&dpclk 0>, <&clockgen 2 2>, <&clockgen 2 2>,
> > +			 <&clockgen 2 2>;
> >  		clock-names = "pxlclk", "mclk", "aclk", "pclk";
> >  		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
> >  		arm,malidp-arqos-value = <0xd000d000>;
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
