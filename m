Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91DA2DFCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 16:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG9e6vQWqr3H73zubAK2h/JxY9R/gGEi4wPCyUPe5OI=; b=ZMFgzmV2UhkiV6
	GSdH+hE/Z0WDjPVnCOK2YF5lGD4lLqvm7M/C25qSHgOxRFR7xjxugDGfub32XR/EDpVNN7ExypGAH
	Ijj/ZbiNnkq4VoTMAu9zXglJ3zhhjQAi9ArdUCF5RIibveLQd5qPAFrVS0G/XlJAlBRBsN/PL9iwg
	oTOphJZ9LbwEKXeD18VjQhqb3KEo/g/Y9t0JKRjZEiQl5yZVa79noiY+Uxx2iPHoi1meWYcGqQedn
	dpQbCS6gAZOHRZ06UH/d4lMaUc6paNo0Y7Xn9TjVLiosqE2hGFRFGH5+/Wb337AxtS9aq9iunWELU
	A7sZRYKCglVUY35F+f4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzbo-0003oN-Iq; Wed, 29 May 2019 14:31:16 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzbh-0003o2-1a
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 14:31:10 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id E4A0020B19;
 Wed, 29 May 2019 16:31:06 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id CA82B207DC;
 Wed, 29 May 2019 16:31:06 +0200 (CEST)
Subject: Re: [PATCH v2] iommu/arm-smmu: Avoid constant zero in TLBI writes
To: Will Deacon <will.deacon@arm.com>
References: <f523effd-ef81-46fe-1f9e-1a0cb42c8b7b@free.fr>
 <20190529130559.GB11023@fuggles.cambridge.arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <84791515-e0ae-0322-78aa-02ca0b40d157@free.fr>
Date: Wed, 29 May 2019 16:31:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529130559.GB11023@fuggles.cambridge.arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed May 29 16:31:06 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_073109_238040_1D9536D6 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 iommu <iommu@lists.linux-foundation.org>, Andy Gross <agross@kernel.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/05/2019 15:05, Will Deacon wrote:

> On Wed, May 29, 2019 at 01:55:48PM +0200, Marc Gonzalez wrote:
>
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> Apparently, some Qualcomm arm64 platforms which appear to expose their
>> SMMU global register space are still, in fact, using a hypervisor to
>> mediate it by trapping and emulating register accesses. Sadly, some
>> deployed versions of said trapping code have bugs wherein they go
>> horribly wrong for stores using r31 (i.e. XZR/WZR) as the source
>> register.
> 
> ^^^
> This should be in the comment instead of "qcom bug".

As you wish. I wasn't sure how much was too much.

>> While this can be mitigated for GCC today by tweaking the constraints
>> for the implementation of writel_relaxed(), to avoid any potential
>> arms race with future compilers more aggressively optimising register
>> allocation, the simple way is to just remove all the problematic
>> constant zeros. For the write-only TLB operations, the actual value is
>> irrelevant anyway and any old nearby variable will provide a suitable
>> GPR to encode. The one point at which we really do need a zero to clear
>> a context bank happens before any of the TLB maintenance where crashes
>> have been reported, so is apparently not a problem... :/
> 
> Hmm. It would be nice to understand this a little better. In which cases
> does XZR appear to work?

There are 4 occurrences of writel_relaxed(0 in the driver.

The following do not crash. Perhaps they run natively from NS EL1.

[        SMMU + 008000] = 00000000
[        SMMU + 009000] = 00000000
[        SMMU + 00a000] = 00000000
[        SMMU + 00b000] = 00000000
[        SMMU + 00c000] = 00000000
[        SMMU + 00d000] = 00000000

The following do crash. They trap to some evil place.

[        SMMU + 00006c] = 00000000
[        SMMU + 000068] = 00000000
[        SMMU + 000070] = 11190070

NB: with Robin's patch, we end up writing 0 anyway.
It would be "fun" if the emulation puked at !0
Unlikely since it worked for +70

> Any reason not to make these obviously dummy values e.g.:
> 
> 	/*
> 	 * Text from the commit message about broken hypervisor
> 	 */
> 	#define QCOM_DUMMY_VAL_NOT_XZR	~0U
> 
> That makes the callsites much easier to understand and I doubt there's a
> performance impact from allocating an extra register here.

Robin, what sayeth thee? Should I spin a v3?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
