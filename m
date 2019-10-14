Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5C1D6680
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 17:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyF/xpeEUXoCFL6Wo7osV4sf2xh9v5Tk5tFmFbJB6bw=; b=diVo+4eJuvh++h
	nH2zj1yPeLoR6r37SCc8MG54T0Jqu9LOmwAHqpkEMAy2YSei6WomvopK1UJYPrQ3XMBTH5dcsmXNJ
	50p3MF9zr3dyqL0x8wFkS/VBgZQYV+z7j5unFM5VTPsa3N163rIjuuRUFbiU1iZZWF2yK4hjo2BYq
	xXDrtsfbiyZJCRYGWJdoQU14JfinfMlZKVQl0icFoMSUdQpYHZSuAYJdLThl3CnLYTtQXgdG/anqS
	Cs59VE6n2mHQeYXFc7OBN7QeRRRupfI8WNcKts0lvTX+ACbyH8rqmsJItZfpB6yYRBStZZeKhZAmc
	LrGCOG1kBYh8vVQc7Osw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2cI-0001O9-IN; Mon, 14 Oct 2019 15:50:38 +0000
Received: from mail-eopbgr00061.outbound.protection.outlook.com ([40.107.0.61]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2cA-0001Mp-0r
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 15:50:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gIoCbjfgqtqX+bf6NrJTLFtDvb/O9kJZlsrfNurJFY=;
 b=IWlm4dFvuW+eglH9+0khhh/Qr1HPbnqtR8NNHxs6OKF3oG/4v3gfjGN3qGeOdceNDHjdxgeKznqXdu0dqjhrtSXCSHgV53pFUIFG69oIBMwG8ths8kwBEZHWj86onJYCIbwIDV/dmwswH0hCmdEKDCnvDd1A0POdv/4+0tnKUJM=
Received: from DB6PR0801CA0065.eurprd08.prod.outlook.com (2603:10a6:4:2b::33)
 by VI1PR08MB4400.eurprd08.prod.outlook.com (2603:10a6:803:102::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.19; Mon, 14 Oct
 2019 15:50:25 +0000
Received: from AM5EUR03FT010.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::202) by DB6PR0801CA0065.outlook.office365.com
 (2603:10a6:4:2b::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Mon, 14 Oct 2019 15:50:25 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT010.mail.protection.outlook.com (10.152.16.134) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Mon, 14 Oct 2019 15:50:23 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Mon, 14 Oct 2019 15:50:21 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8119e232b0fe8f23
X-CR-MTA-TID: 64aa7808
Received: from f04d66514384.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.13.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B68B8034-31D8-47AA-86D7-01A5309BBCBD.1; 
 Mon, 14 Oct 2019 15:50:14 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2051.outbound.protection.outlook.com [104.47.13.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f04d66514384.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 14 Oct 2019 15:50:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjRm4oIjgf/3UMpbtjiF5QoTwaxP+RuPM3aSRKC/J0GFkmxhVOdOQaiatDSJpqUtP4N1UKGOO0RiDN0yMFCmIBqjCghhFBrzHmac3Mfee/+s2gpJuhD7L4m7+TAg5gklbUwzkqVvu1WfjcnicS+4ZmU7k0zFZMcbpNedgYprQ7dW/06TJOi1t3kbdaEjvxJnQyhGnSuNJQknepN5OuDz8BSzbPuUaQq0FrAFyUHEqH4XYxJVHv3gM3f3hNTtV1fP51eJHf4ivWTNhBmZS0CfVcJRw1gE+3IhJdUWkfRkfYzhcmVZp125+90HCsj+YHa5xSrrmO9i3dfP590nQ1EvvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ek5v3vIQfWWOoJ30aMK/1wdUl++wjXgDbrSO6LB123A=;
 b=Mr2FzGgcYk06yULthAlLZVZEFLqJ0wWujo2jyUlhNKE1aMF8UDwcpuemmPgngAp4a9dCS68hesh2ZvzVt6+c1UNb9lg5CUO7D5QghSJrhn/si86crHlUTBS/qyd3R06IWX4r9rHMPdYUlqjP1OAI1U8lFN3BUF0WrEoS4wc9CMB+feWmhz+qs8/kJcoPWFZpk1mubI074xAzWJvBsKKTzJ9hsoXySOZn/dDBkylts8nnPxa5WWCO9UdtO+HWOq7lBU6vx0Ek038EUldWlopS8ZaN8mb4FfFFi1kyyXaEspLj+N20L+ZWwsBbgal73MGDxXkgpkxTpvdR2a+3R48EKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ek5v3vIQfWWOoJ30aMK/1wdUl++wjXgDbrSO6LB123A=;
 b=8TaBfm8kOhbfvqcqpKlSYHyA6qcdk3yDmsWpZkwTe/bWqbXwpKsudxymsugfQd8nTV+JD2FqToH/mxFhM59LiXryRBwGt081SdB30/HuXvhyiKEXBHwsTn+AKprBUOGjBl7S93e1CtORK6MwHHgG3fchajFN2dTtWvHHMkWczgM=
Received: from AM4PR08MB2802.eurprd08.prod.outlook.com (10.171.188.27) by
 AM4SPR01MB269.eurprd08.prod.outlook.com (10.171.191.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Mon, 14 Oct 2019 15:50:12 +0000
Received: from AM4PR08MB2802.eurprd08.prod.outlook.com
 ([fe80::f888:998d:df8e:7445]) by AM4PR08MB2802.eurprd08.prod.outlook.com
 ([fe80::f888:998d:df8e:7445%7]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 15:50:12 +0000
From: Dave P Martin <Dave.Martin@arm.com>
To: Suzuki Poulose <Suzuki.Poulose@arm.com>
Subject: Re: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
Thread-Topic: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
Thread-Index: AQHVf45d3fyKFJDtg0OjKsHZE3QEVqdVYdoA///5kQCAADSdgIAAI4OAgASb/gD///42AIAAAUIA
Date: Mon, 14 Oct 2019 15:50:11 +0000
Message-ID: <20191014155009.GM24047@e103592.cambridge.arm.com>
References: <20191010171517.28782-1-suzuki.poulose@arm.com>
 <20191010171517.28782-2-suzuki.poulose@arm.com>
 <20191011113620.GG27757@arm.com>
 <4ba5c423-4e2a-d810-cd36-32a16ad42c91@arm.com>
 <20191011142137.GH27757@arm.com>
 <418b0c4b-cbcd-4263-276d-1e9edc5eee0b@arm.com>
 <20191014145204.GS27757@arm.com>
 <12e002e7-42e8-c205-e42c-3348359d2f98@arm.com>
In-Reply-To: <12e002e7-42e8-c205-e42c-3348359d2f98@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.5.23 (2014-03-12)
x-originating-ip: [217.140.106.54]
x-clientproxiedby: LO2P265CA0277.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::25) To AM4PR08MB2802.eurprd08.prod.outlook.com
 (2603:10a6:205:7::27)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Dave.Martin@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 0aa9e12e-d820-42cf-e2fb-08d750be399f
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM4SPR01MB269:|AM4SPR01MB269:|VI1PR08MB4400:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB4400BA563448060C4456D26DFE900@VI1PR08MB4400.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01901B3451
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(199004)(189003)(478694002)(81166006)(6486002)(8676002)(81156014)(8936002)(186003)(6512007)(6436002)(52116002)(7736002)(66476007)(66556008)(64756008)(53546011)(386003)(66446008)(66946007)(6506007)(66066001)(76176011)(6862004)(86362001)(6636002)(99286004)(11346002)(476003)(446003)(6246003)(229853002)(486006)(478600001)(25786009)(71190400001)(71200400001)(256004)(4326008)(14444005)(3846002)(1076003)(6116002)(316002)(14454004)(58126008)(102836004)(305945005)(26005)(54906003)(33656002)(2906002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4SPR01MB269;
 H:AM4PR08MB2802.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Y83Br3Jmc12ncqAFfysjY4O0c1V1x/SElCo4YIoRT1SpjBMaom7J/C+ZvJykCFZkRNlzZzfCXH7TZSCHdzTeYD7rl/PrtQKSxOrMl8GoNwqprfoftARukvUKGQ/UozZGZ6Y9cynZNHVdls1As4UHPUv+9mecyLWpwxzBo5srqWi0GSi3KKmltNj59Q5rIooiBNXcxepajWBiLIhjjhb8A6qBrax/y0czAMr8hQVqvLmqqwHwzk6M4W4w3Yib68CfFISqhhE3tBVHQZSK5z0wKl+HEWTAhmxh8uofRLGjwDiktNTs7E6UwOPoGnPdoIEuQ4Dfn8vxrINilRdGuUCgl4zrksyvp4vcR1TO80eEkZMpIvQeTk7nG6VqK3XXCJX4eh3Djnj/f2fCWT4kgAZQ2fATryHYEk82Gfe/krpnyrU=
Content-ID: <5A941A56EE2B9D47B90996BFD5A1EE55@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4SPR01MB269
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Dave.Martin@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT010.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(396003)(346002)(478694002)(189003)(40434004)(199004)(126002)(336012)(54906003)(81156014)(81166006)(476003)(23726003)(99286004)(446003)(478600001)(63350400001)(6486002)(11346002)(26005)(486006)(1076003)(26826003)(3846002)(6116002)(46406003)(36906005)(8676002)(316002)(66066001)(47776003)(14444005)(58126008)(2906002)(5024004)(33656002)(50466002)(70586007)(7736002)(229853002)(70206006)(356004)(86362001)(76130400001)(53546011)(14454004)(5660300002)(305945005)(8746002)(8936002)(76176011)(22756006)(25786009)(186003)(6636002)(6246003)(107886003)(102836004)(6506007)(386003)(6512007)(97756001)(6862004)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4400;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ebbc2d65-6d87-4666-2987-08d750be328c
X-Forefront-PRVS: 01901B3451
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dRDYW8t+cmq2IrdXxx1HHsG966YQ1YlzqJhXfxwM7/58ikXZvnr2QV47hyvCgPDV92OK8i0XhNxgd6/JxsjMg8CKE73Jklq09H9fpmGtOMq3bXtfYmAC/eR1DkOkyw1IyPu4fLQil60Y93I+D0EYRfKPZFfF1fV0xaTRO3Ld2Hus6OKiDyBJrPt+WsJlyH6v5O9JrBKqmFl/RS3rJ8iy+Y2iwpCwt46AJ267OYZ0jpCwpgDd7TPu/E1s9789TA8f7Gm/mCb3cT8SZaa9o9wEwPom9qlvhEFFQoCTyT84kZJkl72Fwkp+suX3KCOXdqvNRG0uSiZV0E3UYhgwA00ZdC5+wo2Udjagn/8jBZ7vz73pkQE+lb7jmhZU/R/yqPi+uv8NeleNba/4uJMdQ/ZEwEol08gW+bFp4ZO+oHtkE/k=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2019 15:50:23.6442 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa9e12e-d820-42cf-e2fb-08d750be399f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_085030_257488_98BE48D6 
X-CRM114-Status: GOOD (  28.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 04:45:40PM +0100, Suzuki K Poulose wrote:
>
>
> On 14/10/2019 15:52, Dave Martin wrote:
> > On Fri, Oct 11, 2019 at 06:28:43PM +0100, Suzuki K Poulose wrote:
> >>
> >>
> >> On 11/10/2019 15:21, Dave Martin wrote:
> >>> On Fri, Oct 11, 2019 at 01:13:18PM +0100, Suzuki K Poulose wrote: > Hi Dave
> >>>>
> >>>> On 11/10/2019 12:36, Dave Martin wrote:
> >>>>> On Thu, Oct 10, 2019 at 06:15:15PM +0100, Suzuki K Poulose wrote:
> >>>>>> The NO_FPSIMD capability is defined with scope SYSTEM, which implies
> >>>>>> that the "absence" of FP/SIMD on at least one CPU is detected only
> >>>>>> after all the SMP CPUs are brought up. However, we use the status
> >>>>>> of this capability for every context switch. So, let us change
> >>>>>> the scop to LOCAL_CPU to allow the detection of this capability
> >>>>>> as and when the first CPU without FP is brought up.
> >>>>>>
> >>>>>> Also, the current type allows hotplugged CPU to be brought up without
> >>>>>> FP/SIMD when all the current CPUs have FP/SIMD and we have the userspace
> >>>>>> up. Fix both of these issues by changing the capability to
> >>>>>> BOOT_RESTRICTED_LOCAL_CPU_FEATURE.
> >>>>>>
> >>>>>> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> >>>>>> Cc: Will Deacon <will@kernel.org>
> >>>>>> Cc: Mark Rutland <mark.rutland@arm.com>
> >>>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
> >>>>>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >>>>>> ---
> >>>>>>   arch/arm64/kernel/cpufeature.c | 2 +-
> >>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>>>
> >>>>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> >>>>>> index 9323bcc40a58..0f9eace6c64b 100644
> >>>>>> --- a/arch/arm64/kernel/cpufeature.c
> >>>>>> +++ b/arch/arm64/kernel/cpufeature.c
> >>>>>> @@ -1361,7 +1361,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> >>>>>>        {
> >>>>>>                /* FP/SIMD is not implemented */
> >>>>>>                .capability = ARM64_HAS_NO_FPSIMD,
> >>>>>> -              .type = ARM64_CPUCAP_SYSTEM_FEATURE,
> >>>>>> +              .type = ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE,
> >>>>>
> >>>>> ARM64_HAS_NO_FPSIMD is really a disability, not a capability.
> >>>>>
> >>>>> Although we have other things that smell like this (CPU errata for
> >>>>> example), I wonder whether inverting the meaning in the case would
> >>>>> make the situation easier to understand.
> >>>>
> >>>> Yes, it is indeed a disability, more on that below.
> >>>>
> >>>>>
> >>>>> So, we'd have ARM64_HAS_FPSIMD, with a minimum (signed) feature field
> >>>>> value of 0.  Then this just looks like an ARM64_CPUCAP_SYSTEM_FEATURE
> >>>>> IIUC.  We'd just need to invert the sense of the check in
> >>>>> system_supports_fpsimd().
> >>>>
> >>>> This is particularly something we want to avoid with this patch. We want
> >>>> to make sure that we have the up-to-date status of the disability right
> >>>> when it happens. i.e, a CPU without FP/SIMD is brought up. With SYSTEM_FEATURE
> >>>> you have to wait until we bring all the CPUs up. Also, for HAS_FPSIMD,
> >>>> you must wait until all the CPUs are up, unlike the negated capability.
> >>>
> >>> I don't see why waiting for the random defective early CPU to come up is
> >>> better than waiting for all the early CPUs to come up and then deciding.
> >>>
> >>> Kernel-mode NEON aside, the status of this cap should not matter until
> >>> we enter userspace for the first time.
> >>>
> >>> The only issue is if e.g., crypto drivers that can use kernel-mode NEON
> >>> probe for it before all early CPUs are up, and so cache the wrong
> >>> decision.  The current approach doesn't cope with that anyway AFAICT.
> >>
> >> This approach does in fact. With LOCAL_CPU scope, the moment a defective
> >> CPU turns up, we mark the "capability" and thus the kernel cannot use
> >> the neon then onwards, unlike the existing case where we have time till
> >> we boot all the CPUs (even when the boot CPU may be defective).
> >
> > I guess that makes sense.
> >
> > I'm now wondering what happens if anything tries to use kernel-mode NEON
> > before SVE is initialised -- which doesn't happen until cpufeatures
> > configures the system features.
> >
> > I don't think your proposed change makes anything worse here, but it may
> > need looking into.
>
> We could throw in a WARN_ON() in kernel_neon() to make sure that the SVE
> is initialised ?

Could do, at least as an experiment.

Ard, do you have any thoughts on this?

Cheers
---Dave
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
