Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A505319567F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:39:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzlrOL8e0KtKWqZ72yQHXg3zBIFcvhR0HTOVkhLVA88=; b=oNRaC8X1UrfoG7
	u4XLGDX+sud7bCZATOa5bsxzrWLGWj0Xk8jrxmVGGYYCkTZvmWjxDZOCUrAwNUXuul8TAIW9dNANv
	QDkD1ac98azMJxHidGrQ/fPFHUJ/q9WXUe1LjwNPTgaMF6bZTKsRbCpHQInzin8p9xOnBIYCW9V2v
	nhsMdGRk0YbZv45t20SuBhli0yof2JSQVUXIBnHzkXAy1f8zFdTjwsHATDwubyavGFnTdLqJC9CLB
	dOUnkRQBdcHfpijf7s1QnDjMPtTT7Jy7fZz04NxSplWbkpkNqSwsukoTukeAwe8F4CcLhVRbq8Gul
	JIcrTE7FP3jE7gUOZc9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHnKa-0008IG-0g; Fri, 27 Mar 2020 11:39:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHnKM-0008Hd-97
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:39:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F12F430E;
 Fri, 27 Mar 2020 04:39:03 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8B253F71E;
 Fri, 27 Mar 2020 04:39:02 -0700 (PDT)
Date: Fri, 27 Mar 2020 11:39:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200327113859.GA18117@mbp>
References: <20200312171755.177743-1-pcc@google.com>
 <20200325174001.234803-1-pcc@google.com>
 <20200326164538.GC26987@mbp>
 <20200327075655.GA32241@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327075655.GA32241@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_043906_369006_9E4B103A 
X-CRM114-Status: GOOD (  17.30  )
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

On Fri, Mar 27, 2020 at 07:56:56AM +0000, Will Deacon wrote:
> On Thu, Mar 26, 2020 at 04:45:39PM +0000, Catalin Marinas wrote:
> > On Wed, Mar 25, 2020 at 10:40:01AM -0700, Peter Collingbourne wrote:
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
> > 
> > The patch looks fine. However, I wouldn't queue it for 5.7, it's too
> > close to the merging window and I'd like it to sit in linux-next for a
> > bit. Unless there are other comments, it looks fine to me for -rc8.
> 
> You mean 5.8?

Yes.

> I'm also a bit surprised not to see a docs update, given that
> we talk about the general lack of tags in siginfo_t towards the end of
> Documentation/arm64/tagged-pointers.rst

Good point. It's worth adding this to the tagged-pointers.rst document
since the only use of the raw FAR_EL1 is for tagged pointers.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
