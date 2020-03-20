Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB6E18D5F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 18:40:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOwSzsMDXgkZy/H7Uz1vOw9kRD/+YjcZBLkrndt1Hrc=; b=HqX0fJ322VbT6B
	QmuanrebfbMw9aeQyQlbUcz7aP0sO17B28O1JdOegZ3dbyRwlhDX7g9zxiZDI7OuRrYE3ttt/DLKM
	buImDhuGsqS+c2nYhpL7RGaOh1BlH060Fd7cKMqKl4xhV1r9G0f3Odv8kTenp5iQHLwD7mQTxTMZm
	28yvT3cG21qNp23CbThPzevHgFHviuycOqiGa+YXvew2GLYsHBnJcBW3vAoCKkuJ7QUq7VVYhQy/U
	BatyGUCcsSVGnV1/V8OyFtVd4uEkRHQSbE+qp2uDD+HnRZ6M969vJNIlcTVx5qh3hjHwCt8imT8xK
	ISYA5IP2t5q9Vym1UMeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFLdA-0006mP-Qr; Fri, 20 Mar 2020 17:40:24 +0000
Received: from mail-eopbgr40061.outbound.protection.outlook.com ([40.107.4.61]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFLd1-0006lT-Gj
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 17:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1UXMyLHPRI9LMRz6KCwfVqkpzIqzfZoCZnMBdG+JWB0=;
 b=n/PXHMpMPm9Bj8Sj2kZa8zCdaT7EUgpxtvBoRoQFSTCxqWdLQ8aBNfmpO5odrH2nJvuuMfIHCrhWSCeTD3jzbbJxengPe7JUn1xsRaWaA/OL9mvcb3BXKjBIPya77kowadedJxJLvKUWf9Rd54s+34AwqH1ZNS0coAZRW3WUMh0=
Received: from AM0PR06CA0064.eurprd06.prod.outlook.com (2603:10a6:208:aa::41)
 by DB7PR08MB3434.eurprd08.prod.outlook.com (2603:10a6:10:42::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 20 Mar
 2020 17:40:08 +0000
Received: from AM5EUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:208:aa:cafe::e1) by AM0PR06CA0064.outlook.office365.com
 (2603:10a6:208:aa::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20 via Frontend
 Transport; Fri, 20 Mar 2020 17:40:08 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT051.mail.protection.outlook.com (10.152.16.246) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Fri, 20 Mar 2020 17:40:08 +0000
Received: ("Tessian outbound f88013e987c7:v48");
 Fri, 20 Mar 2020 17:40:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d6cbd01de5062be5
X-CR-MTA-TID: 64aa7808
Received: from e67c07784683.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 51950004-4DEF-4479-ADFA-AB04BA3CAAEB.1; 
 Fri, 20 Mar 2020 17:40:02 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e67c07784683.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 20 Mar 2020 17:40:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVteRUTsdmT1xKsDJwkVuSwDfvGDCEn8itpCq2fhTn/3dYZC0ryT5+k/2ErlJoVl16tLB5H4YcnXR1JMr8kHzTmA85hlqTkOhTayVIV7tK+D8BvrdCasbrjrlfGrRFnFWV0FB6xlY2+BYBruRxFnvfz0+53R9HIOT+H+v/mL8JZIMS5NLieTcJDxJ0on+KgXqSHN/WKrS8a+ccHB1JTv61f702lF57k/GFz/aEPwOf+ndv25zlK8N3opXsW/rGFQOJlJ8TGi4ZMmkd8/gbqiDPnyEDPIgVdHASnMtDV9cR2beO5ZYKXH7EOkT8K2L3UzoY/gVeAkMRwQWGVash8y2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1UXMyLHPRI9LMRz6KCwfVqkpzIqzfZoCZnMBdG+JWB0=;
 b=cLg1A33UaCsP+nRsEphrbIEEBNtx9sbulAItuaSDodOkQ3vT2Y5uIpvB+LgUnbF+cggMlhwKJOpkHnxC0e1b6uEhhgDY7bBge1nZdNPBz74lsJtvZmoU0n3EchPCLEvLQpO12mDeOH1WHab+PmwWg876Seb7dUakm4eboFHrC3fKbnxoeO/fgu3gxwsI/33nnxDWFSyPYmUClDrmrN3r1v7Zfw2P2wY4vDGyeM9pN65/CUzutdtdgRqrXVy+IU6pC2PqbLiJEsmS8qpA3tHeebnU6JR2GO/AwwWvaZ8oGEO6WnqZBi6zJniOXWA84f3p+Q2X8J/OMOdufBkLIjVUow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1UXMyLHPRI9LMRz6KCwfVqkpzIqzfZoCZnMBdG+JWB0=;
 b=n/PXHMpMPm9Bj8Sj2kZa8zCdaT7EUgpxtvBoRoQFSTCxqWdLQ8aBNfmpO5odrH2nJvuuMfIHCrhWSCeTD3jzbbJxengPe7JUn1xsRaWaA/OL9mvcb3BXKjBIPya77kowadedJxJLvKUWf9Rd54s+34AwqH1ZNS0coAZRW3WUMh0=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
Received: from DB7PR08MB3292.eurprd08.prod.outlook.com (52.134.111.30) by
 DB7PR08MB3466.eurprd08.prod.outlook.com (20.176.238.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Fri, 20 Mar 2020 17:39:57 +0000
Received: from DB7PR08MB3292.eurprd08.prod.outlook.com
 ([fe80::d48a:40f:822:6a0a]) by DB7PR08MB3292.eurprd08.prod.outlook.com
 ([fe80::d48a:40f:822:6a0a%7]) with mapi id 15.20.2835.017; Fri, 20 Mar 2020
 17:39:57 +0000
Date: Fri, 20 Mar 2020 17:39:46 +0000
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200320173945.GC27072@arm.com>
References: <20200316165055.31179-1-broonie@kernel.org>
Content-Disposition: inline
In-Reply-To: <20200316165055.31179-1-broonie@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: DM6PR13CA0061.namprd13.prod.outlook.com
 (2603:10b6:5:134::38) To DB7PR08MB3292.eurprd08.prod.outlook.com
 (2603:10a6:5:1f::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 DM6PR13CA0061.namprd13.prod.outlook.com (2603:10b6:5:134::38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.12 via Frontend Transport; Fri, 20 Mar 2020 17:39:51 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: de5c2e83-6055-4246-a3c8-08d7ccf5bbbd
X-MS-TrafficTypeDiagnostic: DB7PR08MB3466:|DB7PR08MB3466:|DB7PR08MB3434:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB343487A0F3668AC136E8ED7DEDF50@DB7PR08MB3434.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:972;OLM:972;
X-Forefront-PRVS: 03484C0ABF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(366004)(39860400002)(199004)(81166006)(8936002)(81156014)(54906003)(36756003)(8676002)(16526019)(26005)(2616005)(186003)(316002)(6916009)(1076003)(44832011)(8886007)(33656002)(55016002)(956004)(4326008)(52116002)(66946007)(7416002)(66476007)(66556008)(2906002)(7696005)(6666004)(86362001)(478600001)(5660300002)(45080400002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3466;
 H:DB7PR08MB3292.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: CJyxLAlsdNdFlj8RN/dp5y/VTVKzXpvthb2yKv2zVtnSixdilLbd1uAD0K0E1iRKlnZhb26rjhO/Z57qzHGwBJJ8P/0Ak+/160isp54pAhtaldEdmV/ky9bm0uiuGxv+qmS+yGXMIpz08NvB9ATbk3yge6Cv8kNR0PA9Biot6k/wCcefIY3aTLtIvwqm0RYiN/uvbbVyg/9Alakt6mlzzklS1QJ4tTxU2/1XPLRNhwzG0ALpF305sTT9K83fJ0DxOzPyHuJY3ovpc0k1yVtZe/8TEYPc7RpgXZTDk+a/EUqbIHMuemYNgGSCGyXVlN9a7hWrhAt9PeW/NkNV8qFOMO+myS0hGtvIVeIvC4WY2C9Ny6GmOLHbAwJlg9ae11rFwwioj3oHfY/mBSMTaYmTLIwpSs8kYXLWgwwJkKTtbFJySXwx2DWjOEICl0sMpGRv
X-MS-Exchange-AntiSpam-MessageData: 4hdYRuvkSHlR2jS5e1Kos0u+pH5XN7wWisGglvfxFrdWLrYGng7KV7uGGryMspqMKwSSGdeU58FXBaBGakFTjCK/bOlG48U7XlBVZ4BoCjuBpnbLcpsQ7cnCIf7tqmdHVpPyVf9aEAIXhAVlQ7V7Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3466
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(136003)(376002)(199004)(46966005)(1076003)(8936002)(86362001)(26826003)(44832011)(336012)(5660300002)(2906002)(81166006)(81156014)(956004)(4326008)(54906003)(2616005)(7696005)(8886007)(55016002)(8676002)(16526019)(26005)(186003)(33656002)(356004)(6666004)(6862004)(45080400002)(36756003)(70586007)(36906005)(478600001)(47076004)(316002)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3434;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4821911d-6d4f-45ca-ada0-08d7ccf5b51b
X-Forefront-PRVS: 03484C0ABF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7hxN65J+k/gLcuYFviRNqCES2JlB4rNXwu6/tGw9FUSI2BnFwskCR6duWH47OoFjGPTskNiF7zjObvfq13R6ieEn+3P/kODZj8mo6SUW/iOe1X81SqrH2C23VsP7vGUrOp6WLLoFBgdonPW+ywOqA2+fHgiiif/xPatZE++nV9MFBR4Fuwkw/X/wOxcG3cIJSMtS90qSl9AxDQn9rOae4jf0MbxDgQ9KrdpXIKc0D+wvVGMYiykhLuKrNwwbfiP/V2NqlLj/+4P9Tak+cY5+nXc9AkBgArAMWaJeqNA3wVK2Fbw78C2IseMQ6kudWW34etIrbGJK8u5YCOT1XxLOdC9i1tv72qbepYvOi7Jg1ThJq3MFNt6Vakb30wL9AC8W6rD0gtlfrMIQdudhIjndZBFyBvns/1K/lLmKINh/TgxJmWEmakqrNbc6jeka976yNLiFgqHMe89po741jUL9RCPkvPytWusndLY3BYpG13SaaNTMZBYebGMxUPhWG3/d/snUTvnSr7ccGc2k7UTweg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2020 17:40:08.4415 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: de5c2e83-6055-4246-a3c8-08d7ccf5bbbd
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3434
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_104015_744871_FA6A11B0 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 nd@arm.com, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 03/16/2020 16:50, Mark Brown wrote:
> This patch series implements support for ARMv8.5-A Branch Target
> Identification (BTI), which is a control flow integrity protection
> feature introduced as part of the ARMv8.5-A extensions.

i was playing with this and it seems the kernel does not add
PROT_BTI to non-static executables (i.e. there is an interpreter).

i thought any elf that the kernel maps would get PROT_BTI from the
kernel. (i want to remove the mprotect in glibc when not necessary)

i tested by linking a hello world exe with -Wl,-z,force-bti (and
verified that the property note is there) and expected it to crash
(with SIGILL) when the dynamic linker jumps to _start in the exe,
but it executed without errors (if i do the mprotect in glibc then
i get SIGILL as expected).

is this deliberate? does the kernel map static exe and dynamic
linked exe differently?

i cant tell looking at the patches where this logic comes from.

> 
> Changes:
> 
> v10:
>  - Fix build for !COMPAT configurations.
> v9:
>  - Move Kconfig addition to final patch in series.
>  - Add patch from Daniel Kiss adding BTI information to smaps, this has
>    a trivial conflict with a .rst conversion in -next.
> v8:
>  - Remove a redundant IS_ENABLED(CONFIG_ARM64_BTI) check.
> v7:
>  - Rebase onto v5.6-rc3.
>  - Move comment about keeping NT_GNU_PROPERTY_TYPE_0 internal into first
>    patch.
>  - Add an explicit check for system_supports_bti() when parsing BTI ELF
>    property for improved robustness.
> v6:
>  - Rebase onto v5.6-rc1.
>  - Fix typos s/BYTPE/BTYPE/ in commit log for "arm64: BTI: Decode BYTPE
>    bits when printing PSTATE".
> v5:
>  - Changed a bunch of -EIO to -ENOEXEC in the ELF parsing code.
>  - Move PSR_BTYPE defines to UAPI.
>  - Use compat_user_mode() rather than open coding.
>  - Fix a typo s/BYTPE/BTYPE/ in syscall.c
> v4:
>  - Dropped patch fixing existing documentation as it has already been merged.
>  - Convert WARN_ON() to WARN_ON_ONCE() in "ELF: Add ELF program property
>    parsing support".
>  - Added display of guarded pages to ptdump.
>  - Updated for conversion of exception handling from assembler to C.
> 
> Notes:
> 
>  * GCC 9 can compile backwards-compatible BTI-enabled code with
>    -mbranch-protection=bti or -mbranch-protection=standard.
> 
>  * Binutils 2.33 and later support the new ELF note.
> 
>    Creation of a BTI-enabled binary requires _everything_ linked in to
>    be BTI-enabled.  For now ld --force-bti can be used to override this,
>    but some things may break until the required C library support is in
>    place.
> 
>    There is no straightforward way to mark a .s file as BTI-enabled:
>    scraping the output from gcc -S works as a quick hack for now.
> 
>    readelf -n can be used to examing the program properties in an ELF
>    file.
> 
>  * Runtime mmap() and mprotect() can be used to enable BTI on a
>    page-by-page basis using the new PROT_BTI, but the code in the
>    affected pages still needs to be written or compiled to contain the
>    appropriate BTI landing pads.
> 
> Daniel Kiss (1):
>   mm: smaps: Report arm64 guarded pages in smaps
> 
> Dave Martin (11):
>   ELF: UAPI and Kconfig additions for ELF program properties
>   ELF: Add ELF program property parsing support
>   arm64: Basic Branch Target Identification support
>   elf: Allow arch to tweak initial mmap prot flags
>   arm64: elf: Enable BTI at exec based on ELF program properties
>   arm64: BTI: Decode BYTPE bits when printing PSTATE
>   arm64: unify native/compat instruction skipping
>   arm64: traps: Shuffle code to eliminate forward declarations
>   arm64: BTI: Reset BTYPE when skipping emulated instructions
>   KVM: arm64: BTI: Reset BTYPE when skipping emulated instructions
>   arm64: BTI: Add Kconfig entry for userspace BTI
> 
> Mark Brown (1):
>   arm64: mm: Display guarded pages in ptdump
> 
>  Documentation/arm64/cpu-feature-registers.rst |   2 +
>  Documentation/arm64/elf_hwcaps.rst            |   5 +
>  Documentation/filesystems/proc.txt            |   1 +
>  arch/arm64/Kconfig                            |  25 +++
>  arch/arm64/include/asm/cpucaps.h              |   3 +-
>  arch/arm64/include/asm/cpufeature.h           |   6 +
>  arch/arm64/include/asm/elf.h                  |  50 ++++++
>  arch/arm64/include/asm/esr.h                  |   2 +-
>  arch/arm64/include/asm/exception.h            |   1 +
>  arch/arm64/include/asm/hwcap.h                |   1 +
>  arch/arm64/include/asm/kvm_emulate.h          |   6 +-
>  arch/arm64/include/asm/mman.h                 |  37 +++++
>  arch/arm64/include/asm/pgtable-hwdef.h        |   1 +
>  arch/arm64/include/asm/pgtable.h              |   2 +-
>  arch/arm64/include/asm/ptrace.h               |   1 +
>  arch/arm64/include/asm/sysreg.h               |   4 +
>  arch/arm64/include/uapi/asm/hwcap.h           |   1 +
>  arch/arm64/include/uapi/asm/mman.h            |   9 ++
>  arch/arm64/include/uapi/asm/ptrace.h          |   9 ++
>  arch/arm64/kernel/cpufeature.c                |  33 ++++
>  arch/arm64/kernel/cpuinfo.c                   |   1 +
>  arch/arm64/kernel/entry-common.c              |  11 ++
>  arch/arm64/kernel/process.c                   |  36 ++++-
>  arch/arm64/kernel/ptrace.c                    |   2 +-
>  arch/arm64/kernel/signal.c                    |  16 ++
>  arch/arm64/kernel/syscall.c                   |  18 +++
>  arch/arm64/kernel/traps.c                     | 131 ++++++++--------
>  arch/arm64/mm/dump.c                          |   5 +
>  fs/Kconfig.binfmt                             |   6 +
>  fs/binfmt_elf.c                               | 145 +++++++++++++++++-
>  fs/compat_binfmt_elf.c                        |   4 +
>  fs/proc/task_mmu.c                            |   3 +
>  include/linux/elf.h                           |  43 ++++++
>  include/linux/mm.h                            |   3 +
>  include/uapi/linux/elf.h                      |  11 ++
>  35 files changed, 560 insertions(+), 74 deletions(-)
>  create mode 100644 arch/arm64/include/asm/mman.h
>  create mode 100644 arch/arm64/include/uapi/asm/mman.h
> 
> 
> base-commit: f8788d86ab28f61f7b46eb6be375f8a726783636
> -- 
> 2.20.1
> 

-- 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
