Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D538C119
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVRUSX7qgQEZw5REq2YXd5QTGk/U+jnLf+hjvbkIpBc=; b=h4WwwSnZ0T7yEM
	PDU/gM7finggl1eqNMHVxY2T1FcxK5NvrZGhAUJ3AzYj22gNKV7Q81D2MNZ0M46is7P8TNB0z+RMH
	suRXLfuKanSG2+u3cpUJRf7BsqP178LINYYJt2qUJnoGmbVM9F20BMq41PrEwo9+PSWEI+zyLo8LN
	ObkIS6BIRy98vzzJMtBENr3E59phvuif5wIXx40b5yaxV+3Lq2613wq/OKL0OTc2Jlyt2YZjjeEj4
	+aINko4TxfZ8bRJzGaSwmfX4DufmRp2YEX/hBbdKHAAFc9oVf2Ze4PvnCWYyyh7Y1ryb9Kw7zCQmQ
	TVQQxH+7lt3ud2j5IJCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbwF-0006lf-0j; Tue, 13 Aug 2019 18:54:31 +0000
Received: from mail-he1eur04on062e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::62e]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbw4-0006lG-VY
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hc0bsgzJTxWqwPtN4RwG88yz7/wkgmW2YBoEc4XYrQc=;
 b=iva61w4qDEMfyB9EeAVr40syvdpRSePbdSQHMUvsnefSpr1B1b+/R5iMmhusL1YlYpPcl3rg+4lgfcz3Ki+2/GoMWRattYUOhIROaEYyyLPBzb09ilyv00hwVlST88ux/x7HaNqd1loyfZERu5DGQl7Wvi1P73LpW6op992hpMM=
