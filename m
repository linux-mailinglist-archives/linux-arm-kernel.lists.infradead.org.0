Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0171D7383
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqgpjqF/72FAVHfTFIsZ01U9J7FmDvc6e+Oogmyw86Y=; b=jiab4pd1VdFa9u
	MSSgYYtzPcgx7r3zt4y2ddtPWrv3gwpf9pFnfanIXYVlBRfpVy+Oy/f4xb/PMWYG3VQpfeic9Qmpb
	zLmTeReSSkaZ+vemorO2Ma+wYe8Xj7HNXO/DHY8tIsaiBGXhq7WI3AZaM7euODRZR3z1FrwTBylsi
	rzSwX4Ayh0yDpEcUMiVxEbrPQdL/1bPrEE2+CuS96ZTDsVdYmPI0fh/56JQSSjNQSxwyvib3KrasS
	k4mDnbO9V3QyHDXiprGswoMUZzDlhBpgUca+CqAT6vSMs4MDPBWRJN/U30gO9COvY1MqBNZp2HJ11
	IvABZTyYUrzjkdaK0rIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabmy-0003V1-3x; Mon, 18 May 2020 09:10:24 +0000
Received: from mail-db8eur05on2041.outbound.protection.outlook.com
 ([40.107.20.41] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabme-0002jw-V3
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:10:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCUKSJJyMSJwSC7SQ/2y1DmD0OgVG6LYqPdLptSqsc7mx7u/lWI0enYw7Hyarc0VXoNPB/xE1jCyOT0sRgLmvKJKHjwq51dqIC2PPMv6WvpQlsjUvkw+UDJ/njREF322V+qeI3ca7f2l61vXZbMnAsQbvZ7lJ/O0xrP/JpoEyqdHSa6/6mwxwqNNZdB0+ceVzwwccE20S46QOD/g9/fnzh9OD7UDVdXBXGQ+yjS55+u5RCLiafUhNg5C9wI0LIfb4PhGG4R416kY3Ue7CY2gqheXPZvHu+7lFIO4BUUP5T39hYlx39KmoKdmuPQKsuEvmDA5kcO2ZOOW2U3OuuWMWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYB8DQ7QC5cbGm2FYyAzGANOlN+u3vCOvc1jRRT0zQ0=;
 b=X16pnhwaKLL02Oh0G9wWjNKI+qE/e4koKsHe1ENE55vud9VU74x7fHg0DAIYLYISeDd7HOu9DWHAG+TIzFSxy+dwpExjTVmGTmWOsLLbL4VcL/kXnnFvR2ovLpovIc2QXbz4R9B5WJQPxw97CwVR8qj7Up90QIvmIb+Afpb1Ge/I+JKC3gbixT7lTfOu+NXWsJii7hR35XF6mdu5aMZTMWOYksPco2/hcO14rJ27NLux10Xzvo8ftyXXjOYDKttJSwStSRUae/HNR9gXcQYK2H+RF15fxk2o2p9ior7QCZ+QA7VeSo4IhPSoRWtlUUJnyn0yWXC7RYsiwKqLAtNkQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYB8DQ7QC5cbGm2FYyAzGANOlN+u3vCOvc1jRRT0zQ0=;
 b=fkBTyNqBNw6rLtGHTbWa8QVWzMV3YjakSQqMHGFbdMJ2YZgLwWi6G9FGf2uFL2MGargM/Wv6elDRSRiy3nkYkhr/iNhAV/GJmTPjAISlcHtkZKIMuqOlUqMAbcuNwV6kS36TJXMQ5JcZQOraVKIo0T34b1UmW+YANAVjUCcHoD0=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5509.eurprd04.prod.outlook.com (2603:10a6:20b:28::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 09:10:02 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:10:02 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] ARM: dts: imx53: Add src node interrupt
Thread-Topic: [PATCH 2/2] ARM: dts: imx53: Add src node interrupt
Thread-Index: AQHWKAXgWvv/JF5RR0KX3jCYNcNCO6itmA/w
Date: Mon, 18 May 2020 09:10:02 +0000
Message-ID: <AM6PR04MB496630FBC2A1721A5F8FF77980B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589250307-29662-1-git-send-email-Anson.Huang@nxp.com>
 <1589250307-29662-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589250307-29662-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 57fafa28-4110-4761-aee5-08d7fb0b3f84
x-ms-traffictypediagnostic: AM6PR04MB5509:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5509DEDDADF8EB61F80C33E580B80@AM6PR04MB5509.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hMA47S4nV+QcKcW8Zzy5irzqx5AdeY3qIEHLl3qSW2U9PweRhpyWyBNI/KZhTJzr/s9nB2EfCVrpxEIf95ks/0yTpfpDWlRb4zvrhLjR7b4/Dou7ivXQpFUXVCKOTpclBHyiiMMLSsUkoOBr4uP8aL2VCODrxfrFaE2ahKdw4eR3dRB8KZrXix8pPX8ObhMp3BG1uBccCqYuS/9SPL6yIS6EcepCuQ0CSkDk2Z+V2+vbAnLTN49vdVFvWIkiboGAra/ltD4nvVYCjlU3eeGU7Fl6MMXHXtSBvjeDIkHVPFY4ukDxlZ8aCYsLWLT13f0x9mzo0oabjESRM85W2g3OmFxpJPUf1f0/79z+Y0WZ/AR5ZyfzilifOUDxL5p8GWf8XCEIX4IHANPkFTS+eJFoO/LpkZtIAsThh8S9BBYDo8ZuNz20UFmWf56K26rL0225
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(5660300002)(55016002)(8936002)(8676002)(26005)(186003)(71200400001)(6506007)(9686003)(4326008)(478600001)(7696005)(316002)(110136005)(86362001)(4744005)(44832011)(66476007)(33656002)(64756008)(2906002)(76116006)(66446008)(52536014)(66946007)(66556008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PgfTmWmbpM0I0cqL2Yg4B3xaGXdFNF5r72k/y8gGmyM3BlBfNxm77B5VzR/1W/3JxzcYP2nxRZwG0YjLk8tBgf6ehr/LsHg6R4hTqoRc0j0MX6RRdsLEuukBn25yU1YRn2eAz0Ylm+qcCNZhaQghFGl3mfQl3Tc1lSTJTHRkpylBk5QLL0SRJlvVHNZlFbN/zKUmDfXAXIn0hsNb3xrZNS0kZQ3JdA5PEXUQSKNrjch/kL1sfwsjlMhaEXR09hGnckVnhziZMtW/J8pxItokSNbm8hYOssUzAgmavqCsenVOcqSFE3rMlFiEASRxJROnNdU3m0Ij/Hz1IP6LdWL2bgXyn1lid/cZSAJrWFGQuV6diwvNc6+/lAMjVpWRmagHxsAz4ClDAxGccNka0VgJ5tBFVInoQcxKm/cOvcsSrlIOzzjazDEnE8eTM3pUWnzpL5ueOZtCVcH8v0Qd7EOsX+pzTbeJiRyEgXksH6Stlh1pxrsWig5HgSP3GSe3HhVX
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57fafa28-4110-4761-aee5-08d7fb0b3f84
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 09:10:02.3827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L8El9Z+RsqjL2OkGrHL5tunKs7JufeZtoRbKgw6zuwBh4daX5VnRoD3kcLXx7hHUeMOczs15tHTSsyPIt4ZvpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5509
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_021005_022628_327B2DB7 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.41 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
>  arch/arm/boot/dts/imx53.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi index
> 8536f59..0d06dbd 100644
> --- a/arch/arm/boot/dts/imx53.dtsi
> +++ b/arch/arm/boot/dts/imx53.dtsi
> @@ -591,6 +591,7 @@
>  			src: src@53fd0000 {
>  				compatible = "fsl,imx53-src", "fsl,imx51-src";
>  				reg = <0x53fd0000 0x4000>;
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
