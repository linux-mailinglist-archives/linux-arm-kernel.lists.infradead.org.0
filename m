Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484789FB97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTNCCQCK5ThHFKy9o8Ousu/G7xdP5ATEM7vpE7qVUV8=; b=cB5K513l6b7b+D
	IU7jS5HUzV8opl5B/V/05dZ7ErIeSqDgIwJn0keSTFQD87tt0ANi7iX8l8BqMW5moJlqgKSBEBsh5
	h0za9BF0ONGKHv+H+MzRvUCuwh0y4ID8o3pCQ7kTm7FE/ygsdtOeb+nRQPvOn0vQOdDElw9J2ISnB
	bVFC/m295N1ZUTdZ5w8qgr0qdeFiz9SsvX9kw8SHC/ymIGY3HCh4hf/yncvDL4jbraiybxsULeAsi
	Ws/8rQc3MT+SeJv8Y4D8zKX2kqlWUekCTlSXVBgczPLcIiL+Swvu4tjayRJqZcL2jiVOUxCwJcMXp
	8valNlLP7JPIN1EVrODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sK3-0001sh-GX; Wed, 28 Aug 2019 07:24:51 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sJC-0001NW-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=38YKAkQAHOrlLBS/Ov3+/TSHwDP5xDziY2y2IbXh7gc=;
 b=Mg20ua2Uyam959QpstzQtJV8YI7t9LcGLnyBnNBR4BGM+71L2YBwa/tikc8SReMDhS2dPFMy3kSyUOUx1fUKzMXvYj+nLCEmhsIvYhEJDD0i9bNZRsULl+b6fJmR3MXpt088yy4rhYXGLwrHB5hPnXmFEQfpJoBVRAIxtXjyTM8=
