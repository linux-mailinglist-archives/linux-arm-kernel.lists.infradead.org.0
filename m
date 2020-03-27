Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AF519526D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 08:57:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4fnNTfklxgUbkYX+OswnVKdYx109Gh0JrPkfPN6GNk=; b=lwHCMy2BsHjLuT
	blUT/rsa5Hh+uHEoks9GrYVXnQtWsv5ewIcjX4gYyA1LjMINSa4YwCvbcY6uI3OWfPj8p6CDzvu5K
	LaIyeilESRMost0OJLKuf5CVGV0W60wHLHlUBvleo/GQdRoXod3nqTAFhxi18P6T+zhyVJufuLiBQ
	+Yaa+RFlIcg7XV6Q9eM5oRvxz1zlluTiT8LYQApcthWC5hsi9zcIULwVS0ra3g+VblknA4o8OQHwp
	/zxDQDV6oAyScdVV42UyXxoA6Ogs5zeLccRornd8ciwcLHfiXxyJZjzC1TTTlZ/wBZDBpn8J5t3Ju
	pf4pJEOovVHltiL79iHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHjrd-000326-VI; Fri, 27 Mar 2020 07:57:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHjrT-00031b-5L
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 07:57:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C48F720705;
 Fri, 27 Mar 2020 07:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585295821;
 bh=9BBoSkOWHW032cVKGTcrvJhhotZiT+ANj18ZoBrCpkg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t9b1OtD3X/UpkIFwKYnNjPQq9u1VECA/E2qw4tC0xW2YLvb2ITdVJKQi+hPcKZKKd
 DBTPj/8X2RhhVYpBgOb+1eCUa/VljebF3l25VvGlJWsYWn91FENKSjzWGc8m1A3fg4
 08biC9AumsRp46PYwk24V0nWqUobUrOFKRlJY6hU=
Date: Fri, 27 Mar 2020 07:56:56 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200327075655.GA32241@willie-the-truck>
References: <20200312171755.177743-1-pcc@google.com>
 <20200325174001.234803-1-pcc@google.com>
 <20200326164538.GC26987@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326164538.GC26987@mbp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_005703_231379_08864AC5 
X-CRM114-Status: GOOD (  15.43  )
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

On Thu, Mar 26, 2020 at 04:45:39PM +0000, Catalin Marinas wrote:
> On Wed, Mar 25, 2020 at 10:40:01AM -0700, Peter Collingbourne wrote:
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
> 
> The patch looks fine. However, I wouldn't queue it for 5.7, it's too
> close to the merging window and I'd like it to sit in linux-next for a
> bit. Unless there are other comments, it looks fine to me for -rc8.

You mean 5.8? I'm also a bit surprised not to see a docs update, given that
we talk about the general lack of tags in siginfo_t towards the end of
Documentation/arm64/tagged-pointers.rst

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
