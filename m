Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CE42007C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVFjZSp+nMDp/VT8UPZrwoAgDFoVvsWHRjPvlnIsfvI=; b=Yc6tfhmpU5Cgcm
	XH84kBUtlyUKyNPcj9m9rwkXuLbXMQW4uwOOqqCfBRnFfB7ZePuCwqQgn1Q5CGkAz6yqzgrXq682e
	RQHKKq67x5dXsotfFdTWH1MoMS2InFJTak+14jWz87f2TWnHGin8toR+Ugf8mkA1lrg22N8uls4Rt
	51t8Z9qQuFJ1Tp713F+5G+ds4tkFwOa9q21F/+v53YXzLVYyxM9700sede9J2/zWkBWxhwMGqxg+L
	DWZLPyD2a9LB65CFkzOiNnfJKIfgpdqeGZ01AyxXArHhO8vb8cK2qRgaJbb7YDDqlb7glJxkgbrrJ
	BMarNY45mL/X6JNLSeKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFDD-0005ux-KI; Fri, 19 Jun 2020 11:29:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFD4-0005uM-UA
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:29:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15641101E;
 Fri, 19 Jun 2020 04:29:24 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA7FA3F6CF;
 Fri, 19 Jun 2020 04:29:22 -0700 (PDT)
Subject: Re: [PATCH] arm64: kvm: Annotate hyp NMI-related functions as
 __always_inline
To: Alexandru Elisei <alexandru.elisei@arm.com>, kvm@vger.kernel.org
References: <20200618171254.1596055-1-alexandru.elisei@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0236ea68-ec6a-44e6-97e3-eee05de9476c@arm.com>
Date: Fri, 19 Jun 2020 12:29:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200618171254.1596055-1-alexandru.elisei@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_042927_019660_5C966C4A 
X-CRM114-Status: GOOD (  13.85  )
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
Cc: suzuki.poulose@arm.com, maz@kernel.org,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On 18/06/2020 18:12, Alexandru Elisei wrote:
> The "inline" keyword is a hint for the compiler to inline a function.  The
> functions system_uses_irq_prio_masking() and gic_write_pmr() are used by
> the code running at EL2 on a non-VHE system, so mark them as
> __always_inline to make sure they'll always be part of the .hyp.text
> section.
> 
> This fixes the following splat when trying to run a VM:
> 
> [   47.625273] Kernel panic - not syncing: HYP panic:

> The instruction abort was caused by the code running at EL2 trying to fetch
> an instruction which wasn't mapped in the EL2 translation tables. Using
> objdump showed the two functions as separate symbols in the .text section.

Bother. Looks like I didn't have CONFIG_ARM64_PSEUDO_NMI enabled when I went looking for
these!

Acked-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
