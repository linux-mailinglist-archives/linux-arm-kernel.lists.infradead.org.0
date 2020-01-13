Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4562F138A22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:05:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvfkuyBsZfAv4e6riNfD/pJVHqjLUL/Nq8VutzEg7BQ=; b=IFbiWvAeArRH90
	Y30cPcRSgkcEoXYz70+lGMSmhq5GtTxj7Ts+jOi44CpH0zTlR3CM+Y5z47pnkNB1P/ZwI7+Krz7tw
	sghlzNQYCGCpVOBwzZmogM0LWNPYAsFKvIaQslBHcw3BvsV4Jv5B1zu6+CepkLXvWG1tDPsNqIjqw
	Z3HqYPsL0tuvTU5Kn+llY3FtoXjZTN4IlSi4yQ3AjpOU3NyxxKY0/bRn+i/srer8d2O75yec0eFPi
	Y79sQTfNdF0eHLLWHofwkQ+JnjYQu/JJA7A1GSPoUVlAmIkACGne3gq4mwAq39AQoHO1GYyWDify5
	8Ga6zWZFaxTL1A6ACi3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqqye-0003RC-Kx; Mon, 13 Jan 2020 04:05:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqqyW-0003QV-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:05:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B992F30E;
 Sun, 12 Jan 2020 20:05:07 -0800 (PST)
Received: from [10.162.43.142] (p8cg001049571a15.blr.arm.com [10.162.43.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4E2A33F6C4; Sun, 12 Jan 2020 20:04:59 -0800 (PST)
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
To: kbuild test robot <lkp@intel.com>
References: <1578625755-11792-2-git-send-email-anshuman.khandual@arm.com>
 <202001112247.k6CzgJBj%lkp@intel.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <bf4362af-2ba0-9099-985a-7b32fdbc6871@arm.com>
Date: Mon, 13 Jan 2020 09:36:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <202001112247.k6CzgJBj%lkp@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_200512_848139_0EE94F48 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, david@redhat.com, catalin.marinas@arm.com,
 linux-mm@kvack.org, arunks@codeaurora.org, cpandya@codeaurora.org,
 ira.weiny@intel.com, will@kernel.org, steven.price@arm.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com,
 mgorman@techsingularity.net, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de,
 kbuild-all@lists.01.org, steve.capper@arm.com, logang@deltatee.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org, Robin.Murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/11/2020 07:41 PM, kbuild test robot wrote:
>    mm/memory_hotplug.c: In function 'check_hotremove_memory_range':
>>> mm/memory_hotplug.c:1027:7: error: implicit declaration of function 'arch_memory_removable'; did you mean 'add_memory_resource'? [-Werror=implicit-function-declaration]
>      rc = arch_memory_removable(start, size);
>           ^~~~~~~~~~~~~~~~~~~~~
>           add_memory_resource
>    At top level:
>    mm/memory_hotplug.c:1017:12: warning: 'check_hotremove_memory_range' defined but not used [-Wunused-function]
>     static int check_hotremove_memory_range(u64 start, u64 size)
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    cc1: some warnings being treated as errors
> 
> vim +1027 mm/memory_hotplug.c
> 
>   1016	
>   1017	static int check_hotremove_memory_range(u64 start, u64 size)
>   1018	{
>   1019		int rc;
>   1020	
>   1021		BUG_ON(check_hotplug_memory_range(start, size));
>   1022	
>   1023		/*
>   1024		 * First check if the platform is willing to have this
>   1025		 * memory range removed else just abort.
>   1026		 */
>> 1027		rc = arch_memory_removable(start, size);
>   1028		if (!rc)
>   1029			return -EINVAL;
>   1030	
>   1031		return 0;
>   1032	}
>   1033	


Both the build failures reported here could be solved by moving
check_hotremove_memory_range() inside CONFIG_MEMORY_HOTREMOVE
wrappers, will fix it.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
