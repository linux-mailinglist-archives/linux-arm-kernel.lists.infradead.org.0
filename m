Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B531921423
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtOOQTJasnvvx3J36BjFLWLK2uvo+gpagUGXCcEaLwQ=; b=i/F8ZE/Q17E8v0
	4EqdnqpwJz3pQvmwIhQyCMZEcgOQZ5/KhukPO3Qys4Sf2/fGcQzVQyHEGB+k/w40SA8be7XW+IA+k
	Wl9slEV9rKpmRHC1C0DdkYeQHgbJYxPaiwG8IPzJ66+Ag8op/uOiSLhR6lkFHK5HBK+Hw/JilyCRP
	93bNnJYcjU0/svlxQ/IPFFM5g4Q0azxE5x5zwq9+lK1qS7jKEfv177Y1Xs+CJ7X2K1CquOjtkFGeU
	VTsypYByB21VFi4GuEjRZUD8QXcuRC0cv2WV8YVCVAlitsZcBvPUE59nAEYk1CBx2CI6NUCyeC0op
	HjM46fhr5SFf8XPkex0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXDu-0004Gw-GR; Fri, 17 May 2019 07:24:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXDp-0004Ga-Da
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 May 2019 07:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ORQFQOKsU4owisXhp5jeYh1W+r9CvSmJ9PenyfCCsE=; b=MqKTLsBXxMdwkW5TVib3h9Lp6
 Q9Nie+IV32KSq7LvYnaC7Yt1OGgWo/duZnYDamEBrU8W9eHkjW6WVwV4+ikNrsiTIEK2b7Zpzm6Bn
 6vTDD270ZrlXfe7PEi7ULFPZlCyr2/1cm1zhPPRynsj1rylLRXB7TYjPYCe0kL+RMvasEINJvkTd6
 3XuE07oSV4Z5RQHuUPYFltp9lmH0XzlI9jIbPRAIQl1kRyZO4JYjW6UsmduVSpLfY7ed9wV916rjT
 kFZukdfoC44rJelJATYFu/BfAAcdOj5shsqYE5BPcE/2a2KttHa6gs9MTyxsTZv1emCqlVYDVlkd+
 sFx0u98Ag==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXDm-0007Cm-Kw; Fri, 17 May 2019 07:24:03 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 468922029906B; Fri, 17 May 2019 09:24:01 +0200 (CEST)
Date: Fri, 17 May 2019 09:24:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 0/5] arm64: avoid out-of-line ll/sc atomics
Message-ID: <20190517072401.GI2623@hirez.programming.kicks-ass.net>
References: <20190516155344.24060-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516155344.24060-1-andrew.murray@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Boqun Feng <boqun.feng@gmail.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel@lists.infradead.org, Ard.Biesheuvel@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 04:53:39PM +0100, Andrew Murray wrote:
> When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> or toolchain doesn't support it the existing code will fallback to ll/sc
> atomics. It achieves this by branching from inline assembly to a function
> that is built with specical compile flags. Further this results in the
> clobbering of registers even when the fallback isn't used increasing
> register pressure.
> 
> Let's improve this by providing inline implementatins of both LSE and
> ll/sc and use a static key to select between them. This allows for the
> compiler to generate better atomics code.

Don't you guys have alternatives? That would avoid having both versions
in the code, and thus significantly cuts back on the bloat.

> These changes add a small amount of bloat on defconfig according to
> bloat-o-meter:
> 
> text:
>   add/remove: 1/108 grow/shrink: 3448/20 up/down: 272768/-4320 (268448)
>   Total: Before=12363112, After=12631560, chg +2.17%

I'd say 2% is quite significant bloat.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
