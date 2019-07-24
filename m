Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2880E72CE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueHI9Bg3YTE8FD0lhT+PrwiE3O+Bswca882MZze72r0=; b=AhSOWoH4TN+P+8
	I10CRO00eC5UaO8btNJ0TRpfonk7FlrtOg0LpVWz1PZQ+i1GvXeRh1MShx3Yy3a69mUuUtufsPhHV
	YWn5EiAnib0+eeWxeLiepitCdXe0hIc/LbJmImJtVLQqGlllWyPk8Xt+ZcvDFHVnITqK/pQC2so+8
	AlITIp4KYlBRVHCPhZEElvoyqC5qyAbIr+dyee0+0Fg45jDy08QCv090W9h8/fR5UPESOrd9+0zd5
	ZAoIBkUBpyk5tW84mwjapTQ/RQ3iJKA0gcQpv0qU/Ywa5EGiwUXPppY+5zvnNUcxe0KHIhxrtaUbE
	bsvywNrKY9ocCSIhPO8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqF8B-0006mO-Ms; Wed, 24 Jul 2019 11:08:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqF7x-0006iJ-1T
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:08:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC335337;
 Wed, 24 Jul 2019 04:08:07 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BDCE33F71A;
 Wed, 24 Jul 2019 04:08:06 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm/arm64: Properly check for MMIO regions
To: KarimAllah Ahmed <karahmed@amazon.de>
References: <1562919728-642-1-git-send-email-karahmed@amazon.de>
From: James Morse <james.morse@arm.com>
Message-ID: <653177b8-7e74-aef3-3a4c-a45df5bcdab2@arm.com>
Date: Wed, 24 Jul 2019 12:08:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1562919728-642-1-git-send-email-karahmed@amazon.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_040809_148706_C7C0625A 
X-CRM114-Status: GOOD (  13.13  )
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Julien Thierry <julien.thierry@arm.com>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi KarimAllah,

On 12/07/2019 09:22, KarimAllah Ahmed wrote:
> Valid RAM can live outside kernel control (e.g. using "mem=" command-line
> parameter). This memory can still be used as valid guest memory for KVM. So
> ensure that we validate that this memory is definitely not "RAM" before
> assuming that it is an MMIO region.
> 
> One way to use memory outside kernel control is:
> 
> 1- Pass 'mem=' in the kernel command-line to limit the amount of memory managed
>    by the kernel.

"mem=" is a debug option, we ignore it if we need something located outside the 'mem=' region.


> 2- Map this physical memory you want to give to the guest with:
>    mmap("/dev/mem", physical_address_offset, ..)

/dev/mem is an egregious hack! If you need to use it, you probably didn't want an
operating-system in the first place.


> 3- Use the user-space virtual address as the "userspace_addr" field in
>    KVM_SET_USER_MEMORY_REGION ioctl.


... What do you want to do this for?

At a guess: this is to save all that annoying 'memory allocation' overhead at guest
startup. If you get your VMM to use hugetlbfs, you can reserve the memory during boot. I
do this with "hugepagesz=2M hugepages=512" on the kernel command-line.

(if you get a RAS error affecting memory that the kernel doesn't know about, it will
ignore it. Using hugetlbfs instead gives you all the good things: hugepage-splitting,
signals to your VMM, stage2 unmapping etc.)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
