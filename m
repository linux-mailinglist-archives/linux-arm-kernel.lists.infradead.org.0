Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5D3E8E86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTkxVOkWqxYJnufPXNPtEuyVr9ITA3ehzfIaxOtz/8E=; b=uwrvZLUstUxhbJ
	R84TKTN5z8imu3/U6kzzI3+h07R0SI2q9TPS/aaXv229ze95EjrW2hy0VLxEQi5jRFfZLvOA5ppSd
	IF2Kh8PwCFUdlEtca2WP3i8H0xm5ZjttiHKcGaHZlBpudZHaD8WetALyl4pbeR0AJQ5j02ofm1k4U
	muZULY420kjLbg3uQ3FuJiF3MlRVrQVsPYJsy52n93Vb0QKvQZ586IQv2YUgJXqyl3jrtygxR2iLW
	dxaIUUu+apiNVm2lrriL9ZJbRuaW/wobIkNwnuc6VQNWmAdCzwfTcmi5flgtIyLoIi83upTyAWhKA
	7r2/RxpSNB3TUl/FcxOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVYi-0006xz-Nj; Tue, 29 Oct 2019 17:45:32 +0000
Received: from mail-eopbgr00085.outbound.protection.outlook.com ([40.107.0.85]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVYX-0006xC-K5
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:45:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2f4ba0+DIAXbTcDvgKBAPqZqycbeLVhalNwhvVIA8I=;
 b=3MXtJgI1fXv1if+hI1Bxmp9xcKG3WkZ5E6NYnNTuSh4UdcdS/d2w7tCb5Nb0o/7klZ9Wbajvuy3MxPq7TaGnQ7EyAunV62IkxI7ln+4JlKd8lW+fsCMQEkuVoc8cUZ5m56LV8fwDA5PFJAAIYihUX6nwvpnXOxak/2tv7IcBCeo=
Received: from DB7PR08CA0005.eurprd08.prod.outlook.com (2603:10a6:5:16::18) by
 AM4PR0802MB2241.eurprd08.prod.outlook.com (2603:10a6:200:5e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.22; Tue, 29 Oct
 2019 17:45:17 +0000
Received: from AM5EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::201) by DB7PR08CA0005.outlook.office365.com
 (2603:10a6:5:16::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2387.20 via Frontend
 Transport; Tue, 29 Oct 2019 17:45:16 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT041.mail.protection.outlook.com (10.152.17.186) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2387.20 via Frontend Transport; Tue, 29 Oct 2019 17:45:16 +0000
Received: ("Tessian outbound 851a1162fca7:v33");
 Tue, 29 Oct 2019 17:45:16 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 891c0c033ce6f360
X-CR-MTA-TID: 64aa7808
Received: from b3e228b35fd0.1 (cr-mta-lb-1.cr-mta-net [104.47.10.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0AC1E519-533F-4C5B-B19A-7E7E3063B207.1; 
 Tue, 29 Oct 2019 17:45:11 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur03lp2050.outbound.protection.outlook.com [104.47.10.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b3e228b35fd0.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 29 Oct 2019 17:45:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnwVceDliHauMDh38OmktJcYSVxalmH9RjF+OE9KRzLYYX/OI5kaZSOf/dbP4GYFc1qUdIwuxYhLUnrXEOAIIlVtZOeGU+s4Dc+uN+NIeC+3Rgr42EUygF+scWRHFIdefckiSb+MidZtwsV+4IIP6f38f4cmeiVOesg6o5StXLHfIcwUs7+f3i2VvLa1UUZD9iR62IlVOL8Y/oquu9TVJy89DrCGetW5vB1Xx0qOnXoUiB+2dk7A9y/l3BSGcsMqxNz9mfS8yJwfYYm1tOym2SG14Jr/aG1F5adojwSVoUVUdovLKRneG5hvGn/RP9Q/T/2K1EH7Cj8qJbXDPLeEmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2f4ba0+DIAXbTcDvgKBAPqZqycbeLVhalNwhvVIA8I=;
 b=fubzXrGr4wIWDZqidpImlUWzpMM+XwdSEzDPeHlJ5WElQl7Wgz7UyyTGrnyErvZ392QwrQGOnFb4d1DSseD6qqTpODsWrgygKzTrru2rnKKJ/9arOECeSCk7hQL6mSRdBroj+Aax4NbUhQruGXW60euHBuvqoGmG+PGoz3tpf0sXz6BrY/4OaX5N3SkmlnBV4Mu0JsqWI5R6gfVeC1MQZUhmla93EeAvZ7sgxCF1+tANZ64Oy6pm6vbAf0vWJvyhKBb8peNOWYkApBeBCiU3AVpHpdTczD/usnslH160FmGN8kgSTD0q7NXZeSqz6g+Z3QQkiv2XcG19bun9tw7oWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2f4ba0+DIAXbTcDvgKBAPqZqycbeLVhalNwhvVIA8I=;
 b=3MXtJgI1fXv1if+hI1Bxmp9xcKG3WkZ5E6NYnNTuSh4UdcdS/d2w7tCb5Nb0o/7klZ9Wbajvuy3MxPq7TaGnQ7EyAunV62IkxI7ln+4JlKd8lW+fsCMQEkuVoc8cUZ5m56LV8fwDA5PFJAAIYihUX6nwvpnXOxak/2tv7IcBCeo=
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com (52.133.246.83) by
 VI1PR08MB4096.eurprd08.prod.outlook.com (20.178.126.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Tue, 29 Oct 2019 17:45:10 +0000
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::6c84:4a3e:f1fd:3339]) by VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::6c84:4a3e:f1fd:3339%3]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 17:45:10 +0000
From: Matthew Malcomson <Matthew.Malcomson@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: Makefile kernel address tag sanitizer.
Thread-Topic: Makefile kernel address tag sanitizer.
Thread-Index: AQHVhCNNoOSr1ytgiEqSG00mmgt5mqddSDEAgBSwtgA=
Date: Tue, 29 Oct 2019 17:45:10 +0000
Message-ID: <6f9fdf16-33fc-3423-555b-56059925c2b6@arm.com>
References: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
 <CAAeHK+zbMhErcEo66w6ZH45A3XUH_joUmimOa2RL1t1Q6AV_PQ@mail.gmail.com>
In-Reply-To: <CAAeHK+zbMhErcEo66w6ZH45A3XUH_joUmimOa2RL1t1Q6AV_PQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR04CA0075.namprd04.prod.outlook.com
 (2603:10b6:805:f2::16) To VI1PR08MB5471.eurprd08.prod.outlook.com
 (2603:10a6:803:136::19)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.49]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 34603f60-862f-4a97-1724-08d75c97c281
X-MS-TrafficTypeDiagnostic: VI1PR08MB4096:|AM4PR0802MB2241:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <AM4PR0802MB2241CDCA6EFA0E64DC8EA8D6E0610@AM4PR0802MB2241.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0205EDCD76
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(366004)(346002)(39860400002)(51914003)(199004)(189003)(66066001)(66476007)(6246003)(66946007)(66556008)(478600001)(316002)(66446008)(64756008)(966005)(8936002)(14454004)(186003)(11346002)(446003)(2616005)(6916009)(7736002)(26005)(52116002)(76176011)(2906002)(99286004)(386003)(6506007)(102836004)(53546011)(305945005)(54906003)(4326008)(6116002)(5660300002)(476003)(81156014)(81166006)(44832011)(486006)(3846002)(31686004)(229853002)(6306002)(86362001)(36756003)(31696002)(14444005)(71200400001)(6486002)(256004)(71190400001)(6512007)(8676002)(25786009)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4096;
 H:VI1PR08MB5471.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: dLSKkafpwWbAQ13lwTImZjFNoGNfoTIVcnN8MzcP2CU+58B9giGqqProQe0eMtugFVW4zUYnvI7nRVzJuk6MDVHBnyJNZ/flNRYOGM+ILmHxmJu35DArF3nm7k3pyJ5yUaDLmkAcheInlTmIz6CC5fi7kr03kf/yWNpFT8tQLlYu2cYWFr/zatYAFgOuqn4b4CMTtLyqEoTBFLvbiqYn1E36VVQ05Eqy4CpUUoE2J0SSlRLWhSx/gkxhPGY95v1+FQ8UMRDywwF8ucDSwGGJlKyCoYNtr+IDq2adhKDDv7G19Rqvyc3+neNT7eDXUXkEtj9vBT3T8NueTXOHACilBwAOgtODlD6ziZhFbRiCwwKD7f0sT+/2ic9WXtqXNZkwQ930IYgpTY2gtYOctS8YPeWL9/ZG35AkgZ0Fc4ppm+n/EsapzdGCUAU5kPoAcSg0Mip3W7aeySFyURBJSBbXIfUd6K7UACHeAW6OvoiDN5I=
x-ms-exchange-transport-forked: True
Content-ID: <2B229F439062E84CBB528068120BD8D5@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4096
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT041.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(1110001)(339900001)(51914003)(189003)(199004)(8936002)(36906005)(305945005)(7736002)(316002)(26826003)(229853002)(47776003)(356004)(22756006)(4326008)(6246003)(81166006)(8676002)(966005)(81156014)(14444005)(54906003)(14454004)(6862004)(478600001)(66066001)(6486002)(99286004)(53546011)(5660300002)(386003)(6512007)(6306002)(50466002)(23676004)(70206006)(2486003)(76176011)(31686004)(6506007)(102836004)(11346002)(3846002)(76130400001)(105606002)(26005)(436003)(446003)(25786009)(186003)(336012)(486006)(126002)(2616005)(6116002)(86362001)(36756003)(2906002)(31696002)(476003)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2241;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: a2a5a633-ef40-4ced-3b87-08d75c97be70
NoDisclaimer: True
X-Forefront-PRVS: 0205EDCD76
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DqjwpstNjW1NxO+VS/HbLMq5aw1K1lH/3Gerbi8Wq3WiW3oYzg9AXpQC6z8eY2F0P9UyY9viYjqPxcsY1sn2XZ3gUImrWMUpepdBOBM2vGisRNYYb28cIOW5B5SqgqaIbn5NIikkUA/BTCvnYsngT1tAQQ2AyMY/cpe5jarlPTMiiu3JGqh8OOVHhuhEliKc9pk4RBcPS1B5OqNkxgMmJ56rLV6wFE2PDQdY50a+suo/z20fvfaLa5CPo5JeoSbYC+nlVyYYnj/EmSYZiN1PUZwHUFDoecLkorizokfsV14T7hFTQrfRTzdgzX+p1DyBJUV6Bbd7taLhiNhtloYtZU0SqvhWHXSENAPX1Fz96yLNyHQZGHSNv8PvMCg27t/q9c07BWmXh6IIHWwRvl7EBn0kEn8HzjU7uuNQMM2uqpjjVuUhXDU7fq/eZXSkjgONKazQV4Ubm7X5Gc4UuMQUcpCQe2JRmvfeLGfmDGO5zIw=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2019 17:45:16.8540 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 34603f60-862f-4a97-1724-08d75c97c281
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_104521_722599_6B737A47 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.85 listed in list.dnswl.org]
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
Cc: nd <nd@arm.com>, kasan-dev <kasan-dev@googlegroups.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

Thanks for the clarification on that bit, could I ask another question?

I seem to have non-stack compiling with GCC running ok, but would like 
to have some better testing than I've managed so far.

I'm running on an instrumented kernel, but haven't seen a crash yet.

Is there a KASAN testsuite to run somewhere so I can proove that bad 
accesses would be caught?

Cheers,
Matthew

On 16/10/19 14:47, Andrey Konovalov wrote:
> On Wed, Oct 16, 2019 at 3:12 PM Matthew Malcomson
> <Matthew.Malcomson@arm.com> wrote:
>>
>> Hello,
>>
>> If this is the wrong list & person to ask I'd appreciate being shown who
>> to ask.
>>
>> I'm working on implementing hwasan (software tagging address sanitizer)
>> for GCC (most recent upstream version here
>> https://gcc.gnu.org/ml/gcc-patches/2019-09/msg00387.html).
>>
>> I have a working implementation of hwasan for userspace and am now
>> looking at trying CONFIG_KASAN_SW_TAGS compiled with gcc (only with
>> CONFIG_KASAN_OUTLINE for now).
>>
>> I notice the current scripts/Makefile.kasan hard-codes the parameter
>> `-mllvm -hwasan-instrument-stack=0` to avoid instrumenting stack
>> variables, and found an email mentioning that stack instrumentation is
>> not yet supported.
>> https://lore.kernel.org/linux-arm-kernel/cover.1544099024.git.andreyknvl@google.com/
>>
>>
>> What is the support that to be added for stack instrumentation?
> 
> Hi Matthew,
> 
> The plan was to upstream tag-based KASAN without stack instrumentation
> first, and then enable stack instrumentation as a separate effort. I
> didn't yet get to this last part. I remember when I tried enabling
> stack instrumentation I was getting what looked like false-positive
> reports coming from the printk related code. I didn't investigate them
> though. It's possible that some tweaks to the runtime implementation
> will be required.
> 
> Thanks!
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
