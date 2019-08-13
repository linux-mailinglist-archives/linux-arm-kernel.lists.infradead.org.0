Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A7A8C124
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTV9blyAbBvXimiPOZqE/4sVzaOYROAAS8UofnwnlyQ=; b=pjt03/4t0S9qcz
	86YSdubMucRZVKaBjJoep18XQnCIyETBlCBzM0PKApGoeXnqwCf8EJbG8j2kPOe3DG37J5VR7AK5n
	i7KUswC/GyIzgxQ+E7hnOpR0ZrMl7EIpSHTWDH4Msk/nVWs42OrgztXAMP+rzpmrXopa2wL8Ldhrx
	Ec39HeGjRDktkQ2LuCtRTe+ahRL4+OKBeeFnFLvd4M+9bCJrAcT9PbVUdf2h442LkRD0pUqEPFK9R
	zBiNsn7iCMpApI6IF4YPIIkTEGU0E3RXFgjHexi1awcchXU8B0pBCp04T5fYJokqCwtqVboFCFphF
	9Hr7BJ6CLgzzzmTbXjZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbym-0000Yg-D3; Tue, 13 Aug 2019 18:57:08 +0000
Received: from mail-eopbgr60061.outbound.protection.outlook.com ([40.107.6.61]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbyb-0000YI-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:56:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzH+UvF0l9sAXHJhpbdLgQMgFZhrtTKwD5+gxwSs3t8=;
 b=CrJdcUnCydONpkO/sCYjmuKDimWsLl3VtPLULuyFSocegifujiNmMyX2ZU+Ch8ZQEP/lCas8tyafWGJodKmDg9T5MNKunR3oDDNJnol3h58KeijyZAMUrKyZ39lpf20GLDBVqXDOcZdqmxhKVzZt3a6CUx9YC1bQEoBgbuwrCzI=
Received: from AM4PR08CA0054.eurprd08.prod.outlook.com (2603:10a6:205:2::25)
 by VI1PR0802MB2605.eurprd08.prod.outlook.com (2603:10a6:800:b0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Tue, 13 Aug
 2019 18:56:51 +0000
Received: from DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by AM4PR08CA0054.outlook.office365.com
 (2603:10a6:205:2::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15 via Frontend
 Transport; Tue, 13 Aug 2019 18:56:51 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT062.mail.protection.outlook.com (10.152.20.197) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 13 Aug 2019 18:56:50 +0000
Received: ("Tessian outbound cc8a947d4660:v26");
 Tue, 13 Aug 2019 18:56:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 68284817487c8fb4
X-CR-MTA-TID: 64aa7808
Received: from cd0acede788a.2 (cr-mta-lb-1.cr-mta-net [104.47.14.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A3CB8318-70B8-4831-A322-69FC94534FF1.1; 
 Tue, 13 Aug 2019 18:56:42 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2051.outbound.protection.outlook.com [104.47.14.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cd0acede788a.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 13 Aug 2019 18:56:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RaLcJA45azOCrSY6sRkMawxJqKDO7qSE/G+ImPbCx7CkjTmDPpQcCA+WTZsnC51g0nN4A+s7LRUK/wONQru7jjMTIdIfbY0PdY+K3mzSjcdpXKAufIn8Wu1Wx21UcOrfVbNm6e5cvTtnJ0gEoBTwPwdkSHZGLD8OX7NKn5WLAkv07DY1JQ3zctTzCGSSD4QrnFg9UjnBIZYZ1krJ0nblmgvfpwXGHO4ZeMVcWJvmzAyEg1NSPiDh+K8ykUrNzUrx2xre5evuUtY11gA0T7MIBxP2ZFoPJpwbXlM/+KdjPpc5BqJlw22ie/fpodcF6YVaMsknxdlFfpnKxuh1qA4Veg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzH+UvF0l9sAXHJhpbdLgQMgFZhrtTKwD5+gxwSs3t8=;
 b=MoVd/Uv1bln+bKBsG3RpD0XFfDNXS+zQIrH4kAh4C4wziJLWYfsG/hAza3H16HdMUN/ks0BJ0qoaXoY0mi7YXRyrLSndrsgK8OPowSVRRjbgMjBPfxo7y5O5NU9PD1R0YffFeDXujqbwI52zUXkUV31Y1p/u4wvB6bYj9ZNWajVheTC9+A1OOSeVl9PT2zcK6HGqCSLsnmNynmNStk/jKL3hYdpExL/hZMOBTRCjMRyHRFJ0SJ0AUFxvpuo6ZmJaLXtKHV+/hNdo4ShDls8W2lEQie/kYijQev9w6285odGtM8bKw2/gesnYsk7TdZbRAkkqnW5r21005ylE1gv8dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzH+UvF0l9sAXHJhpbdLgQMgFZhrtTKwD5+gxwSs3t8=;
 b=CrJdcUnCydONpkO/sCYjmuKDimWsLl3VtPLULuyFSocegifujiNmMyX2ZU+Ch8ZQEP/lCas8tyafWGJodKmDg9T5MNKunR3oDDNJnol3h58KeijyZAMUrKyZ39lpf20GLDBVqXDOcZdqmxhKVzZt3a6CUx9YC1bQEoBgbuwrCzI=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5339.eurprd08.prod.outlook.com (52.133.240.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Tue, 13 Aug 2019 18:56:40 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 18:56:40 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 6/8] arm64: memory: Implement __tag_set() as common
 function
Thread-Topic: [PATCH 6/8] arm64: memory: Implement __tag_set() as common
 function
Thread-Index: AQHVUfjVT0kr0ZC64UWZ3YpKCNXfm6b5bboA
Date: Tue, 13 Aug 2019 18:56:40 +0000
Message-ID: <20190813185638.GG19835@capper-ampere.manchester.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-7-will@kernel.org>
In-Reply-To: <20190813170149.26037-7-will@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0268.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::16) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 56519841-5d6c-4d52-e538-08d7201fffb6
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR08MB5339; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5339:|VI1PR0802MB2605:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0802MB260556FA0B02090B371E8FD781D20@VI1PR0802MB2605.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:4941;OLM:4941;
x-forefront-prvs: 01283822F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(199004)(189003)(66446008)(11346002)(6246003)(446003)(81166006)(478600001)(6486002)(4326008)(8676002)(229853002)(66066001)(14454004)(316002)(3846002)(54906003)(2906002)(8936002)(486006)(58126008)(64756008)(6436002)(66556008)(5660300002)(44832011)(1076003)(66476007)(66946007)(476003)(52116002)(6506007)(386003)(6116002)(6512007)(6916009)(86362001)(102836004)(186003)(53936002)(99286004)(25786009)(256004)(305945005)(71190400001)(71200400001)(33656002)(7736002)(26005)(76176011)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5339;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: MH4g6p32ebRTJ+ty25p88SMcQJ2DPo3PES0fZdxHB67aga6W91y3VYXficE1pg6wB035IamQHOL4A0upQHBEfcjoglKXoaSsuAR8j/HEMdZVaHpankhefH6W+SuhZbmn639hPOa5lyxi6O9vg7dBede7kA7RoIb/dQU3o4+J0xhhYgmCQ5O6NrLMtJ6p2amG7o1AXfekVVPisjFkqoqlXSxvUEjBDduWUylVQz4DoUGc6j2l3rANUydj6iiZiqtuiLIecBW3FxWVu6qBMMN2yzFChAhT/ONeYOtplS32tycMIgguz9Qn8hnMUdxn3LmoI4QCve2SmvGgFpmMty7/rgMTGFZYr/HlQvUpyKWnAF+cXbP9LwY5AF0JVp5TGUsjBWTZIE9KBt8CZFzvL1v1Ccr43oc48EhNsoqSm8u+p10=
Content-ID: <0AB84B726CCD2C4EBD613E63529E5357@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5339
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(2980300002)(199004)(189003)(25786009)(6512007)(316002)(8936002)(476003)(486006)(229853002)(76176011)(63350400001)(6486002)(126002)(63370400001)(6862004)(102836004)(186003)(54906003)(66066001)(8746002)(5660300002)(336012)(26005)(97756001)(386003)(6506007)(22756006)(11346002)(99286004)(446003)(58126008)(14454004)(47776003)(26826003)(81166006)(1076003)(70206006)(305945005)(86362001)(2906002)(81156014)(76130400001)(7736002)(70586007)(478600001)(6246003)(8676002)(33656002)(4326008)(6116002)(23726003)(356004)(3846002)(50466002)(46406003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2605;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b78e4dc6-e4c5-4b9c-a4f8-08d7201ff9b5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0802MB2605; 
NoDisclaimer: True
X-Forefront-PRVS: 01283822F8
X-Microsoft-Antispam-Message-Info: G07rAak2AZh2yT4bugiHfcchN9EFLfj2ZCpPaYUzR/fPHTiCxZ4B7f5YoZr7iqyYZK3JEzwwnappjiRC4p13li6lqxnY3DpTGrTI4xXrYovK6+TKcxtYRVRgkcReKZBKqkdhVGS6s4VltdgM0+MBoSyUz6O3Jvw2lUYVK4rw2DPHZfMazXmGJSMqZgZxFkNaPIf7GAKjytJrNO5fOCL8Nrnile2ze5eUUai+HjxlS232VU8U1BhqdxReydo+/yf9iaL7OiQh6LU/GXHyWhU5fLlUZH90Yz5RqDp1GhPTR+3OfOZlam/e1zhjgdnkVooFXoaFB/xZoNbq2UthtupcaSGWu5zeISs9FaXI6NpSRJ24+rp6czKmG9EqdPk/dmn724a6D20LHoljs9YqrTgd1/+kylb4ZrG/h6i2ePCBiaI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2019 18:56:50.1915 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 56519841-5d6c-4d52-e538-08d7201fffb6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2605
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_115657_419311_25613E9E 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.61 listed in list.dnswl.org]
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

On Tue, Aug 13, 2019 at 06:01:47PM +0100, Will Deacon wrote:
> There's no need for __tag_set() to be a complicated macro when
> CONFIG_KASAN_SW_TAGS=y and a simple static inline otherwise. Rewrite
> the thing as a common static inline function.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Steve Capper <steve.capper@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 5552c8cba1e2..e902132b808c 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -218,20 +218,20 @@ static inline unsigned long kaslr_offset(void)
>  
>  #ifdef CONFIG_KASAN_SW_TAGS
>  #define __tag_shifted(tag)	((u64)(tag) << 56)
> -#define __tag_set(addr, tag)	(__typeof__(addr))( \
> -		((u64)(addr) & ~__tag_shifted(0xff)) | __tag_shifted(tag))
>  #define __tag_reset(addr)	untagged_addr(addr)
>  #define __tag_get(addr)		(__u8)((u64)(addr) >> 56)
>  #else
> -static inline const void *__tag_set(const void *addr, u8 tag)
> -{
> -	return addr;
> -}
> -
> +#define __tag_shifted(tag)	0UL
>  #define __tag_reset(addr)	(addr)
>  #define __tag_get(addr)		0
>  #endif
>  
> +static inline const void *__tag_set(const void *addr, u8 tag)
> +{
> +	u64 __addr = (u64)addr & ~__tag_shifted(0xff);
> +	return (const void *)(__addr | __tag_shifted(tag));
> +}
> +
>  /*
>   * Physical vs virtual RAM address space conversion.  These are
>   * private definitions which should NOT be used outside memory.h
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
