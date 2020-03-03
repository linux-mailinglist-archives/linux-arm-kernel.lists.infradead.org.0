Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42BF1785D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 23:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FDDXR4RT72CckSUZJAnta0OPHBt1Dejhp12UPCZ4ek=; b=SDMGlAa+N9Y+vK
	WOoy7H+nynCUHFpAymbm/jQCSs6S0KtteKKGpIcD39qU0ijtyQnuGNoOtWjUq0X3jlB7TgcFHVZgn
	8HCXj10KexConeAh4IkDooXeF94ntgDYiNKP1YShA/ZqFYSAMVjmAt1Bxmx+hgTn6b/Q2alIAkAEH
	ta79QACoEjhcGP+ixbEvEYrwsbiMBc0BGFvv+Vo7lVjWR7+NtkOb4JQtQ0ijGrfc599RXFRoI1OkW
	iD29L29eN95H+MR/U02yDYWBLb/QnT6Rlq4bWKMJX0hB5yAffDeG0azq59qFpbTBgWUxQ7iYhnPRt
	CAtwLdE8qmEOyk+tYhEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9GGB-0005zj-66; Tue, 03 Mar 2020 22:43:31 +0000
Received: from mail-am6eur05on2088.outbound.protection.outlook.com
 ([40.107.22.88] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9GG1-0005ya-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 22:43:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i4bIRiOZDf7JlGd5Z9sGhQhJMFjlVQuF0g5JoFIrgwPv6AlX1CWMujYJIBbds9PFdMtbM5oQKhj2skTjJcsET1nDIPLv3SvYJwjI+muDz07rVjwAuFLeaQRATwUDYhFiORvDAWd8F4ih5vbTxDkKO83bBl5BTaxg+qxidjX0AcHiKowgYs4VrPWo4Ob86OlJX3IOyE8qjb4JtzfI+z/Z01FAJfTua8WTJTOxgbM1jV3FuqUu25ABLYx1FgscJkvj70JI1tdsJiH9fkrDDirqOyWdpzsh4gF6m9wNkKgtrLfpf3peBPGtBl3Ou5CbbB3NDDZPMQhv9tEuNdHqmBm0vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bRGNM/6Q4FAeMS+OD8oZg1UrMD2a0m+34mqWV+T66vo=;
 b=nklG32qGDCZO8zqrKM2uOw6Koiz787tDl2OHSbg6+eYr9mawdTSotHKa+5EGRBdPnk/1+RbPRxbp7yGcVg1p6CjPYiT4K5iPRqOfXvVsWQR3lXgyoallOLXS9kA4T9qyIg5YPCFvLxyB9lgFuJv5id24Mt9LvqBGVsD+t1sYCmcsUd2+46VOgMxxM8oiKRdBSI6R7DMIjWADdxdJOpUk29zYCBg1Kcm8bzJpahqEzqWmVH1o+pObSLIoa3tzj68Rc+d53X92NlP6vcl5S7kymP6LSYRx47gH/axAb1WWcXXbONpoc+PJfBmOdJH5jT6dCqQ05h1LO2OxqttJ890Mcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bRGNM/6Q4FAeMS+OD8oZg1UrMD2a0m+34mqWV+T66vo=;
 b=Af0JZZlJ6zszftrGmMPZ+1KVDAFxDHV21V7y0ZR7LMjFwrywp6au+QiVNJKHUNJAjgNJsALN6bqJqBmSn+mcGhwm4FePCy1FbMuRQNz3lt/X7TjmfLA0gu0VQJp7qy6HlC173DSZfq+VoegMbUKzZ0xwJl9HZVtcgck0/jDWPsU=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6765.eurprd04.prod.outlook.com (20.179.235.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Tue, 3 Mar 2020 22:43:16 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 22:43:16 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Michael Walle <michael@walle.cc>, "linux-serial@vger.kernel.org"
 <linux-serial@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3 8/9] arm64: dts: ls1028a: add "fsl,vf610-edma"
 compatible
Thread-Topic: [PATCH v3 8/9] arm64: dts: ls1028a: add "fsl,vf610-edma"
 compatible
Thread-Index: AQHV8YM+rjjpH1ep4E+nXaFwPvP5Z6g3di1A
Date: Tue, 3 Mar 2020 22:43:16 +0000
Message-ID: <VE1PR04MB668748A35B0611CFC0C21CA38FE40@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20200303174306.6015-1-michael@walle.cc>
 <20200303174306.6015-9-michael@walle.cc>
In-Reply-To: <20200303174306.6015-9-michael@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b3d34b14-6880-4ebb-aa5f-08d7bfc443a1
x-ms-traffictypediagnostic: VE1PR04MB6765:|VE1PR04MB6765:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6765FA63A337626A324ADA068FE40@VE1PR04MB6765.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(39860400002)(376002)(346002)(189003)(199004)(9686003)(7696005)(8936002)(81156014)(316002)(110136005)(76116006)(54906003)(2906002)(71200400001)(66556008)(478600001)(66946007)(8676002)(66476007)(86362001)(81166006)(33656002)(4326008)(55016002)(5660300002)(64756008)(53546011)(6506007)(52536014)(66446008)(7416002)(186003)(26005)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6765;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zjqrXFLv/K21G4Nb8jnGUCGKSQf+3EBpwVxjUQ0baWjTLq0RAOLlsTraNpXXD4ETGZckgMM9L/VuNVcmEurKhJcIU3KnPeyiCuVCC5cX/1UuAzZpLYpqxesHyjqsIwZ62rMUnlZbrWKT6OPUJjVmL9Amwy2iLpDwWRCVAnPNoW6pOB2Zlgk5VXbuoldv9FFBzavnZQ/m1njdT6q0pTGr74x6N7bY4EqsEs4v+LUYOvapZMX1eiaTNUaF7UOY9y6iqcSog8q9XEWMSxNqV66Lr/sJgOxTO2JVaCajEUpkiv8VPbT84esiwGeqecHK4hHa3FEOPm4gOQfN6zLVuio/RVq1OEwZNmvLUckKnH8fVsgFeurJYq/JYQ54czxHcybrRPHJlhd0j0XavT/BQhFYa9F6T2fab4u3z72J4dxKSWVq8ZgkP/ia3wM4vHNMAvITP9zV9djDv9zzJ0BfH+L8fAA3tJNyLneGWN9/g/8gC0eFP1Xi6HM3L/EJO1XNp9Cb
x-ms-exchange-antispam-messagedata: D0qelNDjuMFbYoukyWjznD4bToAf5FztoB/bgYjdXYEp0/8V+iFJuk/rbTaHG4IoZ85CvFc94mWJjcVjVKCTLy20e++R1YOgMKD/5re9PvI7Rc/01ygtAlltFlXORtOVdRjCpH1MoEMtNsUiYpPOEQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3d34b14-6880-4ebb-aa5f-08d7bfc443a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 22:43:16.3779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RbNogP6wJHy79TKcRipYtOHRHjUgPe97DkInCUbYNAxcTVgIjmAcGFVgKecYzAagNSVFm9J+pmO3lqDkR5eOMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_144321_666887_EE87F4ED 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.88 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, Yuan Yao <yao.yuan@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Michael Walle <michael@walle.cc>
> Sent: Tuesday, March 3, 2020 11:43 AM
> To: linux-serial@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Shawn
> Guo <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>; Jiri Slaby
> <jslaby@suse.com>; Peng Fan <peng.fan@nxp.com>; Vabhav Sharma
> <vabhav.sharma@nxp.com>; Yuan Yao <yao.yuan@nxp.com>; Michael Walle
> <michael@walle.cc>
> Subject: [PATCH v3 8/9] arm64: dts: ls1028a: add "fsl,vf610-edma" compatible
> 
> The bootloader does the IOMMU fixup and dynamically adds the "iommus"
> property to devices according to its compatible string. In case of the eDMA
> controller this property is missing. Add it. After that the IOMMU will work
> with the eDMA core.

It probably makes sense to have the fsl,vf610-edma as a secondary compatible.  But I think it probably need an update to the binding document too(especially the compatible is required to function).  Also looks like the recent update for the binding has a typo for " fsl,fsl,ls1028a-edma", can you also fix that all together?

> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 0bf375ec959b..0843cfbe7ae1 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -335,7 +335,7 @@
> 
>  		edma0: dma-controller@22c0000 {
>  			#dma-cells = <2>;
> -			compatible = "fsl,ls1028a-edma";
> +			compatible = "fsl,ls1028a-edma", "fsl,vf610-edma";
>  			reg = <0x0 0x22c0000 0x0 0x10000>,
>  			      <0x0 0x22d0000 0x0 0x10000>,
>  			      <0x0 0x22e0000 0x0 0x10000>;
> --
> 2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
