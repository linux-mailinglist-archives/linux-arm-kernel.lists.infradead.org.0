Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CE48C121
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnigvDehYagDDT28Y8xUeM8G0h7SL6Ty52jP1MvQDok=; b=GF1WD0iToyUd/3
	HDR91YXrWaDo0NU5QydsQo9KawILnUdiRCgFZUvgXXhzhJ8I81d+K4i4J132WqiS8vp6PwP87HJAv
	CDS0rD/M6WMs3YSMviVkidrphw5wuSTgjipevxSwXS0QEnlQMlUiE/kQKRjx6ZHJyBFOhs17Z4/XU
	dk8okWq/knvPZOWVZPx2zg7EJAlVUFaPT5LduOz+4wFIzddqusUUIOGQZlRRdHGD+IbsSGuMGRMm/
	XAZpDCu1/Cqm9ZeA1U6OOmf9BPtlE85adrt3b3vXX1fveMftM7kkLe6nG/0BMaVWbaNmZXHEGEKd3
	RabzKjQ6L3fniGP9u1Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbxE-0008QV-Mq; Tue, 13 Aug 2019 18:55:32 +0000
Received: from mail-eopbgr00053.outbound.protection.outlook.com ([40.107.0.53]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbx2-0008Ps-MV
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:55:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AOXqZ/DGkYOwGGDnXf29sgCXIhx0lezPZpMB8XA1huw=;
 b=sv3vRQSTBpgeGc5AsRLHxoBO1pr+BfJpEkz/YK7vqg1kQNapxzYCyTccpDZ2NIM4iMA1xOfKq9lRMTLDUxIoQk1B07KeKkrhKckUVMFQansfWIL6i/iqlt8U5mdir2cez+mOOW42n7ylIfPNgQQIXTACxLNqRBIgKZtZBzBphLI=
Received: from DB6PR0802CA0047.eurprd08.prod.outlook.com (2603:10a6:4:a3::33)
 by DB8PR08MB4954.eurprd08.prod.outlook.com (2603:10a6:10:bf::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Tue, 13 Aug
 2019 18:55:16 +0000
Received: from DB5EUR03FT038.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by DB6PR0802CA0047.outlook.office365.com
 (2603:10a6:4:a3::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18 via Frontend
 Transport; Tue, 13 Aug 2019 18:55:16 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT038.mail.protection.outlook.com (10.152.21.84) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Tue, 13 Aug 2019 18:55:15 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Tue, 13 Aug 2019 18:55:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b9dfd366f5aab483
X-CR-MTA-TID: 64aa7808
Received: from 493dd12d1383.2 (cr-mta-lb-1.cr-mta-net [104.47.8.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 EBBBED54-69F7-484E-8F6C-D9721D809C26.1; 
 Tue, 13 Aug 2019 18:55:07 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2056.outbound.protection.outlook.com [104.47.8.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 493dd12d1383.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 18:55:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XqBuv+y5RqUf2csAfInepuIDBjx88pLIOIMna22NGj53vkY9xfqO1DrEMZeMCb8lr5MD6rlie2nJnPtXefQfbcMTtDELRVlvl4ed2HprksUHO/fpUw9CavkNaellWasBx7n3KGFwXBb1HsR5pXmTA2PW8AO8//n6Vdq0/NGr4K5Y1wduwaYtsOXwk75Sp0b+s4sgIJuRwBipRZJ2H0WaIo9V5LoxT3kOEWaS+Q0D45co1X7OVZXoVlNoXmKotGI+2f4O0No5YhOzuMaeT37YLHIh7BkmhCc0uOKEn4RLkh3ZmTjWfbG02Kunkj4HMZ72tYDRIb5slFYJEOFdx5G9NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AOXqZ/DGkYOwGGDnXf29sgCXIhx0lezPZpMB8XA1huw=;
 b=i+GwoEEkmxwg+BVmyc1x4KRCN0KiqgEbMhYT8karfdtQmcnkd6rJtKfNjVwhVh+DxnIERe6PUXHAwCUPsiSWV1XLoXSHXALbnGcynOTUsaOdktjrLTRQFz43ZvxGtyUQz4xtQL9AStKU+0+71KXGT+8Ov7SNY+cJo7mnT4P43NYTXSrBYAGBLE+QX+NvDG10G/NshNM9zWtHBsyiIJ/W5ihMQJa+w52pA/09l/t9DCWSnqvY31w0kaPLvQsr9RWyfv8KSCiKlSiFW3VWMDoAheOGNQXcMdafAXZXdPqFXePIkxBkCwU9BNaLrP5psgUJOwIdp9dvasSHTq/k3WTilQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AOXqZ/DGkYOwGGDnXf29sgCXIhx0lezPZpMB8XA1huw=;
 b=sv3vRQSTBpgeGc5AsRLHxoBO1pr+BfJpEkz/YK7vqg1kQNapxzYCyTccpDZ2NIM4iMA1xOfKq9lRMTLDUxIoQk1B07KeKkrhKckUVMFQansfWIL6i/iqlt8U5mdir2cez+mOOW42n7ylIfPNgQQIXTACxLNqRBIgKZtZBzBphLI=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5004.eurprd08.prod.outlook.com (10.255.19.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 18:55:06 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:55:06 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 4/8] arm64: memory: Simplify virt_to_page() implementation
Thread-Topic: [PATCH 4/8] arm64: memory: Simplify virt_to_page() implementation
Thread-Index: AQHVUfjTnDZIb58T1UWZPu6tEBpwNab5bUoA
Date: Tue, 13 Aug 2019 18:55:06 +0000
Message-ID: <20190813185504.GE19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-5-will@kernel.org>
In-Reply-To: <20190813170149.26037-5-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0194.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::14) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: d007ce7a-c743-4465-e948-08d7201fc739
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5004; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5004:|DB8PR08MB4954:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB495464674A9E49E369E2127281D20@DB8PR08MB4954.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(189003)(199004)(26005)(66446008)(66556008)(5660300002)(2906002)(6512007)(186003)(256004)(4744005)(8936002)(446003)(66946007)(44832011)(486006)(11346002)(14444005)(386003)(71190400001)(6506007)(52116002)(71200400001)(476003)(1076003)(6116002)(3846002)(76176011)(102836004)(64756008)(14454004)(66476007)(86362001)(6916009)(81156014)(81166006)(4326008)(33656002)(229853002)(6436002)(478600001)(8676002)(6486002)(99286004)(305945005)(7736002)(53936002)(25786009)(66066001)(58126008)(316002)(54906003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5004;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: saqHfOs3Uamd9JUwsJFPJBQa2ezQO9uk8Kn5dkeIN8nyal2RjquK0HX873VV5ixBNKdAGhCKbzR03RGURP8XFFsGcaIFFWyl6ZI1uu85agX2AyxSUE/dQRlTAN9KlKW4WGnPurR23ZoDRz434d2R3Uv+nz3UndXz+CCinOGmCaBJCTrblkJL3I6bncdM2jU7ahdf2TzcJwOGn0ss8OHfXchPlGVp9ru85SfEesem6LkYLLWzTyoZ02lHqh9h2iH8SohVbX0/NbUJqWQgdz57rRdQdc9bYyceOR62rgnhjyxTSPKxDdptc2dENnsWQo+t/xPyiOFucrKblaqQ4qKHefrC9X86BRv8pjYZnHoOG+L86viM+DgXmDc/PVhhveIQloJ4FaNMP5BSNXCho/6k36flhzGt70LLMHnEL4/SIGo=
Content-ID: <DC0F04BB6CB4024C8C804FF32245CBC8@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5004
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(136003)(2980300002)(199004)(189003)(6486002)(26826003)(229853002)(63350400001)(446003)(4744005)(11346002)(63370400001)(486006)(58126008)(5660300002)(476003)(336012)(26005)(316002)(47776003)(356004)(66066001)(1076003)(126002)(22756006)(305945005)(81156014)(8676002)(76176011)(70206006)(70586007)(386003)(102836004)(186003)(8746002)(97756001)(54906003)(478600001)(8936002)(25786009)(33656002)(6246003)(4326008)(14454004)(50466002)(2906002)(3846002)(99286004)(86362001)(23726003)(76130400001)(6512007)(6116002)(14444005)(46406003)(7736002)(6506007)(81166006)(6862004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4954;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 36ec21af-c335-4a01-fcca-08d7201fc1eb
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB8PR08MB4954; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: 7r1tG7DP+/akrtf8uDMpVJ17fH7vXfmm+MN6GsgAmi92/wcU7AwJV3iEdNSBXjwOm4GBcgukv47d/vGHDdpoAj06d1v1cOsKXeBjPLHueC50HtrqyaPMf8DOCx8Nrt8TJB7o9qC66sqZT2Wo7isagIWVqp12MbjjUap7Rpp1PfsYnIf8xaED0Uhobg7ZSIxbEY/bUACwoomSr80t9l7LrGfQHfoOCquN4LPkzaXvvkTQCQgUFvV/pIVXUf+u0B91IqUlpp9o1KJHhba//gRZPSZ+MaU4Mrjb9VoAElDeYyaYCxpadFoJ66RAQeQxs//Xwyco1sZMS0ZYGqt61JKqstPbkqZPmhIBnDH5T0NXwG2hSIbNcbGHTUz1eN5ITzK5j4SiSDb+L0AWRxHdbDc6dcn6tsPwkbPi4af9PE1vQUs=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:55:15.4190 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d007ce7a-c743-4465-e948-08d7201fc739
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115520_735772_A431AC53 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.53 listed in list.dnswl.org]
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

On Tue, Aug 13, 2019 at 06:01:45PM +0100, Will Deacon wrote:
> Build virt_to_page() on top of virt_to_pfn() so we can avoid the need
> for explicit shifting.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 77074b3a1025..56be462c69ce 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -311,7 +311,7 @@ static inline void *phys_to_virt(phys_addr_t x)
>  #define ARCH_PFN_OFFSET		((unsigned long)PHYS_PFN_OFFSET)
>  
>  #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
> -#define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
> +#define virt_to_page(kaddr)	pfn_to_page(virt_to_pfn(kaddr))
>  #else
>  #define page_to_virt(x)	({						\
>  	__typeof__(x) __page = x;					\
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
