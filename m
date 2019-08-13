Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85F18C145
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 21:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kchjwyvM7GEZAk5jXEdZv+syeGQrwHHpYf9Ec0b+KWw=; b=CTWXGyv4PUKdet
	yRFPdnhhA4ZjsZcHgpeQKYZDMOVFW1ryrG8C1YwKaMREsNiBnZCxFSRHDA3FXIL+fIfJNRBLM2LDh
	e91lVtLU5doJvXv13WEHKW/xCraygcWWcPCacXKYAHMpgFkD9HerkTZ3UTZQQ3ZPmcq5H1wILZszW
	QrgedAEDgcfLAw+sOd9exkWHZVPpW9vu7o+DyI0Kmg5SzhdMSusPLAOAX8H4+y36BDlWrNjgqdSos
	Z2wfL2kyrof6nnpMhA9EGzwUNn/Z0d89lF6XxMIf+P3uQ2D4YF+5P/O3Xd+LGIDrMDv/J8Ydk+zs6
	rgT0/j5POOyg9iA+X0BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxcD9-000680-L8; Tue, 13 Aug 2019 19:12:00 +0000
Received: from mail-eopbgr130044.outbound.protection.outlook.com
 ([40.107.13.44] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxcCs-000610-4B
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 19:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M60vsVcSZhmRzWyqZhs7ENs6yTy1eMm4GibmL1UGs/U=;
 b=EoBvY+ELn5xRtwMwWONwqHBHzPIHPCP9TR1J2d9iNnerlHkwM3xdeYEnigAjIX/LDmc+7AJsNiiY9TjhKoxeabDWw8BQn3KCQIdYvXF/Fc4NrNdDdcjKg00HzUwKlN+odfG9X6mByUmHHFkQV6RFGbPSAUdKuke+R62J+D/rYKk=
Received: from AM6PR08CA0044.eurprd08.prod.outlook.com (2603:10a6:20b:c0::32)
 by DB6PR0801MB1846.eurprd08.prod.outlook.com (2603:10a6:4:35::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Tue, 13 Aug
 2019 19:11:38 +0000
Received: from DB5EUR03FT049.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by AM6PR08CA0044.outlook.office365.com
 (2603:10a6:20b:c0::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18 via Frontend
 Transport; Tue, 13 Aug 2019 19:11:37 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT049.mail.protection.outlook.com (10.152.20.191) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Tue, 13 Aug 2019 19:11:36 +0000
Received: ("Tessian outbound 71602e13cd49:v26");
 Tue, 13 Aug 2019 19:11:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1a8c68c8882b2234
X-CR-MTA-TID: 64aa7808
Received: from ca4c24514dfa.1 (cr-mta-lb-1.cr-mta-net [104.47.6.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 00BC8CA9-FA86-40C5-A6BC-088C7DD703FE.1; 
 Tue, 13 Aug 2019 19:11:28 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2053.outbound.protection.outlook.com [104.47.6.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ca4c24514dfa.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 13 Aug 2019 19:11:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2tio8VG+SSM++M+CG7n39DIy8G2//suRARCr7uuKnuxjICj7edLEED75ovaEGGAOhYz5miYwgxP/O+cKFqCDGQSG9MoZr5Av/MotP2r4klbxgWaZ6/TYwxEwVekWdvPYVmCSeIkhXSXmUb/4SPw2CrrPS7WmlH3JOebOd8tV4wJWpf6nDu8xO/RWlhBYMrnAa9zkpiBrAzpc/qnxG2lS/X8gO2bnmXhUDjyDUouu90uV+nXDbLmyRnhB286zd4XWX+5m78ZX9ZRVSyezkQsHWSSP9NHKb97Ma8LFl3XY6PC8C/U9vzxh8MonuVlWn7ilO0dPSkegubCcqBC8HNkow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M60vsVcSZhmRzWyqZhs7ENs6yTy1eMm4GibmL1UGs/U=;
 b=eBGEa8QRr7dhS78K6H+jYLvKC+gi+ga/lRK1hKsBdjQ5WjdWmIxO3WVnnG+s0IymYpU/nlXNU/4d0l9EXb1Mn7l9aH374logrV4eMjG4OQH13DZnLs8pPiXTSXHM8kJMJ4xC2v0CmMaDsCwuCiqbcC8opNFQU0L6mLsbbBwx59SprUw3Jjd3nVquthnnc7nA5n8Z74bKWwQ8dXRYNoY7BSXQT3xUpRssItIjkZwzgyZWAiKCfhwLQ8v3+iPIswRP6tU0sBlFZ2p6K6KZyOv4MjQEx5ViHPzgwJZG4vJ6fSIQNP4+GCyeQGR0mCawtONJ6Jx5Rt6OR865NQK0UNp5BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M60vsVcSZhmRzWyqZhs7ENs6yTy1eMm4GibmL1UGs/U=;
 b=EoBvY+ELn5xRtwMwWONwqHBHzPIHPCP9TR1J2d9iNnerlHkwM3xdeYEnigAjIX/LDmc+7AJsNiiY9TjhKoxeabDWw8BQn3KCQIdYvXF/Fc4NrNdDdcjKg00HzUwKlN+odfG9X6mByUmHHFkQV6RFGbPSAUdKuke+R62J+D/rYKk=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5355.eurprd08.prod.outlook.com (52.133.240.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Tue, 13 Aug 2019 19:11:26 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 19:11:26 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Thread-Topic: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Thread-Index: AQHVUfjRHMKvcPQom0acDK7i/DVrpqb5YH4AgAARXAA=
Date: Tue, 13 Aug 2019 19:11:26 +0000
Message-ID: <20190813191124.GA21406@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <CAKv+Gu8Gws2MVE5ck1-rjm06X2nOUzRRQL_rCuoXd2Fyp-cOyw@mail.gmail.com>
In-Reply-To: <CAKv+Gu8Gws2MVE5ck1-rjm06X2nOUzRRQL_rCuoXd2Fyp-cOyw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LNXP123CA0006.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::18) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: e850d748-83f5-4a3b-1087-08d72022100d
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5355; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5355:|DB6PR0801MB1846:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0801MB184619EED9A01D4FD4F1054C81D20@DB6PR0801MB1846.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(366004)(39860400002)(189003)(199004)(6436002)(6512007)(99286004)(52116002)(81156014)(478600001)(71200400001)(4326008)(256004)(71190400001)(2906002)(6486002)(66476007)(6506007)(66446008)(66946007)(66556008)(386003)(446003)(64756008)(76176011)(486006)(53936002)(229853002)(81166006)(476003)(8676002)(86362001)(33656002)(6916009)(14454004)(6246003)(5660300002)(11346002)(316002)(305945005)(66066001)(8936002)(186003)(102836004)(1076003)(54906003)(25786009)(7736002)(58126008)(26005)(3846002)(6116002)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5355;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 3L8Mo6P3E4lTSfSYFWNsdsMGjnA0twfnfDQZh85ElThjP1tt+Ge+ZQuc37XxVAanSe+grsFLANuLMQJ9mllqqwsxElVy+iZ60dMAbbIgEp7BSWc6j/GKD62Co5qTVer+L8GQ0ikHA4FanQnw9a/HKtDF+0DqKkq78Xr97iN4yvxWDaIntbvAEUHmIfvLS+tneTlKCXOj7NJtvSDAZYHbAHMjKk/wSfTJEso2oTrBc4dyOaqDcaM3A3eqB6HgObu7JcnZYktBydrgXigK0Fu3v4efshtU/oJadL0H5g6+8jG4bcXFeGxFB7hLTkP2I/HoKhHU7UIErPVDpdnucuob1auTLSCZ8bZwWkJlwALSvC5ALkpBdBuTZChvufMaM6sJaRmEV4cR4PM1ZwMEMVKI/YF95yTrY7XT2w02tcKwGKI=
Content-ID: <3D11CE0FFAB17D4784CDBCCC39FAB827@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5355
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT049.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(2980300002)(189003)(199004)(336012)(102836004)(126002)(446003)(8936002)(476003)(86362001)(186003)(26005)(70586007)(50466002)(6506007)(70206006)(63350400001)(33656002)(76130400001)(386003)(11346002)(66066001)(76176011)(486006)(63370400001)(6512007)(6486002)(229853002)(47776003)(2906002)(1076003)(8746002)(478600001)(356004)(22756006)(3846002)(23726003)(6116002)(8676002)(97756001)(54906003)(81166006)(81156014)(99286004)(58126008)(7736002)(305945005)(316002)(14454004)(25786009)(4326008)(6862004)(6246003)(46406003)(26826003)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1846;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 093d8f4f-0237-4224-5eb0-08d7202209ca
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0801MB1846; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: ZN09kGwevEMKT3ieBisuF/PlkibUM57PH3F6ZNypgBYXW/s1vdJEXKHZVq3f/ygDCQEYrgHtoEKE7DhXTNNaf3MMlNdrAirB0Z3oPxlHyW7Ww82HSB/SPAnXwmxihCrKs5TapVSmIX9Zi1sXmlFaFWsKvd6oCWv7t/z13QWP/gSHgo+xvZcAmEQcjJTr4J+VDmg0nxpJGRMKUfP2b+EAMkQjYXM2fjor8c0JipFx0u86BShNF5V3YVHg94xD/Ll+eeVwS7KjP/WmAfITR0B2s7xoeNDMB/LQJM4xkhoOd4CNcgorpHHdr+NcRmEIyFn65OrsqISeMjEtqYtEjkotCHckBYR2u2Loeiy2R824Z4b8I3LrodymwBBfNufSmcmvBj9f7BdXbzk4ftrAiBW1Fx3tPF94Kj/40YD95k22qpY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 19:11:36.5922 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e850d748-83f5-4a3b-1087-08d72022100d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_121142_244438_9F704160 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.44 listed in list.dnswl.org]
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
 Catalin Marinas <Catalin.Marinas@arm.com>, Qian Cai <cai@lca.pw>, Andrey
 Konovalov <andreyknvl@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Tue, Aug 13, 2019 at 09:09:16PM +0300, Ard Biesheuvel wrote:
> On Tue, 13 Aug 2019 at 20:02, Will Deacon <will@kernel.org> wrote:
> >
> > virt_addr_valid() is intended to test whether or not the passed address
> > is a valid linear map address. Unfortunately, it relies on
> > _virt_addr_is_linear() which is broken because it assumes the linear
> > map is at the top of the address space, which it no longer is.
> >
> > Reimplement virt_addr_valid() using __is_lm_address() and remove
> > _virt_addr_is_linear() entirely. At the same time, ensure we evaluate
> > the macro parameter only once and move it within the __ASSEMBLY__ block.
> >
> > Reported-by: Qian Cai <cai@lca.pw>
> > Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
> > Signed-off-by: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/include/asm/memory.h | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index afaf512c0e1b..442ab861cab8 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
> >  /*
> >   * The linear kernel range starts in the middle of the virtual adddress
> >   * space.
> 
> This is no longer true either.
> 

Whoops agreed.

> > Testing the top bit for the start of the region is a
> > - * sufficient check.
> > + * sufficient check and avoids having to worry about the tag.
> >   */
> > -#define __is_lm_address(addr)  (!((addr) & BIT(vabits_actual - 1)))
> > +#define __is_lm_address(addr)  (!(((u64)addr) & BIT(vabits_actual - 1)))
> >
> 
> ... and this assumes that the VA space is split evenly between linear
> and vmalloc/vmemmap/etc, which is no longer true when running with
> 52-bit VAs
> 

For 52-bit VAs we have two possibilities:
  Start                 End                     Size            Use
  -----------------------------------------------------------------------
  0000000000000000      000fffffffffffff           4PB          user
  fff0000000000000      fff7ffffffffffff           2PB          kernel logical memory map
  fff8000000000000      fffd9fffffffffff        1440TB          [gap]
  fffda00000000000      ffff9fffffffffff         512TB          kasan shadow region

and
  Start                        End                     Size            Use
  -----------------------------------------------------------------------
  0000000000000000     0000ffffffffffff         256TB          user
  ffff000000000000     ffff7fffffffffff         128TB          kernel logical memory map
  ffff800000000000     ffff9fffffffffff          32TB          kasan shadow region
  ffffa00000000000     ffffa00007ffffff         128MB          bpf jit region

IIUC the definition for __is_lm_address is correct for these cases?
(it's based off vabits_actual).

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
