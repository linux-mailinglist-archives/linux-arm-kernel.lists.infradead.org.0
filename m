Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9078B19DBCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 18:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C2iJJRS3nS2LrcWFWSCcjNPtZtERyYOeMkU/sMGxGL0=; b=EJ1LsDzomySOMaeKbepVjP2j9
	82mV+h7n9yOfMZrNsogUBemw/lkH8EdPglQmTL/35cDZyaz6C8Vs/mnM7OaaFzNqRNogHx8cvTlm5
	fuXAUymxR91KuyF3uKB+75aLsvfiQAg6gl+xTUbInLf0hjbqxDb13Q65AatbHElIJWLubqo1MRyAc
	e8e1jgSV3L8fmVj/1hGmLVX1YEcqhNUiX6yC8oqJQvmwBuj7FxzD2Qiv6vUvwMCs/c2TG/rvGPyeL
	J8qz7IGjOkTmmYilkJKn3tWEJKpSE0CGjjiEcl/fFBFtYCvanzMe/AuuAQeXtPlcnQQSW5e7KU9G5
	4j3ih9SlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKPIv-0003sK-U5; Fri, 03 Apr 2020 16:36:25 +0000
Received: from mail-cys01nam02on0703.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::703]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKPIo-0003qm-OF
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 16:36:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lDmRQoY7Ffcn+ImhMXC5J54MNsYqrXtEhYvPVhEHwwai/HRyaRgsMswi2Rg6jVPFQ3mLB/8w9JzdaHJxLmnuLowW+7P5Zv/RMZFis/byhFRm4hu8EsYzkAas2K7jlRm1w16SeyEhyEq5Yp4Hoa13dAV9RFvjnIl87DRKj9MKgZIJxXrugCBVJZIEQnQMEonnx4rypaij+fIkZyj31lz4atXvJyeLbdgYXwBoI8IYgo+wmHQCVMc4lUDfDBpW6ScQdmdQQgCc9Vc270h8QUNYlntb/sMLGXwCA1+nhv57jjQWliAzRgFZ5ZnnPvxid2uzrzUvR8t8zvD5XHHMgZwH0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E762z18bWj/6MJ1IT4EVaph7wzQcsyfbx0i5KNjgbb0=;
 b=EPjzhxgaGebatfedoGkG9s5yjBf5Xq7HAr8NlyJihkTW3JlffuDkS854tow/wHzR3zQ2Or15Lcrc3ZMv1eDBVWPoY/BkSKRVf45FVofaiYaz+eYbICgzcAg4+4EpTfp73ov/YctFCY4w4FKqYY+7J+gN9PTrmEwzUsvrAT4RsRLRZ0ARQk0rcUci1FW/vY+zMffhheA+r09n2ZVH8SGGOGdeoTsG0zJXQamESXF3Sj4faKX4BSIQ+Vu556sjRXfmi18l0flXfmfZkxBKkx/Lmu0OzZ6by8KTV4vILU2vHRTB9oXjKJ1Aq8Ai9m1Qq1kIqWGoN83L70jjdaZVBzrALA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E762z18bWj/6MJ1IT4EVaph7wzQcsyfbx0i5KNjgbb0=;
 b=e5aLxtLGHB7rl2YszAp4J/F0eXcBWRmRX8fdqHNQU0AETfysamZErBEajR6Haa3kI9Mi/n6RE3z3FP/4GHadXZqFSP4gTt2IiLZB8knjFwbey+cISjUtAZCRAx7TUbR+aZtrTZMQqjzMsBi/dSqsUuVmVtSLL/v2uet6i2vpsyI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from BYAPR01MB5494.prod.exchangelabs.com (2603:10b6:a03:127::30) by
 BYAPR01MB4231.prod.exchangelabs.com (2603:10b6:a03:55::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15; Fri, 3 Apr 2020 16:36:13 +0000
Received: from BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb]) by BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb%6]) with mapi id 15.20.2878.018; Fri, 3 Apr 2020
 16:36:12 +0000
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
To: Baoquan He <bhe@redhat.com>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330175100.GD30942@linux.ibm.com>
 <20200330182301.GM14243@dhcp22.suse.cz>
 <20200331081423.GE30942@linux.ibm.com>
 <20200331085513.GE30449@dhcp22.suse.cz>
 <20200331140332.GA2129@MiWiFi-R3L-srv>
 <20200331142138.GL30449@dhcp22.suse.cz>
 <20200331143140.GA2402@MiWiFi-R3L-srv>
 <cc717f09-2b18-b242-e438-3ec730c5dac0@os.amperecomputing.com>
 <20200403070904.GO2402@MiWiFi-R3L-srv>
