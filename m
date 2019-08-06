Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1060382B57
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsTSME6w0y5WVMlOo+dy9MQ9JxZvSiOOmR/g9dNBRQ8=; b=jqYmB7pq6sQ70f
	2bJOZqIDL0LgcGA1YZLkezSL+ZTQiy3YKiniUZtp4RaJ/1A5hRpPT6lZur8wnoOxeZ/Rf3LN8mvB8
	zvHdQg6TtrHj+8WmpJ+0UI7AGVr4Z0MLTHsNceLIogf/ytFDj8w1bg8lKF0+0SqWmC7Qyn72UuptN
	GKPDiqcVYX2zQFAHMtmeIEo/HH97PPKnuWavNmYG10wlixbS5QM9ix4Z8bKVh2/LXAbD9iSjVCbLm
	Fo9THUAVeLDLRyLv+e9+iakdC/N82hzmqPq8Ofw4LmUJ//nHyESSPWZJfpP6K8xYARWj2JRQQ3TIb
	oTlmsmgJBSO99SYjF0bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husVv-00012I-1o; Tue, 06 Aug 2019 06:00:03 +0000
Received: from mail-eopbgr150055.outbound.protection.outlook.com
 ([40.107.15.55] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husVm-00011n-Vu
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:59:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kuE7zQQhPqSnEr14j3huGeGEh57Psq6dLcKGwzxS3taG5F/ekEC64Jw3bBP7DUV6VrmRWlW8yYYrMmFgERM0EB608gGtgMjWF6CrCd6hrDL5BQ9HCRHWYo9XUW1sybHs+Nn6vdiWPtp7NKlknnFJB/JyvFahxQ7dOyt+bbKnjt51FuUu4xLa8vo73SK+mg1lBUwa/SoyaL93hoEIUqpBhU2NX9ImNrLx61iQWu72Wd28YeACFq0o6KIJDfzUblre06FC3r2SDNmLdUM/7nVuUpc6bK+aMkbedTMBm0lZIxJIhheeO/cjOKkm9jqfYxIHUZ1fQJ2f+MCI/xf5V3Vs4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0GcMyhvE+5eLLg+b/U06AzQs+m/saK1tkaSMk7DeU0s=;
 b=QuoLBPJeQ0r8HtsxXrbZbxOtYZjmaV2X5mhE0b/PjVP6R0sgnveVdUyAJF9q/tF6WQY7Ogf9zGWRCtNMuk2QiZ8EhV3NXBzP7J+Bc8qhwiBOEkxF/oz070SmAIZ7ys3g1P1BbHuWNbL4x8zihb/sCDo7sVQ6f3IBlDSK940olNNYqyIjo8VbyQjOgsfIBt1KtrNvVAGBJo+BkcK6+1h7e4AO/SfPtXtYvowtD/mgjYvuvwmlpSZIYiO5YYYqtTfaGkWtgh8k+YX9E0eSDReYNBP+rCmQ3Fw7EcRFcW7dMzor9L4EkpfxuBltTH0qbTMHVMJx7mSLSKuFp5zbzrCWSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0GcMyhvE+5eLLg+b/U06AzQs+m/saK1tkaSMk7DeU0s=;
 b=ZvkjljPuK17d5TOczKXR62ggPYAAJCFTcfP+3rSFvBoKJo5LpTx6iyw3luqa1k5KIfMIIYTscYyPTjSYpckXNfUpCw2qJqgllpxNYh7BtCW5wh8dSs6MfR4KD65wbBLyyzCrVdC1QrnmoZf/l390Hmj5AG5XdtY1Ti8HTiTL92Y=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3642.eurprd04.prod.outlook.com (52.134.65.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Tue, 6 Aug 2019 05:59:49 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 05:59:49 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: imx-ocotp: Add i.MX8MN compatible
Thread-Topic: [PATCH 1/2] dt-bindings: imx-ocotp: Add i.MX8MN compatible
Thread-Index: AQHVN5LXMlVDxHijuUG4VBGBLZ+VOKbtyQUQ
Date: Tue, 6 Aug 2019 05:59:49 +0000
Message-ID: <DB3PR0402MB391647D2B63F69C53BB6CE81F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190711023714.16000-1-Anson.Huang@nxp.com>
In-Reply-To: <20190711023714.16000-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac1c9e7e-ae0d-436b-e2e8-08d71a334aa6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3642; 
x-ms-traffictypediagnostic: DB3PR0402MB3642:
x-microsoft-antispam-prvs: <DB3PR0402MB3642272BC7732EBC3466EFE0F5D50@DB3PR0402MB3642.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(199004)(189003)(64756008)(66446008)(7416002)(71190400001)(71200400001)(44832011)(486006)(7696005)(476003)(74316002)(11346002)(446003)(68736007)(86362001)(14454004)(4326008)(2201001)(478600001)(25786009)(316002)(6246003)(6436002)(76116006)(33656002)(305945005)(7736002)(26005)(3846002)(5660300002)(110136005)(55016002)(186003)(9686003)(6116002)(66946007)(66556008)(2501003)(76176011)(229853002)(2906002)(66066001)(99286004)(53936002)(102836004)(52536014)(66476007)(8676002)(81156014)(81166006)(6506007)(256004)(8936002)(14444005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3642;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bWR1id5VTU59HXcIOfEIznZ0m7vkbkf9UnJZNhpRGkmtw69B/sa1tiJ1Drjn1GAZew52Si2WMAMOCDtN2slvb0nwmR9mSBl92J1+lFcwuRZ3a665GfM3sX08jjBfDOV32J/07S6vPIREfK6tEviPikbyS64l9VBmAp2dFA/s+g/3GhM7Ef9vzZw/ZdfDo4X0ITxs4TGQN06wZ/hJhECT9JyBL0DQi6d55WYUkxzEh9ej6PsOP2nQnEuul2VOQrfEI305obVau04NyUmtthRfza3aUVRBfmcplI6NFnPJJGZx6HREqrmC2IGSkSarhSTk1nwj2AvDaR43hpCyvsz5hg0N8uCiL23yi0Ge19io//6r2pT+jkF8uXYr27jhuZ09CbqydsKCVd+c9MkSmNJoxCw3Bz+krONvYKILJaAP4HI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac1c9e7e-ae0d-436b-e2e8-08d71a334aa6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 05:59:49.2900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_225955_031742_247B3B29 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle Ping...

> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add compatible for i.MX8MN and add i.MX8MM/i.MX8MN to the description.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> index 96ffd06..904dadf 100644
> --- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> +++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> @@ -2,7 +2,7 @@ Freescale i.MX6 On-Chip OTP Controller (OCOTP) device
> tree bindings
> 
>  This binding represents the on-chip eFuse OTP controller found on
> i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX, i.MX6UL, i.MX6ULL/ULZ, i.MX6SLL, -
> i.MX7D/S, i.MX7ULP and i.MX8MQ SoCs.
> +i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM and i.MX8MN SoCs.
> 
>  Required properties:
>  - compatible: should be one of
> @@ -16,6 +16,7 @@ Required properties:
>  	"fsl,imx7ulp-ocotp" (i.MX7ULP),
>  	"fsl,imx8mq-ocotp" (i.MX8MQ),
>  	"fsl,imx8mm-ocotp" (i.MX8MM),
> +	"fsl,imx8mn-ocotp" (i.MX8MN),
>  	followed by "syscon".
>  - #address-cells : Should be 1
>  - #size-cells : Should be 1
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
