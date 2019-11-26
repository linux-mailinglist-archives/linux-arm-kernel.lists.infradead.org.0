Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E350D109954
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 07:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBP2iDiX5zKxOwp8sXPRYKJO5F0p2BPgjlKxK7VyQHU=; b=TshDlZMzYYMZg7
	GO5GRxWr1N5PMXAY8nLelH7DA3i7HcOjJID5GdQIZwy9BLT+us7bEzhtJwPgGFlt9fpjZVXAb2k/z
	LDAOaF/LF/Sfn5M3ryLbnWAY7s5CrU1v9qof6BTqBmq73xg5DBRxGGoNg+ZPLIAoguTxGsdnaFqm9
	vT4eyXH5oGLb/G1VQ6EwA9pS9jYzYF/buZ8QdZw9Afi4VYloD5bJlyRd2JIhhwZVoQ5HO9T76XHIO
	i3UR0wScEqlxY4lN7mPiwiBndXDASoKgxaAqMvxqeVEXi2se3uuyOxz6CGeh402aGLDMcgIH0sjxg
	rleZ7SKSWZRqWzUF58tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZUWs-00049y-Ro; Tue, 26 Nov 2019 06:40:54 +0000
Received: from mail-eopbgr00060.outbound.protection.outlook.com ([40.107.0.60]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZUWg-00049E-S3
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 06:40:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HU/gZ9wxJQL38NNdV/OSPSYi0Z2RQQvIscQ5Sj/DnfIK2sq3l+dCh3rW4U8xKeqXYxQGieCP+V5VCcX9GRL8oeHaZ4E4hubQbpm7luBEnNSUZz9V1jhQHAavSmEbY3R032yVMLF/PyxVmpKLFBeOcDqndwZP2bT12BY1UeiHXRjz5FJEKW4Vj9VWTnsLuF5Z+JMePsQsw1ghB+o1BmKkPuaY9fFSP0FegKeXID1CHVsUr0EE+9fmbhuoFDMPnQAAZ8G+X/3RnpNJDve9Lfx4G1PIt7u3NQMSWRRho0SJhCPmuC0lLxKu7cC2OlpjcClWQu00I1fVLPwwjWwoSf2meg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=52rtOMTt2c/ADnIHWHA2V9HzE4XC4KC1ODKDDBSQWj0=;
 b=FvXvnFhbIXf1rckQx4C27zwFA0H55pe6IaefqE569QC7tJTAZPSRh/EoiSFbyJDZUr0/auFCrZzek0r91jOcl+4G9sKgP3VN0ILZsrwXgvCrptEdq4slOn5np4U8Hrg/4P0Jvv8U4jKIb0B7k8MpFBjeP5L21nWCs7xCmuz3TlrwwT4aIwGGnzVJNPLiu81TjLcJ4JAaKIYsOh/RUe6uiNv7IM/Pj9aGAEVMR4WjWXoGEldCimd/6+05H7/oubd18coXN914KzKKQEluBX2X8RY2NKc7X24vTSadD6Vs7KB3tBRZo0Y+KAy5AWhv89NjehBCEMqSpDuL5gORYMVmmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=52rtOMTt2c/ADnIHWHA2V9HzE4XC4KC1ODKDDBSQWj0=;
 b=qz5Muqb6cuG5g5aGRVcr80p/8liGqOy3N1Myrv/9n6IJ5veo8hh+y7xuZ7clpGnmFXF6KkzElYNxp29ke7b7HLjl8u4MzBvj4nON7fAqLxkmI4SKMYvhdHGeQqJ4DA9JrF23gQsfYiOJHH7hKdrgxUMbM3gkDL0jQPG7axixfQA=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3572.eurprd04.prod.outlook.com (52.133.49.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Tue, 26 Nov 2019 06:40:35 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::e885:ac97:fca8:c4e]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::e885:ac97:fca8:c4e%3]) with mapi id 15.20.2495.014; Tue, 26 Nov 2019
 06:40:35 +0000
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: Michael Walle <michael@walle.cc>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
Thread-Topic: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
Thread-Index: AQHVojp/XO5z0jeXk0+aNgRvimpOIKedAjsw
Date: Tue, 26 Nov 2019 06:40:35 +0000
Message-ID: <AM0PR0402MB3556804FB47D182173C6A7AAE0450@AM0PR0402MB3556.eurprd04.prod.outlook.com>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-4-michael@walle.cc>
In-Reply-To: <20191123201317.25861-4-michael@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3a78e5f2-cd68-42e5-19b4-08d7723b8ae8
x-ms-traffictypediagnostic: AM0PR0402MB3572:|AM0PR0402MB3572:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB3572F3C370FE82794A5AFAFEE0450@AM0PR0402MB3572.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:758;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(366004)(346002)(136003)(13464003)(189003)(199004)(76116006)(66556008)(66476007)(66946007)(64756008)(66446008)(52536014)(5660300002)(229853002)(6506007)(81156014)(8676002)(81166006)(6436002)(11346002)(2201001)(53546011)(44832011)(446003)(7696005)(74316002)(71200400001)(55016002)(4326008)(6116002)(99286004)(14454004)(186003)(33656002)(102836004)(14444005)(8936002)(256004)(2501003)(305945005)(76176011)(6306002)(316002)(966005)(3846002)(25786009)(54906003)(26005)(7736002)(2906002)(9686003)(110136005)(478600001)(6246003)(86362001)(71190400001)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3572;
 H:AM0PR0402MB3556.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y8T5SxB0zouHsUyMMcG1hZjNgyrxcpXIBKNOqYVdbjAiZJ9f3yGn3Thsbuu7i+HTT8hQDHAdpXm2UtBPtBu8cfin8BppFot/PHFlhcdnYsrC1b30+F7LT4AdWncbMtG/O0XRzn17x3IhkvWLJQ4Lcpb+2FvFekCY1f8TApO7RBeHsde3OpmhNjO+Bt+ftGUcAuuKJIn/DHune+PiEwvcz313JXHlgf4QcGmsXjB7Kw/low+R4UtIVr3KgDDw1aJT5t40z+z6VbQ3COsaT9iVjkGbncBXrNs2HFcVZEB0b3DAQGkNEo0CAkCoUl9+xW7JAbwNSBcrT487lQ9kssMUmDcbGpcJu4U+mE6II3C1eLtsOe8qKwg2NTi+VRlNva2v82RDOAIrXfAIzMOQyX+eAmFP0x21PwSnuwolAfB2JFgRceDmpKBQ5jjeQdtNIfBb/0pe7Fy60fQb2GHBftQLyx163JVhNLycLfQnxyTGplA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a78e5f2-cd68-42e5-19b4-08d7723b8ae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 06:40:35.4338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AZboRJDuOpG3N6HjkZ1RVHq3/Jk6/TzS5onn5bAPYQsnYiLvqYsfc8QHyFrvy00wIic8Xi2AzqTs4i2zgVVEJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3572
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_224043_096263_C0E6EB37 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

