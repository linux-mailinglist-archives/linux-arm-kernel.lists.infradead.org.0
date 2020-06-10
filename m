Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6B1F5255
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xDkPPQ3TdYkbmneMlwlgJuufCahLc+a+fe/qh97I1Ig=; b=N0z2ckaFLHfn69cmZYU2iv80J
	d4X+s9mxngJ1s6XxGuuirscpUxGLRh0gW8LsPE7i0t+v/ojJV2i75H986i0oMHmCxlh8TSFgcf/CM
	CCDH18xUTkd+7FSXFM4Xiv5gWtPB2CzSlTgDeFbo0SijM5/tB7EDUdNpYtOfsZLeTdOvBwT0uiAHO
	OXiZXsIUUuHMlZQ8vzlHdz1kVQGt0fR/R5Scn+5uBbPenmj+kGxj4XPFNGU4qAr0o0fUNgPirZFQx
	heSxgbJP5QEiX6bMRnZxi3DeDxf5u5AqjpRpQftUEMuA5ULwYXzGQ7+TxL99mIldjwfFcDw+DSaKj
	GI7RV5cBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy0G-0001He-CS; Wed, 10 Jun 2020 10:30:40 +0000
Received: from mail-db8eur05on2049.outbound.protection.outlook.com
 ([40.107.20.49] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy07-0001Gy-0o
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:30:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyAPLZ7Z0FzViMMZgoIq0E/WuezJayZfLKz+jyhj4iw5lS+7SnRQE16kOQaOXQDDlz/c+3ADuF9tvqp2OTSCTCt+Sf7pn8X4a3bkzvGRuTdjTCFknttaHDm8I/PuLZCOMibx9CeuuPMlgTLN1jkKQIxCSEvCTLI7P5IsPq+rjG4rpLG2VJtasCu+YPH9i2/x1b3X0XhUbHrTqDfGFUglhHfuAgkNc0IDL5HM8BPwAObzS7rv7lsXvFUADa8tDkYxDABzMiV8IzObxTAvW+ld+ge9ESX3QEQIEOzIwD0fBxU1Eqw+Nw5mXU/Y7py/wGJM4oQKozELxhCxVX4cxyy1OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APj3supTl3oPTDQDxHCy/0PuA2cCQKB4DGNstMFAVkk=;
 b=K9QXhQOapqYzNRpPf36/j2tyzaYRKB/eWLLAaVvzhofV4FnhSKG4eZGWsq1fArQpm5povkBORCK4Cjst7fTJYMUDD29aJ2e214eMktb87UiwW4AaCL0eKn4Lz96JtxKQbWLKOrRykQX9a9xob9PPbPyZ9MZ1BZFOtz01KODQkOUIwpa3DPRq3H0+NX+BqIbB0Adki+Kaq+hXMElsGLP+G5nks06ztfIitxzxq98fXRjYRXvUOlxh2ktxEmhuGBMMgyCdWhO96D/70k+yys58W+WKIpCOKs9YBcORZQ7mqmTtPJIHMDMRiSbtHwpCPOwuwjxZ8g1lUYQwpCovntUWlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APj3supTl3oPTDQDxHCy/0PuA2cCQKB4DGNstMFAVkk=;
 b=YHxWXX3mTdHOljIQg92SVBB2p7wERVHym4GoqkF53PeZpJj3diUzErCPX60X2U/H0HiOaKMl2vV2S+DFEijGkFOKxS9H3x3M8hrM2f5I775Ct57tQY7jWKbZ+Lr0l12ni6KV/EtW/kIQSfWJsrs/PYVFgQDnSqTWDmS3d5xUOYg=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0402MB3712.eurprd04.prod.outlook.com
 (2603:10a6:803:1c::25) by VI1PR0402MB2912.eurprd04.prod.outlook.com
 (2603:10a6:800:b7::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.22; Wed, 10 Jun
 2020 10:30:27 +0000
Received: from VI1PR0402MB3712.eurprd04.prod.outlook.com
 ([fe80::c8c0:bf87:1424:88ae]) by VI1PR0402MB3712.eurprd04.prod.outlook.com
 ([fe80::c8c0:bf87:1424:88ae%6]) with mapi id 15.20.3088.019; Wed, 10 Jun 2020
 10:30:27 +0000
Subject: Re: [PATCH V3] soc: imx8m: Correct i.MX8MP UID fuse offset
To: Anson Huang <Anson.Huang@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, abel.vesa@nxp.com, l.stach@pengutronix.de,
 peng.fan@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1591783382-27033-1-git-send-email-Anson.Huang@nxp.com>
From: Iuliana Prodan <iuliana.prodan@nxp.com>
Message-ID: <d4f3713f-15d5-e5fa-c266-f7e4592b18c4@nxp.com>
Date: Wed, 10 Jun 2020 13:30:23 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
In-Reply-To: <1591783382-27033-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0140.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::45) To VI1PR0402MB3712.eurprd04.prod.outlook.com
 (2603:10a6:803:1c::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.6] (86.121.160.118) by
 AM0PR01CA0140.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::45) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19 via Frontend
 Transport; Wed, 10 Jun 2020 10:30:25 +0000
