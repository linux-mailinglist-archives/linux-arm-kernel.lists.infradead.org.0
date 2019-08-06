Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B8B830B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBb3caKPCBNpJXm3LtCIKgG7GUFDGnL4VR/QxBpCa6A=; b=MkRhXT10W3zOCA
	5Ddvzq9Ci4QviAKQS3cgkxkqQ/NOJvNXB3FLIzocFS4cgejYCMnxv6jM1Xr5GfQIwbzc8MpFyYwPT
	oHzi8fxczuV7eYSf3QVX4z+hOdHdH04Xwa6eqXo5WYOWAtId4w+Foymbj3LRJLKysrIfKUa3Q59FU
	pSgdwAtnQcW2SmAR1f19wv5OC7g1TbL8yuVScYdzTKz2gjyzGPZ+mj77ZnqDuShYTT1jbJKzBaM7R
	YLmukUuXhxoH61iq9iKf3ytdDtS59YlhwpbNpv9Vqu2eR4YhafjEWIQRfn6HCWelyZza31320bg1/
	IrB22GdXCJIOaQB2OyNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxhi-00071H-SO; Tue, 06 Aug 2019 11:32:34 +0000
Received: from mail-vi1eur04on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::628]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxhW-00070v-HC
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OmoUPwD4nyl/Z5WHn44HoAOJpuTH9AbxGqPcsG8hnBk=;
 b=P8Lt8af2kGuXAb2hyKGGtKJmndz6OWwj/CpHwlSmNAAZ/EG/7kKB3MZCMnoo2+Ckuexa6tmwsTJYdwLe5dQOtrKyPgDq4eNVyDTKs4P3u+eC6yQSCUiw7LB4kC7gsKY3N2D06ntWHFwR67b9VjQYd4CAjlozHE81kBsRcbD/E5s=
