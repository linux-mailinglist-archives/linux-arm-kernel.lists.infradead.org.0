Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3497DA6BC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXNiF0hElFe+IG2R1UCxDCZ51GOdUwuqazmUGsKORVk=; b=oh9WLMMf1FU13A
	KZ5/UEdX7t63tbPlVCvTHsG5onN5TY8Pkw64RmSSj5pCDNxSka39EC3kwm55YzTydjtr2C1lb06uG
	B5od50RKpV+zf2bgEt+YaSQJKT5m5sJIOvorP9PwN6FIij/LKHLDNNofT4OEd7mLwMW7+ra4wMcGI
	WbZzJh88MlQkpLYCdfbwNKc77YPGko/tTPQnA3WuXeKVdQRBCf81pS/8PYYmqj2mpAIjIS+lmADrj
	Fhhj86cm/drz38gaRz4RnlaLoxk/FWdRa6OzZ/tSLdProD5buiJdpWfnJfQQbCk+Auy0K6xWqyk87
	AozAukMTuvM4Z+XIN00Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5A45-00067k-IX; Tue, 03 Sep 2019 14:45:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5A3v-00067K-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:45:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8781320828;
 Tue,  3 Sep 2019 14:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567521939;
 bh=qEeo5Yjn1rQcXbmWDfs7jOgFcYF72m1/wF7aUEk38N4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xWll90rd/ZhBXNDXVq69JZjvSsqS9lvQ9c0ayy6OGJBJOTzrvKwqBKttR/lso8ClD
 4V4HhDC0QtNQ6c5niNMG4PFECYYdIihtQw2rkHdRDmPGa8lFYKsdzqt44ufVUMKRya
 H9iqy/RfkewjwpMzoOJSeU1ew9Adb4MQs51/oEZw=
Date: Tue, 3 Sep 2019 15:45:34 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_074539_544692_1E5DA215 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com,
 Nathan Chancellor <natechancellor@gmail.com>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 03:31:19PM +0100, Andrew Murray wrote:
> On Mon, Sep 02, 2019 at 11:00:11PM -0700, Nathan Chancellor wrote:
> > On Thu, Aug 29, 2019 at 04:48:27PM +0100, Will Deacon wrote:
> > > From: Andrew Murray <andrew.murray@arm.com>
> > > 
> > > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > > or toolchain doesn't support it the existing code will fallback to ll/sc
> > > atomics. It achieves this by branching from inline assembly to a function
> > > that is built with special compile flags. Further this results in the
> > > clobbering of registers even when the fallback isn't used increasing
> > > register pressure.
> > > 
> > > Improve this by providing inline implementations of both LSE and
> > > ll/sc and use a static key to select between them, which allows for the
> > > compiler to generate better atomics code. Put the LL/SC fallback atomics
> > > in their own subsection to improve icache performance.
> > > 
> > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > 
> > For some reason, this causes a clang built kernel to fail to boot in
> > QEMU. There are no logs, it just never starts. I am off for the next two
> > days so I am going to try to look into this but you might have some
> > immediate ideas.
> > 
> > https://github.com/ClangBuiltLinux/linux/issues/649
> 
> I've been able to reproduce this - with clang 9.0.6 and qemu (without KVM)
> and only when ARM64_LSE_ATOMICS is enabled.
> 
> This is slightly concerning...
> 
> (gdb) b __lse__cmpxchg_case_acq_32
> Breakpoint 1 at 0xffff80001012b3cc: __lse__cmpxchg_case_acq_32. (19 locations)
> (gdb) continue
> Continuing.

[...]

> Any ideas?

Does it work if the only thing you change is the toolchain, and use GCC
instead? Could be some teething issues in the 'asm goto' support for clang?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
