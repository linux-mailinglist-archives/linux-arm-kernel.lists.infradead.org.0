Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006A81BF4C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrPMuoPTbDMLjacLLWoWq9f7CFP5Rrcolyw5U1frKVc=; b=bBRc4HwW7T5wbv
	3/VgV75SMBh6suqJyfDSNpK7ntt/cdwT/VVRD2YtpU8GVbDjWCJBO2eefzTpHd81z60qg6g+gbbEO
	0NDdB9xWQt2dMm9V39NpksBSXdF9y/xaTVxu/RxRy4YH/BkDhsMVg+MfCEVzmZuPHpvqzynCmyiWs
	7Vj4wZCW0NR/kkS20zUJcqAXqQrBrCbLK6kjapUkZ4tvngdYqk/G6bZ0jMc1Q3mZPThOQ9ZxdwdoB
	l/GCiV4n6xuQZCYKMwC8vDcexBpYa8Z4XonjLv71e1Kor6HE3cna5LMEgejNGg0JV8B7cB8Q9OjXO
	JTy5CpUDUuklRPXTZw1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5zv-0004zA-5q; Thu, 30 Apr 2020 10:00:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5yX-0001OC-BQ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:59:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 260ED20838;
 Thu, 30 Apr 2020 09:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588240764;
 bh=+d0x7/Dedap3bk9l2YUJn9f9X8Sozz13oCN/vIjR4OY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tML6CM5+ZyrjnuA8RuV81AGv10cezjoAIzc5m2rTzx9xMcm0x0FPUcnyzdibDdxHl
 z+di/RH/qi/2FIfylU14Q2NIgd+fbjgbPK6Owgy564tHktl9WwPSTJ7iGx+z/l6+wA
 RwJ3yXkPjcP22escnnVxYDgxt9Ab/1UHdYRqEVzI=
Date: Thu, 30 Apr 2020 10:59:19 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200430095919.GB19932@willie-the-truck>
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
 <20200429210826.GA8604@willie-the-truck>
 <20200430095001.GD2717@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430095001.GD2717@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_025925_440184_0AFF1D89 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:50:01AM +0100, Catalin Marinas wrote:
> On Wed, Apr 29, 2020 at 10:08:26PM +0100, Will Deacon wrote:
> > On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> > > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > > the tag bits may be needed by tools in order to accurately diagnose
> > > memory errors, such as HWASan [1] or future tools based on the Memory
> > > Tagging Extension (MTE).
> > > 
> > > We should not stop clearing these bits in the existing fault address
> > > fields, because there may be existing userspace applications that are
> > > expecting the tag bits to be cleared. Instead, create a far_context in
> > > sigcontext (similar to the existing esr_context), and store the original
> > > value of FAR_EL1 (including the tag bits) there.
> > > 
> > > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> > > 
> > > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > > ---
> > > v3:
> > > - add documentation to tagged-pointers.rst
> > > - update comments in sigcontext.h
> > 
> > Hmm, although the code looks fine, why don't we just expose the tag in the
> > new field, rather than duplicate the address information? I'm nervous about
> > exposing privileged registers directly to userspace.
> 
> That's for consistency with ESR_EL1 which we expose in a similar way,
> though with bits of it not relevant to user masked out. For FAR_EL1, all
> the bits are relevant, even if some of them are duplicated in the
> si_addr field.

It may be consistent, but I would argue that exposing ESR_EL1 was a mistake,
as illustrated by cc19846079a7 ("arm64: fault: Don't leak data in ESR
context for user fault on kernel VA"). We have to live with that, but we
should try to do better for new fields in the sigcontext.

> > Also, Catalin, could you elaborate on the MTE use-case please? The
> > architecture says that FAR_EL1[63:60] are UNKNOWN on a synchronous tag
> > check fault, so we'd have to *avoid* exposing them in that case!
> 
> With MTE, FAR_EL1[63:60] will be cleared on sync tag check faults (not
> currently done as I don't have this patch in my MTE series).

Ok, but in [1] you said "I'm fine with this change for consistency and
may help with the fault information printed by the kernel with khwasan
or (later) MTE."

But I don't think consistency is necessarily a good thing here and I don't
see how it helps with MTE if we zap the bits to 0! We'd be better off not
exposing the information at all in this situation.

Will

[1] https://lore.kernel.org/r/20200325131023.GN3901@mbp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