From: Hoan Tran <hoan@os.amperecomputing.com>
Message-ID: <419b415c-6e34-cb87-88bc-f17f03acffcb@os.amperecomputing.com>
Date: Fri, 3 Apr 2020 09:36:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
In-Reply-To: <20200403070904.GO2402@MiWiFi-R3L-srv>
Content-Language: en-US
X-ClientProxiedBy: BYAPR04CA0001.namprd04.prod.outlook.com
 (2603:10b6:a03:40::14) To BYAPR01MB5494.prod.exchangelabs.com
 (2603:10b6:a03:127::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.138] (67.161.31.237) by
 BYAPR04CA0001.namprd04.prod.outlook.com (2603:10b6:a03:40::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Fri, 3 Apr 2020 16:36:11 +0000
X-Originating-IP: [67.161.31.237]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 63dc8726-ac0f-442b-f262-08d7d7ed1edf
X-MS-TrafficTypeDiagnostic: BYAPR01MB4231:|BYAPR01MB4231:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB42314678638BA502D22AA0FDF1C70@BYAPR01MB4231.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0362BF9FDB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB5494.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(346002)(376002)(396003)(39840400004)(136003)(6916009)(16526019)(54906003)(52116002)(81166006)(4326008)(53546011)(26005)(8936002)(81156014)(186003)(8676002)(7416002)(5660300002)(31696002)(107886003)(2906002)(16576012)(2616005)(86362001)(6486002)(66946007)(66476007)(478600001)(956004)(31686004)(316002)(66556008);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vvOTIRGalFEH53aZmh0Oe1y510okj62sPWCfOBKXfLfHJA+0cG31q77K78EIQ08KphHgtvYXkP9zSRwAjFafK+XC2ZOxiaT3G/HNmWRw2d1OOLXekCRhhxfRkMpkZpnxZVkf5HWSGrWOoN5fXfT+V1s40b/1hW+s1tCXJX/33HbpWuSb0xEGyCdz1YYeEQaUo0NSPCpmTlltYD4XexhZiYX8yH7RjEJ5pR/d3nsRORnX85lo0NKF7MALU/fkmyTpYVQlmgd78ycM+5D0rOEDiPkZpHPi/0I17cxHNdLNINa6Bo3+Y+Fb9/V7MCsjJGO2aHT7oodunm8Cw0Fy+8rKjh5fN3zMzV+qxKqFVlAGEo7RO/WlqlHTTxYTJIPDtkoJI4gI5AxB1jODE1VesO9794ccr9KFHDQp9Ej05Uar5WkJ3mbOVibG4H3mH8b+I5gA
X-MS-Exchange-AntiSpam-MessageData: LlOc5ff01UeimhMMrFDFyONPzS6uVmGMLc1Yv1f949/Gw2n3WmvKBIRzmPDD9QCj0FpHVZxbAejFZqZCwqaCGJqvN6dMK/vq7EcmCRTki/xFUCFR1L7KmiShqKtODZQGiD6U6nLZ8NBdxNip6iSisQ==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63dc8726-ac0f-442b-f262-08d7d7ed1edf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2020 16:36:12.6555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jspK1oPxQQsPaTtij5T2sMVImkG1jza+HvBuPQlfdHjTbgWA9UlRoQsfvrp5riIkuH0Y++tEV2sevuSik2mq5/amEu8dMSQNAnPlXpEmX2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_093618_853367_3A1BEB53 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe45:0:0:0:703 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On 4/3/20 12:09 AM, Baoquan He wrote:
> On 04/02/20 at 09:46pm, Hoan Tran wrote:
>> Hi All,
>>
>> On 3/31/20 7:31 AM, Baoquan He wrote:
>>> On 03/31/20 at 04:21pm, Michal Hocko wrote:
>>>> On Tue 31-03-20 22:03:32, Baoquan He wrote:
>>>>> Hi Michal,
>>>>>
>>>>> On 03/31/20 at 10:55am, Michal Hocko wrote:
>>>>>> On Tue 31-03-20 11:14:23, Mike Rapoport wrote:
>>>>>>> Maybe I mis-read the code, but I don't see how this could happen. In the
>>>>>>> HAVE_MEMBLOCK_NODE_MAP=y case, free_area_init_node() calls
>>>>>>> calculate_node_totalpages() that ensures that node->node_zones are entirely
>>>>>>> within the node because this is checked in zone_spanned_pages_in_node().
>>>>>>
>>>>>> zone_spanned_pages_in_node does chech the zone boundaries are within the
>>>>>> node boundaries. But that doesn't really tell anything about other
>>>>>> potential zones interleaving with the physical memory range.
>>>>>> zone->spanned_pages simply gives the physical range for the zone
>>>>>> including holes. Interleaving nodes are essentially a hole
>>>>>> (__absent_pages_in_range is going to skip those).
>>>>>>
>>>>>> That means that when free_area_init_core simply goes over the whole
>>>>>> physical zone range including holes and that is why we need to check
>>>>>> both for physical and logical holes (aka other nodes).
>>>>>>
>>>>>> The life would be so much easier if the whole thing would simply iterate
>>>>>> over memblocks...
>>>>>
>>>>> The memblock iterating sounds a great idea. I tried with putting the
>>>>> memblock iterating in the upper layer, memmap_init(), which is used for
>>>>> boot mem only anyway. Do you think it's doable and OK? It yes, I can
>>>>> work out a formal patch to make this simpler as you said. The draft code
>>>>> is as below. Like this it uses the existing code and involves little change.
>>>>
>>>> Doing this would be a step in the right direction! I haven't checked the
>>>> code very closely though. The below sounds way too simple to be truth I
>>>> am afraid. First for_each_mem_pfn_range is available only for
>>>> CONFIG_HAVE_MEMBLOCK_NODE_MAP (which is one of the reasons why I keep
>>>> saying that I really hate that being conditional). Also I haven't really
>>>> checked the deferred initialization path - I have a very vague
>>>> recollection that it has been converted to the memblock api but I have
>>>> happilly dropped all that memory.
>>>
>>> Thanks for your quick response and pointing out the rest suspect aspects,
>>> I will investigate what you mentioned, see if they impact.
>>
>> I would like to check if we still move on with my patch to remove
>> CONFIG_NODES_SPAN_OTHER_NODES and have another patch on top it?
> 
> I think we would like to replace CONFIG_NODES_SPAN_OTHER_NODES with
> CONFIG_NUMA, and just let UMA return 0 as node id, as Michal replied in
> another mail. Anyway, your patch 2~5 are still needed to sit on top of
> the change of this new plan.

Got it. Thanks for quick response.

Regards
Hoan
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
