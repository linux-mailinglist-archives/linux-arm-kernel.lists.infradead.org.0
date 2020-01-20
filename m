Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B84142B2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=p/rGV+2MU8NoyE/1VnZJA3H/GHo8dZgVG7WGUoXVuSU=; b=H0XXg5+QaRgnCS
	6jlHFLOPZoP00m5v+63WcnddICyjyO/oMu1+ohEp4UdxfTxh8/Kmqg3ce4RU99bM2TUNGIHPWuj4V
	LHu03Ti8QtLcpb5keIi4Xh2+Kzo5v7wMvlP8O8m23E1YR9+dSjGy7G6e/1unJi9oezlJ2143CYsRy
	WH3elUpOyOdCgz93wGsHJxClSw2LSJJ9FB9TJVv0BbSDkWLqRp4DTVGEgkfVYVI+N/B68AvTWK0fA
	xRIi5XMSDJ8dBF2WQy4Wi5nu+tDcObMdfKYKvs4ETet+e3D6TZYwYo4/tWtEPhdbDQ5twwfj69wWx
	hsXbcA3f3GTsVsR6PMfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itWQm-00050p-Na; Mon, 20 Jan 2020 12:45:24 +0000
Received: from mail-vi1eur04on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::62f]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itWQW-0004Ea-GE
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:45:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UT8JgGDSY8g068ANVrAMVlFQy0om7Hf4RwHlCuLm4En1/pTivYE9kFLEtkATnzdBJTbwcY5D2lmUNim4yEYBCd3S3Dk7jUq3+9GyJt5RCQFm11PEWA1DXOc4fg7q8zDqcKQb4OySq+g5fyzONqHzqzeB+8CFgLmicsHiN2pJv8WLqY86FsDILrGEeOn3cZtHj0H9IRfqjS5wYp+8aS/48jOEBFEqWi/+uh7Alt+3xITrKZMHIMKKbyMZtsVRTpYU/Q4hzr2YIDsHczu96+82IPCjWG+JspEJ+IsZhvD3ddOU83DvjAcwbd1zYR5YgThf8Tf6DUL50Qoxie/t/7hT9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvbD91ZAlLfkkhIX2Uwkv3c0T4qOl5Zo0pGMo4d3kJ4=;
 b=Ul8DMfql8uVozl8gW1SoYZLnLdLZ0NwXisL3S3pp66PcHprSltSZdamU8aL12rHVOjnqSzxidawUnijqpDvDIVWySOOtJvHXlqA084aYyhC/x5cIOd9jUwRjvwQh1yiwVyEOrqE+pUKGXrjHPQrcqLjpMgn/6rTAsaUCBKEA3ZLLECXjUOdTvOQXhA8XmgEEn4gwA9ogZHLpf+xthUyu9A5p7JohH+eGIhvAaO9TLdnh0aftNY3PfrEUXOwebqSVBe+ujqu/jkeLZgXCSmew7cpES5269kBBEzyEF5w7mR0YWPVns6AShau7PTQkFpx/ICPr4Lu/PIet2QgX7MlDCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvbD91ZAlLfkkhIX2Uwkv3c0T4qOl5Zo0pGMo4d3kJ4=;
 b=kcftFNee4HloLHxa3P/tyWWcO0w/O/VicXAeM9hJLomrTdItfOFMOlOxUUyh1qkL6CkssCUkvdzJtDvjOzJPBCxr8SQx/ndXPrXnr/XZqQJjFPLbLpqshrIRUlVnF5rrC1uxS+1P8kjnpqfxr6IhDroSC/EzDN1YhPBrsqDkJyg=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4365.eurprd04.prod.outlook.com (52.134.122.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.22; Mon, 20 Jan 2020 12:45:03 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 12:45:03 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH 0/4] soc: imx: increase build coverage for imx8 soc driver
