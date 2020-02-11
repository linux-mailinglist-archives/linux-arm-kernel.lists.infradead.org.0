Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FF615931E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WFH2HRDn3NsNLDTB0TtloVLYT8j0UL2qJHorIyXJMc=; b=X9IGPVic7M63ep
	VAkgBd9zcAV5JPGeLNhgyDJZLoLKEmxE1I3mR1t7EJ146DNtT585OsVh9B6bV/uzxS8bYSrPbLUzC
	QS/McHCN2nbgxtfa7LsozSO2l0XfkKeJn/g1tA2WW/cvrzYSCXHq9RDbaj4sW4LUa9o0adzS6yN0i
	PxxkdcwQM4BEE/ZeubPSOB3PKe3XuoGYNIx0B7ItzbarQfDN+wHN53Ej8WdgRrQl/lVGT1iaLnIYG
	7D92D8PW8yAvjhvZrgood//wtTfpQLopjIoGuzZzFA0CFEKa/9ZX4ApFs39c8qaOyc8RdrJIpUd15
	19ST7RD1o+99CVvPUA/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XPW-0001wY-Ti; Tue, 11 Feb 2020 15:25:14 +0000
Received: from mail-db3eur04on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::610]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1XPB-0001vX-Vi
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:24:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1JabDj7HvuFx1vmUV9aRVkYIb25mz77fdQUDl8oMeA=;
 b=oRrUlD/5cK8hp911Z1oECkx9DlwIoZatpYnQMH7IuEPSxigAHaChZpgpyofsWwLnfFwOWonIso72lAlnCBNTAwNna64ZDzqL5dfj4yKKHiWd/ZT5CKJyAjAyiITN1CwVPc0gvqNHxGLYYymxw9sC6nIweVP6a4t507XaGyU9ARI=