Received: from VI1PR08CA0147.eurprd08.prod.outlook.com (2603:10a6:800:d5::25)
 by AM5PR0801MB1841.eurprd08.prod.outlook.com (2603:10a6:203:2e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.21; Wed, 28 Aug
 2019 07:23:51 +0000
Received: from DB5EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by VI1PR08CA0147.outlook.office365.com
 (2603:10a6:800:d5::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2199.14 via Frontend
 Transport; Wed, 28 Aug 2019 07:23:51 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT050.mail.protection.outlook.com (10.152.21.128) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2199.13 via Frontend Transport; Wed, 28 Aug 2019 07:23:49 +0000
Received: ("Tessian outbound 802e738ad7e5:v27");
 Wed, 28 Aug 2019 07:23:49 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fd7e83c01a3a9d6b
X-CR-MTA-TID: 64aa7808
Received: from b96e64fcfe33.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E60F29C5-656D-4286-AD12-157283CFAAC3.1; 
 Wed, 28 Aug 2019 07:23:44 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2059.outbound.protection.outlook.com [104.47.14.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b96e64fcfe33.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 28 Aug 2019 07:23:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U/F26nn1ok27E1TvKBsAhF29pItDPwfFclqtoiJHhoUcg0726pIWLXQYtCdCUohbBCYS+Uwv2QvPxJvv+rovJHhyUtNi2kHhVmjtUaXlH99M8NBDOQPPYfSWcqZSt8FD49PbfxAJ3Jr2bk3lMoPXPJ+3+7EU0y3anxnNOlDw6I+GA5ge+EUN2knTExlzMxiK1fpNIixY3wmiLa6LybyWX9MxsXqrAz0xLLzZl7kP4KGNvD+QOtBxGdYHSZmbL4U2kkSmEsL6ccTsZbkIqMtXNWwFy9Gnwb416F7NJALekis938w4/ebWpykzi491pjXhlVc/a18vrIRzIqxiXKgO2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=38YKAkQAHOrlLBS/Ov3+/TSHwDP5xDziY2y2IbXh7gc=;
 b=QVepuyEvhs2BVElW9Tvg2eS1qVovKufWROBqZTZol+qtH5VdOSRySep34QrMRbNqnxkTguqLArKqT213/ngnsYbMWcMYsIquos34bGC2HGrCm7jR/IZRn/0j9JUtAn4iQfLZNm3clLUm3QLKtCq3CtlkWR2AU7aVeDnAV3bif6TeKFFMFGoSf5zBYevjEATcJ7XsyfL1FyiTZgLaIbMvbut1Q2AgwF+RLZKu8crDJMgb1X8FpH+rnMK4jPJoP/YCdbFlvCNoIfYMRgyUyBawwAv01MFxHJII1KoCKSXxe2CgBn8IrkvXZ3S8UXvxajqxJ2/xjnIYiSzpZomrM/Iusw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=38YKAkQAHOrlLBS/Ov3+/TSHwDP5xDziY2y2IbXh7gc=;
 b=Mg20ua2Uyam959QpstzQtJV8YI7t9LcGLnyBnNBR4BGM+71L2YBwa/tikc8SReMDhS2dPFMy3kSyUOUx1fUKzMXvYj+nLCEmhsIvYhEJDD0i9bNZRsULl+b6fJmR3MXpt088yy4rhYXGLwrHB5hPnXmFEQfpJoBVRAIxtXjyTM8=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5275.eurprd08.prod.outlook.com (10.255.19.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Wed, 28 Aug 2019 07:23:40 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::e9ce:ccaf:5e80:490e]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::e9ce:ccaf:5e80:490e%7]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 07:23:40 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH] arm64: fix fixmap copy for 16K pages and 48-bit VA
Thread-Topic: [PATCH] arm64: fix fixmap copy for 16K pages and 48-bit VA
Thread-Index: AQHVXPAeMv1ChuZ8x0OdaQukF8Y5UacQKSQA
Date: Wed, 28 Aug 2019 07:23:40 +0000
Message-ID: <20190828072337.GA15737@capper-ampere.manchester.arm.com>
References: <20190827155708.34699-1-mark.rutland@arm.com>
In-Reply-To: <20190827155708.34699-1-mark.rutland@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0150.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::18) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: e35864fc-b4f0-405d-0337-08d72b88abd7
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5275; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5275:|AM5PR0801MB1841:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0801MB18418A8C4C944DFE264F79A481A30@AM5PR0801MB1841.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:4125;OLM:4125;
x-forefront-prvs: 014304E855
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(376002)(396003)(136003)(199004)(189003)(14444005)(14454004)(6506007)(6512007)(26005)(66066001)(102836004)(8676002)(33656002)(81156014)(81166006)(6436002)(8936002)(256004)(186003)(54906003)(6862004)(6486002)(1076003)(229853002)(76176011)(58126008)(305945005)(99286004)(6246003)(7736002)(316002)(86362001)(66476007)(11346002)(446003)(66556008)(66446008)(6636002)(25786009)(66946007)(64756008)(2906002)(44832011)(478600001)(4326008)(3846002)(6116002)(476003)(52116002)(53936002)(5660300002)(386003)(71190400001)(486006)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5275;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: JOt8kQMrxt1d7OTP0uCyDiGj04a5NVprFvxzkJNNPw6kzQhUosw6/naTH/K0JuDjTocQJJ/1YYK9DeObIVECOPZEOQfvnZCzoQen1LmaOs5+IvRGZ0fLjn6YXtnbH18ltWdippzqTy6UEhU6qoCz6+cQK9zSz8y7wwW9xOgi1QimvD/IOVlbZRM1+WfEQV/+zBBuHV5TyuiRwO/0CfznsgQY5T9aNEnrMldRmK14m3cFow4HkdE/soMfW87eh4dbIjGBW4YIVMM+5KYyK7PvXrE+3FK4dNmSjgpbbPbFQ32KfxoVuwAUn4BEb5rKAR5O85t0K6XQSSf3PGxpBz1+jgflTmocao3sl8sJb0k4Sp+tC7F6+Lhf3UL4tbZ6yQ0bo/9qUbCy8UhqObw3kSN08ZzhH/rE9NzB93XaAlbySgw=
Content-ID: <5E3A4AC9D3C25B42BB1EE0E261C0CD36@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5275
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(2980300002)(199004)(189003)(3846002)(23726003)(14454004)(229853002)(6116002)(478600001)(70206006)(26826003)(70586007)(76130400001)(4326008)(33656002)(97756001)(6862004)(14444005)(25786009)(54906003)(6636002)(2906002)(50466002)(316002)(58126008)(305945005)(6512007)(81166006)(86362001)(8936002)(8746002)(8676002)(386003)(6506007)(356004)(81156014)(7736002)(6246003)(6486002)(26005)(1076003)(476003)(486006)(446003)(11346002)(46406003)(102836004)(186003)(126002)(63350400001)(336012)(66066001)(76176011)(99286004)(63370400001)(5660300002)(47776003)(22756006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1841;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9749898a-a8d8-4227-7183-08d72b88a641
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1841; 
NoDisclaimer: True
X-Forefront-PRVS: 014304E855
X-Microsoft-Antispam-Message-Info: Ezt9YWEu0ZHGXCC4F02XFM9Uaco4Ethf6lBF1hePLQsd6Lxo5spGgSOtAuCr5Hqwv5zqDXPMGmInOhglCu4YZv2BueltM2bKfvWwlYMYfzEHZXA+azJLOlSOML3zdelvGwe1ZxiwUB8H7/suDEdeLaiejDJv+mG2ydKnXLIW9Qx5rGSdGeQXLp+Zr9yZLt6ePLyCd326IMRzA/uprx4FhFAKrpaL26fLkjPjbbsacxk+a5DB8uoZ1206tDue/FPlxZclOzoQEBaD5zBWQbES0eMLz53uWty5ZGEU4VmmHSygbG8YkxNeWM+rFVTSVnypEYNtwcxc7jKtaVjbey4ZZKl9VsryFgHHE9lVBe74FQUm0PIH1ClnSSVP22zmZB0tVhUhi9vDF7xH9933tm0AMASDJDzH3n9qRBE4EwiWGoE=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2019 07:23:49.4185 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e35864fc-b4f0-405d-0337-08d72b88abd7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1841
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002359_034746_678EF336 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.46 listed in list.dnswl.org]
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>, Marc Zyngier <maz@kernel.org>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 04:57:08PM +0100, Mark Rutland wrote:
> With 16K pages and 48-bit VAs, the PGD level of table has two entries,
> and so the fixmap shares a PGD with the kernel image. Since commit:
> 
>   f9040773b7bbbd9e ("arm64: move kernel image to base of vmalloc area")
> 
> ... we copy the existing fixmap to the new fine-grained page tables at
> the PUD level in this case. When walking to the new PUD, we forgot to
> offset the PGD entry and always used the PGD entry at index 0, but this
> worked as the kernel image and fixmap were in the low half of the TTBR1
> address space.
> 
> As of commit:
> 
>   14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> 
> ... the kernel image and fixmap are in the high half of the TTBR1
> address space, and hence use the PGD at index 1, but we didn't update
> the fixmap copying code to account for this.
> 
> Thus, we'll erroneously try to copy the fixmap slots into a PUD under
> the PGD entry at index 0. At the point we do so this PGD entry has not
> been initialised, and thus we'll try to write a value to a small offset
> from physical address 0, causing a number of potential problems.
> 
> Fix this be correctly offsetting the PGD. This is split over a few steps
> for legibility.
> 
> Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> Reported-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Steve Capper <Steve.Capper@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/mm/mmu.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 1d4247f9a496..4197f27f86e5 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -646,6 +646,8 @@ static void __init map_kernel(pgd_t *pgdp)
>  		set_pgd(pgd_offset_raw(pgdp, FIXADDR_START),
>  			READ_ONCE(*pgd_offset_k(FIXADDR_START)));
>  	} else if (CONFIG_PGTABLE_LEVELS > 3) {
> +		pgd_t *bm_pgdp;
> +		pud_t *bm_pudp;
>  		/*
>  		 * The fixmap shares its top level pgd entry with the kernel
>  		 * mapping. This can really only occur when we are running
> @@ -653,9 +655,9 @@ static void __init map_kernel(pgd_t *pgdp)
>  		 * entry instead.
>  		 */
>  		BUG_ON(!IS_ENABLED(CONFIG_ARM64_16K_PAGES));
> -		pud_populate(&init_mm,
> -			     pud_set_fixmap_offset(pgdp, FIXADDR_START),
> -			     lm_alias(bm_pmd));
> +		bm_pgdp = pgd_offset_raw(pgdp, FIXADDR_START);
> +		bm_pudp = pud_set_fixmap_offset(bm_pgdp, FIXADDR_START);
> +		pud_populate(&init_mm, bm_pudp, lm_alias(bm_pmd));
>  		pud_clear_fixmap();
>  	} else {
>  		BUG();

Thanks Mark,

FWIW:
Acked-by: Steve Capper <steve.capper@arm.com>
Tested-by: Steve Capper <steve.capper@arm.com>

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
