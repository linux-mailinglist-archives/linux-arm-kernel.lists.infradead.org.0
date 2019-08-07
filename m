Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEA184CE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSiZzI/pam8QMpTK0jApX2o6oAPVtS4j72K0pVJJ838=; b=shvmumTFLUVMLZ
	uRrD+D7UCtSsNu/ISDUu8r905Xv79BkbCflT3WBQFwtPsUhRFdu5LH5t7jSdfkMIKTDbPg/NM/32n
	5Hk0NIlFbsoE+XO+6zfpwTrOgA2Oa3MpLorIaTKFrl/owNhiXs7MNquVp2cgTOEp4JkbjC479Ewji
	GE2RoLY5R6P45jYJpjGlvMZyqjfLkh18UQf45o9mDWQDoaXBlhRDiFjmjItxvKXrd4ssAW5NlAEMj
	7ssdoGidc2kmHijBZp6zrqThQAXxzXSSemEfM7q147Lta2sUzNZP6gSwamxVdOh8PtzKEtRIwf3+9
	do2gOnVrYaEoy4FSEwXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLyc-0005J8-V3; Wed, 07 Aug 2019 13:27:39 +0000
Received: from mail-eopbgr150087.outbound.protection.outlook.com
 ([40.107.15.87] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLyP-0005HQ-9R
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=umc+itRyErsOO9sd9OE/7QNhHNeY1BXiQwL19k5AH6U=;
 b=wSwF1kvEYaGbi7RSuMR97rBqbS/xSthEBsGgbQ1YXp/OkBcZKlUIPMsztUs/yGjZtV7IUSD7oK1Dz5piQaKQEF2ePvlFbypc9ziYmkx64K8QlqnyqRsVyBQJZx/Bz14ctE+hrXe6+z95p+vkh1FcBYQ0jUIpPSCFt/ow79tFeGI=
Received: from VI1PR08CA0230.eurprd08.prod.outlook.com (2603:10a6:802:15::39)
 by AM5PR0802MB2595.eurprd08.prod.outlook.com (2603:10a6:203:a2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Wed, 7 Aug
 2019 13:27:19 +0000
Received: from DB5EUR03FT025.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::201) by VI1PR08CA0230.outlook.office365.com
 (2603:10a6:802:15::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.16 via Frontend
 Transport; Wed, 7 Aug 2019 13:27:18 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT025.mail.protection.outlook.com (10.152.20.104) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Wed, 7 Aug 2019 13:27:17 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Wed, 07 Aug 2019 13:27:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3b646c9c684f404d
X-CR-MTA-TID: 64aa7808
Received: from dd30d59543d3.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 8BC350E4-236D-4D2B-A1BD-46FDBC055268.1; 
 Wed, 07 Aug 2019 13:27:08 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2051.outbound.protection.outlook.com [104.47.1.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dd30d59543d3.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 07 Aug 2019 13:27:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfzdH98gPTg1p5zZcU9xCXHM8R1Hxah4xFzn/CkoXVzkGK9ULXWQJ99NCq4Qs6u6fV6DKJGNgoF/EuaoWL/o9hCnnJhZ0fr/UaxTRKC3kcOrwXpls/l+ibjRvgJsCyjL8LV20SWHVL44LXAbpAsEeU3zGMvtKH2IWcWWPjC7ilwUv4aNJs6jqry5h/GZv6bYwFfItipy88t6ngBahLNLSpHM8xkJAbdskoT8d+2FIfYFubCz2UDWFXBOUzQAUTs7LvrOFjT/it38GAKVGUVnIeQFYP7VVW/neQRqC0pd+lQ44WH+OJZ4CBMPEZpjfwXgbASv8jWH2JG/YdT13+FYOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=umc+itRyErsOO9sd9OE/7QNhHNeY1BXiQwL19k5AH6U=;
 b=G5d7yOdsckaO17Pr5vllE2lRYhrJ0T/A2PD3izGaUyV+8vNPPIllUpvfSGBTlw1kitJ0IP0IbC4WZAVPaX07R0Km6gmsXddLUXXVPek3MU8A0qwdsQU0Gcn96SGRJkY9iTiAvmmqyL0U73ztgNRZh7d8nejEdEmn/I7eu2MzBne2LcldemcUpkK6Q6rM7KIts+iDmKwOR1bObYcvj/psnfIfsXZsN5mYN2X6bJlU3a3zmNGkbfDKHKXa2qpw/IlgYN3XSymF2hrtd11iEnFFqUEkHx7H79Kj/ohEO9IKmLIqh/+jfjLZYe3RNgMEK73iK3p7HcG0ipTK3gCI/Oo+cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=umc+itRyErsOO9sd9OE/7QNhHNeY1BXiQwL19k5AH6U=;
 b=wSwF1kvEYaGbi7RSuMR97rBqbS/xSthEBsGgbQ1YXp/OkBcZKlUIPMsztUs/yGjZtV7IUSD7oK1Dz5piQaKQEF2ePvlFbypc9ziYmkx64K8QlqnyqRsVyBQJZx/Bz14ctE+hrXe6+z95p+vkh1FcBYQ0jUIpPSCFt/ow79tFeGI=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5388.eurprd08.prod.outlook.com (52.133.241.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Wed, 7 Aug 2019 13:27:06 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2136.010; Wed, 7 Aug 2019
 13:27:06 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH V4 06/11] arm64: mm: Introduce VA_BITS_ACTUAL
Thread-Topic: [PATCH V4 06/11] arm64: mm: Introduce VA_BITS_ACTUAL
Thread-Index: AQHVRinMHEUs+DCy6UigKTKqyxTgl6bs2ZKAgAE//wCAACYlgIABe5AA
Date: Wed, 7 Aug 2019 13:27:06 +0000
Message-ID: <20190807132704.GA17012@capper-ampere.manchester.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-7-steve.capper@arm.com>
 <20190805172643.GM4175@arrakis.emea.arm.com>
 <20190806113202.GA11778@capper-ampere.manchester.arm.com>
 <20190806144833.GE30716@arrakis.emea.arm.com>
In-Reply-To: <20190806144833.GE30716@arrakis.emea.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0130.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::22) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 4e6cb341-02cf-494e-ce23-08d71b3af7b9
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5388; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5388:|AM5PR0802MB2595:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0802MB259566EC5ADAEB82749F6FDB81D40@AM5PR0802MB2595.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 01221E3973
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(366004)(376002)(39860400002)(199004)(189003)(305945005)(1076003)(7736002)(5660300002)(6246003)(6862004)(6512007)(53936002)(8676002)(71200400001)(71190400001)(86362001)(25786009)(4326008)(66066001)(476003)(68736007)(8936002)(44832011)(33656002)(486006)(81166006)(81156014)(11346002)(54906003)(58126008)(446003)(186003)(6116002)(52116002)(14454004)(76176011)(99286004)(316002)(3846002)(386003)(229853002)(6636002)(102836004)(478600001)(66446008)(66476007)(6506007)(64756008)(66556008)(66946007)(256004)(2906002)(6436002)(6486002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5388;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: GMcWMd4UzOQ+ktZdE6fKLm7pz5HUFawrT4DEAjHIM83BSoDktLm8hQjc4Yo5XN2x1Lxo9C7EXao8HLK2JLfyWKS0X6PFP7tl5KbRn6HHkY6bCm14ldtMhm23Q0nkvexsO9oxa5DqbaCOUsUcZAXUmzgJg0MS8/w3wPPmJx/ixxWNRAWz0Ktdz8WIPT5fVrRUddNarzOq9v7Xd6HAiy0CzEPmAaJH6VnSXZ00IiZ2+w9L6mbIswaI6I5VCUV8eCLffIgX2Aa6W106mj1ntM56+6fzaskAgSDVgT3YTSBcPpEBifGhYbsxHx0YE8VfoHYOBqiJ+fQXW1y0rJ7LfZjQtkOuXBA9gpxRdSCf99B9WCT84x44Q2TJVjdaFmcjzQG3bzi3WHlejKNI9u5y1tnSDo/7D2rTWj9elli3TadhQ7g=
Content-ID: <18243CB9C9CFC2418DF094EEC13E8E7B@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5388
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT025.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(2980300002)(199004)(189003)(8746002)(86362001)(6246003)(6506007)(7736002)(386003)(33656002)(478600001)(46406003)(1076003)(305945005)(102836004)(50466002)(81156014)(97756001)(8676002)(25786009)(14454004)(8936002)(6862004)(5660300002)(4326008)(23726003)(2906002)(6116002)(81166006)(76130400001)(70586007)(99286004)(6636002)(47776003)(26826003)(54906003)(356004)(58126008)(76176011)(22756006)(63350400001)(316002)(446003)(70206006)(63370400001)(3846002)(66066001)(6512007)(6486002)(26005)(11346002)(229853002)(336012)(486006)(476003)(126002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0802MB2595;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: abd778d0-c375-4a73-0ada-08d71b3af151
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM5PR0802MB2595; 
NoDisclaimer: True
X-Forefront-PRVS: 01221E3973
X-Microsoft-Antispam-Message-Info: Yu40bk74EQXCZrPUQrWmZHGAoiCrricH01upZ6ZmVeYKo4SjOo+HIydaoRzKe5Tt4W/iJHxuWf/7oD2zDfCWjTZ1DVm2VoilLO+8uPbs/oo3D1jNChC6ge3sh2W5TGLPDbeOItttRmJrUuAGuhmUwNrLoOPVHJIH3D8ZSw669r+oXqQx1tpfdpRI7A88iztNwMRJqwUIltVULKKOaKt+1QM7kEru4abZNQGZ74xkEF3JFwf8+/WFKbB6/OIxykg6P7j2lwH0t8Nhdk7Wy6gVs6w8mCLDmROYxXI+0yJtZfK/B07k5wJDKwwlBuhZhW2NCKdV8gWHfE9eaUzohgf2qIl0243WK44iKCjku2XJvHLEiQ2UZuJjGfCiHldEYjRfwJDg4apSGX5GnoUZSA5jao6OY/9TkHS270e6DM9m8Gw=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2019 13:27:17.3856 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e6cb341-02cf-494e-ce23-08d71b3af7b9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0802MB2595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_062725_335060_D6D2C4F0 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.87 listed in list.dnswl.org]
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

On Tue, Aug 06, 2019 at 03:48:33PM +0100, Catalin Marinas wrote:
> On Tue, Aug 06, 2019 at 11:32:04AM +0000, Steve Capper wrote:
> > On Mon, Aug 05, 2019 at 06:26:43PM +0100, Catalin Marinas wrote:
> > > On Mon, Jul 29, 2019 at 05:21:12PM +0100, Steve Capper wrote:
> > > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > > index a8a91a573bff..93341f4fe840 100644
> > > > --- a/arch/arm64/include/asm/memory.h
> > > > +++ b/arch/arm64/include/asm/memory.h
> > > > @@ -37,8 +37,6 @@
> > > >   * VA_START - the first kernel virtual address.
> > > >   */
> > > >  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> > > > -#define VA_START		(UL(0xffffffffffffffff) - \
> > > > -	(UL(1) << (VA_BITS - 1)) + 1)
> > > >  #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
> > > >  	(UL(1) << VA_BITS) + 1)
> > > >  #define KIMAGE_VADDR		(MODULES_END)
> > > > @@ -166,10 +164,14 @@
> > > >  #endif
> > > >  
> > > >  #ifndef __ASSEMBLY__
> > > > +extern u64			vabits_actual;
> > > > +#define VA_BITS_ACTUAL		({vabits_actual;})
> > > 
> > > Why not use the variable vabits_actual directly instead of defining a
> > > macro?
> > 
> > I thought that it would look better to have an uppercase name for the
> > actual VA bits to match the existing code style for VA_BITS.
> > 
> > I can just rename vabits_actual => VA_BITS_ACTUAL and get rid of the
> > macro?
> 
> By tradition we use uppercase for macros and lowercase for variables. So
> I'd definitely keep the variable lowercase.
> 
> If you prefer to keep the macro as well, fine by me, I don't think we
> should bikeshed here.

Having thought about it I prefer the lower case recommendation as it's
a variable. So have made this change. :-)

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
