Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717AD84E5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zs6SYN3z5CFF5sMwT18XX7ALqnvVkICJS9snFdao6o=; b=JuyaeGkjR7tfZu
	ulOlOi4W9QtQSaCp5rmOQ/Vc6MqOzi+GGg+oBSCSYVPGi9tv45fff5Sdq4P7kjDrHpvpBzsGvCoaS
	ionUvFNAyJj3x6YQggl8WIDMfpI/6GrjyBA49bQ7e0T0/bh8SGlBI3vnYNeW3o7a2d8S+albHXeR3
	E6zVoUERJOhPd0xLEZAbBGc2UUV2+2FNqHSwUSXI6KDjhslTERZq3+LTQk9SxjSvy3/T55sZ6GIHU
	0t3UX4rwb1cGBtudnWqyKdXd/eRcpkLHCF8F3auJwkHs7L+Tdy88s2WmksEfRLq+pxZXUSjGTQi4g
	DVTs3GzwfPWxxP32YB1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMiE-0007M0-HF; Wed, 07 Aug 2019 14:14:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMi1-0007Lc-Uz
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:14:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FBEF344;
 Wed,  7 Aug 2019 07:14:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1A763F706;
 Wed,  7 Aug 2019 07:14:31 -0700 (PDT)
Date: Wed, 7 Aug 2019 15:14:29 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807141429.GG54191@lakrids.cambridge.arm.com>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
 <20190807135618.GF54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807135618.GF54191@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_071434_043980_D88C151D 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 02:56:19PM +0100, Mark Rutland wrote:
> On Wed, Aug 07, 2019 at 02:05:27PM +0100, Mark Brown wrote:
> > On Wed, Aug 07, 2019 at 02:01:11PM +0100, Mark Rutland wrote:
> > > On Tue, Aug 06, 2019 at 07:39:18PM +0100, Mark Brown wrote:
> > 
> > > Judging by the kernel log linked in a reply, this is with:
> > 
> > > * clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)
> > 
> > >   Is that the llvm.org binary release, or a custom build of clang?
> > 
> > It's from a llvm.org .deb.
> > 
> > > * Linux 5.3.0-rc2-next-20190730
> > 
> > >   Could we previously build a BE kernel with clang? If so, what's the
> > >   last working kernel?
> > 
> > As far as I know this has been broken for as long as we tried building
> > and booting big endian kernels in clang.  The compile works fine, it's
> > just that the resulting binary doesn't seem to be working so well.
> 
> I've just had a go, and it works for me. Log below from a BE busybox,
> but I also have a BE buildroot filesystem working.
> 
> For reference, I'm using:
> 
> * Linux v5.3-rc3 defconfig
> * LLVM 8.0.0 (x86_64) from llvm.org
> * GCC 8.1.0 (x86_64) from kernel.org crosstool
> 
> ... so I don't think we should blacklist this just yet, but we certainly
> need to better understand the issue you're seeing. I'll have a go with
> LLVM 8.0.1 in case there's a regression from 8.0.0 to 8.0.1.

FWIW, using LLVM 8.0.1 also works for me, everything else being
unchanged.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
