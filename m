Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13B4142CA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 14:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0HHZ9WTQvUACpSLS0Pygqbe3mLJbC0ycEPUNCJ+01Zc=; b=F/apiJrK4rpHst
	iUPEGg/etlDwhUWH5f4od/NA2FpCQw6ABsHcQzEfMn7K+OLOdxBV3WpiN0ZGF6Fy0QpMwdRkQfm72
	6epeZ5y/hKZHux0/Auj4vkY390G76uFOAZtKktKByUwHPEblT+oIQufebZA4P8IkVc+rj6fvZJNTB
	6y4wp6wf0XP7+6hW3MeAxN0QrDf6tM6Uc6Bpz+0/+peuJpDQZlAZ5AfEu5VuIyWzw6PBmXjpfdR8+
	Nkzj56glVy2xnBLPE9S6yl8/p7Sy48iB8x+12Kj0nTMOXFazcUwbiV9NSIsGAlyxxee3EBpED0BqZ
	W/ChL4/rrZ2SjNOcQzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXYT-0002jf-6H; Mon, 20 Jan 2020 13:57:25 +0000
Received: from mail-he1eur04on0630.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::630]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXYH-0002ir-M3
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 13:57:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nLUw16EPBetABfRNZidWfeQGoAEg3urPV4pV2EMNWrucIZ+UEgVbkszQLWOLxKb2OYZ7ZjtyAJlIiiEdrmNKWmXgOJzZSvSlcwsoYDGRtUI3zW5WWv3NvmMF0gDGSu1ROf85VO66ygIglUe17i+OhhpOl/uj6NfFxZpH68B7Si5NtUbbqFSk/hbcl9SWQVkm7rU7EB4Vp6VoeE5srG360GdPzu/g3PNQ2DbnwNcphWvz63sqxLywR8N8pBryg5P8fr4EUbtcJH1mn/7uStgsSKsADJX8A3S6o1cetBiwviHibNLU8qkyqll0V4r1V2yDh+IZY7UJ5ZI2C/NzZIbL2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ebGsAm3oAc01pJEeB5OpOUXXC1vCIvCS1iYG4NzyHr0=;
 b=oF9V7e2r/lsd2hf3YR0XYfLpNYyOfBJ9BxDBRZ/90oCi3q7GDhGhLROWYcpPZkWwct2yEjlDoxbpA63OWhx/ZwYgQKF7VYzGDKyGQGtyH2xyXPL+vzFlUwqQyxwnU8Iovf1nsunosKmtxL0TNaC8U0knT2RoIwB6qc80jeGvtE2YzeVYlKB7rl9iDl6ASGHwb/doF9s2/AO2uVayy1gQidG+kSH3sZzCfkTKH56w34juwwHo9dHeaWDEMTbJ8zFTj2bRJemoaamWqmiGsjPO5+ePTXXoNmrPx57EzbVyJXXbPYn5Q9OQ0vGTxsBvmS/z/ENnEXXpjcZl4WvOXajjdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ebGsAm3oAc01pJEeB5OpOUXXC1vCIvCS1iYG4NzyHr0=;
 b=aLwmekXiGaTHhG3d4oNt+2vFiW45i4VsjVbHjNzF1lJ5jt6IXesk8jcy6wTAPnWhcc3JpfbMrU1rhYplt63nsvGRVGRSqm2Jt82CRdBmugqo97JXRkQa8qb/KSbnIK0uU/Bz/k/8aM+BOkhaKlzEPFpU6S4dyklc4Jjcw62ZJRY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5950.eurprd04.prod.outlook.com (20.178.121.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Mon, 20 Jan 2020 13:57:10 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 13:57:09 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx7d: fix opp-supported-hw
Thread-Topic: [PATCH] ARM: dts: imx7d: fix opp-supported-hw
Thread-Index: AQHVzrCLycfX70mEmUSmYDkdjG+jQg==
Date: Mon, 20 Jan 2020 13:57:09 +0000
Message-ID: <VI1PR04MB7023BA111917A69D1EA8254FEE320@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1579428300-9894-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1bbdc14b-70b2-44a4-819f-08d79db0a4bc
x-ms-traffictypediagnostic: VI1PR04MB5950:|VI1PR04MB5950:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5950EEC0FC3043B1990B4DA5EE320@VI1PR04MB5950.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(366004)(39860400002)(396003)(189003)(199004)(81166006)(8936002)(55016002)(26005)(91956017)(186003)(8676002)(76116006)(53546011)(478600001)(33656002)(2906002)(81156014)(6506007)(9686003)(86362001)(54906003)(44832011)(4326008)(71200400001)(7696005)(316002)(5660300002)(52536014)(110136005)(66556008)(66946007)(66476007)(64756008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5950;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jmUgNc9J3dM7gFu4BUHcpHCuKMwNS0iB99xbdJccR93587zuiPOhh8CyQz5S/BglMjwUGEt8bC5neJ5icrIewh75IlJffd74B4BHsiIiVJTHSpCpBJawrPkH3rRY+uCAw7x5+7Dh8E/bTGbq0IUoWNvtALdnqOqGJUwKA26AlOH2v7QSpkRgNtYsHj6PPS2MRfa2TUyYwJDZfXizYo1N2DkkTz6nkIE2/OF19UANZBnnD/cBcoGHivthDNww477kUr8wsKFk76PRdf2sqWLzplRaMeG899FlKf0sD9hWRv/LqRN5NcdyB+UP8eZor/pfNa7a3tYvmRS43Mk6v1baqgekETX9i2T7+hCpyLwbJ8Hilk1LfGZieeog+OulugNN0EzalhbzB3PLJY9VO0hxV4q/CE727053+bVj2DlvJ7xJC3MKjRiOvfRsHxmpaHyu
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bbdc14b-70b2-44a4-819f-08d79db0a4bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 13:57:09.8174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6dl29UFxS2Mp8hfZUgQw2DWCtuK8Fn7QfDvxJFs3kx9QvNXjZGvSJhL1b85nXeWpTx40MRiWAay/HKeyw+QmdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_055713_816012_35C39DDB 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19.01.2020 12:09, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per i.MX7D Document Number: IMX7DCEC Rev. 6, 03/2019,
> there are only consumer/industrial parts, and 1.2GHz
> is only support in consumer parts.
> 
> So exclude automotive from 792/996MHz/1.2GHz and exclude
> industrial from 1.2GHz.
> 
> Fixes: d7bfba7296ca ("ARM: dts: imx7d: Update cpufreq OPP table")
> Cc: Leonard Crestez <leonard.crestez@nxp.com> > Signed-off-by: Peng Fan <peng.fan@nxp.com>

My initial logic was that there is no particular reason to guard against 
parts which are not documented to exist so checking the speed grading 
should be sufficient.

With this patch if an imx7d chip with automotive qualification is 
released in the future (unlikely) then dtsi changes will be required 
before enabling cpufreq. This is not unreasonable.

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

> ---
>   arch/arm/boot/dts/imx7d.dtsi | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
> index 92f6d0c2a74f..4c22828df55f 100644
> --- a/arch/arm/boot/dts/imx7d.dtsi
> +++ b/arch/arm/boot/dts/imx7d.dtsi
> @@ -44,7 +44,7 @@
>   			opp-hz = /bits/ 64 <792000000>;
>   			opp-microvolt = <1000000>;
>   			clock-latency-ns = <150000>;
> -			opp-supported-hw = <0xd>, <0xf>;
> +			opp-supported-hw = <0xd>, <0x7>;
>   			opp-suspend;
>   		};
>   
> @@ -52,7 +52,7 @@
>   			opp-hz = /bits/ 64 <996000000>;
>   			opp-microvolt = <1100000>;
>   			clock-latency-ns = <150000>;
> -			opp-supported-hw = <0xc>, <0xf>;
> +			opp-supported-hw = <0xc>, <0x7>;
>   			opp-suspend;
>   		};
>   
> @@ -60,7 +60,7 @@
>   			opp-hz = /bits/ 64 <1200000000>;
>   			opp-microvolt = <1225000>;
>   			clock-latency-ns = <150000>;
> -			opp-supported-hw = <0x8>, <0xf>;
> +			opp-supported-hw = <0x8>, <0x3>;
>   			opp-suspend;
>   		};
>   	};
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
