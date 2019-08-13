Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE918C117
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pu5AwUj/dtq92GYsZpx6MtrBifCvwYU0NtfkZNUtdq0=; b=oZ3oY8yrzgeEo7
	p6VwHXZN6mdRtAuo6XypvwVoW01Zck/RpdvBDOAXt5kOfBvAsIg90BCu8Ulaq0fKfHKb9vn0Pjj39
	fpMaSNxhdcxurZrzcVecC1kpZaRz/ZnWzHqhEtSPfgSXbYYTiH+k9U2kjyVOG9GDoermg/Ol1W0KV
	WirtEKAw6lf+a4zIJQ7SY4gmEJKAhHjylDVKUcJQkyJF7pF1hEmYl3cn5M4UTrBEqrVnGc2zQfOYL
	0a1f0GQE5V8ftyRIVmLFmEdfDthY4le9T/X+oxBxw8Gkbp834WR5VpiGx8cxEJJzNRm4DV/9LZONx
	WdG8F5cYtsTA01GV5ZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbvi-0006S3-2B; Tue, 13 Aug 2019 18:53:58 +0000
Received: from mail-eopbgr40052.outbound.protection.outlook.com ([40.107.4.52]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbvX-0006Pv-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsGMhbeTJxUYz9oCljXFeDla5pqGjPAb+CzSD6Pkr6Y=;
 b=BewLlhw6GDLmwibsXYoZkF95070+ahUr0PVKrUlb5O3YBntMCmbmMlsmVpjEy6q2RY6YCCzJSpAcBSE2rvNjCzaOG7DN9OZysBi28k2j8x61lJ48XhrxJQHBy8qlhl8wb838NocMD1ZU9IReddwiWgQQ9l9cFhl+cUczol+Zb48=
Received: from AM6PR08CA0030.eurprd08.prod.outlook.com (2603:10a6:20b:c0::18)
 by HE1PR0801MB1849.eurprd08.prod.outlook.com (2603:10a6:3:89::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Tue, 13 Aug
 2019 18:53:42 +0000
Received: from DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::205) by AM6PR08CA0030.outlook.office365.com
 (2603:10a6:20b:c0::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15 via Frontend
 Transport; Tue, 13 Aug 2019 18:53:42 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT034.mail.protection.outlook.com (10.152.20.87) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 18:53:41 +0000
Received: ("Tessian outbound a1fd2c3cfdb0:v26");
 Tue, 13 Aug 2019 18:53:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fe705f9fcea678e0
X-CR-MTA-TID: 64aa7808
Received: from cdba251b3216.2 (cr-mta-lb-1.cr-mta-net [104.47.8.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6FCA4BB6-E218-4C4E-B4B2-C9B7889D678B.1; 
 Tue, 13 Aug 2019 18:53:35 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2055.outbound.protection.outlook.com [104.47.8.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cdba251b3216.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 18:53:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LugSecKG4AZ4sRD32bGUtnjnDh/vbLTOeqCE5kDtrF+/BnjNImn9okthjx/K6DniHqyhbtzP8UHyFXBZ5mB3zBgpjtngOgBRUJ3cFjGFLMgPRdcBVCLj0+QurW9FtxfbhJHedhHkNtiI4pEzO7THhjTKbLVr1FhdBWWckQ5PyBcnkXd8/3plsG6ElzCQEseGGYLWK6SwXz3WE7kj06YuC0kTxbctF2mWdZrw0vgPrsXvVVzzQ1CtxBM0Nt1yvjEgy3KB9Ql0MvAI/KZ+NdacyZrmmG8vKVn5DVM6RRxbsAQXP3khV4jbe9qdoEaEuGdW+SBLQzmzmMQFmPFntxsUMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsGMhbeTJxUYz9oCljXFeDla5pqGjPAb+CzSD6Pkr6Y=;
 b=IYq5+pAg+M0Ew2kJRtmmKZF9TU+u2ixm3VWLRTf52sFeKQl8tKzfwvkFYmdP/0DYWYkwc+MNpwsmIuGLwwAbAPTQlVANqS9EaKJCemT96b2rR0nBxWVM+JwKMxrvy7oc3SKP/J6NBr+p86y73Gtw0Z3z0EybUMYdV4ZeF2QZuDuhgit++Wk8vIgUUUvX2DFNF80+oePk/vPLE4RpJguPJxPb0RWWzZqQhpwTUXlndjMm52V6JDCqxZs73aiqoWhFWwXlY717tj46oaA14Pwfh2IsFQukdUkCNPxkGEohoh97cOhdmadt5/gfUGULjeMcVkBhKVqE8SGgrG9iFgo78A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsGMhbeTJxUYz9oCljXFeDla5pqGjPAb+CzSD6Pkr6Y=;
 b=BewLlhw6GDLmwibsXYoZkF95070+ahUr0PVKrUlb5O3YBntMCmbmMlsmVpjEy6q2RY6YCCzJSpAcBSE2rvNjCzaOG7DN9OZysBi28k2j8x61lJ48XhrxJQHBy8qlhl8wb838NocMD1ZU9IReddwiWgQQ9l9cFhl+cUczol+Zb48=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5004.eurprd08.prod.outlook.com (10.255.19.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 18:53:33 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:53:33 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Thread-Topic: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Thread-Index: AQHVUfjRHMKvcPQom0acDK7i/DVrpqb5bNuA
Date: Tue, 13 Aug 2019 18:53:33 +0000
Message-ID: <20190813185331.GB19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
In-Reply-To: <20190813170149.26037-2-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0209.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::29) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 79fc2e98-c063-47d7-60a0-08d7201f8f05
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5004; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5004:|HE1PR0801MB1849:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0801MB1849D0E13831E777090693F081D20@HE1PR0801MB1849.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(189003)(199004)(26005)(66446008)(66556008)(5660300002)(2906002)(6512007)(186003)(256004)(8936002)(446003)(66946007)(44832011)(486006)(11346002)(386003)(71190400001)(6506007)(52116002)(71200400001)(476003)(1076003)(6116002)(3846002)(76176011)(102836004)(64756008)(14454004)(66476007)(86362001)(6916009)(81156014)(81166006)(4326008)(33656002)(229853002)(6436002)(478600001)(8676002)(6486002)(99286004)(305945005)(7736002)(53936002)(25786009)(66066001)(58126008)(316002)(54906003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5004;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 1sjFp2UtlVdOw45JPZWBIaB80D7gd698ldL4u8WWZAjpcj8NLkUcaAifkJYkINqFt4GuZsC/Z7pEocyCORh6gUo7xMY7R55H2IInRCDxTQIENX5WZO8ocKtsxGtO/oe9hR94Y31AQNMsy1ETafzDoECodlFz4kKxZfqalYWj6cw+W3o4pk4o0aEcZ0i9ozThhEv8+u/cV+ZtujLzlppfJhT9n2bR/QtQWy9WDLcnR4FsOzFhywzqeTamfMrU8E97Fr+Wdd+y+kY+E/O/Hwvn7TstdvpjNr1YXWr0ItAgYVrt2ujmI0rnz3twSHLlnTn6zp0o+UyEObAgDrbnFGT/uhOnwd7RJ+LZg7WQQElhKy+Tp2WN3JqROfjSpE+6XXx72KMM6lmUy3ukFNTuCeo7IS4CZSiIPfUClHoEphXTmGs=
Content-ID: <EAEB4F0979D0534ABAC171DA670A3A72@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5004
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(2980300002)(189003)(199004)(11346002)(8936002)(26826003)(229853002)(14454004)(47776003)(7736002)(102836004)(54906003)(5660300002)(316002)(3846002)(58126008)(81156014)(25786009)(476003)(446003)(46406003)(8746002)(97756001)(6862004)(86362001)(26005)(50466002)(6512007)(66066001)(6246003)(2906002)(22756006)(81166006)(478600001)(76130400001)(63350400001)(386003)(186003)(70586007)(70206006)(63370400001)(99286004)(6506007)(8676002)(356004)(76176011)(1076003)(6486002)(6116002)(126002)(33656002)(486006)(305945005)(23726003)(336012)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1849;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 346b5d7d-ccb9-40cb-dedb-08d7201f8a8a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0801MB1849; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: PTSXpXwpUXWg4zMKATmaSMnWfSOR3gucfsjwvI92rAsfDJzChGfk/eDZDAJCecDiGixAn5MAHQFs0oge1yqZ1ZHsKAegtymxQSlWRjDM9I3D+SLfBoSDVmFztnUbgMiDRGySRWggsLRVt5tfX8Xcw02J4dfl93Vtg8sAUGt6EVT/AicJoBqWmePi2CuSE09i6+c5l/QHc31qtgfLRfTs8ohwF68HxCF5a3wWA37Xv6hrBTjHz+ejj42FDvd5qEBk7KFw4aX2HSyqxwVyb+87JUh9tikQGvCABn7H3PZsDMt95A1SpEiLXrN60/NcOkjNKxNHKShh4Yv/iVZ/mGbTQAVvI5yv1VFuCcNxrMJmbnEoAD4uBnYNdUC4h0YWUANGQaxXmenKO6tvPTrw40YKhZOOKjVeCEmiB4Kq1qbBLFo=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:53:41.1243 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 79fc2e98-c063-47d7-60a0-08d7201f8f05
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1849
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115347_498436_8C917CDF 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.52 listed in list.dnswl.org]
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

On Tue, Aug 13, 2019 at 06:01:42PM +0100, Will Deacon wrote:
> virt_addr_valid() is intended to test whether or not the passed address
> is a valid linear map address. Unfortunately, it relies on
> _virt_addr_is_linear() which is broken because it assumes the linear
> map is at the top of the address space, which it no longer is.
> 
> Reimplement virt_addr_valid() using __is_lm_address() and remove
> _virt_addr_is_linear() entirely. At the same time, ensure we evaluate
> the macro parameter only once and move it within the __ASSEMBLY__ block.
> 
> Reported-by: Qian Cai <cai@lca.pw>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index afaf512c0e1b..442ab861cab8 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
>  /*
>   * The linear kernel range starts in the middle of the virtual adddress
>   * space. Testing the top bit for the start of the region is a
> - * sufficient check.
> + * sufficient check and avoids having to worry about the tag.
>   */
> -#define __is_lm_address(addr)	(!((addr) & BIT(vabits_actual - 1)))
> +#define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))
>  
>  #define __lm_to_phys(addr)	(((addr) + physvirt_offset))
>  #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
> @@ -326,13 +326,13 @@ static inline void *phys_to_virt(phys_addr_t x)
>  
>  #define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
>  #endif
> -#endif
>  
> -#define _virt_addr_is_linear(kaddr)	\
> -	(__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
> +#define virt_addr_valid(addr)	({					\
> +	__typeof__(addr) __addr = addr;					\
> +	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
> +})
>  
> -#define virt_addr_valid(kaddr)		\
> -	(_virt_addr_is_linear(kaddr) && pfn_valid(virt_to_pfn(kaddr)))
> +#endif
>  
>  /*
>   * Given that the GIC architecture permits ITS implementations that can only be
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
