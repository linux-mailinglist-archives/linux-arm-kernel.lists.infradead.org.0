Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C010EE092
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bjPK6F3m/o0Re2stGSLEr0sWGXR4VCOo1SKHQHNe1E=; b=l3Z7pNFFJT2v54
	xXA1A+NO8gdmhuSeyZivpttgGCdl8zahPuRfwVaG/gXzec6uI035vgWwB7+5hpgusbpZTVcwD27UA
	/difGbWwxuxJvUa1maotrhyDZ7ys4LV7raEXoW/ad/7Wux/VA6UWuOV1LNYexrXgpzPdITVrN2gwc
	KBWAvEoHs9Dy4jK+AybVTCvoV+HstjUNf1VGsSI1FdLic5oYe6tBYDZpp111CubO+WUPPxB7K7AO2
	EW7HO+qdNr0AIcVWhQbJ/tx5ZPqJJlgULRB2cNtlxNIqLKyBdUO+awvLDqNF4hPPqnl03iIHbuRDT
	u/KsYdhVc1yK4YXjgznQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRc20-0000Qb-F9; Mon, 04 Nov 2019 13:04:28 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRc1s-0000Ok-88
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ORRMSGv2rFGkesJmJDWRHtB2BsJWDbuQEnKfg1jvow=;
 b=iym1wqat/Ltgw8K2eWiBBP0TF+2aheZLfYCKf2sYiAlv3URpiWwDWJ5K5HoAnGWS3aaknVL3Wqz6oHfABAiZHQ9qkqoyj8TX3G2thRbWkGayAgV0Q0ML0NtYSUCjly9yWSAw0iJAAH0s87FuHVob+Kli1baKo/61/eoHItzxHaM=
