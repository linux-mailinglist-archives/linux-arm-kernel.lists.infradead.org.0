Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5824D97FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rueIBerWIfWjpiHpCSfS2Sdp2M2FWllwxAaLXeCGxs4=; b=G4LqebDKtC/0fd
	b6M0q4Sduz6E3iru3U9ELA0RLq79wjQIzOjPtPCfCSd/z0PjJCGq09+N+N95tHJln0rWMw9pm4+0D
	a29hVXQBIQI3Ho4zDH5Deg/ZQjHeZ8u2qGSFMomb29hFPjW3q/Eo4X1O/9OgrCFjOpa3c0/eMJ/DT
	Sx0kBT2Ttnq/a6o+PnM14fdxmayLERXrpuezYxnHX6TWHAo8Zq/rA62d+hNJUXiN1msri1whnyDC3
	P1Gp3l/Lzq+c8ksQMQR290En9Ur4F1ElQ7yQ38h5ybnD2fAfVdw9aIvaoyt+JnFxKkPvKYSda+gTE
	m9bWqoJzBQItnfGVhYyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKma2-0007Cn-PH; Wed, 16 Oct 2019 16:55:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmZo-0006ii-UL
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:55:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3EBA28;
 Wed, 16 Oct 2019 09:55:06 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E7DC13F6C4;
 Wed, 16 Oct 2019 09:55:05 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: fix inverted PAR_EL1.F check
To: Will Deacon <will@kernel.org>
References: <20191016110304.44932-1-mark.rutland@arm.com>
 <99261f9e-98ab-ca79-9514-b900306f49df@arm.com>
 <20191016164916.pcyjmmdnnup7wg44@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <65090dc0-8b83-a7c5-acc6-293d0d7e81e0@arm.com>
Date: Wed, 16 Oct 2019 17:55:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016164916.pcyjmmdnnup7wg44@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_095509_052968_97780FE7 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 16/10/2019 17:49, Will Deacon wrote:
> On Wed, Oct 16, 2019 at 05:29:27PM +0100, James Morse wrote:
>> On 16/10/2019 12:03, Mark Rutland wrote:
>>> When detecting a spurious EL1 translation fault, we have the CPU retry
>>> the translation using an AT S1E1R instruction, and inspect PAR_EL1 to
>>> determine if the fault was spurious.
>>>
>>> When PAR_EL1.F == 0, the AT instruction successfully translated the
>>> address without a fault, which implies the original fault was spurious.
>>> However, in this case we return false and treat the original fault as if
>>> it was not spurious.
>>>
>>> Invert the return value so that we treat such a case as spurious.
>>
>> With d0b7a302d58a reverted I can use A57's #1387217[1] to hit this spurious case.
>> (it needs planetary alignment too).
> 
> Haha, I like your choice of words here! "Using" an erratum for testing is an
> interesting concept.
> 
>> With this this patch the 'spurious' message is printed, and the kernel keeps running [0].
>>
>> If its useful:
>> Tested-by: James Morse <james.morse@arm.com>
> 
> Thanks, I'll pick this up along with the other patch to the field definition
> (did you have that one too?)

No... is it in rc3?

git log --oneline
| 08245819bd8b arm64: mm: fix inverted PAR_EL1.F check
| 123260acf6ac Revert "Revert "arm64: Remove unnecessary ISBs from set_{pte,pmd,pud}""
| 4f5cafb5cb84 Linux 5.4-rc3


I ran it without Mark's patch and it died as expected.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