Received: from VI1PR0802CA0003.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::13) by DB8PR08MB5484.eurprd08.prod.outlook.com
 (2603:10a6:10:111::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21; Tue, 11 Feb
 2020 15:24:49 +0000
Received: from DB5EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by VI1PR0802CA0003.outlook.office365.com
 (2603:10a6:800:aa::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.23 via Frontend
 Transport; Tue, 11 Feb 2020 15:24:48 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT032.mail.protection.outlook.com (10.152.20.162) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.18 via Frontend Transport; Tue, 11 Feb 2020 15:24:48 +0000
Received: ("Tessian outbound 0420f1404d58:v42");
 Tue, 11 Feb 2020 15:24:48 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d38dc799712aeb06
X-CR-MTA-TID: 64aa7808
Received: from b530c31315c7.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C074DD3B-302D-4FC5-B6B4-D9D70927C2EA.1; 
 Tue, 11 Feb 2020 15:24:43 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b530c31315c7.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 11 Feb 2020 15:24:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I+n8d5166ITUapudqOqigNLwvbNYfcTXeGMCvb8hOAUBLerW54aha0TlHN/xX/Vta7BVd3DUBjYra6V2sbGa7ZF5qYn3gJosq87qqe8yn4Lzitl14A6h8+Xiy8YBgGKpv6gc+zOcsfUpyPV4NGKgCxq4VKxB5e69wt7XEdOsQxwIYdemZnIagmxfJ9+f7zElNoHB52N2QPu1ktdd/0foBDHD5zrUJRjNBt72M3hpWTN22UT2oypiOwc7lPbrp2kakhy3HkhRwe8evg5yVAuM2kfLkhUHsBYL19r8FwNak84qN16xqh+jwSoACffXNK/2Jqo5ch32qGNMDZTo9C+fgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1JabDj7HvuFx1vmUV9aRVkYIb25mz77fdQUDl8oMeA=;
 b=du7nYAYa/hZuEdi7VpCOU/rB6ycANdfvuwAAD8H97xwz1CMVlTnMoaRdUGc2FgLNKHbe9RnrYi1PkK+RB6EvrKY8x4M09btLHDmk7hFWq3Fv7qnrEFf+/dU1ySdIFHVQIZLQHwm4O/lfh2lBhtgEpb721spqD/Ve7dnCeippL2I7e9PUeLmFBT1XE5mDQwxyVY0vAhx8rOYnBnYg80LPwSKbBGrlXBZleAx7nEbeoz0tM+dHcTrXuKIIB0D7BAD7MXfyG5o5ZifiSWWGFHyQgb4CGLtORAFwraGFzLRdC1eTCF4OzQwUo9Vxu8fH6kN/BnBJboZIoNQWRGSaXm3d7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1JabDj7HvuFx1vmUV9aRVkYIb25mz77fdQUDl8oMeA=;
 b=oRrUlD/5cK8hp911Z1oECkx9DlwIoZatpYnQMH7IuEPSxigAHaChZpgpyofsWwLnfFwOWonIso72lAlnCBNTAwNna64ZDzqL5dfj4yKKHiWd/ZT5CKJyAjAyiITN1CwVPc0gvqNHxGLYYymxw9sC6nIweVP6a4t507XaGyU9ARI=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
Received: from DB6PR0801MB1638.eurprd08.prod.outlook.com (10.169.225.144) by
 DB6PR0801MB1816.eurprd08.prod.outlook.com (10.169.227.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Tue, 11 Feb 2020 15:24:40 +0000
Received: from DB6PR0801MB1638.eurprd08.prod.outlook.com
 ([fe80::c994:c6af:7fbe:c87a]) by DB6PR0801MB1638.eurprd08.prod.outlook.com
 ([fe80::c994:c6af:7fbe:c87a%5]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 15:24:39 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: John Garry <john.garry@huawei.com>, peterz@infradead.org,
 mingo@redhat.com, acme@kernel.org, mark.rutland@arm.com,
 alexander.shishkin@linux.intel.com, jolsa@redhat.com, namhyung@kernel.org,
 will@kernel.org, ak@linux.intel.com
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
From: James Clark <james.clark@arm.com>
Message-ID: <91a62136-219a-766a-12e4-be2b2cc8ae54@arm.com>
Date: Tue, 11 Feb 2020 15:24:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
Content-Language: en-US
X-ClientProxiedBy: LO2P265CA0243.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::15) To DB6PR0801MB1638.eurprd08.prod.outlook.com
 (2603:10a6:4:38::16)
MIME-Version: 1.0
Received: from [10.32.36.33] (217.140.106.40) by
 LO2P265CA0243.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:8a::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Tue, 11 Feb 2020 15:24:39 +0000
X-Originating-IP: [217.140.106.40]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8d2d59f0-0abb-4777-9f96-08d7af06885c
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1816:|DB6PR0801MB1816:|DB8PR08MB5484:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB54844532436A27307EAF8587E2180@DB8PR08MB5484.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 0310C78181
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(136003)(376002)(366004)(189003)(199004)(6486002)(66946007)(66476007)(8936002)(86362001)(26005)(66556008)(4326008)(8676002)(16576012)(31696002)(52116002)(81166006)(81156014)(7416002)(53546011)(316002)(956004)(2616005)(186003)(44832011)(16526019)(31686004)(5660300002)(478600001)(2906002)(36756003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1816;
 H:DB6PR0801MB1638.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Yd0s2TDXzl0XEzogBrW4P6RQorjX7efl+cBqiGkBoXt3GoLP6sGe1Avp/8ZdBLPMApPC7wy/pzujNt4teBSGdAHvl1x2nvCStek23/rknRYwREo7xS8+lXC+epHz2gN73uapXKYf9cwTgIR4JL34V7pX4aYUve7J4zDpR9lwmxqEPdtqTwgYLaJXi8KlfAbKZ4wK+xRpzVgbvyP1u645X2KTqeHq4+ZOlLjdIFgZ5MNdoHjWaqMNFbjbTYJduxk2nhd9763lRp5EDRtkWECLHyQxGBp5vHn2fdAUumWlldTBc6WmGM4XkH2uuw0oxczHl3EOhPSWBpYtJW5CKecgvTzIttkROlhiO0NYCtOKuWQQV4vyVRQhmfIPqqaRJVn1tYccFIj4I8W3olUayAgYdGRCtmqvO9YVdO9sd9TwlEhEp198ULWL6PDiafjyv/UaWvf6ZSDSgAZZkk9Eec2bwROWB52uXEMe24knUXfSIKHjK5n7S4B5siLJSXTtg+Y3
X-MS-Exchange-AntiSpam-MessageData: sGdC9SNha6yZfXbLOqvtXrXqB120/1umeIL09+c0bkeT2SVtFQpoTfOCyJFTGWXMi39ucafm8TqAnEfJC07quTOLL/EKoJpdSl4piY/fYGZwzJFzkndmfj5uSAt+Ibi/FfSKJzOH2X6RkQcmTWRc+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1816
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(136003)(396003)(189003)(199004)(336012)(70206006)(70586007)(86362001)(356004)(2616005)(5660300002)(956004)(36756003)(31686004)(16526019)(53546011)(26005)(186003)(44832011)(4326008)(316002)(6486002)(31696002)(16576012)(478600001)(26826003)(8676002)(81156014)(81166006)(8936002)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5484;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 3a180cb6-5ec4-487d-fd65-08d7af0682e0
X-Forefront-PRVS: 0310C78181
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fu4QvZCJ5JGHsyY6BAwBk/G1/CViN0SCdDZ9QBwLyk1iQ3S2bylHu9NL+ELu1z6AFVRvik7VNbJYywwzwolaVfvZ8Hz7lylG1FgCx5nLmnDVIURTX23lb/Nw+QrLe+rPGoJdJVo4wSJuskL/rlc+WXhWtEC39u9G9nzaYNmVjWuKIa1M+ypwFDTNvD2QtPTXEYDBjq93zeLoAmQMzfZIj0YKsKd5BUljZrl6v8OUuJjZimx1gcwxsNz5r0TEXgGSK66ham+Wz/J/BfUmCjKj+qx6nSfQgG4GWJ6vYL5jLWYm752h8M70l7O7W1QvPqFUpypfDWzPCKss0CNgV356wnsJD3we2/6BfLqTFHud4nVMYG97VLLNEVDQQPV1opTQPWaQK/BHE1aG1+g1byIr4Us8t7PJoirxoue9kYXVK788McQH14kVmjE6Styi+dvhBqyFLbgsJWXETtvPupB+eKwr+IAAbHgc3n35gYyRY9g7MAuCbkAHzv3iWFTa1hWC
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2020 15:24:48.7789 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d2d59f0-0abb-4777-9f96-08d7af06885c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5484
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_072454_214023_8BF7D326 
X-CRM114-Status: GOOD (  28.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:610 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: suzuki.poulose@arm.com, linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

I tested this on an Arm N1 board and see the same list of CPU events from the JSONs
picked up so it looks ok from that point of view.

James

On 1/24/20 2:34 PM, John Garry wrote:
> Currently event aliasing for only CPU and uncore PMUs is supported. In
> fact, only uncore PMUs aliasing for when the uncore PMUs are fixed for a
> CPU is supported, which may not always be the case for certain
> architectures.
>
> This series adds support for PMU event aliasing for system and other
> uncore PMUs which are not fixed to a specific CPU.
>
> For this, we introduce support for another per-arch mapfile, which maps a
> particular system identifier to a set of system PMU events for that
> system. This is much the same as what we do for CPU event aliasing.
>
> To support this, we need to change how we match a PMU to a mapfile,
> whether it should use a CPU or system mapfile. For this we do the
> following:
>
> - For CPU PMU, we always match for the event mapfile based on the CPUID.
>   This has not changed.
>
> - For an uncore or system PMU, we match first based on the SYSID (if set).
>   If this fails, then we match on the CPUID.
>
>   This works for x86, as x86 would not have any system mapfiles for uncore
>   PMUs (and match on the CPUID).
>
> Initial reference support is also added for ARM SMMUv3 PMCG (Performance
> Monitor Event Group) PMU for HiSilicon hip08 platform with only a single
> event so far - see driver in drivers/perf/arm_smmuv3_pmu.c for that driver.
>
> Here is a sample output with this series:
>
> root@ubuntu:/# ./perf list
>   [...]
>
>   smmuv3_pmcg_100020/config_cache_miss/              [Kernel PMU event]
>   smmuv3_pmcg_100020/config_struct_access/           [Kernel PMU event]
>   smmuv3_pmcg_100020/cycles/                         [Kernel PMU event]
>   smmuv3_pmcg_100020/pcie_ats_trans_passed/          [Kernel PMU event]
>   smmuv3_pmcg_100020/pcie_ats_trans_rq/              [Kernel PMU event]
>   smmuv3_pmcg_100020/tlb_miss/                       [Kernel PMU event]
>   smmuv3_pmcg_100020/trans_table_walk_access/        [Kernel PMU event]
>   smmuv3_pmcg_100020/transaction/                    [Kernel PMU event]
>
>   [...]
>
> smmu v3 pmcg:
>   smmuv3_pmcg.l1_tlb
>        [SMMUv3 PMCG l1_tlb. Unit: smmuv3_pmcg]
>
>   [...]
>
> root@ubuntu:/# ./perf stat -v -e smmuv3_pmcg.l1_tlb sleep 1
> Using CPUID 0x00000000480fd010
> Using SYSID HIP08
>  -> smmuv3_pmcg_200100020/event=0x8a/
>  -> smmuv3_pmcg_200140020/event=0x8a/
>  -> smmuv3_pmcg_100020/event=0x8a/
>  -> smmuv3_pmcg_140020/event=0x8a/
>  -> smmuv3_pmcg_200148020/event=0x8a/
>  -> smmuv3_pmcg_148020/event=0x8a/
> smmuv3_pmcg.l1_tlb: 0 1001221690 1001221690
> smmuv3_pmcg.l1_tlb: 0 1001220090 1001220090
> smmuv3_pmcg.l1_tlb: 101 1001219660 1001219660
> smmuv3_pmcg.l1_tlb: 0 1001219010 1001219010
> smmuv3_pmcg.l1_tlb: 0 1001218360 1001218360
> smmuv3_pmcg.l1_tlb: 134 1001217850 1001217850
>
>  Performance counter stats for 'system wide':
>
>                235      smmuv3_pmcg.l1_tlb
>
>        1.001263128 seconds time elapsed
>
> root@ubuntu:/#
>
> Issues with this series which need to be addressed (aware to me):
>
> - It would be good to have a universal method to identify the system from
>   sysfs. Nothing exists which I know about. There is DMI, but this is not
>   always available (or has correct info). Maybe systems which want to
>   support this feature will need a "soc" driver, and a
>   /sys/devices/socX/machine file (which I used for testing this series -
>   this driver is out of tree currently).
>
> - Maybe it is ok, but for systems which match on the system identifier,
>   uncore PMUs should be in the system mapfile, and, as such, match on the
>   system identifier and not CPU identifier.
>
> - We need a better way in jevents.c to give a direct mapping of PMU name
>   aliases, i.e. for any PMU name not prefixed with "uncore_", we need to
>   add this to table unit_to_pmu[]. Not scalable.
>
>   Having said that, maybe the kernel can introduce some future PMU naming
>   convention in future.
>
> John Garry (7):
>   perf jevents: Add support for an extra directory level
>   perf vendor events arm64: Relocate hip08 core events
>   perf jevents: Add support for a system events PMU
>   perf pmu: Rename uncore symbols to include system pmus
>   perf pmu: Support matching by sysid
>   perf vendor events arm64: Relocate uncore events for hip08
>   perf vendor events arm64: Add hip08 SMMUv3 PMCG IMP DEF events
>
>  tools/perf/arch/arm64/util/arm-spe.c          |   2 +-
>  tools/perf/pmu-events/README                  |  47 ++++++--
>  .../hip08/{ => cpu}/core-imp-def.json         |   0
>  .../hisilicon/hip08/sys/smmu-v3-pmcg.json     |   9 ++
>  .../hip08/{ => sys}/uncore-ddrc.json          |   0
>  .../hisilicon/hip08/{ => sys}/uncore-hha.json |   0
>  .../hisilicon/hip08/{ => sys}/uncore-l3c.json |   0
>  tools/perf/pmu-events/arch/arm64/mapfile.csv  |   2 +-
>  .../pmu-events/arch/arm64/mapfile_sys.csv     |  14 +++
>  tools/perf/pmu-events/jevents.c               |  65 ++++++++--
>  tools/perf/pmu-events/pmu-events.h            |   1 +
>  tools/perf/util/evsel.h                       |   2 +-
>  tools/perf/util/parse-events.c                |  12 +-
>  tools/perf/util/pmu.c                         | 111 +++++++++++++++---
>  tools/perf/util/pmu.h                         |   2 +-
>  15 files changed, 221 insertions(+), 46 deletions(-)
>  rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/core-imp-def.json (100%)
>  create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
>  rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-ddrc.json (100%)
>  rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-hha.json (100%)
>  rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-l3c.json (100%)
>  create mode 100644 tools/perf/pmu-events/arch/arm64/mapfile_sys.csv
>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
