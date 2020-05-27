Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C9F1E34BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zg3ls5IrQiUEQUREIRmyxuuuu+/fsX25hGJJvyQMktw=; b=YqdYv/pH3MAaZGcupsDNfMdkD
	WZe/d2uyqISkZmm8lnUUHuUMHaqaWHxQQkTVpp5JWzKAr8RkPd2J3j/bucp2yZ+MM/L+52G786Srf
	i2OeOOLVLT10n+k/7YIW3KGK/7/CKXikzAjZUIl97NCH9+Z04eUWsV69pyXhoPMACLKq8sDvOkWzn
	0JwGIn7rHr3MnWffZIqu3fYzm4MaErA8e74mGkMicY8dDKgrg6zy+2cKdV2CPCF4guEzUPQ9vmtT+
	somUkRR64IvOBeZ3iSYUq9g7v0X/LCYamxxsZ4NxmLyc+YEUBwilRy3q472KJFvZkZLPlJS7ZvYzq
	DGU6ArfEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdktj-00034X-Ua; Wed, 27 May 2020 01:30:23 +0000
Received: from mail-co1nam11on2063.outbound.protection.outlook.com
 ([40.107.220.63] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdktZ-00033d-GV
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:30:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5mcDwlBU1cRh9IT2sHkEism5xWpPHoW3w/RJ6Y9v8szoVbDXhoRWS3YcbYzq16Ygn5fWqpM+T50bwyNtfPesx14dG793pfVOh0Gb5lx0PjWqgmy02B1bnhhMnx9xSrd+BybRjCi8bMRKA2xzefBJnf94/3lpWOMdI3NTw3+xbxsl7ja7QlMiQ5p4WbicE8UMM7VgW6wGISUMBeur0hXBPSdkG9hu4fsj8O0cWLNTiGEY+jRN6SvNCfMi2SLTCOKB/eoYGuyxvXb7ilvMgz4tOlzG1nybicffYx6FbUgpEQV+ViuPkEYlyScUeyZvwTfi++LXdu0spd3aGEZlN2mIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROMvWvbxsEkjpXH1mLOqjn4H+91iWe+L300YMg4/SRM=;
 b=BPKNO/WE9xTtMkPPgpr3QbvUm2dIpSjFUnfEPLc90R9O1yiJFrreKjuzy+wc4sbYcLB7KmAhIT5CFHonNxh0+8IiUo6L5kTeJGbTYTm2Wt0oejLIo2sJ76Ms1oh9abfZyr0maTAkSpHw7VLxEbaekY32NPSV81B56XVS1IAoNTO230MoabNPOsX2VM9qfcflLcIsv34tNbUUEABuD2M4Qb3gRd4N/HGSd5fyuRLemBTFFSUo83uUaIbMKboz22hp1J8QPK9vCbpdzu8Cg4Fa9ZwQLID0GIg4YvkZSse8hdt5fydZTcd/Q13uuTQiMhn60Xz+1FW3BvK2XeBrCurkQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROMvWvbxsEkjpXH1mLOqjn4H+91iWe+L300YMg4/SRM=;
 b=X8DRUH43tquFc/WOGPLDPK3fAM+pwshZ74qwRlBUROtYD+Yv+dMrqVGsAu5l+9Nct3Z/dveH2sC2iVD7Rk4ycttF1WANkgeZgcc1XpcFgTepKIlWdZlWlRHHPb1i+bb8N8kYRMrfKoRCSt468qzptueWRtryMLRju5VMNexDDJU=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2747.namprd11.prod.outlook.com (2603:10b6:5:c6::22) by
 DM6PR11MB3932.namprd11.prod.outlook.com (2603:10b6:5:194::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Wed, 27 May 2020 01:30:10 +0000
Received: from DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8]) by DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8%4]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 01:30:09 +0000
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
 <20200526195419.GB2206@willie-the-truck>
