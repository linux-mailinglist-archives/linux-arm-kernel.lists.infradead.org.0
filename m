Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118E1BE9A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K353fhkZg+VNZYmuS/ZxK2HM77ZamnUgBjo6gOOHcT8=; b=qQklmUKhuroG8k
	tPXJ1flBawktKeKHxaTb++q67MxQMjYFv9tj8RJpHsu3+SdCaf8Yfqba6jQ7+CqJ8ibOvrPIIMcmA
	DsoieqCrAow+zN7q/FWoidI50RL5xoTlOzNiGUwQURBTtF0YIcImJWJS0YtyfNy51UKFuWlIEbRUO
	VtIKVjedmSzhRkzeagp+aN5yFlomC7D01oel2vowXncXidGT5NBaHBVVyRD3IXEvr0eF9VyD5GaGV
	oVMH9MA16pn5Y9zP4ZoNfKCJgb9gGvreUar/RCAj7aHQwoLkWqT01rVzsCODBeNPnMp0/2bFGtBQY
	T3ioZZ01ztVuZYzlz5Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtwh-0007CK-2I; Wed, 29 Apr 2020 21:08:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtwV-0007Bn-KO
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:08:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADAB1206F0;
 Wed, 29 Apr 2020 21:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588194511;
 bh=x62MyzNSnHtWxluweM3rlMTKDx3y8gtb3BAl6RSCfp4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F++7d5qyPnzyNp43N9DU6ZcFUUPZBTfKsEN//uUB4/kd/iWUMrMaYHnV0JJpwK241
 5auA6KzDH16h3RsN8mv4ETr6dmvTq7HcWT/5WoqeNyptqkUiP8mhWVXeK4BM6e/qG7
 UhoEZT32hiIRddWlEFuX7YyFjh7YF9ohk0m2SJuo=
Date: Wed, 29 Apr 2020 22:08:26 +0100
From: Will Deacon <will@kernel.org>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200429210826.GA8604@willie-the-truck>
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327191915.257116-1-pcc@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_140831_688644_8DDA9231 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> the tag bits may be needed by tools in order to accurately diagnose
> memory errors, such as HWASan [1] or future tools based on the Memory
> Tagging Extension (MTE).
> 
> We should not stop clearing these bits in the existing fault address
> fields, because there may be existing userspace applications that are
> expecting the tag bits to be cleared. Instead, create a far_context in
> sigcontext (similar to the existing esr_context), and store the original
> value of FAR_EL1 (including the tag bits) there.
> 
> [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> ---
> v3:
> - add documentation to tagged-pointers.rst
> - update comments in sigcontext.h

Hmm, although the code looks fine, why don't we just expose the tag in the
new field, rather than duplicate the address information? I'm nervous about
exposing privileged registers directly to userspace.

Also, Catalin, could you elaborate on the MTE use-case please? The
architecture says that FAR_EL1[63:60] are UNKNOWN on a synchronous tag
check fault, so we'd have to *avoid* exposing them in that case!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