Received: from VE1PR08CA0022.eurprd08.prod.outlook.com (2603:10a6:803:104::35)
 by AM5PR0802MB2595.eurprd08.prod.outlook.com (2603:10a6:203:a2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Tue, 13 Aug
 2019 18:54:16 +0000
Received: from VE1EUR03FT035.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by VE1PR08CA0022.outlook.office365.com
 (2603:10a6:803:104::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Tue, 13 Aug 2019 18:54:16 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT035.mail.protection.outlook.com (10.152.18.110) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Tue, 13 Aug 2019 18:54:14 +0000
Received: ("Tessian outbound cc8a947d4660:v26");
 Tue, 13 Aug 2019 18:54:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3c1bcc2fa686b271
X-CR-MTA-TID: 64aa7808
Received: from a135d30059ac.2 (cr-mta-lb-1.cr-mta-net [104.47.8.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9A58B98F-E886-4E74-B34A-C6891DBED366.1; 
 Tue, 13 Aug 2019 18:54:07 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2054.outbound.protection.outlook.com [104.47.8.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a135d30059ac.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 18:54:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NmWFvHDS0dSD01VYErGfRoOWVbE1aLh4SjJMqbE8jxYI+RkTejuyRUrNmMBPk07PSE2knUgR1liITpX1uxJZIaiYh9i6VppWzSW5rFAFAN0cBxI3Re1st5j0koqi9ZLeJuvEvEF/tOIMxCo/mAqOz7IEMaLAdFSgqLU3t+x/IXGvPXxKCwmr31Mnxdt7gRT3+IqiYCENxlNWNeQZIKg4VZB68r9+mdn9NQkz6byoksN10SS7jWsjrGyM8TWYKEdasaEXRVSUEQMHDK3iLkAyN4wbaem7vEPejXYCmjjMHrHE9QrAzAVuXaKgO232XW4gMQnrYszVpoBXwmE/w7iVRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hc0bsgzJTxWqwPtN4RwG88yz7/wkgmW2YBoEc4XYrQc=;
 b=Gi5GiqvWIkHmoi/tzK0/dOPCIgaxdTCusAXAP3tA845kafLt/csjlC8HJgQYtcho6MI82vIjCZBIhVZcMc+ZZDDllMCyVMVTr3KmIIju4DNqTu/qfsX3jKQMirBODeHfYGRZWCKpTBYcr6VIEJZf3lmAbP38e73t5Y9Cb+4S09ugjiib8lLp6eWEFWRW8vLVImxgNm4Qj19CMSvc9utP+t914QsNxaTulorBHD4tZ2t7gPMn1lt9MLa1VENwjfbcE+57aTK2DMRckcIt1CSYN/iuawqyZ0maUTfJcPyyrm0KVNV5ggBS7Z7rtDjUVofRkH29+BReveO5Q0RSlsaasg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hc0bsgzJTxWqwPtN4RwG88yz7/wkgmW2YBoEc4XYrQc=;
 b=iva61w4qDEMfyB9EeAVr40syvdpRSePbdSQHMUvsnefSpr1B1b+/R5iMmhusL1YlYpPcl3rg+4lgfcz3Ki+2/GoMWRattYUOhIROaEYyyLPBzb09ilyv00hwVlST88ux/x7HaNqd1loyfZERu5DGQl7Wvi1P73LpW6op992hpMM=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5004.eurprd08.prod.outlook.com (10.255.19.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 18:54:06 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:54:06 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/8] arm64: memory: Ensure address tag is masked in
 conversion macros
Thread-Topic: [PATCH 2/8] arm64: memory: Ensure address tag is masked in
 conversion macros
Thread-Index: AQHVUfjSNYFmiI+lwU+IlBlArFjHlab5bQIA
Date: Tue, 13 Aug 2019 18:54:06 +0000
Message-ID: <20190813185404.GC19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-3-will@kernel.org>
In-Reply-To: <20190813170149.26037-3-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0104.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::20) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 33d4e05b-6e3e-4e2e-407c-08d7201fa31d
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5004; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5004:|AM5PR0802MB2595:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0802MB2595D0368C00E8AF62BF5D7C81D20@AM5PR0802MB2595.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6108;OLM:6108;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(189003)(199004)(26005)(66446008)(66556008)(5660300002)(2906002)(6512007)(186003)(256004)(8936002)(446003)(66946007)(44832011)(486006)(11346002)(14444005)(386003)(71190400001)(6506007)(52116002)(71200400001)(476003)(1076003)(6116002)(3846002)(76176011)(102836004)(64756008)(14454004)(66476007)(86362001)(6916009)(81156014)(81166006)(4326008)(33656002)(229853002)(6436002)(478600001)(8676002)(6486002)(99286004)(305945005)(7736002)(53936002)(25786009)(66066001)(58126008)(316002)(54906003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5004;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: IicGXJq2gcZN6PStGDYZeBNkU3YvQmnwfwF8exkNBMqAVoRtN6OetvfwnotZ0nxjx11Cgmfmuhsf+hFHYTfSlM71XMrscBkR+Fv6VbyY4/RqEWz3DsYKKyW8h6/hi4Td8nAw9cyQt0RFpfFvmiJo9Q+Aq92NRfoNBCIpNgGQe9lm46WW/jGZIpSz9aDcKBrtW+bQDQRPrx4oemyIff+8K87Icl8Gle3TETIkJgfVkZcI2vWbff/xg5rLq6ZC4pbLEJw+BGqXUOSqLAo92NbjYsvPeItqmjq5Ph8xID7Ltq0DDVATX6uOxEG3CH0DG3YNTnAbJvwNR+L58KTE8G3Vvgv4Jl+hpzdpPyvVf7xNF55wrH5tov/OwJer9zx9h7jv249AlrkTPafyMWWHInTaa7+MZmiv+zZbsoMSqYo6t0w=
Content-ID: <06E869B18585794E9C77C0ECDDEAE2B5@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5004
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT035.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(396003)(2980300002)(189003)(199004)(356004)(76130400001)(23726003)(446003)(478600001)(99286004)(126002)(54906003)(486006)(63370400001)(336012)(476003)(26826003)(316002)(25786009)(4326008)(36906005)(8746002)(63350400001)(6512007)(14444005)(6486002)(58126008)(22756006)(11346002)(8936002)(47776003)(229853002)(3846002)(66066001)(6116002)(2906002)(33656002)(1076003)(305945005)(186003)(6862004)(26005)(86362001)(46406003)(76176011)(102836004)(6506007)(81156014)(6246003)(386003)(7736002)(81166006)(5660300002)(97756001)(8676002)(14454004)(70586007)(70206006)(50466002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0802MB2595;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6efe0b96-1b11-4dbb-8c9e-08d7201f9e1f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM5PR0802MB2595; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: M06FACw2E5Av79DppG3nLRrVGICSbOIp1IjBjQeMC/YCWend0tYLsrzeT45IZT0KIj3VU4hI7Oe9fPZbSSg8cjjkCoPekb5ONkchBHdpmk2LnS7AR0wS2MlT3dXStl3RfcdpNh+P6gnxArcKaPtfwaR2P+RDtDKFWxkRq5LvfE3EVMUyi8oECQTrkD5W3DdG0qjMRUc+vVTFqYp9rSDPXWPpHbC821Xrw6wS2VO6AAEf0LK+Urx6AWCN49hkPUK+QxaqTKGoBgGyLjYpKxSP0FL/akJXN3SFbmO5HTEq/cRbRLZ2lDs26UnO/UaOpEX4F5KBecS5t4mqEvOoGFhp+2qLwPHgZOC1GgZfgpWF4MI5sbF9RH9s5/LhVzRWk7XDM9JFhyqJ0Afbm9Y9hcDfrYc6d+rbZ9GvNIFuMtedkGY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:54:14.7291 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 33d4e05b-6e3e-4e2e-407c-08d7201fa31d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0802MB2595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115421_013946_00702FCC 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:62e listed in]
 [list.dnswl.org]
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

On Tue, Aug 13, 2019 at 06:01:43PM +0100, Will Deacon wrote:
> When converting a linear virtual address to a physical address, pfn or
> struct page *, we must make sure that the tag bits are masked before the
> calculation otherwise we end up with corrupt pointers when running with
> CONFIG_KASAN_SW_TAGS=y:
> 
>   | Unable to handle kernel paging request at virtual address 0037fe0007580d08
>   | [0037fe0007580d08] address between user and kernel address ranges
> 
> Mask out the tag in __virt_to_phys_nodebug() and virt_to_page().
> 
> Reported-by: Qian Cai <cai@lca.pw>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: 9cb1c5ddd2c4 ("arm64: mm: Remove bit-masking optimisations for PAGE_OFFSET and VMEMMAP_START")
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 442ab861cab8..47b4dc73b8bf 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -252,7 +252,7 @@ static inline const void *__tag_set(const void *addr, u8 tag)
>  #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
>  
>  #define __virt_to_phys_nodebug(x) ({					\
> -	phys_addr_t __x = (phys_addr_t)(x);				\
> +	phys_addr_t __x = (phys_addr_t)(__tag_reset(x));		\
>  	__is_lm_address(__x) ? __lm_to_phys(__x) :			\
>  			       __kimg_to_phys(__x);			\
>  })
> @@ -324,7 +324,8 @@ static inline void *phys_to_virt(phys_addr_t x)
>  	((void *)__addr_tag);						\
>  })
>  
> -#define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
> +#define virt_to_page(vaddr)	\
> +	((struct page *)((__virt_to_pgoff(__tag_reset(vaddr))) + VMEMMAP_START))
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
