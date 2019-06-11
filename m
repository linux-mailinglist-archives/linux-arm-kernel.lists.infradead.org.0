Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3353D14A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIqa0h1kRVXu/zQPbdx2swZd/GUBJTI4zLMH0o8Xrqs=; b=Tz4oi7Br85hSQX
	w6oiXMytskg9In8gwerFUqELSmjMLa1AWIuKFmjhHAzOqQhfigFhUXsIw0l6SJlCUbd4nJNedv5Dr
	hF4WgLx0256g8x2e/cEfjmTm/TuKag3aJLN+GGU+54ZBc3HlA6v37Ys6ESQayfaKLT3VFiqfrzQer
	Y55Pk6NSpGhCc+o8nP7t9DGPBSPz21zl5mgUwfbiGV9R9PMX8Lv6aO5vTcbF6mjznvgnIM0y6gE66
	nFIHzKSc4JL1hdyKUTygR1tO289WuKXOY5GnrCbaa5iS+h8WUJ9n+PrI+2HmRlZOzvTfYoaDRxivF
	VSy1gN7Vw2dbPhDSR4eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haj0F-00043v-PV; Tue, 11 Jun 2019 15:48:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haj02-00043a-OH
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:47:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71FB8337;
 Tue, 11 Jun 2019 08:47:49 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BED713F246;
 Tue, 11 Jun 2019 08:47:48 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:47:46 +0100
From: Will Deacon <will.deacon@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 1/2] linux/bits.h: make BIT(), GENMASK(), and friends
 available in assembly
Message-ID: <20190611154746.GF4324@fuggles.cambridge.arm.com>
References: <20190527083412.26651-1-yamada.masahiro@socionext.com>
 <20190527083412.26651-2-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527083412.26651-2-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_084750_839003_F22455FA 
X-CRM114-Status: GOOD (  13.78  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 05:34:11PM +0900, Masahiro Yamada wrote:
> BIT(), GENMASK(), etc. are useful to define register bits of hardware.
> However, low-level code is often written in assembly, where they are
> not available due to the hard-coded 1UL, 0UL.
> 
> In fact, in-kernel headers such as arch/arm64/include/asm/sysreg.h
> use _BITUL() instead of BIT() so that the register bit macros are
> available in assembly.
> 
> Using macros in include/uapi/linux/const.h have two reasons:
> 
> [1] For use in uapi headers
>   We should use underscore-prefixed variants for user-space.
> 
> [2] For use in assembly code
>   Since _BITUL() does not use hard-coded 1UL, it can be used as an
>   alternative of BIT().
> 
> For [2], it is pretty easy to change BIT() etc. for use in assembly.
> 
> This allows to replace _BUTUL() in kernel headers with BIT().
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  include/linux/bits.h | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)

Acked-by: Will Deacon <will.deacon@arm.com>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
