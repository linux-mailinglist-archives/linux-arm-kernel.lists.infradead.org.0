Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710111FBD60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D67S882sa6vNaFhqbKNZT1Zb8Ix9388qc1QyDwQZdPE=; b=L5OLGAHB5KoF7k
	2KHGOpA98ugEB0EBQXu4/3oDUDutI3RPtQWZgXgwFS6HyLhSqGzs6hpD9jTzl94kOJBR4bzf/fblW
	iWCJavGRHTppOA4E2/k/YnZy9WHnrqwtclsi9scxqJEAP22Y37xMwg6LN1EhEsIOcqye5GhgIs5pO
	9nJAb3nSF6pN+J4f1fFEYPE3YQmdw0Q3PeFgNMYXBT9wNQNppzuV1G/yNLO5cxTQmddXoVh2P9qAK
	pwPBdWVjmQiiCFeXzp9bTqEGxTIEidQAlcy9mYYwBkob3aQg09CXVVvBxhIBrv08T0modAnUwiS+O
	M+Fd1zGJdu4QBI0cVoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFo9-0000GY-68; Tue, 16 Jun 2020 17:55:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFnw-0000Fw-Us
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:55:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA87820776;
 Tue, 16 Jun 2020 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592330124;
 bh=E4Ak7cRoGNwdBe7kwl7zRm/nt/xXA7c2JEuj1vqIv+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qx46rYZ3bgYsN6yjtSEcCwFLqYLVkLRzIw5mPMBQYdriPMnW0Wl+JrDQrItP4KkWS
 I0iSv2ppTaAbZ2R00/LZkr3Klk1UA0T86dBfzQFhYyKApPCtk4pczQ0t9kvRn4qnI2
 QlUleMAR2i3XtoKKAxt5iSIg3L4fm/mn5/lD4DgQ=
Date: Tue, 16 Jun 2020 18:55:19 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200616175519.GD2129@willie-the-truck>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_105525_012206_73EA1A78 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, tstellar@redhat.com, android-kvm@google.com,
 catalin.marinas@arm.com, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, daniel.kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
> On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
> > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
> > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > > > > reviewed so should be merged shortly.
> > > > 
> > > > Cheers, that's good to hear. Shall we have a guess at the clang release
> > > > that will get the fix, or just disable in-kernel BTI with clang for now?
> > > > 
> > > 
> > > This will be in clang 11 for sure. Tom, would it be too late to get this
> > > in to clang 10.0.1? If it is not, I can open a PR.
> > 
> > Any update on this, please? I'd like to get the kernel fixed this week.
> > 
> The AArch64 backend owner said it should be okay to add to 10.0.1:
> https://llvm.org/pr46327
> 
> Tom just needs to pick it, I see no reason to believe that won't happen
> this week.

Brill, then I'll tentatively queue the diff below...

Thanks,

Will

--->8

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..4ae2419c14a8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
        depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
        # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
        depends on !CC_IS_GCC || GCC_VERSION >= 100100
+       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
+       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
        depends on !(CC_IS_CLANG && GCOV_KERNEL)
        depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
        help

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
