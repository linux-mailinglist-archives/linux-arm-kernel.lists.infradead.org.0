Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECE01F95F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ohs6PBq36UAL82/vSyee5kuDNXE1TYNApe+1J5jcM10=; b=Maev9PTX+CHlNV
	xq+1km2EOXIrJpl2i8FXvkKaaSBSrZXFAu/gAg0KBITopENa4BkzrABKHoCudBIUweM2kWjaPfIZR
	Zl/ayl6Q4v5jyHdoFmKH8wHBRoT8fW2oM2rUx1hg79Mb8QF0cNZ0xjb/xQ5pMsTTc2JUL0BaJwPVN
	WPWzehQow5EzZVcuBjiZcNLuAaYU6xSt6LTsnuyFP+/IXcP8AXfXrUMU3Y48bzTkXIBBXq2F/h52C
	IcZw4jJy4x8pNxNv8Xj5NYNSXZ2Va8+amz+ZJycP3tpEBvkX/jnGsglOuLHj9Jwxm35MGn9/5Rpoj
	2d4QCfNpWhe6OQxXvf9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknoy-0000jn-GD; Mon, 15 Jun 2020 12:02:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknoq-0000jS-Ij
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:02:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE7A220679;
 Mon, 15 Jun 2020 12:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592222548;
 bh=/iFnaDNjDkCvERMFws68NeGc+iYJoUj4sB2FfslTj98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B8ZeL55NRAsTYqUsKeNm14es/w/kyQmRgQgINUppti9fxvpBf6IitMT1F6z/6q3j4
 Nkzd7ghiaelxB4oHYHuyrNRExHyNAoonKhwf0SgUbBOVO976JJRNPTBwG6qgdUC238
 IEr2JNODEevSoMMJu+deyc0h4rdxd3swkFni0iRY=
Date: Mon, 15 Jun 2020 13:02:23 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615120223.GC2694@willie-the-truck>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615115337.GG4447@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_050228_632732_8A19B8B6 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: mark.rutland@arm.com, android-kvm@google.com, catalin.marinas@arm.com,
 ndesaulniers@google.com, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, daniel.kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
> 
> > Here, the switch statement has been replaced by a jump table which we *tail
> > call* into. The register dump shows we're going to 0xffffd68929392e14:
> 
> > ffff800010032e14:       d503233f        paciasp
> > ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > ffff800010032e1c:       910003fd        mov     x29, sp
> > ffff800010032e20:       aa0803e0        mov     x0, x8
> > ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> > ffff800010032e28:       93407c00        sxtw    x0, w0
> > ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> > ffff800010032e30:       d50323bf        autiasp
> > ffff800010032e34:       d65f03c0        ret
> 
> > The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> > it expects to be called with a branch-and-link, and so we panic. I think you
> > need to emit a 'bti j' here prior to the paciasp.
> 
> I checked with our internal teams and they actually ran into this
> recently with some other code, the patch:
> 
>    https://reviews.llvm.org/D81746
> 
> ([AArch64] Fix BTI instruction emission) should fix this, it's been
> reviewed so should be merged shortly.

Cheers, that's good to hear. Shall we have a guess at the clang release
that will get the fix, or just disable in-kernel BTI with clang for now?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
