Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03992C3A20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgQegXrQaLUsAEpYfP2tmuXee5bojEquJC8OScylaTc=; b=gAVuaEpCCy98xc
	cwyXAZI9pIunbSwp+5MdoGuB+DvDGYPbrddj2keXI7q2ej8Xa8RbbLyx9H+XTXT/CKlNu4aPeoVLO
	l7FIaznrXlfe5yejC35O/UgyUJq2IO5gVskSOacu+4Kau1GttDY6iqUqGhOAt+ldT9nHVyYtNlV2v
	4Z2X0QCvC4S9d875O8MS3lxH/OIXCiqnXcxkFhz76p0DoFrDhd60Oox1aGnUqpMUDQsWDTw+EKs3Z
	gKr6sdDd5nUPlPq7DdtdP5iC8ibM6h9Te5m1XqUEfNglLdfgc0IyFM+Pg0M3eSRxm1tk5Bsv17MMw
	JLjM6Nta/puYq86wHKPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKnz-0003od-LM; Tue, 01 Oct 2019 16:15:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKng-0003oH-Jd
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:14:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB1E4337;
 Tue,  1 Oct 2019 09:14:55 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32F2F3F71A;
 Tue,  1 Oct 2019 09:14:55 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:14:53 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
Message-ID: <20191001161453.GO42880@e119886-lin.cambridge.arm.com>
References: <20190930114540.27498-1-will@kernel.org>
 <CAK7LNARWkQ-z02RYv3XQ69KkWdmEVaZge07qiYC8_kyMrFzCTg@mail.gmail.com>
 <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
 <20191001114129.GL42880@e119886-lin.cambridge.arm.com>
 <20191001143626.GI25745@shell.armlinux.org.uk>
 <20191001152826.GM42880@e119886-lin.cambridge.arm.com>
 <20191001154814.GJ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001154814.GJ25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_091456_689227_11501A74 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 04:48:14PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Oct 01, 2019 at 04:28:27PM +0100, Andrew Murray wrote:
> > I hadn't noticed the use of __OPTIMIZE__ - indeed if __compiletime_assert
> > is no-op'd and you reach it then you won't have a build error - but you
> > may get uninitialised values instead.
> > 
> > Presumably the purpose of __OPTIMIZE__ in this case is to prevent getting
> > an undefined function error for the __compiletime_assert line, even though
> > it doesn't get called (when using a compiler that doesn't optimize out the
> > call to the unused function).
> > 
> > Why is the call to __get_user_bad not guarded in this way for when
> > __OPTIMIZE__ isn't set, i.e. why doesn't it suffer from the issue
> > that the following fixes?
> 
> Officially, the kernel does not support building with -O0.  To start
> with, the top level makefile has:
> 
> ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
> KBUILD_CFLAGS   += -Os
> else
> KBUILD_CFLAGS   += -O2
> endif
> 
> and we've said for years that the kernel relies upon the compiler
> optimiser to build correctly.  You may be lucky if you pass it via
> some method to 'make' but that's going to rely on the argument order
> to the compiler, and the order in which the compiler processes its
> arguments, and whether it (for example) correctly disables all
> optimisations if it encounters -O0 somewhere.

So in practice, __OPTIMIZE__ will likely always be set, as far as I
can tell it's supported in GCC, Clang and Intel compilers.  Though
the exception to this is for crypto/jitterentropy.c where the -O0 flag
is unconditionally set.

Are there other exceptions to this in terms of compilers?

Perhaps it may be possible to use BUILD_BUG after all.

Thanks,

Andrew Murray

> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
