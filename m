Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F661C40B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRjCEQTOrGMtKkeQnbuzHTvm7KWVCJDwyxnbEvxxHVk=; b=ugHuaGSOTHWjub
	ecO5HYG6mPk4bLa5PE0uTdnkCtMIoiI8XyhSAaT0sNHkeNLHuhyTJ3fDWuxdde/0O+dHvd/qEShfk
	SMBcANlc6l5WOVzzdttAGiK0HGjzEMZ43xCzMyouUjf0uAJGI8wlBlce12qeAqVirux3hdgbQtAe0
	qQHTCQcNY41O1oRsyDH3QJ9Zq0qPNgDKOxO5+FRnR/rvPSPC8mXG9/cyjvA6wNAxu4cWXAssxqlKl
	laQWHftWjfM2ZpuQSt85QvrXqzFLC7+JYW39QSZKkomF/ky5NborjfxYrWDBB0n2FrT74K3M4hVUG
	m2zVRKH+Puk6bRugGJLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeVB-00076c-V9; Mon, 04 May 2020 17:03:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeV4-00075l-MP
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:03:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A46D8206D7;
 Mon,  4 May 2020 17:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588611806;
 bh=9tTj22KeXXNy+Pxbwwax2L1FDq1F5u2WKlSPld/o7ug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mxP6h5LVA5K0vlpO9F/T9qh1mMYOmFIcBdnnPlf9OSLhUyYihlx1c6R5/EiJqSjce
 s37jTncHdY+7uJQEoA9A+WdZlCbYF3sj6YDHhNNHFOu2jRZc4bYPf/DnnTbp71TX+B
 Af8TheWZp+1X27mXtE9UPQn0yHEH65ELvxPAfkM0=
Date: Mon, 4 May 2020 18:03:21 +0100
From: Will Deacon <will@kernel.org>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200504170320.GC1833@willie-the-truck>
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
 <20200429210826.GA8604@willie-the-truck>
 <CAMn1gO7Xh2nnZhcjpwA3Y-8C5ePPOwHS2ORMASuQA4UaJgrFfg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO7Xh2nnZhcjpwA3Y-8C5ePPOwHS2ORMASuQA4UaJgrFfg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_100326_751962_1CCFF946 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Wed, Apr 29, 2020 at 02:42:01PM -0700, Peter Collingbourne wrote:
> On Wed, Apr 29, 2020 at 2:08 PM Will Deacon <will@kernel.org> wrote:
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
> I have no strong opinion on whether this should just contain the tag or not.

A few of us chatted about this today. Please could you spin a v4 where only
the top byte is exposed in the new sigcontext record as a __u8? You'll need
to think of a better name than "FAR"; perhaps something like 'si_addr_top_byte',
'si_addr_63_56' or whatever you fancy. Naming is hard.

For MTE we can add a separate record later on, so as not to overload this
(e.g. si_addr_mte_tag).

Ta,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
