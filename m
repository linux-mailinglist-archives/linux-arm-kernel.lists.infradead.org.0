Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9601DFCAC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 05:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvCC3P6lGNdOucMxUW7ptyk6AeZJYRxslteaAYqS1v4=; b=ByJhzEPp/O21BG
	hTW+KvtH87ny7yc1n4ras3MBkt0dx7ELPWIsHHqi4LIXrVNh12F6pc/IOG6+bxgyDuzcz0GUpg5bC
	oSERPWROMjb5jCT3RbK3DeBL3TOjZW3poh5aHbaJXNln4PErB/IXVp5po/o6g9w/+CTKySH7UgkTh
	Fpg7KhYhDitCgTYc/3tULFGDnuJTxqSyaoWruemOC9qxL0ZR5OYLa8SJ53iuGH5SJwzeM7zoHmIGX
	q3JBXvTQkkRgIiLZ/AZZ9v4v2yPQjNHzh4J/8hWNfRDvGIls+8es4Tb6j1pZl4L8NTjq3t32+yXHj
	wRtyGCp/GKmDsVajd4ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jchI8-0001Ti-AR; Sun, 24 May 2020 03:27:12 +0000
Received: from mail-am6eur05on2085.outbound.protection.outlook.com
 ([40.107.22.85] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jchHq-0001KP-SB
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 03:26:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KdAGxd6rC/vW+q6PjLaAzVNiR89KdAS5fo+hHSm6mrP//FpQKkNQlaRvepQFX2IXfz3IHzVP5PHAdkEW+1Egd4xd+wFe4MjAB1ijhzOrjWPUe0ko+uw5aRHOyUOzg2QPeclLVMqxMUs/HJEdvm2pgmyNV01JRQgxxbme3D5LAMeczcOBXJe8wgu/TYJJsMJCjXHQHkPbZnjNaSqdoQCQycY7W488sRRIQ7mfKGmA4j/Rpc0Itu/aFI5fFvYgh9673FMIPJ7PsRj5ZVJeJ7y9ZXeewVYBHazIpConM5rQxMAPoOiSO8+wDVifv8tcXo1s8rbocSsMTxi/WhTk/e8D3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zk4pjYqmdIem2fzxp5lW9xnmTG9QQpDUmIykYa3wW9g=;
 b=MKHH316qhltu08pfUZC9cvFymPQV210kNzrWLlsIihy42XFbevmNbL1GLT8HEDdRuOwG3kE9pkBOWDVDZR0VwQSWfWeQ3iaH885AcAMbUf35jjssCPhyRo4oRUwqSahc+O+zue7qWEc2neYOmPOkHO/3SfcSa6fGpt8eN5JMz1SFVZItZVPg55PhqNO/jGc22JOh8Ni9H+wemYVCf7oeY+197kDHYonc6q56QBnp5GC6CcFXa1TK0Gsx+KEGCM6x5P+fjpYZS3pCbfnE3BmEMa/dUuFndwWc1A+ib+KQMR+rqAMSSgAg3/c7knu1kM8HimrrD4Ay3g2BYmm8MKnqrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zk4pjYqmdIem2fzxp5lW9xnmTG9QQpDUmIykYa3wW9g=;
 b=My9KlHE19/sCQcCEtITnh8zZYEwca9c30S7w9jKGFaJZ0SoRHfBg8TvxtJGOQsftSvRimgTOs13ZfG0v79PlM/QWVGJKy4Hja04mwxEyF4zQ2RXhSGI5RO761CKJxXY9rFs6Qz3St3gEZ0qIS2mvKpJHipLaBmOxkNElQoN87Uo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3676.eurprd04.prod.outlook.com (2603:10a6:8:d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Sun, 24 May
 2020 03:26:50 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3021.027; Sun, 24 May 2020
 03:26:50 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V3] thermal: imx: Add missing of_node_put()
Thread-Topic: [PATCH V3] thermal: imx: Add missing of_node_put()
Thread-Index: AQHWHdINpRSpu2HCw02EbBMkbedAtKi2unvA
Date: Sun, 24 May 2020 03:26:50 +0000
Message-ID: <DB3PR0402MB391639FE30CD00F3371A0763F5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1588128570-12917-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1588128570-12917-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e80e2e57-b3bf-4c60-e21a-08d7ff924c68
x-ms-traffictypediagnostic: DB3PR0402MB3676:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB367677E2F9D3C0C91099D75DF5B20@DB3PR0402MB3676.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 0413C9F1ED
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lNkoQfY3KcoRpfk6iemcy/hks7NMs33vsT5qdW/e6bdx0nsMQkD5AEixxs0jUB1ASODUoNH+meRCHk17qSPQTU0O2eVJKLi1OZ5U1/zVPdyyrhPHR6NxDru8vGSDYjCyU4dt6t8VCFUgrvMe5VIdnOXWJT5hzVTtEijImdpDX+P++8haORC4DYe/rRL3pBMahc8MyBBqY0X8TclJ2xzxzSXScPW0mLC7RWCQAFAIznd8gVLMEZxGeb6UXCVN6+vhQxrhmSbuOoxx2gy7YgFBriKs763LZHxLhHbmZFBYYHSWbEgQheaRHIrR5yGsvGsIFOzkSFn5T/60eEtqQN86krYgd7u0KfqSQUu8WZ/uc2S5BfS2AMoOuJIYFb91abOt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(346002)(39860400002)(396003)(376002)(316002)(2906002)(6506007)(66476007)(8676002)(8936002)(86362001)(186003)(66556008)(64756008)(66946007)(76116006)(52536014)(110136005)(44832011)(66446008)(55016002)(5660300002)(7416002)(4326008)(7696005)(9686003)(478600001)(71200400001)(26005)(33656002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: I2/f1bDBK+MXB/TDWPy6uz8RsBz0FjDTKnNjCSAqAi9ydDwk8PnyRYsnRJS4TKSC6vCbKj+GzlXF3k6IfxH1M30w8ijHkoJXAXWYXV++s1wZkXCUfNNN75u3SiLl26J7GAU3mWmIMBSPj+2q6TJgiK5hK7ntFY3PZ9isT2pgsJHqIdBFXBdezECx1YM/pP9wN/5T9XZoYd1yLVUuFLytTPo/3gnL+PD9GZh5Hye9P5jyjkZf/PxCoYFNFxSEpbrGqe7lhPg8UVmu3zWJpKNp2uQQhgzesdW7GQri7+FrYIX0KMzmaqyL2x+LpSdAVANtD/0IrHTFVS7MvmhxGAoDkJaKYmwwjBsU9kT5Bm7yTVj+u+BCBsDJpsrr00/jqAiiBvbMxeg1eu5QyDPxIAFoIGNaL5Bocrlc3A80mKqrdHl1mUvg/1klRgKEGPvGYQvT1VOTw0RRpfKMgyejpp7zPZEdPlf8mEpTm551PJczs/OB2w3KfdfiVKn9FR4QSz22
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e80e2e57-b3bf-4c60-e21a-08d7ff924c68
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2020 03:26:50.7275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7tdjqSFf5a93JLl9f+yeDLjuK7B4YuQ/01h0MlOBPJ4e2BfuLTv6KNbzEJ+aFzpoXxscggs1lW3f7mH0jf7Ymg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_202655_142190_C04D9AD0 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.85 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle ping...


> Subject: [PATCH V3] thermal: imx: Add missing of_node_put()
> 
> After finishing using cpu node got from of_get_cpu_node(), of_node_put()
> needs to be called, the cpufreq policy also needs to be put unconditionally.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- call cpufreq_cpu_put() unconditionally after cooling register done.
> ---
>  drivers/thermal/imx_thermal.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
> index e761c9b..8764cb5 100644
> --- a/drivers/thermal/imx_thermal.c
> +++ b/drivers/thermal/imx_thermal.c
> @@ -649,7 +649,7 @@ MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
> static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
> {
>  	struct device_node *np;
> -	int ret;
> +	int ret = 0;
> 
>  	data->policy = cpufreq_cpu_get(0);
>  	if (!data->policy) {
> @@ -661,20 +661,19 @@ static int
> imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
> 
>  	if (!np || !of_find_property(np, "#cooling-cells", NULL)) {
>  		data->cdev = cpufreq_cooling_register(data->policy);
> -		if (IS_ERR(data->cdev)) {
> +		if (IS_ERR(data->cdev))
>  			ret = PTR_ERR(data->cdev);
> -			cpufreq_cpu_put(data->policy);
> -			return ret;
> -		}
>  	}
> 
> -	return 0;
> +	cpufreq_cpu_put(data->policy);
> +	of_node_put(np);
> +
> +	return ret;
>  }
> 
>  static void imx_thermal_unregister_legacy_cooling(struct imx_thermal_data
> *data)  {
>  	cpufreq_cooling_unregister(data->cdev);
> -	cpufreq_cpu_put(data->policy);
>  }
> 
>  #else
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
