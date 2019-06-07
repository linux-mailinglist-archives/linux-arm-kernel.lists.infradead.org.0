Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF4F38813
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIHXlGDllLjdVZCgEuC6YWaBUTVzN9Avu6XHg008V0w=; b=VXaVX4uc1rSeg9
	IrehBWfbsrxjxCQ+nyq90JQHbQWgN/wR1fNMrisfDA6LXh5VgMXqPpL++PpUP3GbNaLaDunCGi6I7
	7DZi16qHMf+u/yYMbV6ZLSu3Po2T885EOC/cxZ3fgj1gMsYv2Oo7JzBryyDhzFrOBB7vu7NGm+FNl
	4iarkXbNKAjioOvmy3hYyNRs2z1qY+miPXbJhl/EpMZg6kxd0FbBIOjku+p8YIQzMqT0Hm1vsZ23H
	ueVI0qPTTtuaB0xMjXA6ECWzVnjGuINlz/Xm4bgl0gA5bmB5pbHxL++oVpsyGpiftuzZi7lu5+qsH
	37UmLHZEWbTJ6apTmoaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCIM-0006x4-Gu; Fri, 07 Jun 2019 10:40:26 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCI7-0006jS-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:40:13 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 28F4F1FFF7;
 Fri,  7 Jun 2019 12:40:06 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 1176D1FF7C;
 Fri,  7 Jun 2019 12:40:06 +0200 (CEST)
Subject: Re: [PATCH v3] iommu/arm-smmu: Avoid constant zero in TLBI writes
To: Joerg Roedel <joro@8bytes.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <f523effd-ef81-46fe-1f9e-1a0cb42c8b7b@free.fr>
 <20190529130559.GB11023@fuggles.cambridge.arm.com>
 <84791515-e0ae-0322-78aa-02ca0b40d157@free.fr>
 <09a290f1-27a0-5ee3-16b9-659ef2ba99dc@free.fr>
 <20190605121900.GJ15030@fuggles.cambridge.arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <f7b2e799-e3b1-ad40-c7b7-153f00323636@free.fr>
Date: Fri, 7 Jun 2019 12:40:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605121900.GJ15030@fuggles.cambridge.arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Jun  7 12:40:06 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_034011_909730_D6CDC296 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Will Deacon <will.deacon@arm.com>,
 iommu <iommu@lists.linux-foundation.org>, Andy Gross <agross@kernel.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/06/2019 14:19, Will Deacon wrote:

> On Mon, Jun 03, 2019 at 02:15:37PM +0200, Marc Gonzalez wrote:
>
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> Apparently, some Qualcomm arm64 platforms which appear to expose their
>> SMMU global register space are still, in fact, using a hypervisor to
>> mediate it by trapping and emulating register accesses. Sadly, some
>> deployed versions of said trapping code have bugs wherein they go
>> horribly wrong for stores using r31 (i.e. XZR/WZR) as the source
>> register.
>>
>> While this can be mitigated for GCC today by tweaking the constraints
>> for the implementation of writel_relaxed(), to avoid any potential
>> arms race with future compilers more aggressively optimising register
>> allocation, the simple way is to just remove all the problematic
>> constant zeros. For the write-only TLB operations, the actual value is
>> irrelevant anyway and any old nearby variable will provide a suitable
>> GPR to encode. The one point at which we really do need a zero to clear
>> a context bank happens before any of the TLB maintenance where crashes
>> have been reported, so is apparently not a problem... :/
>>
>> Reported-by: AngeloGioacchino Del Regno <kholk11@gmail.com>
>> Tested-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> 
> Acked-by: Will Deacon <will.deacon@arm.com>
> 
> Joerg -- Please can you take this as a fix for 5.2, with a Cc stable?

Hello Joerg,

Can you ping this thread once this patch hits linux-next, so I can
ask Bjorn to pick up the 8998 ANOC1 DT node, and the PCIe DT node
that requires ANOC1.

Bjorn: for ANOC1, a small fixup: s/arm,smmu/iommu/

https://patchwork.kernel.org/project/linux-arm-msm/list/?series=99701
https://patchwork.kernel.org/patch/10895341/

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