From: Jiping Ma <Jiping.Ma2@windriver.com>
Message-ID: <6ed68001-522c-14f6-d162-e68da4c10e43@windriver.com>
Date: Wed, 27 May 2020 09:30:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
In-Reply-To: <20200526195419.GB2206@willie-the-truck>
Content-Language: en-US
X-ClientProxiedBy: HK2PR04CA0067.apcprd04.prod.outlook.com
 (2603:1096:202:15::11) To DM6PR11MB2747.namprd11.prod.outlook.com
 (2603:10b6:5:c6::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.195] (60.247.85.82) by
 HK2PR04CA0067.apcprd04.prod.outlook.com (2603:1096:202:15::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.24 via Frontend Transport; Wed, 27 May 2020 01:30:06 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65a5a4c4-d6c8-40df-a6d1-08d801dd7e8c
X-MS-TrafficTypeDiagnostic: DM6PR11MB3932:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB39325C25BA8FF839596D871AD8B10@DM6PR11MB3932.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04163EF38A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n3QDQSZYlQHByPllvX9gV+jXLXXKmq6KrXiMblUyA/iabNTLHlMDQL4UmrORLVgiQJY6Zx6QAWTRQd/a1aBmX1GfUzCa1AXTwyLe0PF0cBQT/NZQ4bPtoxBhPnLrXRDa6wBMTr8Ju2ok9x2ffAolAYXppi4OiCtV9OxEpIm2ETD5CbQMV1aaafAbs6foPNiKIXBlbbPE1C9ltn4Io6+/Iv/Za4mX7c/p+KASpJs3ZA+m/x6yvW//aHcgAUgVaCLa1+25xQ04kPjLO1mV3cH9R7b2+OBGydEQ4VCFeWdnLHomNerEHQsw4ZDHUfYYr3ZV0q1UUUGMA4IROHzXtSvH5EG+0yf5WQ7e9DE7eMpQSk6i1SKOwDz2gRhRrm6qwXkPjYz61i9TvakIFCBApTnm8yivuEJJdA1tglEoovuIMH+MsX7WnVE64Q5RtofldrXX90l3agfFXQKsJn4gthmfzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2747.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(366004)(376002)(346002)(39850400004)(6666004)(52116002)(956004)(53546011)(6706004)(31696002)(36756003)(478600001)(2616005)(86362001)(186003)(66556008)(66476007)(16526019)(26005)(6486002)(2906002)(66946007)(8676002)(8936002)(110136005)(4326008)(316002)(31686004)(5660300002)(16576012)(83380400001)(78286006)(15583001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: +2ie/ai6OsNqTY+uB+HqsRflydhvKYyutADdD1Ra+o3DxekfyLJQhwuA5lnfDECNbuP57DBGIKheJkF1GWOmvoxuWx4Wc17mWRIWSLg6UEl9t66AJtvOJUzbYKst8N/8U9olHhXDWnFDNeS8WZgxw8HDJbHLd1O8ZZ30t89x5xaQi/Rip+4kR5/uAqGC6f0JH94QJO/ORgnF1CJhmD7DUvXR7NTT43gxntAsl9qo3oLPAW9Fvk4BSethQyqfFkFHoRiwj8PHi8kymo2yh3qRLV+HJ2Oxi02afoY4VQzCfSFf/lQjJulh+/QKNazUPTs5jKGRakhiFBjFSz3wckRS9mEJgr0ftIiiveMvbWwFT0khUvzi0RZAhKwFWGdQ1j0jYBVcz9cjydVwYLnAiL7IRbLAQNbm+uH4BHmwXKTWJZR1JQg3sy4Oy6w+2ypQPrtQ1UwQraV3O7eellGpyun6Xrorkf7RlIkQ3/OUz8tFqT0=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65a5a4c4-d6c8-40df-a6d1-08d801dd7e8c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2020 01:30:09.7970 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1an08Cbpk20Z8OJ0fKkObtv3MXx6nfZF6n8FVvUcsFMZVQjKDlKVj0aYDFTHWZyVUmd+oYo2d5EdxS7pdE/4oLLD5LWmkzfMHTT20tprsWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_183013_627465_51C12040 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.63 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: zhe.he@windriver.com, bruce.ashfield@gmail.com, yue.tao@windriver.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 paul.gortmaker@windriver.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/27/2020 03:54 AM, Will Deacon wrote:
> On Tue, May 26, 2020 at 11:26:11AM +0100, Mark Rutland wrote:
>> On Mon, May 11, 2020 at 10:52:07AM +0800, Jiping Ma wrote:
>>> Modified the patch subject and the change description.
>>>
>>> PC value is get from regs[15] in REGS_ABI_32 mode, but correct PC
>>> is regs->pc(regs[PERF_REG_ARM64_PC]) in arm64 kernel, which caused
>>> that perf can not parser the backtrace of app with dwarf mode in the
>>> 32bit system and 64bit kernel.
>>>
>>> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
>> Thanks for this.
>>
>>
>>> ---
>>>   arch/arm64/kernel/perf_regs.c | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>>
>>> diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
>>> index 0bbac61..0ef2880 100644
>>> --- a/arch/arm64/kernel/perf_regs.c
>>> +++ b/arch/arm64/kernel/perf_regs.c
>>> @@ -32,6 +32,10 @@ u64 perf_reg_value(struct pt_regs *regs, int idx)
>>>   	if ((u32)idx == PERF_REG_ARM64_PC)
>>>   		return regs->pc;
>>>   
>>> +	if (perf_reg_abi(current) == PERF_SAMPLE_REGS_ABI_32
>>> +		&& idx == 15)
>>> +		return regs->pc;
>> I think there are some more issues here, and we may need a more
>> substantial rework. For a compat thread, we always expose
>> PERF_SAMPLE_REGS_ABI_32 via per_reg_abi(), but for some reason
>> perf_reg_value() also munges the compat SP/LR into their ARM64
>> equivalents, which don't exist in the 32-bit sample ABI. We also don't
>> zero the regs that don't exist in 32-bit (including the aliasing PC).
> I think this was for the case where you have a 64-bit perf profiling a
> 32-bit task, and it was passing the registers off to libunwind. Won't that
> break if we follow your suggestion?
Yes, it is for 64-bit perf profiling a 32-bit task, not for a compat thread.

>
> Will
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