Received: from VI1PR08CA0143.eurprd08.prod.outlook.com (2603:10a6:800:d5::21)
 by DB6PR0802MB2598.eurprd08.prod.outlook.com (2603:10a6:4:97::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.12; Tue, 6 Aug
 2019 11:32:18 +0000
Received: from DB5EUR03FT040.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::201) by VI1PR08CA0143.outlook.office365.com
 (2603:10a6:800:d5::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14 via Frontend
 Transport; Tue, 6 Aug 2019 11:32:17 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT040.mail.protection.outlook.com (10.152.20.243) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 6 Aug 2019 11:32:16 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Tue, 06 Aug 2019 11:32:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 65c43233ae7dbbed
X-CR-MTA-TID: 64aa7808
Received: from acf991b01a2f.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.6.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 76267DDB-284D-454D-B8B6-15E6728BDAAF.1; 
 Tue, 06 Aug 2019 11:32:07 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2051.outbound.protection.outlook.com [104.47.6.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id acf991b01a2f.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 06 Aug 2019 11:32:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NkCVdXPeBCtv7HG90VYSOFKlFwkl6cnq01ItUUpaJgnM3prk0lu83cf0svpZVVxMZwcVQZ7JauMY1ipOlkPiZtuYb0hUr9bDt09LuflJg25HshNyDHRBLf8vivOllpXOf28+mK9jUJUo1EiEghLRk6tnwEcS0AzleZx9ILVEDaglTR//I0moiWBZaGZVYklkBZy5Z4kfOcL5Ak9Sh37lpKCe8L2qI0NpF9MyGj9pO2urCIWaS957WQp2c3FxM0hVXradiGCIf1US+0bHBdv8/7iE2pGOmBJTtHzihZfMZ0g2UPcIZE84FD9+DL3ORFbdaYAK2rTCAISJxzOfphddfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OmoUPwD4nyl/Z5WHn44HoAOJpuTH9AbxGqPcsG8hnBk=;
 b=mFNZyzrxbkX6+vsMX/DUbh9n8JwP1zay+jMarx6vMqNVAP9enqFXnDsmeRdik+QfHceHmvgSAR2BaZmZLSNtHCTvE0KIde7bKZUi3HxaDxDO4OI92UhK7paTssOMyyKTmC9mF39boYq4yN8zATFEO7xMnOLs4kC4E1zG+aSoKvvtdJIvurQ0rxrfPJxcACDvGRFNcVPFYWxPsEuIjiQE/9yM4ROkg+WNmFCYoNucZhBypTt0PbvG5GiHNdL/5YOOlKw6/MuzOCtOggiTcTNzFHKfdfzs87YCSsTZEVVWj+gwSHRlwoQ1oc7e6OUNOiw8aaRlxSN6rimBkeSfU1GFDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OmoUPwD4nyl/Z5WHn44HoAOJpuTH9AbxGqPcsG8hnBk=;
 b=P8Lt8af2kGuXAb2hyKGGtKJmndz6OWwj/CpHwlSmNAAZ/EG/7kKB3MZCMnoo2+Ckuexa6tmwsTJYdwLe5dQOtrKyPgDq4eNVyDTKs4P3u+eC6yQSCUiw7LB4kC7gsKY3N2D06ntWHFwR67b9VjQYd4CAjlozHE81kBsRcbD/E5s=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5131.eurprd08.prod.outlook.com (10.255.4.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Tue, 6 Aug 2019 11:32:05 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2136.010; Tue, 6 Aug 2019
 11:32:05 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH V4 06/11] arm64: mm: Introduce VA_BITS_ACTUAL
Thread-Topic: [PATCH V4 06/11] arm64: mm: Introduce VA_BITS_ACTUAL
Thread-Index: AQHVRinMHEUs+DCy6UigKTKqyxTgl6bs2ZKAgAEvPAA=
Date: Tue, 6 Aug 2019 11:32:04 +0000
Message-ID: <20190806113202.GA11778@capper-ampere.manchester.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-7-steve.capper@arm.com>
 <20190805172643.GM4175@arrakis.emea.arm.com>
In-Reply-To: <20190805172643.GM4175@arrakis.emea.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0331.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a4::31) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 4095f28c-1c3e-4741-1881-08d71a61bc29
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5131; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5131:|DB6PR0802MB2598:
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2598B3BDFF87B64D2F40720581D50@DB6PR0802MB2598.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0121F24F22
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(3846002)(6116002)(256004)(2906002)(44832011)(68736007)(1076003)(6436002)(66476007)(66446008)(66946007)(8936002)(66556008)(71190400001)(8676002)(14454004)(229853002)(6486002)(316002)(81166006)(81156014)(58126008)(64756008)(76176011)(53936002)(71200400001)(6506007)(6246003)(446003)(476003)(66066001)(99286004)(386003)(7736002)(52116002)(102836004)(305945005)(486006)(6512007)(11346002)(86362001)(54906003)(4326008)(186003)(6636002)(26005)(478600001)(5660300002)(6862004)(25786009)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5131;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 0uat/Cmj7b8N5EnxFuEN41f3uQuZ7PsNwl3PFlxdruU8DWTppGBtob9qtQr75qH4ruvNHwXeTUNSwMT6CNDLZYLjLqWrxbHX46lsnw47borrQzgSufZMkOBRGgJ0x92lyhjXbPoQQj991M6wM+bhQbnaKI+Scfncrb1Wu1cLUqL7EG6JSCUuV3l6pSU5seVqWV95EpnIrKe7/n3klAaijwi/AZWhdIERcfXwc8Yh9T/S7XtQWXUUJKr/AG2vICKFfvER+VWpAlrNuk+sxk6ipEtXdNQzo8+ZzcUALScwYui+ZDLBgz3Dsil8NNMHUgQbBTvwm0i+5vT7782tWk/i1GyfZ2Kg/iepU92O/nwKEq4vbLJrC0qoJ6t81ig/3kzEDwqUOWFgKOshnfSOJvbUvKersOUZKVGpUOniOraFHC8=
Content-ID: <A038C8A7CBF2A140B9FC64FEAA02AC16@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5131
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT040.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(376002)(396003)(2980300002)(189003)(199004)(54906003)(102836004)(58126008)(8746002)(316002)(99286004)(4326008)(386003)(7736002)(305945005)(76176011)(81156014)(6506007)(22756006)(26005)(186003)(81166006)(8676002)(6116002)(3846002)(50466002)(6862004)(23726003)(2906002)(25786009)(6246003)(126002)(476003)(66066001)(446003)(11346002)(86362001)(63370400001)(486006)(47776003)(76130400001)(63350400001)(6512007)(5660300002)(97756001)(229853002)(356004)(6486002)(6636002)(26826003)(336012)(14454004)(70206006)(8936002)(478600001)(46406003)(33656002)(1076003)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2598;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0e0effb7-2820-44b0-f3ee-08d71a61b503
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0802MB2598; 
NoDisclaimer: True
X-Forefront-PRVS: 0121F24F22
X-Microsoft-Antispam-Message-Info: Mj91J0+kesreX0p4reZPf7yNel2BuPbz8OtHZyzEH9AA03RYsImXLLjwDFHCYmcMwzdO6Dlkv7vmBFAy2YM5v4j3axj3Wu6cpqxNONXo/zBrdgz3S3D79uZm0+6ynn/MVyUmHz3RniyV3qxoHxID9obxfal6f56l5fm9tRr4+/9cM3TlmHde7BZhIDT4KcqMu+62eL32Bc1Wh8T+Gnq4y/xPLCUr8PUmKMtH316agR8W9Xn2gJIxifvDKnT95SSqfsyNdA4xiFBnHKwB04O2ByVBXcll7V48mghUwAl5ImkAUxDppVlrAGtOyxLnHquaxTr7StBBmrS6bdtWXyT3T5Psq3sJBIxDDkXTZFr7NRKTIFx0j/pwmwcJaMRCte57VkHoJXd69SesHkmCVwSRF5KbW4mn37OjepdicGL9cAQ=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2019 11:32:16.6613 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4095f28c-1c3e-4741-1881-08d71a61bc29
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_043222_629692_853803D6 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:628 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "maz@kernel.org" <maz@kernel.org>, "bhsharma@redhat.com" <bhsharma@redhat.com>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On Mon, Aug 05, 2019 at 06:26:43PM +0100, Catalin Marinas wrote:
> On Mon, Jul 29, 2019 at 05:21:12PM +0100, Steve Capper wrote:
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index a8a91a573bff..93341f4fe840 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -37,8 +37,6 @@
> >   * VA_START - the first kernel virtual address.
> >   */
> >  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> > -#define VA_START		(UL(0xffffffffffffffff) - \
> > -	(UL(1) << (VA_BITS - 1)) + 1)
> >  #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
> >  	(UL(1) << VA_BITS) + 1)
> >  #define KIMAGE_VADDR		(MODULES_END)
> > @@ -166,10 +164,14 @@
> >  #endif
> >  
> >  #ifndef __ASSEMBLY__
> > +extern u64			vabits_actual;
> > +#define VA_BITS_ACTUAL		({vabits_actual;})
> 
> Why not use the variable vabits_actual directly instead of defining a
> macro?
> 

I thought that it would look better to have an uppercase name for the
actual VA bits to match the existing code style for VA_BITS.

I can just rename vabits_actual => VA_BITS_ACTUAL and get rid of the
macro?

> > diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> > index ac58c69993ec..6dc7349868d9 100644
> > --- a/arch/arm64/kernel/head.S
> > +++ b/arch/arm64/kernel/head.S
> > @@ -321,6 +321,11 @@ __create_page_tables:
> >  	dmb	sy
> >  	dc	ivac, x6		// Invalidate potentially stale cache line
> >  
> > +	adr_l	x6, vabits_actual
> > +	str	x5, [x6]
> > +	dmb	sy
> > +	dc	ivac, x6		// Invalidate potentially stale cache line
> 
> Can we not replace vabits_user with vabits_actual and have a single
> write? Maybe not in this patch but once the series is applied, they are
> practically the same. It could be an additional patch (or define a
> vabits_user macro as vabits_actual).
> 

Thanks, I think it may be better to consolidate these in an extra patch (just
before the documentation patch). I'll add this to the series.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
