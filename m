Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B3ED4483
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OypZ13Kn4XMfLV8OCZUDD9Uik0qLhoyLfEl5ldMx4g8=; b=SWRTUbA6v73ONR
	sN185m3jYF5L6OFIN/RYaeG7GjFcRKjvuvHryoWjqmd3fkPl4E7i66ysN99xcQwvrO9JWimhtFYQA
	AfPAvY9mhU/phHLCNt83P/oiTSjgMLDMokC7A9mCfbViGl05DGhh19CVOE0QwvRdKP8iDmbbEQepx
	MU9r8qc1EbbE27bVbMDCY1NeEGPHJzIZTaFQ74J2UlPmCoe5OHv22SONDWgx8FW3f1dxNwjHIQayD
	uetr+veUxC8owEnDospthWiGzZydr8reDykkUsnGZrwDgf8J1Ga09GVB5xZE0trBmexpiWa1grR4e
	ALIDu/1g5fqsh729JCBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwz0-0005Q8-JJ; Fri, 11 Oct 2019 15:37:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwyr-0005Pm-Oh
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:37:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B14E0142F;
 Fri, 11 Oct 2019 08:37:24 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A4923F68E;
 Fri, 11 Oct 2019 08:37:23 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: fix kcore macros 52-bit va fallout
To: Chris von Recklinghausen <crecklin@redhat.com>,
 linux-arm-kernel@lists.infradead.org
References: <20191010172247.19033-1-crecklin@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <6bd46fde-1004-5661-eee5-a584ecdd084e@arm.com>
Date: Fri, 11 Oct 2019 16:37:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010172247.19033-1-crecklin@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_083725_849147_7D5EA38F 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, will@kernel.org, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

On 10/10/2019 18:22, Chris von Recklinghausen wrote:
> We export the entire kernel address space (i.e. the whole of the TTBR1
> address range) via /proc/kcore. The kc_vaddr_to_offset() and
> kc_offset_to_vaddr() macros are intended to convert between a kernel
> virtual address and its offset relative to the start of the TTBR1
> address space.
> 
> Prior to commit:
> 
>   14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> 
> ... the offset was calculated relative to VA_START, which at the time
> was the start of the TTBR1 address space. At this time, PAGE_OFFSET
> pointed to the high half of the TTBR1 address space where arm64's
> linear map lived.
> 
> That commit swapped the position of VA_START and PAGE_OFFSET, but
> failed to update kc_vaddr_to_offset() or kc_offset_to_vaddr(), so
> since then the two macros behave incorrectly.
> 
> Note that VA_START was subsequently renamed to PAGE_END in commit:
> 
>   77ad4ce69321abbe ("arm64: memory: rename VA_START to PAGE_END")
> 
> As the generic implementations of the two macros calculate the offset
> relative to PAGE_OFFSET (which is now the start of the TTBR1 address
> space), we can delete the arm64 implementation and use those.

Reviewed-by: James Morse <james.morse@arm.com>

I think you can pick up Mark's R-B tag too:
https://lore.kernel.org/r/20191010165537.GA27584@lakrids.cambridge.arm.com


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
