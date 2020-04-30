Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D1B1BF481
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjn6WsLrHSlUL+NhIGNC5uJVr38ibcQhrpxUyc/rUuE=; b=rZ3b33keSGEGr1
	xohkwJSpPCRwPPu72U3KcGFqftEH7atr/NgP//na42BtnkGKITmgE777/P16u/m8jhT+qQmimUiny
	syIGCztuiKJocVGsr/X88xTgyTgY2n02B6SdiDfus9Ki7/0ASew1TpRAVB6lsHQDZnqrMj8zRuJtc
	xj9d8OiOVKT6VS0hQyAH2az2qwDgRYktHNdizCK/1VeDCk5h64FqwS3Et4S3aeIp/XIBxIEkkNjVt
	tIuJto1SMQsCedISRpWxYElQBX7CcXb/TKfgxuCr1zoBogs7FYAjjzUXiPd4urb5PB8hupClbvOa6
	pK+oh2NMJ9HftvU8zLFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5ps-0004Hp-3B; Thu, 30 Apr 2020 09:50:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5pW-0003S1-TX
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:50:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B4051063;
 Thu, 30 Apr 2020 02:50:05 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 127583F68F;
 Thu, 30 Apr 2020 02:50:03 -0700 (PDT)
Date: Thu, 30 Apr 2020 10:50:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200430095001.GD2717@gaia>
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
 <20200429210826.GA8604@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429210826.GA8604@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_025007_022463_DFAA2F79 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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

On Wed, Apr 29, 2020 at 10:08:26PM +0100, Will Deacon wrote:
> On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > the tag bits may be needed by tools in order to accurately diagnose
> > memory errors, such as HWASan [1] or future tools based on the Memory
> > Tagging Extension (MTE).
> > 
> > We should not stop clearing these bits in the existing fault address
> > fields, because there may be existing userspace applications that are
> > expecting the tag bits to be cleared. Instead, create a far_context in
> > sigcontext (similar to the existing esr_context), and store the original
> > value of FAR_EL1 (including the tag bits) there.
> > 
> > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> > 
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > ---
> > v3:
> > - add documentation to tagged-pointers.rst
> > - update comments in sigcontext.h
> 
> Hmm, although the code looks fine, why don't we just expose the tag in the
> new field, rather than duplicate the address information? I'm nervous about
> exposing privileged registers directly to userspace.

That's for consistency with ESR_EL1 which we expose in a similar way,
though with bits of it not relevant to user masked out. For FAR_EL1, all
the bits are relevant, even if some of them are duplicated in the
si_addr field.

> Also, Catalin, could you elaborate on the MTE use-case please? The
> architecture says that FAR_EL1[63:60] are UNKNOWN on a synchronous tag
> check fault, so we'd have to *avoid* exposing them in that case!

With MTE, FAR_EL1[63:60] will be cleared on sync tag check faults (not
currently done as I don't have this patch in my MTE series).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
