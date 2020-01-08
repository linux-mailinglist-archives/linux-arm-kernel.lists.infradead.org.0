Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F73133D1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 09:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vopZbzCrRicKAbgK85LBgaVh1xDBlI6whfACiMZAuhw=; b=mhqglV+JEfn7ER
	UizZoVAy28NAnERfOqKA0kNIgjuKRGMSmp/WEfzVKi/QA+wvCVKT/EZjMGLGlPZjjxwlERrvUpoZU
	3yyXiyYt7cwcy6m5Vmmlv833DaoEKELAOyHG2gjWwj39f/jQdzQFkrhhDsmnotOXT5IaYUE/CNEsS
	ZROozj6pF4lJ8/4qLZTtRhu+5OzVuRyuBZx32ws0LM1ZQnRoZPmwDHWZSgZwsqNwCTyQDKAuVFvCC
	nXaTYLRCZQYAwbHAenBjDbbo9Y+iA8mInOltj9w8r8gilmYpW4EJw3WRtVAChfalt25RrnaYwriOK
	GHz17qYkurfWb5aLDDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6jn-0000k0-SZ; Wed, 08 Jan 2020 08:30:47 +0000
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6jf-0000iA-Ez
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 08:30:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULfymETQ6FGb0C+an5/+BJeqYLZXc1G+ASi1L1Y8VyDWeIJd7b+SRc1YQNmH9b+gt88BbEiq6MhPmaSXNr+vrA/Z6KmahBbSZdaQbLkoYj6GYF0OrPrRPClabhVowadD5bsXxIW/Z6OibqfiV1TDMsKnONaINWVkadWuOQFP2apbW8pCCLHj2wvEwc/hQItkES18C13tuEEHd/BNNOep5SsyehCuqhkm2K79L/7K6ux81sNl1dcnrnllRLvzTYAcOJx+hSpo+ojn7y1ijCxIVAoA33PsYfUy0jENsGxAu2uOzflRG6Tm/A6LrVi0udKZ8eQwf0e9M1Ow2t4DmEhbWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ubWuDKneieWqZqps87Cf73MhpxpseCyT4FuguI/XZuw=;
 b=RG2hVW5kOZVK86yus3kRZe3Z95ou7ARMJEJPxjV9UFFUwmmoNsa/DR631aFeFTOn9nsfcgGzRs2MwMWW6+mi4flG6tVU8o9k3ER9pc+SqryJywMC0njVfkn+ucLi4zursxW0ijBaUk56kdIsPnATbfyZqjyUuKcM+ZAe/p4O2lyeY0W4WPMJysTapCGPOLvxDNIcEJp2Q6ksqaxSS4mCEyIG4wyVTcbXRZYwtaFcJ1lDIKW4iue+uvBMacjq0tf69ri1E5g0qMBwBT2tx2/jtXGteQvMTR8b+HW9RrY/v3ALvY0BceT4BpdHhhbUVnq7uxLdua08Yud6X0lsc/n+iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ubWuDKneieWqZqps87Cf73MhpxpseCyT4FuguI/XZuw=;
 b=S03AhBkyR5ltWVJK986wN7oUzwD1Q9RPp9JWikEa9AJqaN/J+0MMRZlFDL1jEBzvfnNiIQphm630EhvGZcvZcoYywyutQiREWvJ0AdV7yQrTPixY8EnPt03nZd0TY2LxUDKRqdOOjO3vrFYGMn+s9aGXvswChI28/shORXdKSvg=
