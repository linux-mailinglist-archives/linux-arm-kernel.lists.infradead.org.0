Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3392C8C125
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcMHqrgB/mhGdAAnwQrmlARwoTZZG+r5jmROofQiPlU=; b=GkcbkCDQYdEHEn
	NQD0ezjkzXeAlSuCKgezSi/BPUSoaEbjTUyQocz0ldw9aIjoEB6tVocTP7284JdUjM+kmdlbo7zHG
	g/Uyw54VgmN8fqxKyvczUHNqWSk8RIh4Famwb3nm+r+FQMTzR37ZOeY03jYIFimr9Ifxtudsm6m9y
	4Wio5Q0SmW+DLH4AgijEHzyUSJVLPbwJ8Occx3YgKXkoNjVoZDnDQog3K39M6lBun9Zv7e1MkcXMD
	Z/Q/P71ATjgA7BMbVanV2RU2gZ0DBoM9XZjbzY9BQkL196MCgmMt4h3KEk+x6m28dnwHX6pevss3D
	OTpDgz1rj2x6p1P2w1jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbzD-0000sB-SE; Tue, 13 Aug 2019 18:57:36 +0000
Received: from mail-ve1eur01on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::60c]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbz3-0000rb-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXS+19EySAh24nAhVPiG8xi7E1d2fYY/OhNbsCiUuto=;
 b=pwO4xYYigEzG32JtXy67ykWXCeQH/8ckDriD5O51mKUc6RZIEApB0QaHhrW2MVtQpiBZL1nFHsNCORBgO/feIOPUcjYv+ybVjl3GiTVDYMTrA23p7sb0pMf01Y3+/lD8pYAdv6A+EW82yVyWPfqnh5ysyWB6sJxWklB2gBdD8w0=