X-Originating-IP: [86.121.160.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e1b84946-a6e6-4aa7-6e00-08d80d294a9c
X-MS-TrafficTypeDiagnostic: VI1PR0402MB2912:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB29120C7D5C598418E2F63B718C830@VI1PR0402MB2912.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1751;
X-Forefront-PRVS: 0430FA5CB7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KpNR3chtA4GQco4Jnao7yFVqNxfumntowyxy2+Rhb9n+i2Z33MGJ+ADDfBCFeU/VcQFaMgUT+YuE1yHOkRy0GVr+QW9AAhUbrxeVjS6eSDhhJXzHt5o8YnI+pzwBzrfjBWgFH+TNYmg8ckypo5t+OZ3V1XxkLm6zk+qGHL5zd8Vbp6CrWS2nWXVdnuBOI0BrgqSXr1sb8ZWDk4JQyaS6R1onQf7r4ae6LWk0KCaOYrWErJMV4qR5O2WqYIW5X5puBBanr6KYo82UigzIkXLHPcjldweeN6/h7Udsf41OqZ78r7E/JeLD2nE0l4foaT3YyYKDLwcyTp2WToGF32omY3FUbkW01szCdzGLeN9wtGd54WTy94XTW/cwM6gA6/ZOv1VcxuBkPcbb6mfDVCFMIeCYG2iWw6T6lm97aTXHoTw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3712.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(366004)(346002)(376002)(4326008)(186003)(44832011)(83380400001)(316002)(956004)(6486002)(8676002)(478600001)(36756003)(8936002)(16576012)(16526019)(26005)(2616005)(5660300002)(31696002)(53546011)(66556008)(66476007)(52116002)(86362001)(2906002)(66946007)(31686004)(32563001)(921003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: jbu2/b8AAKTdXMKWvvSpxHeim6mIOa8OXzlQetimJDNk9+l4PdRidNyrHVZFxaLpGCpzcjMLCTOzZXVDyDa0ULPeNyA2UDECQa79ynnYk0ESIJvjljAw+TKImk2ggLaF6A5A1L1Gkk8y3j3+x09XrkP9fe7rmmFcEJTTTD6/hJyuzfrfhEDhRiqbA2Nk2TmaxPzpcz3DSOYAM49ELIWfwNekvqiU3+WYm7/c8rWMZm8t2OIWvlk4cLna2f/h2Uv/l+b720VCsdM3f+B+XS8BtA1y1/Y1A6qw7pY9L43pRj8wzWuUl5W4IP+R7YL5OLWGkciLENGzZeSjGIQ3PaGzfS5u2okUlSmmgvozAk7Git0nEDHy3onjTwtkiItBY6qsuuYqBrggtUF8gnL68I0XGC4rki9xuVzVSN+pE/DLlWyCzseoHY3VznoUS7G/OnPo28m8Bn19hAC0WtVJijnrA76sybJlWO2n+3NCzVBZHNIEIeBV6nqDl21Dnv91akHT
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b84946-a6e6-4aa7-6e00-08d80d294a9c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2020 10:30:27.0880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X0/4kykZlNhB4rTSPJpkADN3JMi47OCUasD0E0AbfxMzrqnRAYpyCz/eYqLefZFPOKtkXeduxGxNTJfEbXVZ/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2912
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033031_068829_4EADD9A3 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.49 listed in wl.mailspike.net]
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


On 6/10/2020 1:03 PM, Anson Huang wrote:
> Correct i.MX8MP UID fuse offset according to fuse map:
> 
> UID_LOW: 0x420
> UID_HIGH: 0x430
> 
> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver")
> Fixes: 18f662a73862 ("soc: imx: Add i.MX8MP SoC driver support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Iuliana Prodan <iuliana.prodan@nxp.com>

> ---
> Changes since V2:
> 	- add one more fix tag for original patch before file name is changed.
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
