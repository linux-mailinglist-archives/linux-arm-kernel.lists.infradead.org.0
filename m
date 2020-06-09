Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB86F1F3F2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kePe7uS4Q//Sk1i85CwaPzg0g4ESm5EI4+pNJbJ/Bbc=; b=QcomF4nGNRLan15ThdxWKnysz
	ueCNPaGRKr1zKxAJg/QUJE/Bj2TZReAP53drwuY5R9Fl/REV28jzhjwqA+dDV9nou34uXi7SCf34W
	Da8cygwn2+t+uefLsfrAF1Q+Hu/Y4a3s8cw3M40zTbyWX+mRn/25ZGq7FirTa2drgU21Acj0TJG59
	FAWjv+Ws77ICce7QtYx5wDGCaXnZEhtmWPPkLMR66SZvvprvGAPwAVopcu4JqpMyejh/I8DfUlM5c
	rN6IqUD1JmfQMxAuylZQpXohwQfJ3hiaBIOOARfryXK/SkZvvmUUe1HRmVbxcx1d5f9abpD2Wae1F
	ZSsZ3rmbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jig6m-0007L2-FW; Tue, 09 Jun 2020 15:24:12 +0000
Received: from mail-eopbgr130075.outbound.protection.outlook.com
 ([40.107.13.75] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jig6Z-0007HL-O4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:24:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S6rQvHwyjA9qfhtoIs05AR1Phf7Jlb0g03WWUA7PEe+1x2ljc8iGko9GjcCDaxMCVYZZCBBZFAdkiLmhRUa3BXOoq/sEFnbbZFzlanZGgwA/gpIPcQqNH9R5/JAUQBdu8ybWS9taX88sq7EXoNJiT1cZ9uG2b4WfvHIuxV9/Aus8mGU44C/zIRYlqS/AL/gsfH1mb5stl8z1iMGapLeV28M7LZk4AHAQrp6PKSQ9vqtbDSVJWHO6JawNAPNM3ssJcd/LtU/a97Tl8n1hY5hyQR+/0SIMtaFbu0tU/a+05tqMoXaX1pedF4tbz0wnzJIlLx5nZv3wYj44HffIGwDFqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4/Eg52HAcsZDxMss1/lGKk4XD7GfJu+qbIiQvqzKMX4=;
 b=j75yrmaDH/AbJSVgzmsyQS2uH01XK1Y2NIpz27g9lCHITi20rlM6F24ohAv34DNRvShvtZ1Im7sxSjl0LRxXeymSwQx0ZBe86eYF6T5Re1Cr08LRRuGsllGdnpxHlfOh0EgSjWF+31AlXxNtunmWgr9FtRSouucSPf9hd22Jo2/xv91efHSLMSj5Nb5nxpnuWZMm/EYc0ZNlKkyUfMfJY5ltTdX8c30dqICaiWHTwXAO+l4J+83uUMyQEJm22GFHQvth/AfxBltumEQEJJqjtqQlaS+i5rmRq3BIxtRpvOUqe79dRcCqw6c6t6H+LNRevnVOemc1ojW/pVzudRx3qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4/Eg52HAcsZDxMss1/lGKk4XD7GfJu+qbIiQvqzKMX4=;
 b=R4Wsw5AwoQVjVI37sbcbzvQwxF2002ztm1H9XEUB8d5I2y9ffRHjmUut2UNSmHh3CZ31jp16aHRdYzY359A9a5Q+i8FNFJo/p0JNRxgO141vmPW2dbtFRu9P3DWSdh0kFzoSKrBfzVxLPEFTXOwV6uBno04FDcGj937PHciKWYk=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0402MB3712.eurprd04.prod.outlook.com
 (2603:10a6:803:1c::25) by VI1PR0402MB3519.eurprd04.prod.outlook.com
 (2603:10a6:803:8::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Tue, 9 Jun
 2020 15:23:53 +0000
Received: from VI1PR0402MB3712.eurprd04.prod.outlook.com
 ([fe80::c8c0:bf87:1424:88ae]) by VI1PR0402MB3712.eurprd04.prod.outlook.com
 ([fe80::c8c0:bf87:1424:88ae%6]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 15:23:53 +0000
Subject: Re: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
To: Anson Huang <Anson.Huang@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, abel.vesa@nxp.com, l.stach@pengutronix.de,
 peng.fan@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1591708550-14058-1-git-send-email-Anson.Huang@nxp.com>
From: Iuliana Prodan <iuliana.prodan@nxp.com>
Message-ID: <7a4091c5-dc57-31c3-3445-c6b16a565928@nxp.com>
Date: Tue, 9 Jun 2020 18:23:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
In-Reply-To: <1591708550-14058-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM3PR05CA0132.eurprd05.prod.outlook.com
 (2603:10a6:207:2::34) To VI1PR0402MB3712.eurprd04.prod.outlook.com
 (2603:10a6:803:1c::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.6] (86.121.160.118) by
 AM3PR05CA0132.eurprd05.prod.outlook.com (2603:10a6:207:2::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Tue, 9 Jun 2020 15:23:51 +0000
X-Originating-IP: [86.121.160.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 363bdcf2-e491-43f9-100d-08d80c891e11
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3519:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB35194922A4F1E118B948EBC98C820@VI1PR0402MB3519.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1060;
X-Forefront-PRVS: 042957ACD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4Bp1dFdWswmWWDOaoYxvoRXmqD50rygUdCfrQ37+MN1CM6qSRYFpJXKQ9X25FFg0MoiuxLurx0ni2EA38pyLJn1+qHiFOTwHVmQ13Lypz/5vDLKe46QDOgLTJSWf79qXa8qEi3EYO5ygJT8BcMu2zLOP2YQHlvVbp9p0KE+huK+/NSxbca2nCwCcnx4iuBo71zyys9wMDKgc/bitkJaQJEgUwyhDGG+6fZoPsi+kMW+alb3Dop9RtvKlBLwmpiLObkKaszqd0eAPQKF/ozJU7rxEIXHqOOcA85MS/XI5aUGNOIq7rXnQ4ohO8bCqcvWYV+sa/bg7GQ9cdWDmEtGyLuCFHUpbEQ1nKu8zIJyircElV0q5+QaxLV/zT5xlmMebDqT59g44gEGldqJ18RaNvsqsB3LfdgvNwDpMjmq0yVc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3712.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(86362001)(8936002)(66476007)(66946007)(31686004)(66556008)(83380400001)(2616005)(31696002)(5660300002)(2906002)(8676002)(36756003)(956004)(4326008)(16526019)(44832011)(186003)(26005)(52116002)(16576012)(316002)(6486002)(478600001)(53546011)(32563001)(921003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6XVzbktVP64DN3wBl957K0sEOkQ42L4jD+3kqv8Pu4ILl8zJCwQc8EUGZLJ7F6S922pwb6DldAZ3zB9bnly1pZGB0UoXLpE6lBsTDTbXTfSwMxof7UgBvMnrAIL0eXhigzghn1PHdPBqnPvvrfbDVsV0BYs0h0mTs5wehHStR1SNTDA9K6T7X9jcdkAhiVcsj8T4YTpl6xEzKDUOXEoHPHpklZCJX6+OWjXU6Gr7ur1bz9SgECMAmht17Ner2vWuyjB3MN4GOjqiO0OTJd3c9Dwr4dxnV/gisigSFghk9gLMySArOZ5zWKxkzUuP+4km2RotPx6Ab4ft7jX72iUS/Dh8ohv12/fhmRYQolapF6GWvFV9sCt1EF2RRBGghVGjDjZe33LQjcwXOX6VET3QtqE6pd68bR+JomwN2OT2ZECBFoY3lEQbTkHmZMhK9z7XKZfikZKafX4+tMuStDaoU8beG7znQhGu6SJMAH7u5Nmhe8RHIfGVzAOQqf4et7gL
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 363bdcf2-e491-43f9-100d-08d80c891e11
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2020 15:23:52.9441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FEb1+RMwBv20aDKruh1EypjPNnlgKW5AaspWe8/REE2dyvAopBlDlcKbUdeyWUQjh2halI94M6CzXyQy/J4PYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3519
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_082359_837325_DD62B63E 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.75 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 4:15 PM, Anson Huang wrote:
> Correct i.MX8MP UID fuse offset according to fuse map:
> 
> UID_LOW: 0x420
> UID_HIGH: 0x430
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

If this patch corrects the imx8mp UID shouldn't have a Fixes tag?

> ---
>   drivers/soc/imx/soc-imx8m.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
> index 7b0759a..0bc8314 100644
> --- a/drivers/soc/imx/soc-imx8m.c
> +++ b/drivers/soc/imx/soc-imx8m.c
> @@ -22,6 +22,8 @@
>   #define OCOTP_UID_LOW			0x410
>   #define OCOTP_UID_HIGH			0x420
>   
> +#define IMX8MP_OCOTP_UID_OFFSET		0x10
> +
>   /* Same as ANADIG_DIGPROG_IMX7D */
>   #define ANADIG_DIGPROG_IMX8MM	0x800
>   
> @@ -87,6 +89,8 @@ static void __init imx8mm_soc_uid(void)
>   {
>   	void __iomem *ocotp_base;
>   	struct device_node *np;
> +	u32 offset = of_machine_is_compatible("fsl,imx8mp") ?
> +		     IMX8MP_OCOTP_UID_OFFSET : 0;
>   
>   	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-ocotp");
>   	if (!np)
> @@ -95,9 +99,9 @@ static void __init imx8mm_soc_uid(void)
>   	ocotp_base = of_iomap(np, 0);
>   	WARN_ON(!ocotp_base);
>   
> -	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
> +	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
>   	soc_uid <<= 32;
> -	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
> +	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
>   
>   	iounmap(ocotp_base);
>   	of_node_put(np);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