Thread-Topic: [PATCH 0/4] soc: imx: increase build coverage for imx8 soc driver
Thread-Index: AQHVzB/hVXSait8oKkG3c6qn/lfwPw==
Date: Mon, 20 Jan 2020 12:45:03 +0000
Message-ID: <VI1PR04MB70231E81AB33489264502009EE320@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 75f03ec9-99eb-4d71-dac5-08d79da69203
x-ms-traffictypediagnostic: VI1PR04MB4365:|VI1PR04MB4365:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4365A8EE3D0997DA4FBAF3CBEE320@VI1PR04MB4365.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(136003)(376002)(396003)(199004)(189003)(8936002)(478600001)(81156014)(9686003)(71200400001)(55016002)(81166006)(54906003)(8676002)(316002)(110136005)(86362001)(53546011)(186003)(6506007)(7416002)(33656002)(5660300002)(44832011)(66446008)(64756008)(2906002)(4326008)(66556008)(66476007)(52536014)(7696005)(66946007)(91956017)(76116006)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4365;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /rD01SqhokGuLJWzwRl3hwSD61d4P09VIWUmm6uO1we1PYbX/PwtRwp62+0/V0CkOIbQPkV13S72fUGTWd3eiv4sjFHTm11gHmbNg/eqVhgM1m95u3p75+or9B+CD6azRGgz5+0sgL+R8s2/nOui1YDUVh71RH2+Jrvi305M1LdE6B0qLMInTE9k7n7U7E4/d1Y135tZqjr3a3QzGcEleZuZqFCNHgP4ZMuIz4KyOWp/AsEjEyuS7GO5Kc/jq1pWa5pA5B5vyrx22rbouVMpQ2FWOvc6ZHmiSLZfVBP9tWiyKG2snXQXICBIXtxJVl886r9ObBlXKyXoS44UfPivJEtAvqDbr1xdk04y4OtxYk5qcdZLMpGql/SdL13FyUzjnuJZAtR4favEuRE4FpjOLyOYNahE13otsqow+EfPynGXWCrkF9Ikbvs4XhmFAeJQ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75f03ec9-99eb-4d71-dac5-08d79da69203
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 12:45:03.4887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ddm25sp5eT8ScQre+U168nfSQXaGhg+vEGk1HispNjgHfblfPx8ZOybTikZjAj/+cxbcC6x3u1G+eNHL1/67A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_044508_647508_EE5E71AE 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:62f listed in]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "will@kernel.org" <will@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.01.2020 05:48, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> =

> Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family
> Add SOC_IMX8M for build gate soc-imx8m.c
> Increase build coverage for i.MX SoC driver
> =

> Peng Fan (4):
>    soc: imx: Kconfig: add SOC_IMX8M entry
>    arm64: defconfig: Enable CONFIG_SOC_IMX8M by default
>    soc: Makefile: increase build coverage for i.MX
>    soc: imx: Use CONFIG_SOC_IMX8M as build gate
> =

>   arch/arm64/configs/defconfig                | 1 +
>   drivers/soc/Makefile                        | 2 +-
>   drivers/soc/imx/Kconfig                     | 8 ++++++++
>   drivers/soc/imx/Makefile                    | 2 +-
>   drivers/soc/imx/{soc-imx8.c =3D> soc-imx8m.c} | 0
>   5 files changed, 11 insertions(+), 2 deletions(-)
>   rename drivers/soc/imx/{soc-imx8.c =3D> soc-imx8m.c} (100%)

I applied your patches and compiletest failed for me on x86:

../drivers/soc/imx/gpcv2.c: In function =91imx_gpcv2_probe=92:
../drivers/soc/imx/gpcv2.c:561:21: error: =91SZ_4K=92 undeclared (first use =

in this function)
    .max_register   =3D SZ_4K,
                      ^~~~~
../drivers/soc/imx/gpcv2.c:561:21: note: each undeclared identifier is =

reported only once for each function it appears in

It seems that on x86 <linux/sizes.h> needs to be included explicitly =

while on arm it is already included indirectly through arch headers. Fix =

is very simple:

diff --git drivers/soc/imx/gpcv2.c drivers/soc/imx/gpcv2.c
index b0dffb06c05d..6cf8a7a412bd 100644
--- drivers/soc/imx/gpcv2.c
+++ drivers/soc/imx/gpcv2.c
@@ -14,6 +14,7 @@
  #include <linux/pm_domain.h>
  #include <linux/regmap.h>
  #include <linux/regulator/consumer.h>
+#include <linux/sizes.h>
  #include <dt-bindings/power/imx7-power.h>
  #include <dt-bindings/power/imx8mq-power.h>

---

My test looks like this:

make O=3Dbuild_compiletest defconfig
make O=3Dbuild_compiletest allmodconfig
echo CONFIG_COMPILE_TEST=3Dy >> build_compiletest/.config
make O=3Dbuild_compiletest "$@"

Other than this:

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
