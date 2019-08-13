Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220358C122
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3/qfu2iZXEEXfi4AyQrnM3IZA49BCJlihRYFm7w/y8=; b=Nb4Nc6BlqmKWnV
	atpyYvY5IFcZCL9Ep/XIQFHwWdzh5RRGetdsUORp1osaoR2KkVknTRODA392q0z3A79+axOIrtjRy
	7rD+m2uPPfkH7nICTabiEJXaNF9mMb72G1lkNQCrLeguc7SyoTISnp8DSR12gftokbI5mStL547LL
	Lzdpycu7b8cDxj5tgXpVUItDKDNkaEc/yKmWdX5w+ZFvhIPPwUgz/XS0LIPQk+u5YaYcC8qnxv4Rr
	kouZpOuI+SyUSJDK98IQj2Jbb4GD5CDwvbVgvvctWVWLV72mcmAetFkmzhzWcxWihi8sZ5ukq5nHW
	wIhTRrp3PQNbuZ6uZ7vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbxx-0000Id-G6; Tue, 13 Aug 2019 18:56:17 +0000
Received: from mail-eopbgr00087.outbound.protection.outlook.com ([40.107.0.87]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbxm-0000Hz-JQ
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:56:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rsdqkF2/FKVlrCbMbsDbLhVJA3oDXRYzd0321tLA+Ew=;
 b=F8vxMmZ4NbWtd4NCcXpmt/qrLOwSeedq8VT3m5bi6kKywZsygtBIpI3lC7pRcaMLssPaxJkGRFRTSNMt6P9cAA++S1LID0F6uUmBtAXtrEP5oYi7qhLOhrAUtYvAgKwNuFzspamtve5RHFHLxFXTBHBzKQznSAA8FMbF6cnqZtg=
Received: from VI1PR08CA0150.eurprd08.prod.outlook.com (2603:10a6:800:d5::28)
 by HE1PR0802MB2603.eurprd08.prod.outlook.com (2603:10a6:3:e0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15; Tue, 13 Aug
 2019 18:56:01 +0000
Received: from AM5EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by VI1PR08CA0150.outlook.office365.com
 (2603:10a6:800:d5::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.16 via Frontend
 Transport; Tue, 13 Aug 2019 18:56:01 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT054.mail.protection.outlook.com (10.152.16.212) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 18:55:59 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Tue, 13 Aug 2019 18:55:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9ab8990c6035f717
X-CR-MTA-TID: 64aa7808
Received: from ccced01d239a.2 (cr-mta-lb-1.cr-mta-net [104.47.8.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 88C3A191-044E-4A08-9961-E447B5E31DB3.1; 
 Tue, 13 Aug 2019 18:55:52 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2051.outbound.protection.outlook.com [104.47.8.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ccced01d239a.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 13 Aug 2019 18:55:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d/xy9kYHPP8y5jNlV98b7udGHzG+Z9SKTOK1aZh5SBVhco9ChHwCa1iELsdaVcWmDcXGYHu8k0NUAyre7uYM7YF8wqLFh2dhauc5voup9cYX18lxn8MEcb0ZaPvGsFhUTfYwo+UNZuxV+C59CqgRki0Pr6YwjMRvX/AIZi0U4pICvX5g9XyDMDsDhfrvBFdoCeiwxtKZDqMry26B6gc4zOVfUj4EoFv+fQ8RHfmQ2AqWbEutfx4YZmy1MfgYp9SyyL52LVRAAxEgk9zfcyOzDSd82PoKzrPfSNMx3ZUm2lXDdfGf7KvMRqkmIJEt7Mid2mYIdRIXhAjxaQJeq3RtCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rsdqkF2/FKVlrCbMbsDbLhVJA3oDXRYzd0321tLA+Ew=;
 b=MfaMTBCtV1wiUzoiQriMUO3noE6WpsmVjGPau/ShMZ/KD3pwPzzul88zE6gns/J6+UgSKVnP/6KcXGITIsb4jU00nJPizWfqWXpkmpqcXy2f4jzv9rYd6FAB3IoFR6N4q4TwSc7761VZ+RIJDnSY1yoe+vOQF2DK4g1XJcKo+Yk4aTV2CeUPSA+PRjcmuUXkSjIziENP5N21sujBZ6ekPyuFa4z+eAiCv3/fpik8HabPAV/D+JSf/eRhHLAqdsd6DuVx6/VZxWAoSHbGfqDzkHVl03PA70/TlQT4cv3rBn+Hz5ECQO3Hd81zEcuHtKbSFWc3AJO/GSdyvLmI7n+yrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rsdqkF2/FKVlrCbMbsDbLhVJA3oDXRYzd0321tLA+Ew=;
 b=F8vxMmZ4NbWtd4NCcXpmt/qrLOwSeedq8VT3m5bi6kKywZsygtBIpI3lC7pRcaMLssPaxJkGRFRTSNMt6P9cAA++S1LID0F6uUmBtAXtrEP5oYi7qhLOhrAUtYvAgKwNuFzspamtve5RHFHLxFXTBHBzKQznSAA8FMbF6cnqZtg=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5004.eurprd08.prod.outlook.com (10.255.19.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 18:55:50 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:55:50 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 5/8] arm64: memory: Simplify _VA_START and _PAGE_OFFSET
 definitions
Thread-Topic: [PATCH 5/8] arm64: memory: Simplify _VA_START and _PAGE_OFFSET
 definitions
Thread-Index: AQHVUfjU2d6G1w5gqkGA62ArWnkVuab5bX4A
Date: Tue, 13 Aug 2019 18:55:50 +0000
Message-ID: <20190813185548.GF19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-6-will@kernel.org>
In-Reply-To: <20190813170149.26037-6-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0116.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::32) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 42d6ca49-f375-4c6a-97d8-08d7201fe1aa
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5004; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5004:|HE1PR0802MB2603:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0802MB2603E252A66A3E4831E19DB081D20@HE1PR0802MB2603.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:2150;OLM:2150;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(189003)(199004)(26005)(66446008)(66556008)(5660300002)(2906002)(6512007)(186003)(256004)(8936002)(446003)(66946007)(44832011)(486006)(11346002)(386003)(71190400001)(6506007)(52116002)(71200400001)(476003)(1076003)(6116002)(3846002)(76176011)(102836004)(64756008)(14454004)(66476007)(86362001)(6916009)(81156014)(81166006)(4326008)(33656002)(229853002)(6436002)(478600001)(8676002)(6486002)(99286004)(305945005)(7736002)(53936002)(25786009)(66066001)(58126008)(316002)(54906003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5004;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: EMtTwyhulhs0nT5pcTr+ga2shaJllycgvBq4lPKHYkcWbln2KdTN1aMuvc/8cGlQ/UVOZREoxtTQCMR0y5RUls1QSDsCByADm5PiR3/wjieT7JA+j1oEUMw5BCwzibcrZ4QxJR1HjVACYWch/VU7MQ7mkn8fruqawY2IZ+P+SWWHUnCVMi2ErsSYV7oCyd1J/Tc12fT4KT/gJQaZoDd0dVqQ8aNygc4nb3t9HXwwAVAdkFTAK0LzYhGhkVr6FjlJW07GWQZqDL37eCosyltK8FfP7hp8XfPGv8uogbhXdliaCWrKVv6K4fjTk5IWXQK9vdTLhV30I2eKGZI21mIYU+e3CHaJKSYRjZhWebp34zPtgV4CaaRNw6/otSyv86ZGcYKQQUYULaGg+QkDElDy3KqrwMQa5LZIwMFWPD9AJBk=
Content-ID: <0ABE2A8EB1BB6941A85DA99406B8F783@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5004
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT054.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(2980300002)(189003)(199004)(356004)(6512007)(316002)(22756006)(54906003)(50466002)(58126008)(36906005)(4326008)(97756001)(8676002)(102836004)(6246003)(386003)(86362001)(47776003)(229853002)(14454004)(6506007)(26826003)(186003)(6486002)(76176011)(99286004)(478600001)(26005)(76130400001)(70206006)(126002)(63370400001)(2906002)(486006)(336012)(5660300002)(6862004)(1076003)(8746002)(81166006)(7736002)(63350400001)(476003)(446003)(66066001)(305945005)(3846002)(46406003)(11346002)(25786009)(6116002)(23726003)(70586007)(8936002)(33656002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0802MB2603;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 404ad653-c5aa-4115-92f9-08d7201fdc2f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0802MB2603; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: H6Ocvol0fPOPGZadG8zvBkJ6nJe3vwznXaj+EbZ5JGWhxsw413j5D0zWZmSY4pKtxo8QvIg87CocLKpPusBzT+X2TmD09w3l0QhKxkjfAGANBtiMFaWUz3RNlzPVNIt7XJwNmrVBk3UWREM9Dybs/jv5o49cLpkPlPON7za+OGo6WFMKdgAMF8U0qGf/HViCAgrH9dJdGREFzFR5/un7cTA89HDxrDXmzNKRYThhuN2cjRMJ31/1G6BM0YtY2kQvXr1Y2s+RnyNQeuyOO36v4MjOXuZUD6BCnIwICER6KuYSkwO9uO+R5wwx5SU6A7nmsajIThyguCeSaB6uarF6Qsx3fprwhUzU0820SrCygh7Z0/KrI/iGP3JYie3CVrIRcufvqtKuE/PF8xsc4o4ePIVf23IqYk4JCMjJW9vI+Fo=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:55:59.7392 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 42d6ca49-f375-4c6a-97d8-08d7201fe1aa
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2603
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115606_639910_0D46D32F 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.87 listed in list.dnswl.org]
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

On Tue, Aug 13, 2019 at 06:01:46PM +0100, Will Deacon wrote:
> Rather than subtracting from -1 and then adding 1, we can simply
> subtract from 0.
> 
> Cc: Steve Capper <steve.capper@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 56be462c69ce..5552c8cba1e2 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -44,8 +44,7 @@
>   * VA_START - the first kernel virtual address.
>   */
>  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> -#define _PAGE_OFFSET(va)	(UL(0xffffffffffffffff) - \
> -					(UL(1) << (va)) + 1)
> +#define _PAGE_OFFSET(va)	(-(UL(1) << (va)))
>  #define PAGE_OFFSET		(_PAGE_OFFSET(VA_BITS))
>  #define KIMAGE_VADDR		(MODULES_END)
>  #define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
> @@ -63,8 +62,7 @@
>  #else
>  #define VA_BITS_MIN		(VA_BITS)
>  #endif
> -#define _VA_START(va)		(UL(0xffffffffffffffff) - \
> -				(UL(1) << ((va) - 1)) + 1)
> +#define _VA_START(va)		(-(UL(1) << ((va) - 1)))
>  
>  #define KERNEL_START      _text
>  #define KERNEL_END        _end
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
