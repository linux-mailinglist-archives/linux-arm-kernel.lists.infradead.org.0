Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14C78C11A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPk926k0aZixCPaFrdXDNwfoIAMH0YRU6v4XFYfKD6I=; b=ZUKt75+qsMJ09z
	OxRQmrzHjD5uPwxIInG3tczuER+9/bwqitBOyd9lhufudmPDY7hPO8jsJnjQQjJFdKrwARqqAWQEO
	Zdwha4B1nNFtZTqNofYEWXxVcbpujBvh0Ca5Rb1xMr3AUsGaNrDb4Tih2Lcs0t8Klr/zW3gyBGrgC
	oNqNxM7Eob5C3yTCGjanKqAdkHeqNrpcsYaKu/rGPkUO1rDc7E/FSSo5rOj5HsdnwGYCaKw69Ator
	N6zRJ5WFfL8uvhi9UcUgpUhbboZUgQ7dfYzGsYP8KTdCagHYpbc5oVrzAN0HA9fxdpTUvOqCUxL7f
	P9KTusMS5hwJ+5/b7RQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbwh-00070D-BO; Tue, 13 Aug 2019 18:54:59 +0000
Received: from mail-eopbgr140079.outbound.protection.outlook.com
 ([40.107.14.79] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbwV-0006zb-71
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ZYGnYyw4xe7d8TyXQTMZR7O9ppm7j1GGOqtxY6fsgQ=;
 b=fk8mllXMiU3KZu9GHXMdRA6XvGgbJGrenf7u/Ohi5XhZwkXYHqFN6lRSDAeIesW57oYlVRWYPy9mLH8XLSmERBNVFbVzU4RZvirfSmsQ68iAYK6qBzJJr/ghtloLRHnIwipqbN/tyqOt6STdfCswCQfEGl3QiZTC6OoAqcJGOnc=
Received: from VI1PR08CA0156.eurprd08.prod.outlook.com (2603:10a6:800:d5::34)
 by AM5PR0802MB2596.eurprd08.prod.outlook.com (2603:10a6:203:98::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Tue, 13 Aug
 2019 18:54:43 +0000
Received: from AM5EUR03FT015.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by VI1PR08CA0156.outlook.office365.com
 (2603:10a6:800:d5::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.18 via Frontend
 Transport; Tue, 13 Aug 2019 18:54:42 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT015.mail.protection.outlook.com (10.152.16.132) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 18:54:41 +0000
Received: ("Tessian outbound cc8a947d4660:v26");
 Tue, 13 Aug 2019 18:54:38 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 36a124bc6cc4f071
X-CR-MTA-TID: 64aa7808
Received: from 399c13925f87.2 (cr-mta-lb-1.cr-mta-net [104.47.8.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 5E7CCBC0-BA67-4E39-B4AC-E3143207A7C3.1; 
 Tue, 13 Aug 2019 18:54:33 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2056.outbound.protection.outlook.com [104.47.8.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 399c13925f87.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 18:54:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kE3Av/tD8jXa3XrFKd75YS3bZSncNu2KPvOWvpkzLEBb1ENtWab+K9R34eDFjJ3jJsNgazr65GfKnJ/B5kix3E/GM8aRw8E7zMCwYHfyszyKzqUcawK1SKwoWWeOx8fLISV/HOHbHUi8jNqsn6NK2tWJKQ7WR3zTNJuvJB0J7JuMLd7u8gVn7BKu57fQ7plK3nDncSFWzijHigB72jz/RJEaQPezzIJr3RBnutNava3J1rJSZxtOWB/LsoeoSVNgTbOT4MKxRjLMGfI70fC7RvJZ2p3YLKGacfH2s0mUdlZH2vhU0YfurMJV166c32pIoiQxchp81N0q29kvoyTKGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ZYGnYyw4xe7d8TyXQTMZR7O9ppm7j1GGOqtxY6fsgQ=;
 b=NlBn7dkOyM8I5MS3pkQI0PZgknFRsJMgm4iLgBQrXPqB+Qopp4xeb60EEFbsIZFGdMM9O2nouXPE+0QCJwsCYSFeeMZeF3ZgIwetcU3pwMLeJxOOvMInjyOfqixihqSZhegVWYKa5MYw8A16l+Ja8icEI5PsAUlpeIk8A2mHAduRD0I7YfcPq6GlmbMxJhTfSowPZSKFb6fg5osaFjYN702hQKYjVcZHvh+pqq5nFJgnH/k3KQkQQO1roD1QOBu9V9DZ1tOfIBpZ+kdYiMXm4JcnKbNcEQvBTxJIrZ2OPazSyVihHKdWtNShJBQOx2RvWTD59cXRIJaZr5w+VQFYOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ZYGnYyw4xe7d8TyXQTMZR7O9ppm7j1GGOqtxY6fsgQ=;
 b=fk8mllXMiU3KZu9GHXMdRA6XvGgbJGrenf7u/Ohi5XhZwkXYHqFN6lRSDAeIesW57oYlVRWYPy9mLH8XLSmERBNVFbVzU4RZvirfSmsQ68iAYK6qBzJJr/ghtloLRHnIwipqbN/tyqOt6STdfCswCQfEGl3QiZTC6OoAqcJGOnc=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5004.eurprd08.prod.outlook.com (10.255.19.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 18:54:31 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:54:31 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/8] arm64: memory: Rewrite default
 page_to_virt()/virt_to_page()
Thread-Topic: [PATCH 3/8] arm64: memory: Rewrite default
 page_to_virt()/virt_to_page()
Thread-Index: AQHVUfjSUuChJYRcqEmWyVydDWgzOKb5bSCA
Date: Tue, 13 Aug 2019 18:54:31 +0000
Message-ID: <20190813185429.GD19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-4-will@kernel.org>
In-Reply-To: <20190813170149.26037-4-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0046.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::34) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 50c046ef-b36d-4daa-903a-08d7201fb30a
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5004; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5004:|AM5PR0802MB2596:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0802MB25962925A58215F72A2F3D3B81D20@AM5PR0802MB2596.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(189003)(199004)(26005)(66446008)(66556008)(5660300002)(2906002)(6512007)(186003)(256004)(8936002)(446003)(66946007)(44832011)(486006)(11346002)(386003)(71190400001)(6506007)(52116002)(71200400001)(476003)(1076003)(6116002)(3846002)(76176011)(102836004)(64756008)(14454004)(66476007)(86362001)(6916009)(81156014)(81166006)(4326008)(33656002)(229853002)(6436002)(478600001)(8676002)(6486002)(99286004)(305945005)(7736002)(53936002)(25786009)(66066001)(58126008)(316002)(54906003)(6246003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5004;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: YGU60pheT72XJ/rZldWicCzlnV5vHZ+vHuIxsColyd9elL8M1mvRWF0lpIH0zZtoIZ6khyhwOMPdowjHFEdyHH11YpxhaUKJdoyHH5XHy6Ych8HXhZb7no4J1/qpFcECfApa6X7gd++AtX6jrbgjt6zUf8zATQsoFEPIMQMBNxzrNTIPTBFHNcy+g8ayJzq6vBujOu2rAcu0F0WtSHQhBBWSheloJidRKIIcQ01HAlJjaRP+UcDOobHlyFAUMb8+77eyscGc+LxanmB1byvNHdYaasva+0xcKQIsChyY6VX/35eSvX5ynvOTEpt5DmPqy5lQl05eI0UiecMfiVHSU4VC4Ife1ZlXaW4i98a4sU9cGeYeoms8I9krTFhq+Ih7V5TVB7KJnOdKm32gWN67mUPquGscJNVOZl024xhJGFo=
Content-ID: <C9504F7BF531124AAA424519A352A5CB@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5004
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT015.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(396003)(39860400002)(376002)(136003)(346002)(2980300002)(189003)(199004)(4326008)(316002)(86362001)(478600001)(70206006)(8936002)(76130400001)(8746002)(26826003)(3846002)(6862004)(33656002)(58126008)(336012)(70586007)(6116002)(25786009)(356004)(66066001)(14454004)(99286004)(63350400001)(50466002)(23726003)(76176011)(486006)(36906005)(22756006)(11346002)(63370400001)(8676002)(446003)(54906003)(476003)(6246003)(97756001)(126002)(81166006)(81156014)(46406003)(47776003)(229853002)(1076003)(386003)(2906002)(305945005)(5660300002)(102836004)(6512007)(6486002)(186003)(26005)(6506007)(7736002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0802MB2596;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: bce8a062-e162-479e-d66b-08d7201fad05
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM5PR0802MB2596; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: Ro9QxW5bD0s0LfcR55eTrf9U/hW+2TuSkNYBMiauD/hT3NgMmf7y/jJAOyZ9j+PPTxUbGwAn+6HnVJ/+hbvMqUw/jL9JF9oL2ZhauogCUkSEqBX73CwLnsgYkWjrxfT4loVAUvMvbh1a2MoUyVgIL1PoKD43202jwsl5mvHGZuQ4TTvm9n+vfwo93i1OCx7P17OeHrDPwKvV69D8DRjqeXf59vZsVEmjQSzkOr6iwAm91AmSm+qbJ6YrPb9DoKBRP9Wp1eJWpiAAY/uI2GWyx9IomhQuMUl6DkXuCDHDxAtLcoP5/iIwBkbJf2UAfj6I6PyEcAbBR0dw7y6q4HExGyb50yWSg4s8Bvaf7zIYUSl5uXIsvRzxMtB5JNFhUh+9CdL5LPZo+qtqNyKuvx15U6PNz6fgQbhDVKjoPSkMWgU=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:54:41.5182 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 50c046ef-b36d-4daa-903a-08d7201fb30a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0802MB2596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115447_258685_BA39D5C0 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Andrey
 Konovalov <andreyknvl@google.com>, Qian Cai <cai@lca.pw>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 06:01:44PM +0100, Will Deacon wrote:
> The default implementations of page_to_virt() and virt_to_page() are
> fairly confusing to read and the former evaluates its 'page' parameter
> twice in the macro
> 
> Rewrite them so that the computation is expressed as 'base + index' in
> both cases and the parameter is always evaluated exactly once.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 47b4dc73b8bf..77074b3a1025 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -313,19 +313,18 @@ static inline void *phys_to_virt(phys_addr_t x)
>  #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
>  #define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
>  #else
> -#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) - PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
> -#define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
> -
> -#define page_to_virt(page)	({					\
> -	unsigned long __addr =						\
> -		((__page_to_voff(page)) + PAGE_OFFSET);			\
> -	const void *__addr_tag =					\
> -		__tag_set((void *)__addr, page_kasan_tag(page));	\
> -	((void *)__addr_tag);						\
> +#define page_to_virt(x)	({						\
> +	__typeof__(x) __page = x;					\
> +	u64 __idx = ((u64)__page - VMEMMAP_START) / sizeof(struct page);\
> +	u64 __addr = PAGE_OFFSET + (__idx * PAGE_SIZE);			\
> +	(void *)__tag_set((const void *)__addr, page_kasan_tag(__page));\
>  })
>  
> -#define virt_to_page(vaddr)	\
> -	((struct page *)((__virt_to_pgoff(__tag_reset(vaddr))) + VMEMMAP_START))
> +#define virt_to_page(x)	({						\
> +	u64 __idx = (__tag_reset((u64)x) - PAGE_OFFSET) / PAGE_SIZE;	\
> +	u64 __addr = VMEMMAP_START + (__idx * sizeof(struct page));	\
> +	(struct page *)__addr;						\
> +})
>  #endif
>  
>  #define virt_addr_valid(addr)	({					\
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