Received: from VI1PR0802CA0001.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::11) by VI1PR0801MB1856.eurprd08.prod.outlook.com
 (2603:10a6:800:57::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14; Tue, 13 Aug
 2019 18:57:20 +0000
Received: from AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::200) by VI1PR0802CA0001.outlook.office365.com
 (2603:10a6:800:aa::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.16 via Frontend
 Transport; Tue, 13 Aug 2019 18:57:19 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT031.mail.protection.outlook.com (10.152.16.111) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 18:57:18 +0000
Received: ("Tessian outbound 71602e13cd49:v26");
 Tue, 13 Aug 2019 18:57:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4bcfe3f866c846bc
X-CR-MTA-TID: 64aa7808
Received: from 8d57969cc8ae.2 (cr-mta-lb-1.cr-mta-net [104.47.14.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 610AB920-0EC0-47AB-B264-AB131210F942.1; 
 Tue, 13 Aug 2019 18:57:09 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2050.outbound.protection.outlook.com [104.47.14.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 8d57969cc8ae.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 13 Aug 2019 18:57:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NnrbgLtjMOnW3JRdFhkw/KVCsMunFDxOIy0pPHLs1+KcG2WLzZugBHUkpckrZ15FsoulrTtXQSbnGY3DzUK0VFptYed6V4931SdiJcPT34vO/g9GscVHfPycsFKzi/9DOSYAK+5TDyjCvfpvodlQKbJekhMkvUI7Ip+4pZBtkYAMNsYhUrHrpmPahkBI/aht9hXAd3T8N/SqvISc0HLH9vSOzhhXsFmHLjzcczLtZTFTESDPH07Ks7N1oL1uCC0hTCyw0eQAy/NHNjNI9LcpEeJIp5xHm+0Ujn4b7KRmreKmQtejV/fJ7oQBr1fGwmzZpl4zJn7GYP0gr7QpkpnxYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXS+19EySAh24nAhVPiG8xi7E1d2fYY/OhNbsCiUuto=;
 b=TswH91Zv43dIYZqL7slt8Eb9u/5JIDMggcNVcqe9UWS8Z6cKoU7LRS10NI4s8/+DfVVsQQHZSc6Q5WVbkrxyOZdOuD5VkDlczSIuRxj7DUE1vmZmZOtr1+g+97/Rm36SH2et3qq5y+mpeC3/GPy+LCEJtiwYqPwocCNfcRDI25DfUeQuK0PlHJUvJIgnQViUUAy4nWcSSeFQ9vFHIyfR+ZW/LJfwyQRdX414aKHRTDxa9t8WdZYuLoGM8RtVMoBjBn+Q/R+anWhYMhpguSJSdxqVvGUjtPBhfRVW/ycmQCz50WLPRZkP+27SBDKe5k53b4BXBzjPP6skMA1o5ZgzTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXS+19EySAh24nAhVPiG8xi7E1d2fYY/OhNbsCiUuto=;
 b=pwO4xYYigEzG32JtXy67ykWXCeQH/8ckDriD5O51mKUc6RZIEApB0QaHhrW2MVtQpiBZL1nFHsNCORBgO/feIOPUcjYv+ybVjl3GiTVDYMTrA23p7sb0pMf01Y3+/lD8pYAdv6A+EW82yVyWPfqnh5ysyWB6sJxWklB2gBdD8w0=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5339.eurprd08.prod.outlook.com (52.133.240.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Tue, 13 Aug 2019 18:57:07 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:57:07 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 7/8] arm64: memory: Add comments to end of non-trivial
 #ifdef blocks
Thread-Topic: [PATCH 7/8] arm64: memory: Add comments to end of non-trivial
 #ifdef blocks
Thread-Index: AQHVUfjWCEqN1pWAMkSSiVAMc+Fl76b5bdqA
Date: Tue, 13 Aug 2019 18:57:07 +0000
Message-ID: <20190813185705.GH19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-8-will@kernel.org>
In-Reply-To: <20190813170149.26037-8-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0267.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::15) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 7299bd47-a3ce-42a0-ce89-08d7202010a1
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR08MB5339; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5339:|VI1PR0801MB1856:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB185629590A8854148660A0B181D20@VI1PR0801MB1856.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:1079;OLM:1079;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(199004)(189003)(66446008)(11346002)(6246003)(446003)(81166006)(478600001)(6486002)(4326008)(8676002)(229853002)(66066001)(14454004)(316002)(3846002)(54906003)(2906002)(8936002)(486006)(58126008)(64756008)(6436002)(66556008)(5660300002)(44832011)(1076003)(66476007)(66946007)(476003)(52116002)(6506007)(386003)(6116002)(6512007)(6916009)(86362001)(102836004)(186003)(53936002)(99286004)(25786009)(256004)(305945005)(71190400001)(71200400001)(33656002)(7736002)(26005)(76176011)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5339;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: e3QtaRitCvET0Bds7nBuIfM115I6vb5kSPxrp0jsfcisyiTC5cjIOw/fet4a1T/Iixenfk98h76QvTIDcFTzS4Phr1/OopmFgxiht+ZFcmUCK7Sd7IJQ4IFF8uiy8Y/WTON/w4Mf+GEqpAcFhwtJQ9oJZ2ucZZd4NybzJkRWTBJJvWbRfeu75vXTk4vzxUTrr1BFXvJAERD1r2iwZpYRlqHyhsuGDq/LcTul7rW4dziDm7ykmHoTG3FYx42kBfDP4POcl7NPMEF72KoecpoYTzxoq0qS5dBh7VRIE2Db9ZpG9KCCwnfoC2SRM6sbbpX72jwu7M/eo1QMRb/SEvdECQnzL3jMwvN/McNhpPULEK9pjMYwckWs+kj1pJSYd1Ke+QvJ6Vqbdznhb967M5Ji8ETl1w7OVb+Xs7xhkAVL7rQ=
Content-ID: <B19BB79C267B1048849A2B2409BDC20C@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5339
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(2980300002)(199004)(189003)(356004)(70206006)(6486002)(5660300002)(81166006)(81156014)(50466002)(58126008)(99286004)(76130400001)(316002)(97756001)(36906005)(6512007)(54906003)(8746002)(70586007)(8936002)(2906002)(6246003)(86362001)(46406003)(33656002)(47776003)(102836004)(26826003)(4326008)(336012)(6862004)(7736002)(14454004)(25786009)(229853002)(1076003)(446003)(476003)(305945005)(386003)(8676002)(23726003)(6506007)(22756006)(3846002)(76176011)(26005)(478600001)(6116002)(66066001)(186003)(11346002)(63370400001)(63350400001)(126002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1856;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 67d96b05-5ebf-4af3-d787-08d720200a08
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(710020)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1856; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: whIu4UzYl3+2vIL3WfuxwqsSKvUvuxrH49whqq9uXRNvCl1KKy6Ao1PwrKrw7tpuXCY3Jdsy+/2UAMXMNKTkvttrmgyDCALzZgp43TOGFjNKhJekjibYqEMvvjQ+mAjNOEgHr/MWBbZROntHVfnUBie0Y2VKL0VMJ1DosKR1q9Hd/OnGrzU+NI/l/WESmcxZy4zK/jPCbWTZrQET07pAnQO997wydjaQCMkZBSB17UB1et/NAo87VXos/iTVw3/VEmrq+va0Tfb54j6xEnyKHw71YoevGWmZIMJpEQlaJ1DyXTHbw8Q0jdB28nKAW9O+uTHPnFCZoJqExamsc8kDhftrdYVxz4caXjVWag5z9lXIjnCCBdVRMm4M7DaHUmBJvH1kZSSCjnzlhg/BynmySRUHchlh7bsHpq8B2V+hz/M=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:57:18.5555 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7299bd47-a3ce-42a0-ce89-08d7202010a1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115725_249316_CA1AF1A1 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:60c listed in]
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

On Tue, Aug 13, 2019 at 06:01:48PM +0100, Will Deacon wrote:
> Commenting the #endif of a multi-statement #ifdef block with the
> condition which guards it is useful and can save having to scroll back
> through the file to figure out which set of Kconfig options apply to
> a particular piece of code.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index e902132b808c..d31e4b6e349f 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -57,11 +57,13 @@
>  #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
>  #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
>  #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
> +
>  #if VA_BITS > 48
>  #define VA_BITS_MIN		(48)
>  #else
>  #define VA_BITS_MIN		(VA_BITS)
>  #endif
> +
>  #define _VA_START(va)		(-(UL(1) << ((va) - 1)))
>  
>  #define KERNEL_START      _text
> @@ -86,7 +88,7 @@
>  #else
>  #define KASAN_THREAD_SHIFT	0
>  #define KASAN_SHADOW_END	(_VA_START(VA_BITS_MIN))
> -#endif
> +#endif /* CONFIG_KASAN */
>  
>  #define MIN_THREAD_SHIFT	(14 + KASAN_THREAD_SHIFT)
>  
> @@ -224,7 +226,7 @@ static inline unsigned long kaslr_offset(void)
>  #define __tag_shifted(tag)	0UL
>  #define __tag_reset(addr)	(addr)
>  #define __tag_get(addr)		0
> -#endif
> +#endif /* CONFIG_KASAN_SW_TAGS */
>  
>  static inline const void *__tag_set(const void *addr, u8 tag)
>  {
> @@ -263,7 +265,7 @@ extern phys_addr_t __phys_addr_symbol(unsigned long x);
>  #else
>  #define __virt_to_phys(x)	__virt_to_phys_nodebug(x)
>  #define __phys_addr_symbol(x)	__pa_symbol_nodebug(x)
> -#endif
> +#endif /* CONFIG_DEBUG_VIRTUAL */
>  
>  #define __phys_to_virt(x)	((unsigned long)((x) - physvirt_offset))
>  #define __phys_to_kimg(x)	((unsigned long)((x) + kimage_voffset))
> @@ -323,14 +325,14 @@ static inline void *phys_to_virt(phys_addr_t x)
>  	u64 __addr = VMEMMAP_START + (__idx * sizeof(struct page));	\
>  	(struct page *)__addr;						\
>  })
> -#endif
> +#endif /* !CONFIG_SPARSEMEM_VMEMMAP || CONFIG_DEBUG_VIRTUAL */
>  
>  #define virt_addr_valid(addr)	({					\
>  	__typeof__(addr) __addr = addr;					\
>  	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
>  })
>  
> -#endif
> +#endif /* !ASSEMBLY */
>  
>  /*
>   * Given that the GIC architecture permits ITS implementations that can only be
> @@ -345,4 +347,4 @@ static inline void *phys_to_virt(phys_addr_t x)
>  
>  #include <asm-generic/memory_model.h>
>  
> -#endif
> +#endif /* __ASM_MEMORY_H */
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
