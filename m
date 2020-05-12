Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629891CFA8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atfmzJ1KSwNmFvNYi4/SwFOqX+3WzkorxW9qfXP4KuE=; b=RlAvaBI3U18xZ1
	gUydY6DCV/s+GkSrjcNWgOxE+jHEvtI0HkIlAup5Tgi3aZ0RNw+Cqn3uja7CK9LCtUxTvRNV89HY5
	hgxWVaCpMo5EBpuZGn6WMhvbGSFzCJLQbfIQphV4y6pL9P8yEeSaM4BvMfnXzG+oEe/bDpS7W4Jct
	VZRKqe4JwyBeAloP74+VR/Y3nxPaHjdyytn3TVXDtsXMt85uOYrI1MYR4ezWbnSwyy6WON/RQ0rMP
	v/8NrUNlr11mN9+sL6IdNUpFMLoU/MbMGq3zKQ860lLqu+ZcJOoAIftQzwjOHk1uPF7uv5y+QPCbV
	oJxgO6WG8JGVmRJLBMcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXis-0000rJ-3Z; Tue, 12 May 2020 16:25:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXil-0000qd-15
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:25:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 499191FB;
 Tue, 12 May 2020 09:25:26 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D66653F305;
 Tue, 12 May 2020 09:25:24 -0700 (PDT)
Date: Tue, 12 May 2020 17:25:21 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v5] arm64: Expose FAR_EL1 tag bits in sigcontext
Message-ID: <20200512162520.GE14943@gaia>
References: <20200507175713.162890-1-pcc@google.com>
 <20200508020106.136652-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508020106.136652-1-pcc@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_092531_114876_206D7D0D 
X-CRM114-Status: GOOD (  11.72  )
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 07:01:06PM -0700, Peter Collingbourne wrote:
> The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> the tag bits may be needed by tools in order to accurately diagnose
> memory errors, such as HWASan [1] or future tools based on the Memory
> Tagging Extension (MTE).
> 
> We should not stop clearing these bits in the existing fault address fields,
> because there may be existing userspace applications that are expecting the tag
> bits to be cleared. Instead, create a fault_addr_top_byte_context in sigcontext
> (similar to the existing esr_context), and store the tag bits of FAR_EL1 there.
> 
> [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>

It looks alright to me.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
