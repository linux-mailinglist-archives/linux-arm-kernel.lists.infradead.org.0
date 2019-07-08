Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0058F61E96
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 14:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaaTu4x1k4AhKUYMHhlM4AyhRD6wsMQTwkCs/laqU8I=; b=Aap9MfpjOcNNMr
	gLPLRUd81Dz7IKD6l7Lph3CIZnKbkl/GQu1C5B/8vVm2G4g2EaC+cI1e3uTAHd/lMNiBuZrAb+9Tv
	233LDKYeggG86TefjL20fBTtcG1IvIE9MRl22kkjg+EDae8UkTJs/Hog7dLN6FSOhPPdBxcnlr2Mi
	akUftPo7fbAMiazQ6/AgRFxNQny9HMtWuh/7TWtO6Ko8SBfJ0SjAgjA0pUo77DXtZGGXCNf5BlclZ
	knby7PqaS3mAaM5HVYxO5IsEgqxNcvHI/oViaOKoJ7cFeDMGpRpkwy80TtIia2S5dsj5fAVDTABtb
	LDAvlYflLkRriXEygifg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSxD-0006HL-7P; Mon, 08 Jul 2019 12:41:11 +0000
Received: from edison.jonmasters.org ([173.255.233.168])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSx0-0006Gb-7r
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 12:40:59 +0000
Received: from boston.jonmasters.org ([50.195.43.97]
 helo=tonnant.bos.jonmasters.org)
 by edison.jonmasters.org with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.71) (envelope-from <jcm@jonmasters.org>)
 id 1hkSwx-0005qi-MY; Mon, 08 Jul 2019 12:40:55 +0000
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <7dd77cea-d673-269a-044f-4df269db7e5e@jonmasters.org>
 <20190708093714.57t55inainky2zcq@shell.armlinux.org.uk>
From: Jon Masters <jcm@jonmasters.org>
Message-ID: <21412e56-a8cc-0e75-06e4-3dd1684839e2@jonmasters.org>
Date: Mon, 8 Jul 2019 08:40:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190708093714.57t55inainky2zcq@shell.armlinux.org.uk>
Content-Language: en-US
X-SA-Exim-Connect-IP: 50.195.43.97
X-SA-Exim-Mail-From: jcm@jonmasters.org
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
 edison.jonmasters.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham version=3.3.1
Subject: Re: FYI: Possible HPFAR_EL2 corruption (LPAE guests on AArch64 hosts)
X-SA-Exim-Version: 4.2.1 (built Sun, 08 Nov 2009 07:31:22 +0000)
X-SA-Exim-Scanned: Yes (on edison.jonmasters.org)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_054058_479467_6F3A7428 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/8/19 5:37 AM, Russell King - ARM Linux admin wrote:
> On Sun, Jul 07, 2019 at 11:39:46PM -0400, Jon Masters wrote:
>> Hi all,
>>
>> TLDR: We think $subject may be a hardware errata and we are
>> investigating. I was asked to drop a note to share my initial analysis
>> in case others have been experiencing similar problems with 32-bit VMs.
>>
>> The Fedora Arm 32-bit builders run as "armv7hl+lpae" (aarch32) LPAE
>> (VMSAv8-32 Long-descriptor table format in aarch32 execution state) VMs
>> on AArch64 hosts. Under certain conditions, those builders will "pause"
>> with the following obscure looking error message:
>>
>> kvm [10652]: load/store instruction decoding not implemented
> 
> Out of interest, because I'm running a number of 32-bit VMs on the
> Macchiatobin board, using a different 64-bit distro...
> 
> How often do these errors occur?  Have you been able to pinpoint any
> particular CPU core?  Does the workload in the VMs have any effect?
> What about the workload in the host?

It's a specific CPU core (not a Cortex design), running a 32-bit LPAE
kernel (needs to be LPAE to have an IPA >32-bit). In the course of a
weekend running stress tests, my test kernel fixed up hundreds of faults
that would otherwise have taken the guest system down.

Specifically, PGDs are allocated from a cache located in low memory (so
we never hit this condition for those), but PTEs are allocated using:

	alloc_pages(PGALLOC_GFP | __GFP_HIGHMEM, 0);

So at some point, we'll allocate a PTE from above 32-bit. When we later
take a fault on those during a stage 1 walk, we hit a problem.

My guess is we do the clock algorithm on the host looking to see for
recent accesses by unsetting access bits on the host (stage2) and since
on Armv8.0 we do a software trap for access bit updates we'll trap to
stage 2 during the stage 1 guest walk the next time around. So simply
pinning the guest memory isn't going to be sufficient to prevent it if
that memory is allocated normally with the host doing software LRU.

But the above is just what I consider the likely cause in my head.

Jon.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
