Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F221EEB260
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=O2AcJ718o9rAANa7C0mOfox2cdQjiMjrfA4AHiEX9vU=; b=hiekwPo1L2HXm+
	V+uXThJpyc5q35LsLxN2KirwEnzP1km7OriZBIyS+cIC3Oa49KukQpiPBOsrJ7LzXUf7QTVcLJca5
	gFrLQ7DyQrvQXIbmE6IN6pIiatP+psMNgbhMvfa4+aY0C6qsewJ5VHmjzh+UA8nrjXkxym5v4DhAP
	BVmmrPpLHfIFkwQinFyoTC2ztAjJPVc8t4deIMSb6bwevlbX5Bt7r7FCdfGB3zXiAYQRG7g5Al9kx
	Ia3UGAHgvc40iXY+APRJHDTtOk8MOS5uE0ULVccOH0zQ74iV8hGlJ1OW1MUHzun+Lx8rTMDjlvgGe
	azPuPpGS48vd0MTGvT5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBLv-0001qM-MR; Thu, 31 Oct 2019 14:23:07 +0000
Received: from mail-ve1eur02on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::617]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBLj-0001pg-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:22:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVx2aKrVtjRMmloqKvFq+kKLyIhD228+iuQkBRE+QWCx+x8XmnbzHlNtdJGwYTVcIR8RkWNcI2dBmHzBOFoPSICoh5/WGwhsFq53koVuMcg++I9dkROG86u2n7k87j84J11ePgscwwaqsutuiUMs8ZO63ElLRzRGGiyI0l4m6zQSZdnuNh2XyHOJbxV89g5xE6If0MhPj3BKDhBF/tPpalMTnyk1F2FeJd9HBe8rQLIYo39FEPJW3V79T9T64sE3RkbWmztbQxVjLk07qou9altV6tw56TkuyWYeGKDGIIZDDswJJoUxf2yRTIjrUCwcEAYHb5q9eHWkuspfd55zhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJDkspaZ1tbaiuYzTK6HCL4TX+62eTaxgRB84kjbGXA=;
 b=iKul02b6zKYAq68GUh+qkQQxxCK0PxvkKkBc2HwaFvUG+UmZ02xbJwpIm0Dj1rt5VOWFs30Z/YcasizNkJd8OTP9D//iaH8+Rg5hic1v2x3OcwDvCk/hmEpYequ63yUgLpRsngDb4+S/IVariGnVB2RCCdZLWxr2kaNR8E6K2K8Vm7i0HXvGlEUMN42LSe2cWHtTDjiRffkwZQhKtyRb41rrhlp5uKScnGvu9SZk1vLDMFkv1HmBVQMZb/+8Q6NHBcL0oJZbvgaD8v3YhLWlWm/3mujGANgyVU9f5TqtuJtQXAWu4WLXqAZgfgeqKjjjyvsaEgP3QOZxCWVmf5P2lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJDkspaZ1tbaiuYzTK6HCL4TX+62eTaxgRB84kjbGXA=;
 b=SuTIRGruYGMgYCA4LCKwQSWogsrwYtWOzuI4WnyJ0BvrpSGJjWeZixupovPiR+cpPszpb0ghB2Smn93FVAQIR58YJ29HZo0BXBREf+d+2udemEsjqT42ylkvLhyt/ptYwFj9Fomopgb1AljEnYgEBzVyI3OYDEmpDpXK1HN0DjY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB7166.eurprd04.prod.outlook.com (10.186.156.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 31 Oct 2019 14:22:52 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 14:22:51 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>
Subject: Re: [PATCH v2] PM / devfreq: Check NULL governor in
 available_governors_show
Thread-Topic: [PATCH v2] PM / devfreq: Check NULL governor in
 available_governors_show
Thread-Index: AQHVcqlz8mBQO8LnZUW2xGpsUnk7Sw==
Date: Thu, 31 Oct 2019 14:22:51 +0000
Message-ID: <VI1PR04MB7023C870D21D89C523101A70EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <921db734cb5c92875c3f81250126e2027bf6144b.1569309756.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0f64108f-e0a2-44a4-ec45-08d75e0dd05b
x-ms-traffictypediagnostic: VI1PR04MB7166:|VI1PR04MB7166:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB716644EB89AAC06BAA09D3B8EE630@VI1PR04MB7166.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(199004)(189003)(25786009)(99286004)(305945005)(26005)(6506007)(45080400002)(102836004)(76176011)(53546011)(110136005)(54906003)(486006)(52536014)(8936002)(81166006)(81156014)(8676002)(66066001)(316002)(33656002)(7696005)(86362001)(186003)(74316002)(7736002)(76116006)(66446008)(66476007)(66946007)(91956017)(66556008)(64756008)(14454004)(6116002)(229853002)(71200400001)(44832011)(3846002)(6436002)(55016002)(6306002)(476003)(9686003)(6246003)(446003)(256004)(14444005)(2906002)(5660300002)(4326008)(966005)(71190400001)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7166;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hG8vJY4+shWhLt3tB47dM8rbndmNZ54nUvhbMq2WPPEiMf7vJYijOmvmi62TQrRgFallIrmNenDBqOAEIgk1ulJeYih5MKWydmEXP6/yW8sUSrdV3PGkjAErjy8Or7NpjXNUSx1Pl4KqHXByhEshjH/SfTYKb5Ax9zqrOMa/EYQ5BChdEjMccrAqSqg4obnUJVMQMs4tSEzJv02G54bQnvSiwiB5oWA+ePbdD5Hjy6XEtf11N12TIWmidu7ez040+Cn1prDCPC3vLsgZx5ghLrR1W6dwGaxHqxupLnu8rQRONeUFlz/lrzj6sdM/lzK2hf8sQouUzUzen6HmmEKSPQ6vi/oE6iZrD/oGpZr/5K/Z42AppnETXlUUSw0GdXY13TO6YK8F81eCj8zAZDfqY43ghifR/ocMoJAT+o5JQ7TPiDtGsVuLy5InHjqMN7AsJiDbBI+GlndPjjLgSgkUiMEOTmGlnghS3zIVkuoe/Qk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f64108f-e0a2-44a4-ec45-08d75e0dd05b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 14:22:51.8420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t7JoFrASbc9kpLG2Dlsj0CBw2AIlIdGd4wafcLcD8XjWFJVNu4drJbwFkUtmIOT2MkolM1T2UW3ATXIG64zBIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_072255_929417_5114CDB2 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:617 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24.09.2019 10:26, Leonard Crestez wrote:
> The governor is initialized after sysfs attributes become visible so in
> theory the governor field can be NULL here.
> 
> Fixes: bcf23c79c4e46 ("PM / devfreq: Fix available_governor sysfs")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>

Gentle ping?

This is a very simple bugfix with no dependencies which has already been 
reviewed. Same applies to the following patch:

https://patchwork.kernel.org/patch/11158225/

> ---
>   drivers/devfreq/devfreq.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Changes since v1:
> * Add Fixes tag and Reviewed-by
> Link to v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11157333%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C857374c5be41480ec9ad08d740c09549%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637049068194432556&amp;sdata=BIV9uq2WOBIrDLwGBWiM2wvHPselZnqdtOUV1uzzBsQ%3D&amp;reserved=0
> 
> Don't add cc: stable since it's a theoretical race condition.
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index b905963cea7d..60859a2400bc 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -1193,11 +1193,11 @@ static ssize_t available_governors_show(struct device *d,
>   
>   	/*
>   	 * The devfreq with immutable governor (e.g., passive) shows
>   	 * only own governor.
>   	 */
> -	if (df->governor->immutable) {
> +	if (df->governor && df->governor->immutable) {
>   		count = scnprintf(&buf[count], DEVFREQ_NAME_LEN,
>   				  "%s ", df->governor_name);
>   	/*
>   	 * The devfreq device shows the registered governor except for
>   	 * immutable governors such as passive governor .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
