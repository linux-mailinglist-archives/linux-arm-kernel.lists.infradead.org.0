Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8413B29027
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 06:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCYwbzqUpM9C/ZcOuOgNW5cv+57NjlFC+oGW8kBCnak=; b=WiMGU/3sqoTyAJ
	+2v97t5yjIUB5r6KTLq9b/sWJrkppggmTv9LSoqzfyzkHH3EpNInj4tODsDVxy3SY5KjkxQSlP9ct
	0Gtcp3RNbuhPZBFnvFay1d5+FcmK94IpDl9LAUB8vDMNBuDpKKT0OGE2CXhcIJyypaVuM1qcuT5Xi
	MMN8pWVZ2QJ5d/OZpmzAHbZcTdrmLVTlpyH/wSPYAvYb6VnMGY8wmSNV4lmgwtrxj2AXS+lcdsb1o
	pnoHR6mS5xKPeffKeVY+bkoHCa3KDsKGT3kBdgrA80AH5pqVufA9IgpwGUWZ/rewFfQeyOhcoPxY/
	0896XwWVXtBuTnXyO+8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2Bu-0007lW-EZ; Fri, 24 May 2019 04:52:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2Bn-0007l8-41
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 04:52:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D285374;
 Thu, 23 May 2019 21:52:14 -0700 (PDT)
Received: from [10.162.42.134] (p8cg001049571a15.blr.arm.com [10.162.42.134])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1D2773F703; Thu, 23 May 2019 21:52:07 -0700 (PDT)
Subject: Re: [PATCH V4 3/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: Michal Hocko <mhocko@kernel.org>
References: <1558329516-10445-1-git-send-email-anshuman.khandual@arm.com>
 <1558329516-10445-4-git-send-email-anshuman.khandual@arm.com>
 <20190521101457.GK32329@dhcp22.suse.cz>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4a9e0e2a-2acd-11b5-5181-41801cd11d98@arm.com>
Date: Fri, 24 May 2019 10:22:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190521101457.GK32329@dhcp22.suse.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_215219_168616_84134B67 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, mgorman@techsingularity.net, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 logang@deltatee.com, arunks@codeaurora.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, james.morse@arm.com, akpm@linux-foundation.org,
 ira.weiny@intel.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/21/2019 03:44 PM, Michal Hocko wrote:
> On Mon 20-05-19 10:48:35, Anshuman Khandual wrote:
>> The arm64 page table dump code can race with concurrent modification of the
>> kernel page tables. When a leaf entries are modified concurrently, the dump
>> code may log stale or inconsistent information for a VA range, but this is
>> otherwise not harmful.
>>
>> When intermediate levels of table are freed, the dump code will continue to
>> use memory which has been freed and potentially reallocated for another
>> purpose. In such cases, the dump code may dereference bogus addresses,
>> leading to a number of potential problems.
>>
>> Intermediate levels of table may by freed during memory hot-remove,
>> which will be enabled by a subsequent patch. To avoid racing with
>> this, take the memory hotplug lock when walking the kernel page table.
> 
> I've had a comment on this patch in the previous version which didn't
> get answered completely AFAICS. If you really insist then please make
> sure to describe why does this really matter because this will make
> any further changes to the hotplug locking harder and I would to see
> that it is worth the additional trouble.

Hello Michal,

I was under the impression (seems wrongful now) that the previous discussion
was complete. Nonetheless we can still discuss it further. Mark has responded
on the previous V3 thread [1] and because this particular patch does not have
any changes from last time, we can continue discussing this in that thread.

[1] https://lkml.org/lkml/2019/5/22/613   

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
