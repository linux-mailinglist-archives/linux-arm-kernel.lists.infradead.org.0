Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C43EDA78
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibBD3H+HYy+rxcncjQ+5T7IT/8wfG5E5ZjaOf9mLBRY=; b=Wyu2BdeRGF5KGd
	D2N3R3XcV1nKLCEGvJ0/4Ub1HpOQ4AtoykbJggmbrVfIpNeJiWbNNm7pmIGyzNW5XEG932OrG+abk
	yHOX8Zhgh98Bv84OuIHRXNuO7dhoPaqK/90d9QGVFxbdyNejyaX5ku25yuCKfcgRoz890RM2pWHry
	ypTVAJo9xzNx0ibaBpfyLc/Ww36nOhhBQklSFhWgUBhiscq/gYc5yFYAeLjibozZPIh+VuvVvemQq
	xMqdlYapk9CNzYVVQxv/aehuqYCD7Gb3PO8TciR230ijnuQ4tb5cjA1fSqx8VIQoc9BxLAD5bwv6J
	U7UesV+a/mD+4Kj+EXsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXcN-0007sE-1N; Mon, 04 Nov 2019 08:21:43 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXcB-0007rn-ET
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:21:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GaNn8DdGpEaBrALSPMfZqadWYlSQcF3ZjnQ3xOqrzZ9I8waGnBd6EmsLCSjHdbd5YjK9uYJJ9oHrg4NGU5XG9NQC7HNv24qlMSHGdzY33I9C+QcJyB9Mu/73Wbh0kfPku31AQ3iYSzgi+dPLNXjGdQPNVufmzw8n9GPv2QDnGcDdCKs/RQ/fn7+4qOAplbQ2kZwWWG0Au+CvYl68VXXO1dsWz9I1fQcgg9K4X60hf8zzd72l6uZ8ECOUY7aHFz7toulKArOwKrAvz/Uu6U/HbY9hAoO20+prpfykBwXlmjwcnK3Iu4zxWKMDkQy3gykJdzOothaKRkEhPq14+AI1mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RilCkss77TeLxKUVQcHdpjD+XmztKI3ZNQLE/dyurls=;
 b=bQJnphs/+UUzbLWlX8I2EiQS3osJiexmFpX2sctWXL66UaU8GsbAoZLpxEm3ZzO4wfQifgCaZQje+cgXd8J6aasGwREV/jtSAe8YQQJ47hGHO5r5xC13/MRyJdA/J0UEtt14V18lvRE3QCUPFzMx725TNDx4Dr/wVWKNRVEf9/zhxxN8lfe2lw0TBp1kQR/Dwg/GR3zKG89/Reu6x6fsxIGjDzMZw+tFpXlmzIvpD9XXuc4J8wsR8oVO74J3+xJTyR6sAwnpzTwnh426NKigJSMSKvkkYxwLX/tAO45lWpLKf5lwr558hlYlVC7fR9EkuU1WWsB1r7ng62kLZb6SEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RilCkss77TeLxKUVQcHdpjD+XmztKI3ZNQLE/dyurls=;
 b=Chmri8aOWeFtoxpQ67GboFVoZw1hWaXZ0cIWGn8VeWa55JMU/4n4Vz2MJqOLRfyKyqqu7f8ZmlxRXw6HgjjEEm+IEEH5jXB/7hRJabqF43sVuKU1+dk3nLSEPjWL2wqXXTv7kFB9NJepOUsDe/4iNpBEiFLufwm7TcrLeUOAY5M=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6212.eurprd04.prod.outlook.com (20.179.36.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 08:21:27 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 08:21:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH] clk: imx: imx8mn: add IMX8MN_CLK_SAI7_IPG clk