Received: from DB8PR04MB5786.eurprd04.prod.outlook.com (20.179.10.31) by
 DB8PR04MB6457.eurprd04.prod.outlook.com (20.179.248.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Wed, 8 Jan 2020 08:30:34 +0000
Received: from DB8PR04MB5786.eurprd04.prod.outlook.com
 ([fe80::6d98:adb8:f7cc:394]) by DB8PR04MB5786.eurprd04.prod.outlook.com
 ([fe80::6d98:adb8:f7cc:394%7]) with mapi id 15.20.2602.017; Wed, 8 Jan 2020
 08:30:34 +0000
Received: from localhost (89.37.124.34) by
 AM7PR04CA0022.eurprd04.prod.outlook.com (2603:10a6:20b:110::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9 via Frontend
 Transport; Wed, 8 Jan 2020 08:30:33 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V3 1/4] clk: imx: gate4: Switch imx_clk_gate4_flags() to
 clk_hw based API
Thread-Topic: [PATCH V3 1/4] clk: imx: gate4: Switch imx_clk_gate4_flags() to
 clk_hw based API
Thread-Index: AQHVxccHqL7Ov6gaike6khrnD2xGWKfgcDiA
Date: Wed, 8 Jan 2020 08:30:34 +0000
Message-ID: <20200108083031.kpcmlujhpu5fein2@fsr-ub1664-175>
References: <1578448417-17760-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1578448417-17760-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM7PR04CA0022.eurprd04.prod.outlook.com
 (2603:10a6:20b:110::32) To DB8PR04MB5786.eurprd04.prod.outlook.com
 (2603:10a6:10:a8::31)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7d9bea7a-41cd-4159-8d91-08d794150773
x-ms-traffictypediagnostic: DB8PR04MB6457:|DB8PR04MB6457:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB64570767E8DBFBA2ECC3D227F63E0@DB8PR04MB6457.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(396003)(346002)(366004)(39860400002)(376002)(136003)(189003)(199004)(9686003)(316002)(6636002)(2906002)(86362001)(71200400001)(33716001)(8936002)(8676002)(54906003)(7416002)(81166006)(81156014)(6496006)(52116002)(1076003)(956004)(53546011)(4326008)(5660300002)(66946007)(26005)(66476007)(6862004)(66556008)(478600001)(44832011)(66446008)(64756008)(6486002)(186003)(16526019);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6457;
 H:DB8PR04MB5786.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MU6svVdXrTt8Tzi4m0HxoNCBk06EYYuSJDfUWy9m+BagPGrJf4kFgSY4ps75IjLUMORqmjivqIFaY+uOQ1ys9d1f0ybDBkWhwi8w2bdreIbwbW0OBmMKRLOMc/PotKpAxOknE68PfeoC9xdU6FlA7UUth/jxOSBkjy1kfRrP49MrReo6C4I+z5K6QKXgXI7RfBCCGGt39Ckm9fCy9eJP3uenlI0M1PKhcIzMhoLoNxNFd2Nm6SjakTi+czUPhvt47Hw+XIr8/CT0jDH7FkggsqdCndCUycQXtzuHkEWJRTg1n0WQS8gWYwZgpT1ceAkIYVI3LDfC+xTTq5nKVzrbolzuoeWk4qdbFOQKztRfCuBC9V5kSjJ5XGggkwE8vNRId4bbSbPUpdYZeZvepMT61BNVe+T7VcNOQKPBsJphctZGudOSv/cohhXP/XL7m5cE
Content-ID: <1CC62D0316E4814C83B3DCB649EBF82C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d9bea7a-41cd-4159-8d91-08d794150773
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 08:30:34.0879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v2YxH4VS74IF8vvRRsEzexXJC09fS6SErYakKT/QGQE0oCTWcB8/FrR/NmkSU/NwwFex9PrRMMW687ysJMXf4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_003039_619219_7523F0B7 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "nsekhar@ti.com" <nsekhar@ti.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "maxime@cerno.tech" <maxime@cerno.tech>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-01-08 09:53:34, Anson Huang wrote:
> Switch the imx_clk_gate4_flags() function to clk_hw based API, rename
> accordingly and add a macro for clk based legacy. This allows us to
> move closer to a clear split between consumer and provider clk APIs.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For the entire patchset:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
> Changes since V2:
> 	- Switch to latest i.MX clock driver base to redo the patch.
> ---
>  drivers/clk/imx/clk.h | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 65d80c6..b05213b 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -390,15 +390,18 @@ static inline struct clk_hw *imx_clk_hw_gate4(const char *name, const char *pare
>  			reg, shift, 0x3, 0, &imx_ccm_lock, NULL);
>  }
>  
> -static inline struct clk *imx_clk_gate4_flags(const char *name,
> +static inline struct clk_hw *imx_clk_hw_gate4_flags(const char *name,
>  		const char *parent, void __iomem *reg, u8 shift,
>  		unsigned long flags)
>  {
> -	return clk_register_gate2(NULL, name, parent,
> +	return clk_hw_register_gate2(NULL, name, parent,
>  			flags | CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
>  			reg, shift, 0x3, 0, &imx_ccm_lock, NULL);
>  }
>  
> +#define imx_clk_gate4_flags(name, parent, reg, shift, flags) \
> +	to_clk(imx_clk_hw_gate4_flags(name, parent, reg, shift, flags))
> +
>  static inline struct clk_hw *imx_clk_hw_mux(const char *name, void __iomem *reg,
>  			u8 shift, u8 width, const char * const *parents,
>  			int num_parents)
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
