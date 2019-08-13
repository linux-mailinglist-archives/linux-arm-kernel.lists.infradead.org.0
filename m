Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D384E8C126
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVvxij7yHjcUalhGbAAeTVcmubNrKtrwRB2eLcrs4vU=; b=msXwaHQJGFN6qj
	QbjXoRjoRBUruTKsgHY2e/aMcB7iFchxV1Rv1y3gPpjJIjxPupsRHRPUZdc84/6a0+1g9I9cy0lk/
	gyOoFXD13JijF+mAbpZNOboSCZtGUWLO0mHvcLPpKE4wnMHMiMTGl6yA/DI1hderStbcsDBMZrT/H
	D7DQvwmyLrKOc2J94+L0Y2T2xlc8ztFhguWHcnoDFzBOez5pagoh+RhwQ/2kTNRYkQl+nvHXodGXu
	ROS3cxjZQjokr81BHdYOh6nCtgp8BLJHJc7wlgD7fR9oyFDgP/Sn9Lf+Xqi1Iz43C9V77V6TormAq
	iOf4bJfsQtPiY1ae61rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbzU-000179-CF; Tue, 13 Aug 2019 18:57:52 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbzF-000112-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SICvQYr9BvBZWSVSdrVA9Fjl8iQVA3BX1v5HROmdVug=;
 b=S4SPwIMAIt/eoPyByQiZjLnRPd6K/5JhpAx3h5/TDsPK8eT6gKuzbzDJa7ZCYX/yTFhp0uhgsnhzouLZgDgrR/5XCTKK0folvQ3wZGJYx4As4Q9rkNtilER7By75/iSD8kNAB1o6ryY0dSKuZ8+iS6S9xD5YNRdhvPuejEOr8cY=
