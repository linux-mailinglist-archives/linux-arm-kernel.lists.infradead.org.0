Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16FDDE8B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1soiKzsK9aVMrSW39AdAgbRKq4kpkfB4aTScAvBbNKY=; b=kHdfV0ij4orB7B
	lvXDaeIGuLa3RaW76nRPdCTK+7TlpmpHljtl0OX1Gyi2fCRwUo3uGRdKpfbxqWsKAf6yhffFXaS7x
	7pI6A5eumyrojuAzTfI+AtrbWxzAHPGcPTP+fNfI+bWtdFvUKWVY+flEkJOQH+FSzIh3AVDE8Ym0R
	HgTof8lPXMmk3RtRd4/zzajl0SFehlKJNUxQV+eyO2+JvrUCAibM3YzH/nDYHMmoogskhr7R1I6HI
	whTKv5gVuLsR13vlldEo94d7LIGGPQbSOGSVXQRXj/Pl2PW3pbEiGV5/FvmBE9K3KgQrLDh7Zi5YV
	XW+PfwP80mT9JyISmlUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUPG-0005Xx-P6; Mon, 21 Oct 2019 09:55:18 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUOw-0005Tu-TT
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:55:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 269CA15EC;
 Mon, 21 Oct 2019 02:54:48 -0700 (PDT)
Received: from [10.163.1.2] (unknown [10.163.1.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E20F3F718;
 Mon, 21 Oct 2019 02:54:39 -0700 (PDT)
Subject: Re: [PATCH V9 2/2] arm64/mm: Enable memory hot remove
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1570609308-15697-1-git-send-email-anshuman.khandual@arm.com>
 <1570609308-15697-3-git-send-email-anshuman.khandual@arm.com>
 <20191010113433.GI28269@mbp> <f51cdb20-ddc4-4fb7-6c45-791d2e1e690c@arm.com>
 <20191018094825.GD19734@arrakis.emea.arm.com>
 <f5581644-42b7-097e-6a86-ba7db9d0b544@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <6b5c96fe-cb3c-d0c2-e1f4-6ecd34be62a5@arm.com>
Date: Mon, 21 Oct 2019 15:25:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <f5581644-42b7-097e-6a86-ba7db9d0b544@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_025459_039924_6D615BCA 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: mark.rutland@arm.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, will@kernel.org,
 ira.weiny@intel.com, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, mgorman@techsingularity.net, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, akpm@linux-foundation.org,
 Robin.Murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/21/2019 03:23 PM, Anshuman Khandual wrote:
> 
> On 10/18/2019 03:18 PM, Catalin Marinas wrote:
>> On Fri, Oct 11, 2019 at 08:26:32AM +0530, Anshuman Khandual wrote:
>>> On 10/10/2019 05:04 PM, Catalin Marinas wrote:
>>>> Mark Rutland mentioned at some point that, as a preparatory patch to
>>>> this series, we'd need to make sure we don't hot-remove memory already
>>>> given to the kernel at boot. Any plans here?
>>> Hmm, this series just enables platform memory hot remove as required from
>>> generic memory hotplug framework. The path here is triggered either from
>>> remove_memory() or __remove_memory() which takes physical memory range
>>> arguments like (nid, start, size) and do the needful. arch_remove_memory()
>>> should never be required to test given memory range for anything including
>>> being part of the boot memory.
>> Assuming arch_remove_memory() doesn't (cannot) check, is there a risk on
> Platform can definitely enumerate boot memory ranges. But checking on it in
> arch_remove_memory() which deals with actual procedural details might not be
> ideal IMHO. Refusing a requested removal attempt should have been done up in
> the call chain. This will require making generic hot plug reject any removal
> request which falls within enumerated boot memory. IFAICS currently there is
> no generic way to remember which memory came as part of the boot process.
> Probably be a new MEMBLOCK flag will do.
> 
>> arm64 that, for example, one removes memory available at boot and then
>> kexecs a new kernel? Does the kexec tool present the new kernel with the
>> original memory map?
> I dont know, probably James can help here. But as I had mentioned earlier,
> the callers of remove_memory() should be able to control that. ACPI should
> definitely be aware about which ranges were part of boot memory and refrain
> from removing any subset, if the platform is known to have problems with
> any subsequent kexec operation because the way boot memory map get used.
> 
> Though I am not much aware about kexec internals, it should inherit the
> memory state at given point in time accommodating all previous memory hot
> and remove operations. As an example cloud environment scenario, memory
> resources might have increased or decreased during a guest lifetime, so
> when the guest needs to have new OS image why should not it have all the
> memory ? I dont know if it's feasible for the guest to expect previous hot
> add or remove operations to be played again after the kexec.
> 
> There is another fundamental question here. Is there a notion of a minimum
> subset of boot memory which cannot be hot removed no matter what ? If yes,
> how that is being conveyed to the kernel currently ?
> 
> The point is that all these need to be established between ACPI, EFI and
> kernel. AFAICS this problem is for MM subsystem (including the platform

s/is for/is not for/          ^^^^^^^^^^

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
