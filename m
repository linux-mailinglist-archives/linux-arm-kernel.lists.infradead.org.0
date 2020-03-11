Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2D5182155
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LuD8AEyzrL6gQqXjTVP6hsdS99bzs4ENEY00Za6fbgA=; b=i+ZsTVK6QX6bO/
	y18AdaW6yzszc9cVTli3dRMA+XY+Ytvd7GDkMqhOrVIK/VCgFn0MWBc1hq6rFbOH3YZYAoW/NF6mD
	sAKM5bsWZzegO0QAWo6XB5BrO+i923cCs+Oz1fl87MQAnF81de9qI67R1XcqXGQDn8t3+wcy99334
	i/G7Zh7PW1R6PdSAPggeFzcSdlsM9M7La9lT5ntfrmqUPDrnD4TFGDXE1nA/EfueZANurWSe+/FNO
	td3dTPSRvCxxQJr4Fev+VXmvR1qeIpd6l8MceN0LOshjBRRRtR0UXFxopZr5QRe2kPU8m7xAchC6S
	W1vglUhfeNX0SnAgdH8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6W8-0003ZE-FL; Wed, 11 Mar 2020 18:55:44 +0000
Received: from mail-db3eur04on0625.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::625]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6Vv-0003Xb-54
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:55:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVePM+UNoEan/fEwKPBPGHYS0O30zOBhLRaT6WBfMd0v6X4U9L/ZxW0S1O0OCVyOjKez23XXQi7zg8XWncwNJSDo67FIGUFa1Bw+WOJBQC5UvXD2U/0NxRj6OoV+pQ79bY6zgIYQsx+KTerhvSFjDSTUgFuACZQxL0bfAwlGVEA5VJn590H3+wsfJyXOf6Qscs8x3cfCIKgpL/pBefDEC4V/Nys8tcXlcWAZZEYqh7RA3YkzlVe8zxPzAwz+JQjN69VjflAgBk4q9NNEpm4kcplFkNEf5coxF9oNfoQX2JjHpKVatKEBgDkL2DBrIuQb5EfMa6bNruGpI73PIoQ64w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGN4oWPWa4f0kXlOEg1lPEwwMZbwIuOUhWVutl2cUis=;
 b=Fxj9001yd7+4ClY40mrhbbHEt4jXyM/irHLXKyFP3iUImaAbPP/lNfrOHbyZH5VbRc0CZucxDH/bNcvC61HYbGk/Ts+q4RVZBB6TXh06Taua0polojFTKrCAAiOphXS/MnnfkEsErnC/LJIqTcEMfty0TD1q1zR6b3pv1FmoxkEmEms7SQ+xeJ/38FOKytRLjqL9Qsx7fiuioOX4SFvx8774vpBzuQzaAn0z+KgblMtgaMDxT/LUNl4mMq+8rCfBPKfSciwTu5TJM0BJnIlj3hw3cTMbz8eetxpqp0RRY/Yjhlo0YXp67+dC8qNj1Jjjr8Oj6cHqEcrAdVlgvGGJiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGN4oWPWa4f0kXlOEg1lPEwwMZbwIuOUhWVutl2cUis=;
 b=Iys05Zwn+8HGt318yAew4T/2zgKS3fu9hIhV27MtSMwEBg8zYdTI20Hd9Y7Hw4QtvBQ1D/2R5okUc6a2Rgu+ddp/RhMmIlPNDIkWskZqW76Qr3fUnsty7qSytBw1zbIdB5YwdT17ak8tA8W3mX5Vo1Dhn0rCvhTSiGNNTrjjyGM=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6446.eurprd04.prod.outlook.com (20.179.233.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Wed, 11 Mar 2020 18:55:26 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 18:55:26 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 09/15] arm64: defconfig: Enable QorIQ IFC NAND controller
 driver
Thread-Topic: [PATCH 09/15] arm64: defconfig: Enable QorIQ IFC NAND controller
 driver
Thread-Index: AQHV62dV7VfUl/+IG0+BeZ8SK7tyeahDAYWAgADUq2A=
Date: Wed, 11 Mar 2020 18:55:26 +0000
Message-ID: <VE1PR04MB6687970DAF2BFE5A620D53E58FFC0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
 <1582585690-463-10-git-send-email-leoyang.li@nxp.com>
 <20200311061320.GC29269@dragon>
