Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC993A619D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgJosGLRNyhKRiFCj4kB9Ed/A7VzWGjCawyotbRxfNk=; b=o4vznyh3uUbAPt
	DQeGjU9KqHUjkJom8WPD7Ax1dEzkmcRIt6ka/gGzj0WULsWh/XbUD+YMXChikDmFWSlkum0zwCjn6
	6U+X+y6d7unUWioxOSeBI4kKM+/Ip+Ynwg9IMscDtXLp1qI5BUMA2S+KYWlLv4KWbxeq+DDdrLewZ
	rnFQngmSiFZ4lVsvONX0aF7Uj0cxDVjkHQjaMzOd2o0vozERsADfS2VdpAWB2IEE72MYLyjhuNtth
	uJjh9lrgv+0edOSe7seCkAXi7vWAkIXx+3QAlfsGUuVoyO6fK9zEmX9O5MfWq7EOMzK8X8uEsVujt
	GHEM4f+yBrhon2sgZQ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52UC-0000Mg-Ug; Tue, 03 Sep 2019 06:40:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52Tl-0000MD-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:39:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CBA12173E;
 Tue,  3 Sep 2019 06:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567492789;
 bh=lmy8wusR7ipaUSZmqvBltKYOTRt+jP08fxjaqpJcOI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DW7wBxp6y7JGVajYTkM6a2jcliz0Guu89QJkBz/2usqnuNfS3/wi+8BGandP+P1od
 nQnp3/e0Yb9+pUILp2yRwTWpS/f38sbS/UKxmXmUzwdNcfT4ZkMuUrlixMczXeX8ma
 Cq081I2DyUNfyCKUfuSu2Dv7WXJrXNOLqHhx0v48=
Date: Tue, 3 Sep 2019 07:39:44 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903063943.tmfyjonjsyq5os5q@willie-the-truck>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903060011.GA60737@archlinux-threadripper>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_233949_464292_B7A23EFE 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, andrew.murray@arm.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 11:00:11PM -0700, Nathan Chancellor wrote:
> On Thu, Aug 29, 2019 at 04:48:27PM +0100, Will Deacon wrote:
> > From: Andrew Murray <andrew.murray@arm.com>
> > 
> > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > or toolchain doesn't support it the existing code will fallback to ll/sc
> > atomics. It achieves this by branching from inline assembly to a function
> > that is built with special compile flags. Further this results in the
> > clobbering of registers even when the fallback isn't used increasing
> > register pressure.
> > 
> > Improve this by providing inline implementations of both LSE and
> > ll/sc and use a static key to select between them, which allows for the
> > compiler to generate better atomics code. Put the LL/SC fallback atomics
> > in their own subsection to improve icache performance.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> For some reason, this causes a clang built kernel to fail to boot in
> QEMU. There are no logs, it just never starts. I am off for the next two
> days so I am going to try to look into this but you might have some
> immediate ideas.

Hmm, so unfortunately this series isn't bisectable, since I realised this
when I was merging the patches from Andrew, hence this:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/atomics&id=b32baf91f60fb9c7010bff87e68132f2ce31d9a8

so if you're seeing a failure with the whole branch, this commit is probably
just a red herring.

> There is another weird failure that might be somewhat related but I have
> no idea.
> 
> https://github.com/ClangBuiltLinux/linux/issues/648

Interesting. Looks like KASAN is causing a cmpxchg() call on something
which isn't 1, 2, 4 or 8 bytes in size :/

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