> -----Original Message-----
> From: devicetree-owner@vger.kernel.org <devicetree-owner@vger.kernel.org>
> On Behalf Of Michael Walle
> Sent: Sunday, November 24, 2019 1:43 AM
> To: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Shawn Guo <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Michael Walle <michael@walle.cc>
> Subject: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node

There's already a patch[1] sent upstream and is under review.
It includes dts(i) entries for LS1028. I will be sending the next version

[1] https://patchwork.kernel.org/patch/11139365/
> 
> Caution: EXT Email
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 6730922c2d47..650b277ddd66 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -260,6 +260,19 @@
>                         status = "disabled";
>                 };
> 
> +               fspi: spi@20c0000 {
> +                       compatible = "nxp,lx2160a-fspi";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg = <0x0 0x20c0000 0x0 0x10000>,
> +                             <0x0 0x20000000 0x0 0x10000000>;
> +                       reg-names = "fspi_base", "fspi_mmap";
> +                       interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&clockgen 4 3>, <&clockgen 4 3>;
> +                       clock-names = "fspi_en", "fspi";
> +                       status = "disabled";
> +               };
> +
>                 esdhc: mmc@2140000 {
>                         compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
>                         reg = <0x0 0x2140000 0x0 0x10000>;
> --
> 2.20.1

Regards
Kuldeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