In-Reply-To: <20200311061320.GC29269@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2ed74c28-9bca-443c-d959-08d7c5edc335
x-ms-traffictypediagnostic: VE1PR04MB6446:
x-microsoft-antispam-prvs: <VE1PR04MB6446BC313D3EEF0B98C8F3588FFC0@VE1PR04MB6446.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(396003)(376002)(346002)(199004)(81156014)(55016002)(8676002)(52536014)(81166006)(66556008)(64756008)(9686003)(66476007)(76116006)(66446008)(71200400001)(66946007)(5660300002)(8936002)(86362001)(26005)(33656002)(316002)(2906002)(54906003)(7696005)(4326008)(6916009)(186003)(53546011)(6506007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6446;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vES6Hg3R+wT1csFXZaoUmzmcKMceigeyo5opzlObB6gdobf1Xqh6PqDFGNT7pW2MeJqMQtaFnDFWECa+znq0BNH9T7RghIKjwhIybo55CM82kVT/EW/ZTHv3gGJJbk+Q8ZZ39S0ec9bEQIInoyBtUR69lPJ8RpjgzLU8fU1955dSEiZnw0bHL4oO6PR7skL6XGrJRi1zFn+RfVB9gjrgPL3+1Ft3d/o8f/AwZN93i4XqCIn2q3AQZsNDiD+cj5lRqDD5McS+JQeA8cZ2EMfKAyYsLpXDOKuGJg8AtYErKsBnsrmKce3sXoC9b6ctkNwaC8HUT+EvcDa74fLlJFI8UK0gY1h4oq3W8yEXYV+Qm19MSUQy0QzzJJl/4RBKYZUUDQ9GTkSgetu+aUkneF+ldksqZ33Gxtkb2t0lM9FjXzxiptYYZ3i8WrrbdC1U97nw
x-ms-exchange-antispam-messagedata: FsT3h64C+7tkUcTTxFgTpnUzLHAhgObptN16BeR2QFOlORiACXgEInd4iz8sD8cI9vSSuJV67yKlVpmFf1yJ0tmeaJ9Isx9oIsU/JYyUblBEM59hfHNnTxP2DDZQhNBm49rEO9bFmD2KPg05gcaTBg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ed74c28-9bca-443c-d959-08d7c5edc335
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 18:55:26.7572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CoAft8d+zr0h2DC2SREtvPbRGZXnXuq7Urel7uBxdvREj0bIiH+LWTPbF1eKmwXmThiMlWO29/bqaNryua/nBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_115531_620477_0B143CAF 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:625 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Wednesday, March 11, 2020 1:13 AM
> To: Leo Li <leoyang.li@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 09/15] arm64: defconfig: Enable QorIQ IFC NAND
> controller driver
> 
> On Mon, Feb 24, 2020 at 05:08:04PM -0600, Li Yang wrote:
> > Enables NXP/FSL QorIQ IFC flash controller driver for NAND.  Enabled as
> > built-in to load RFS from nand flash without initramfs.
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > ---
> >  arch/arm64/configs/defconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index d2d5d470a6fc..a625e322fa27 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -217,6 +217,7 @@ CONFIG_MTD_BLOCK=y
> >  CONFIG_MTD_RAW_NAND=y
> >  CONFIG_MTD_NAND_DENALI_DT=y
> >  CONFIG_MTD_NAND_MARVELL=y
> > +CONFIG_MTD_NAND_FSL_IFC=y
> >  CONFIG_MTD_NAND_QCOM=y
> >  CONFIG_MTD_SPI_NOR=y
> >  CONFIG_SPI_CADENCE_QUADSPI=y
> > @@ -801,7 +802,6 @@ CONFIG_ARCH_K3_J721E_SOC=y
> >  CONFIG_TI_SCI_PM_DOMAINS=y
> >  CONFIG_EXTCON_USB_GPIO=y
> >  CONFIG_EXTCON_USBC_CROS_EC=y
> > -CONFIG_MEMORY=y
> 
> Why is this getting removed?  Maybe worth a mentioning in the commit
> log?

MTD_NAND_FSL_IFC selects MEMORY.  I can add it in the commit message.

> 
> Shawn
> 
> >  CONFIG_IIO=y
> >  CONFIG_EXYNOS_ADC=y
> >  CONFIG_QCOM_SPMI_ADC5=m
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