Thread-Topic: [PATCH] clk: imx: imx8mn: add IMX8MN_CLK_SAI7_IPG clk
Thread-Index: AQHVkuiWYOV+kg2wl0yC3cmY9ucIdad6q63w
Date: Mon, 4 Nov 2019 08:21:27 +0000
Message-ID: <AM0PR04MB44810E5691E823CD4259F920887F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1572855483-10624-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572855483-10624-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f61ee09d-d36d-4881-9e0b-08d760fffcfd
x-ms-traffictypediagnostic: AM0PR04MB6212:|AM0PR04MB6212:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6212080DA19CC96544712828887F0@AM0PR04MB6212.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(199004)(189003)(2906002)(305945005)(7736002)(66066001)(52536014)(256004)(25786009)(3846002)(6116002)(81166006)(186003)(476003)(26005)(2201001)(76176011)(7696005)(316002)(81156014)(86362001)(54906003)(44832011)(6246003)(99286004)(8936002)(110136005)(66556008)(66476007)(6636002)(5660300002)(102836004)(4326008)(8676002)(486006)(9686003)(33656002)(966005)(6436002)(229853002)(55016002)(74316002)(14454004)(11346002)(446003)(478600001)(71200400001)(6506007)(71190400001)(76116006)(6306002)(64756008)(66446008)(2501003)(66946007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6212;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lY5NU6Dz9T2axX6HWE3ITKfQBs0OuY2C0fGrhxj2ooEVPG+bU7dNa/RdkxZOX/2w57EIlgKD7Bbvns5D+sKpXGWsn/OQqESaLJLQf3QH4ssTjVPdrbJ4RqDmQwGSsPW0Yw0hl8pKbu8zJ5skzoMf/CApMTE6MtsyqWlZCV2qei4rcPuItwbS03hdeTGMbauCwJP390vwMkpVH2CeC3QssnDzrVF5CkWRA4gOzPybf0XLULuq20Em71T7+C89D8uFj15a/7lzJQkKmDLXQYg/4jrwbjPUXx+IFHz7trq2UC6Lv8YwzEjaH1pC/ePDDKCPq4ioFBJYryT5HL54crPO7xwk8g/I8jsc4uPsaH4cFJm/JcWE2VexNgDWW+qfMl60Ke7EJE1ezjZLUuohDQCVaKrVxAkhHAWfz+MfAGlReQm4oMPZacpbBco7w0EOGeDgCSOYbbe4wn/WVpq/GvPGFq8F5+Rd7bIdrgEZNxG5IlI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f61ee09d-d36d-4881-9e0b-08d760fffcfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 08:21:27.2751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jIB+Q3A4JHHC965h92ybuzMYMpo697I+xCwXEvdAngLb3/vsJOvuUqUrUUMwCcGV+bvFWH8A/xK0GhwL/WqK8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_002131_491033_9F626895 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.67 listed in wl.mailspike.net]
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] clk: imx: imx8mn: add IMX8MN_CLK_SAI7_IPG clk

Missed to add, patch was made based on clk_hw API patch
https://patchwork.kernel.org/patch/11224941/

Thanks,
Peng.
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> It does not make sense to use shared count for IMX8MN_CLK_SAI7_ROOT
> without ipg clk. Actually there are ipg clks for other sai clks, let's add
> IMX8MN_CLK_SAI7_IPG clk.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mn.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index 838f6e2347f1..5e801892c631 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -556,6 +556,7 @@ static int imx8mn_clocks_probe(struct
> platform_device *pdev)
>  	clks[IMX8MN_CLK_SDMA2_ROOT] = imx_clk_hw_gate4("sdma2_clk",
> "ipg_audio_root", base + 0x43b0, 0);
>  	clks[IMX8MN_CLK_SDMA3_ROOT] = imx_clk_hw_gate4("sdma3_clk",
> "ipg_audio_root", base + 0x45f0, 0);
>  	clks[IMX8MN_CLK_SAI7_ROOT] =
> imx_clk_hw_gate2_shared2("sai7_root_clk", "sai7", base + 0x4650, 0,
> &share_count_sai7);
> +	clks[IMX8MN_CLK_SAI7_IPG] =
> imx_clk_hw_gate2_shared2("sai7_ipg_clk",
> +"ipg_audio_root", base + 0x4650, 0, &share_count_sai7);
> 
>  	clks[IMX8MN_CLK_DRAM_ALT_ROOT] =
> imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