Received: from AM6PR08CA0017.eurprd08.prod.outlook.com (2603:10a6:20b:b2::29)
 by AM0PR08MB4946.eurprd08.prod.outlook.com (2603:10a6:208:165::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13; Tue, 13 Aug
 2019 18:57:33 +0000
Received: from AM5EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::206) by AM6PR08CA0017.outlook.office365.com
 (2603:10a6:20b:b2::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.16 via Frontend
 Transport; Tue, 13 Aug 2019 18:57:33 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT032.mail.protection.outlook.com (10.152.16.84) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 18:57:32 +0000
Received: ("Tessian outbound 1e6e633a5b56:v26");
 Tue, 13 Aug 2019 18:57:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 04458703f4f245cd
X-CR-MTA-TID: 64aa7808
Received: from 0334a813ef14.2 (cr-mta-lb-1.cr-mta-net [104.47.14.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 DC68F2A7-4524-41BA-90D8-24E3524CB916.1; 
 Tue, 13 Aug 2019 18:57:25 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2056.outbound.protection.outlook.com [104.47.14.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0334a813ef14.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 13 Aug 2019 18:57:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nEJFD/mTfE7D7kIGKQwc1oxQq+TUguOtnQUOr0Dk/1QYbwxeIS22ge1PhXzy1XRPa1oFPLg0veqxz7uxxP6itOhVrtxHZATLMhxu8o/CbciaBYAan5GZvZNDkzMdwTazkwmGptbZbQcUWwMcVAQ0hb0ZHABtuh+VY/S7HPiVQeLkObGj1+7LQ5PWdYOrnKz1MuAZimcctuOGAEroH0OSrr3pr4Dlba6srIuI6ten9Xxv/aKMdJzii8LANUD7obwWgpesq0hVeLJzUAdHHPSpdleLLgce67F60lMk4UrraxUZgYMoVeUns4igJGlppLO3KVs7Kmiek4C+cqCC/EZnnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SICvQYr9BvBZWSVSdrVA9Fjl8iQVA3BX1v5HROmdVug=;
 b=Sz5bDFMD5GliO/skIkzPs4LG0XH6+w0MHZlgsypP9KcuT+Z+UKk7q/h4q78GL1BjP1e58sCqWAX4mWNpCxuGwockl5AMX9emizH5sWJEok6DAJrd9nAzBP/U1ZZMv95QD/0hHTYqUojXkd2UA2aRP5TbKH4V4qOel1XbYIkJKSASEhojQwpFPhMTGYOCs2DJMI9a7JdRp6TvaqD6+37rol1J+PVKdvoQTGICCBAwSV8bCR+n9QAe1qyq9IH4eeH9L2P69fRroHWkMWxy0mfJfmqZI0x2mVcPc5VU7quFMUEL4QvLN+TCPkCXdq0yU8s+r8bJ/VrONh058xXxz6O60w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SICvQYr9BvBZWSVSdrVA9Fjl8iQVA3BX1v5HROmdVug=;
 b=S4SPwIMAIt/eoPyByQiZjLnRPd6K/5JhpAx3h5/TDsPK8eT6gKuzbzDJa7ZCYX/yTFhp0uhgsnhzouLZgDgrR/5XCTKK0folvQ3wZGJYx4As4Q9rkNtilER7By75/iSD8kNAB1o6ryY0dSKuZ8+iS6S9xD5YNRdhvPuejEOr8cY=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5339.eurprd08.prod.outlook.com (52.133.240.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Tue, 13 Aug 2019 18:57:23 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:57:23 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 8/8] arm64: memory: Cosmetic cleanups
Thread-Topic: [PATCH 8/8] arm64: memory: Cosmetic cleanups
Thread-Index: AQHVUfjWBvKCMRu98EiOg/nnTSHK3qb5be2A
Date: Tue, 13 Aug 2019 18:57:23 +0000
Message-ID: <20190813185721.GI19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-9-will@kernel.org>
In-Reply-To: <20190813170149.26037-9-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0186.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::30) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 27b37c6c-25a6-481b-65a6-08d7202018e0
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR08MB5339; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5339:|AM0PR08MB4946:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB494694E151047AF4DB48BF0F81D20@AM0PR08MB4946.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6430;OLM:6430;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(199004)(189003)(66446008)(11346002)(6246003)(446003)(81166006)(478600001)(6486002)(4326008)(8676002)(229853002)(66066001)(14454004)(316002)(3846002)(54906003)(2906002)(8936002)(486006)(58126008)(64756008)(6436002)(66556008)(5660300002)(44832011)(1076003)(66476007)(66946007)(476003)(52116002)(6506007)(386003)(6116002)(6512007)(6916009)(86362001)(102836004)(186003)(53936002)(99286004)(25786009)(256004)(305945005)(71190400001)(71200400001)(33656002)(7736002)(26005)(76176011)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5339;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: IscH+yLshvxdOv2gqaWaKwBGKK2BMRfrtdzbAdYPxJMWwuf2GlkeqQMLEwMaokUpirnL+ZUyhoSs+lSOspBD/iE5f4mwZXeUhLNuRjl1QpG4Nn9jdRvyQYJXVwFaL85tePFOFVjx2OZt4zQbTwvjBdvga4kGEVWsF/zxtRwQZet8N79lIu7XGw7xs6u05gYtmq7YYyxSIocl9m6xayV8yvJd7H5cxxHBH6AF9/MZxN66wEJmBnvIu3ESETmVYzdDs1gtTtZa08M4XmkKkmMCt3Fa2I8JASkgNB193dafybjNlb+glLUlSW3Ck3C3O2gaJgvJUkNPP4jet24nhKfl7+1BRDODmv58DXG2IzB5Xr+p2fE4Lu9B8S7WKc20eqK0bQV28IMkwnEvxmhxEYPLu3Fe5g+Gp0DVU60QUnjkSgc=
Content-ID: <5061F12A9EFE77479BFB69141103784C@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5339
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(2980300002)(199004)(189003)(5660300002)(66066001)(70206006)(4326008)(70586007)(47776003)(1076003)(33656002)(36906005)(316002)(186003)(22756006)(356004)(7736002)(26005)(50466002)(6506007)(6486002)(58126008)(305945005)(54906003)(486006)(63350400001)(63370400001)(81166006)(6116002)(102836004)(6512007)(86362001)(3846002)(478600001)(81156014)(14454004)(6246003)(386003)(23726003)(8936002)(446003)(6862004)(8746002)(11346002)(99286004)(229853002)(97756001)(76176011)(336012)(76130400001)(25786009)(476003)(126002)(46406003)(8676002)(26826003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4946;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 1bdb2a32-35f7-44c5-c94b-08d72020139c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR08MB4946; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: 2DzLz972E9bFQEXoazZQmz0y16/xlWlnc372IK22MqQTg4UIGpx9FAyWpnhZQgRJjA6I3mG5voD8GoLFRIjSz5F+ITLvx0d2dDcG5/d9bYoh1ZVbGSWQVTRultfsTpQ3ZDh/NRlDSRnOJLlpLNYHKRSXj12ZoBgWs0lDHa+85SIUuAQSS+2XOnm5cMdVAXnFcAx7uEgyH6vd9b6PVFOjuAbKumFkceVYUwgrKqTB7jve34YLuRKMyxBY91D6tyUF3qEmDI+EnGJComKQGQi6hBp4E0p+OZwweGfRLoDDfRtXbLqGihSoJzZHoFkP3zMhNGpYszkfc6/nzEktThRaqzAAMbA4EAUYYj3K/4j/IVC8x8NoGpe7c+Vlf7L30T3/E7HSPD32obZIncKKvLUVNMDoo0PyV0e/ME12RoWxXi4=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:57:32.3865 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 27b37c6c-25a6-481b-65a6-08d7202018e0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115737_531640_32B611F3 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.54 listed in list.dnswl.org]
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

On Tue, Aug 13, 2019 at 06:01:49PM +0100, Will Deacon wrote:
> Cleanup memory.h so that the indentation is consistent, remove pointless
> line-wrapping and use consistent parameter names for different versions
> of the same macro.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 23 +++++++++++------------
>  1 file changed, 11 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index d31e4b6e349f..69f4cecb7241 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -12,10 +12,10 @@
>  
>  #include <linux/compiler.h>
>  #include <linux/const.h>
> +#include <linux/sizes.h>
>  #include <linux/types.h>
>  #include <asm/bug.h>
>  #include <asm/page-def.h>
> -#include <linux/sizes.h>
>  
>  /*
>   * Size of the PCI I/O space. This must remain a power of two so that
> @@ -66,8 +66,8 @@
>  
>  #define _VA_START(va)		(-(UL(1) << ((va) - 1)))
>  
> -#define KERNEL_START      _text
> -#define KERNEL_END        _end
> +#define KERNEL_START		_text
> +#define KERNEL_END		_end
>  
>  #ifdef CONFIG_ARM64_VA_BITS_52
>  #define MAX_USER_VA_BITS	52
> @@ -132,14 +132,14 @@
>   * 16 KB granule: 128 level 3 entries, with contiguous bit
>   * 64 KB granule:  32 level 3 entries, with contiguous bit
>   */
> -#define SEGMENT_ALIGN			SZ_2M
> +#define SEGMENT_ALIGN		SZ_2M
>  #else
>  /*
>   *  4 KB granule:  16 level 3 entries, with contiguous bit
>   * 16 KB granule:   4 level 3 entries, without contiguous bit
>   * 64 KB granule:   1 level 3 entry
>   */
> -#define SEGMENT_ALIGN			SZ_64K
> +#define SEGMENT_ALIGN		SZ_64K
>  #endif
>  
>  /*
> @@ -253,8 +253,7 @@ static inline const void *__tag_set(const void *addr, u8 tag)
>  
>  #define __virt_to_phys_nodebug(x) ({					\
>  	phys_addr_t __x = (phys_addr_t)(__tag_reset(x));		\
> -	__is_lm_address(__x) ? __lm_to_phys(__x) :			\
> -			       __kimg_to_phys(__x);			\
> +	__is_lm_address(__x) ? __lm_to_phys(__x) : __kimg_to_phys(__x);	\
>  })
>  
>  #define __pa_symbol_nodebug(x)	__kimg_to_phys((phys_addr_t)(x))
> @@ -301,17 +300,17 @@ static inline void *phys_to_virt(phys_addr_t x)
>  #define __pa_nodebug(x)		__virt_to_phys_nodebug((unsigned long)(x))
>  #define __va(x)			((void *)__phys_to_virt((phys_addr_t)(x)))
>  #define pfn_to_kaddr(pfn)	__va((pfn) << PAGE_SHIFT)
> -#define virt_to_pfn(x)      __phys_to_pfn(__virt_to_phys((unsigned long)(x)))
> -#define sym_to_pfn(x)	    __phys_to_pfn(__pa_symbol(x))
> +#define virt_to_pfn(x)		__phys_to_pfn(__virt_to_phys((unsigned long)(x)))
> +#define sym_to_pfn(x)		__phys_to_pfn(__pa_symbol(x))
>  
>  /*
> - *  virt_to_page(k)	convert a _valid_ virtual address to struct page *
> - *  virt_addr_valid(k)	indicates whether a virtual address is valid
> + *  virt_to_page(x)	convert a _valid_ virtual address to struct page *
> + *  virt_addr_valid(x)	indicates whether a virtual address is valid
>   */
>  #define ARCH_PFN_OFFSET		((unsigned long)PHYS_PFN_OFFSET)
>  
>  #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
> -#define virt_to_page(kaddr)	pfn_to_page(virt_to_pfn(kaddr))
> +#define virt_to_page(x)		pfn_to_page(virt_to_pfn(x))
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
