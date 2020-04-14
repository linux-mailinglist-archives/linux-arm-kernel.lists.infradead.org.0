Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AB51A8753
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+542Pgx/bIIKE85KMao/pdNvW9nzSvBs0lkTVW/Um0=; b=uADflhocntUnyM
	Sug3qV6OkYcp/duMr8XaJ4remqdFR+qXflhHk34iLECFMBr8lGkzMZ9Y5vGthrwynkzVtLMFkLp+5
	CrZ7Zio8kDxsGuRNTKxLyVC33cYyBBZVzRaAImnxAlSiihclasDWlnL2b1wV2H01cO63ACJRqVyGr
	yOr4Tfur+i7dQHvLuzXusA4+LjmZWxaUjb7hxY3YgHtUPJ502TDjTB/qowhm8dzEoHloulN6K+jyi
	nk8j0IgBAa6CxW+kLTXUWdwI7d2TEHe1GTMh1yh/BOo5e98FwUkq/VPtUApOS/B+OA135fn8hVjfg
	EbhOswCi3oLbmxqBDxuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPFd-0005cx-CW; Tue, 14 Apr 2020 17:21:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPFR-0005bF-6U; Tue, 14 Apr 2020 17:21:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA7A730E;
 Tue, 14 Apr 2020 10:21:19 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B9183F6C4;
 Tue, 14 Apr 2020 10:21:18 -0700 (PDT)
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
To: piliu <piliu@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
 <20200402054946.GA97238@dhcp-128-65.nay.redhat.com>
 <9725d779-e0de-2d8d-8716-22df3e791820@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <66b0cb1a-d63a-2720-19cf-3d8efcd02fde@arm.com>
Date: Tue, 14 Apr 2020 18:21:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9725d779-e0de-2d8d-8716-22df3e791820@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_102121_277651_7C7663F6 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Will Deacon <will@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Hari Bathini <hbathini@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave, Pingfan,

On 02/04/2020 07:12, piliu wrote:
> On 04/02/2020 01:49 PM, Dave Young wrote:
>> On 03/26/20 at 06:07pm, James Morse wrote:
>>> Memory added to the system by hotplug has a 'System RAM' resource created
>>> for it. This is exposed to user-space via /proc/iomem.
>>>
>>> This poses problems for kexec on arm64. If kexec decides to place the
>>> kernel in one of these newly onlined regions, the new kernel will find
>>> itself booting from a region not described as memory in the firmware
>>> tables.
>>>
>>> Arm64 doesn't have a structure like the e820 memory map that can be
>>> re-written when memory is brought online. Instead arm64 uses the UEFI
>>> memory map, or the memory node from the DT, sometimes both. We never
>>> rewrite these.
>>
>> Could arm64 use similar way to update DT, or a cooked UEFI maps?

>> Add pingfan in cc, he said ppc64 update the DT after a memremove thus it
>> would be good to just redo a kexec load.

> Yes, the memory changes will be observed through device-node under
> /proc/device-tree/ (which is for powerpc).
> 
> Later if running kexec -l/-p , it can build new dtb with the latest info
> from /proc/device-tree
For arm64, the device-tree is set in stone. We don't have the runtime parts of
open-firmware that powerpc does. (my knowledge in this area is extremely sparse)
arm64 platforms where stuff like this changes tend to use ACPI instead, and these all have
to boot with UEFI, which means its the UEFI memory map that has authority.

We don't cook a fake UEFI memory map when things change because we treat it like the
set-in-stone DT. This means we only have discrepancies in firmware to workaround, instead
of any we introduce ourselves.

One of the UEFI configuration tables describes addresses Linux programmed into hardware
that can't be reset. Newer versions of Linux know how to pick these up on kexec... but
older versions don't know how to parse/rewrite/move that table. Cooking up new versions of
these tables would prevent us doing stuff like this, which we need to workaround hardware
that didn't get the 'kexec exists' memo.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