Received: from VE1PR08CA0036.eurprd08.prod.outlook.com (2603:10a6:803:104::49)
 by DBBPR08MB4267.eurprd08.prod.outlook.com (2603:10a6:10:cb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.24; Mon, 4 Nov
 2019 13:04:03 +0000
Received: from DB5EUR03FT021.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by VE1PR08CA0036.outlook.office365.com
 (2603:10a6:803:104::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.24 via Frontend
 Transport; Mon, 4 Nov 2019 13:04:03 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT021.mail.protection.outlook.com (10.152.20.238) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20 via Frontend Transport; Mon, 4 Nov 2019 13:04:03 +0000
Received: ("Tessian outbound 851a1162fca7:v33");
 Mon, 04 Nov 2019 13:03:59 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a870a74861de1579
X-CR-MTA-TID: 64aa7808
Received: from 2120e66fa18b.2 (cr-mta-lb-1.cr-mta-net [104.47.25.106])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FD506A8B-42D2-477A-AD36-4834073605C3.1; 
 Mon, 04 Nov 2019 13:03:54 +0000
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0106.outbound.protection.outlook.com [104.47.25.106])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 2120e66fa18b.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Mon, 04 Nov 2019 13:03:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkbCgIvLp6G2AodUpCMh110xHqnDlE63LLi1loCzLIZJUpeQlhOJrlLq4t7evebpPI0ZrFKTOn1yZhVt5bq7QKgTP4MAyFrOX8+N6DzVeeMp0cMb+IROQpFRMFckGy4WZZ3sKvP+cFM/wvsC+tTK+vk6EbkQMFGnR1BSdWK2n5JkwXSE2wIK120m+JINN/BitBWfY6yI9ILSvzlVhGZXQb6kZanO1p5g29qyYFR7M126ovxMYrtHTYl9d9Dq+jMBzuR2jadYI7ei4GmnXk2aUb9F9/yIPFbN0LZRbJoyUx+NUjv5D2geszOCfvKly9rmOgMhsSgAixDJJKQpC8JKIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSRwqzYZFRfuZuiIHCNwblOYFAbXzOxXZ4OYw3QN83k=;
 b=Zlxm27siW8bmC89MM9kjNWpZxdK3gCK58SYgWoXH+Z+RX/2CFxHhL9DPzzi0Vrwqlby6eUR/EgOB350WYC4GwFePUUBlWlJbovFl0VMFVhMbBsBwDdQD2nztHv0QdSZJoVLNlGP5Eig//YuX1uLPHIvfr+5Jja2B09G0mAiPC3vkAHkKu6j4zG1gt0wpgAm3nkQu9FB67tjyBLibYvW2XWHEDiZiUC2KsomAI81E+gTO+Xd9bw748d/mSyehthJDI7DSwsM+DI3xZ/E8EmrBxV32AMj5aD9zBCL1UlzJzNLSm26QhsKzwSYU1gJkFNxslmSZplJsoImGqDpJQXZ93A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSRwqzYZFRfuZuiIHCNwblOYFAbXzOxXZ4OYw3QN83k=;
 b=OCMAUq2DcwmX/6PHEw5zur9gDzk5sUsIvU7GJSRS8EGkhNkKRkp32EESYBIdw6WliL4KSaKkJHH4TJKy81slFmbrm/VkvmkUb40Q1cRFIdsGGpUUsqvEaiT4KzB0od1GnI27gqXNg5ptYNLqQQnK5VxPzpx604l9Ioa/qo3Nudc=
Received: from PR2PR08MB4843.eurprd08.prod.outlook.com (52.133.110.76) by
 PR2PR08MB4700.eurprd08.prod.outlook.com (52.133.108.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 13:03:52 +0000
Received: from PR2PR08MB4843.eurprd08.prod.outlook.com
 ([fe80::70a7:3eec:4700:3131]) by PR2PR08MB4843.eurprd08.prod.outlook.com
 ([fe80::70a7:3eec:4700:3131%2]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 13:03:51 +0000
From: Amit Kachhap <Amit.Kachhap@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Thread-Topic: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Thread-Index: AQHVjnomuaxy+Iiw8UaPeqvM+8cAdKd4LNKAgALU0oCAAAH4AA==
Date: Mon, 4 Nov 2019 13:03:51 +0000
Message-ID: <d9b738fa-b7c5-f1b2-3878-d7afa4ba7ba5@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <42c113ee-e7fc-3e94-cca0-f05f1c89fdb8@arm.com>
 <20191104125637.GB24108@willie-the-truck>
In-Reply-To: <20191104125637.GB24108@willie-the-truck>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::20) To PR2PR08MB4843.eurprd08.prod.outlook.com
 (2603:10a6:101:24::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.105.40]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5da5e06e-c97f-4c48-3d7f-08d76127778b
X-MS-TrafficTypeDiagnostic: PR2PR08MB4700:|PR2PR08MB4700:|DBBPR08MB4267:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB4267B15A143BF31C8C8FDEE68C7F0@DBBPR08MB4267.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0211965D06
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(366004)(396003)(189003)(199004)(81166006)(81156014)(7416002)(102836004)(8676002)(4326008)(66476007)(64756008)(66066001)(5660300002)(66556008)(66446008)(386003)(6506007)(71200400001)(53546011)(71190400001)(66946007)(6512007)(14454004)(229853002)(6436002)(36756003)(478600001)(11346002)(446003)(2616005)(3846002)(25786009)(6116002)(26005)(476003)(186003)(305945005)(2906002)(7736002)(31686004)(256004)(6246003)(44832011)(8936002)(99286004)(54906003)(86362001)(31696002)(76176011)(486006)(316002)(6486002)(6916009)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:PR2PR08MB4700;
 H:PR2PR08MB4843.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: ZH5PGaRnfRr57b1gSuP2rVkk7VdbUKOQUWEW5CkAdsB1vuGphpC9keGZjUKcYNVRQN6OaNVBEaK4Y4SEAlahVnI6sb2D0QevCATY5QZShVIj1E5KDPzQI5zqSuUx17zeywwrtPNf+V1gLhia4VA5MlhnggFvJAEv8bYmdE/1BXS5MP75+K2ouvrvuYmyn4uh/w/QK5JXUOyICixyaQ7AtA3wNcaW8DdeJNzzkTljTz285hrxJJyCKoDfNL25lXkoWSKsigcFMyPy76uJcOP3riPZUhGEtjfAV9YptbHF5xMzbfPooIhXB6woCT1oCgMd8lbCuRji4iALglfhp5ASkRCo0BzBq46kIdUbLycMAUiiTgChIfENLlO4+TswNzGzLAwmjf9EhOAg1Ne7RtPbluEUimEb9UtvqnuKR0GvO8dHBbNeDSe27n03gzXuIJAQ
Content-ID: <7C71A00549171B49956BEC8D60D9E624@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4700
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT021.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(136003)(376002)(1110001)(339900001)(40434004)(199004)(189003)(126002)(7736002)(6512007)(6486002)(76176011)(8676002)(305945005)(107886003)(2906002)(478600001)(6506007)(356004)(54906003)(6862004)(22756006)(6246003)(316002)(436003)(4326008)(336012)(23676004)(186003)(26005)(14444005)(53546011)(386003)(5024004)(229853002)(102836004)(6116002)(3846002)(70206006)(70586007)(476003)(2486003)(76130400001)(50466002)(81156014)(105606002)(36756003)(8936002)(81166006)(25786009)(26826003)(31686004)(31696002)(5660300002)(86362001)(14454004)(11346002)(446003)(2616005)(66066001)(486006)(47776003)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4267;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8a41a572-7531-4f20-0f1d-08d761277086
X-Forefront-PRVS: 0211965D06
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EDCgPwnB1m5+ty2dtXL4cEuCpTefQSxlaTSbOfn6jcCqrik6DJI+OCFYsAN0uU9s93RcC+lxJ/lA2iB85R3+0UgqfGjK+HhqcY5NDlujTh8ZnUxTQ0rZIVtSuQiEmM4A+0vcoMd0v9vbA9oXd3V7ptgpchBKujqZW/6Iz06RXtjX6CxMo4JogHq8N7ZtyQ71wEfLVVx3Lw3AfMO+I5dj60icELip1KxH1fmn4bS5XTypy4cI1eg+qyubf2qzmZgOCxkpFEFpktGd+cnm88XrMcdSJBQaGNrHRv/zakmlx1nV/tDFQAUNGx+Tbrsu0E5jtjn+HuEcS9LFAwLubiDZLtI4u5bg3qsuJr0rF3RiqGklCDGIl4Wd9l/h2B886FEiEvyu5SqEAa5aAL0oL44LCyBZJvPhQfl2r/B3ueO2Mitkb3XxvQfjD2Y3eBMMTVFG
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2019 13:04:03.2956 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da5e06e-c97f-4c48-3d7f-08d76127778b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4267
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_050420_295233_0FCC838F 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.75 listed in list.dnswl.org]
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
 "jthierry@redhat.com" <jthierry@redhat.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, "deller@gmx.de" <deller@gmx.de>,
 "jpoimboe@redhat.com" <jpoimboe@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "takahiro.akashi@linaro.org" <takahiro.akashi@linaro.org>,
 "mingo@redhat.com" <mingo@redhat.com>, James Morse <James.Morse@arm.com>,
 "jeyu@kernel.org" <jeyu@kernel.org>,
 "svens@stackframe.org" <svens@stackframe.org>, "duwe@suse.de" <duwe@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/4/19 6:26 PM, Will Deacon wrote:
> On Sat, Nov 02, 2019 at 05:42:25PM +0530, Amit Daniel Kachhap wrote:
>> On 10/29/19 10:28 PM, Mark Rutland wrote:
>>> This series is a reworked version of Torsten's FTRACE_WITH_REGS series
>>> [1]. I've tried to rework the existing code in preparatory patches so
>>> that the patchable-function-entry bits slot in with fewer surprises.
>>> This version is based on v5.4-rc3, and can be found in my
>>> arm64/ftrace-with-regs branch [2].
>>>
>>> Patch 1 adds an (optional) ftrace_init_nop(), which the core code uses
>>> to initialize callsites. This allows us to avoid a synthetic MCOUNT_ADDR
>>> symbol, and more cleanly separates the one-time initialization of the
>>> callsite from dynamic NOP<->CALL modification. Architectures which don't
>>> implement this get the existing ftrace_make_nop() with MCOUNT_ADDR.
>>>
>>> Recently parisc gained ftrace support using patchable-function-entry.
>>> Patch 2 makes the handling of module callsite locations common in
>>> kernel/module.c with a new FTRACE_CALLSITE_SECTION definition, and
>>> removed the newly redundant bits from arch/parisc.
>>>
>>> Patches 3 and 4 move the module PLT initialization to module load time,
>>> which simplifies runtime callsite modification. This also means that we
>>> don't transitently mark the module text RW, and will allow for the
>>> removal of module_disable_ro().
>>>
>>> Patches 5 and 6 add some trivial infrastructure, with patch 7 finally
>>> adding FTRACE_WITH_REGS support. Additional work will be required for
>>> livepatching (e.g. implementing reliable stack trace), which is
>>> commented as part of patch 7.
>>>
>>> Patch 8 is a trivial cleanup atop of the rest of the series, making the
>>> code easier to read and less susceptible to config-specific breakage.
>> I tested the whole series with my latest in-kernel ptrauth patches [1]
>> and graph_tracer/function_graph_tracer works fine, So for the whole series,
>> Tested-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>>
>> Also I gave few minor comments in the individual patches. With those
>> comments,
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
Oops sorry I meant,
Reviewed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>
> I don't think this means what you think it means. Please read:
Thanks for pointing it.
>
> Documentation/process/submitting-patches.rst
>
> Will
>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
