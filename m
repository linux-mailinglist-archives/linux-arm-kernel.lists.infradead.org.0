Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C779CAC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHH4LILcEhVwdZNVX7BWVXoCD9+N5YX/Swn/ugxsr88=; b=r47qslpH6AAm6E
	1HCrroEsdWfvYRdtKHJLYEmMiARMw4kbMm90KFToR423BnyFtTsM/syTamu5G4i7xNO2oAHeDeieZ
	IeIGqaxs1PIYYFOXT0Q8SN6lh+lgLCZnAOW/jXD6Ob5/sAg25imY02fl3CdXCo/1RGLb1Y6oQE2qY
	rA7eG5K2d+N6FjEFqnlpGBxGTm/mJn0TsmwcIgeSN1zsEZC4ETf0Yl3ZXIqmUyGnmBtL5TjO3scmi
	wMa7/DDvbuCt5Syd/4GQhd1lqm52LN1Q+ZaX3/ihmnkiozFAhuUKaiNj4pQhlVzzRYeYNg75+lpBx
	ZGy2gAe+GlckNtxtmybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29eC-0005BN-Uy; Mon, 26 Aug 2019 07:42:40 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i29dr-0004v1-6h; Mon, 26 Aug 2019 07:42:19 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3BB083075FE;
 Mon, 26 Aug 2019 09:41:42 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9740120B33552; Mon, 26 Aug 2019 09:42:15 +0200 (CEST)
Date: Mon, 26 Aug 2019 09:42:15 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Changbin Du <changbin.du@gmail.com>
Subject: Re: [PATCH 03/11] asm-generic: add generic dwarf definition
Message-ID: <20190826074215.GL2369@hirez.programming.kicks-ass.net>
References: <20190825132330.5015-1-changbin.du@gmail.com>
 <20190825132330.5015-4-changbin.du@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825132330.5015-4-changbin.du@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-mips@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 09:23:22PM +0800, Changbin Du wrote:
> Add generic DWARF constant definitions. We will use it later.
> 
> Signed-off-by: Changbin Du <changbin.du@gmail.com>
> ---
>  include/asm-generic/dwarf.h | 199 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 199 insertions(+)
>  create mode 100644 include/asm-generic/dwarf.h
> 
> diff --git a/include/asm-generic/dwarf.h b/include/asm-generic/dwarf.h
> new file mode 100644
> index 000000000000..c705633c2a8f
> --- /dev/null
> +++ b/include/asm-generic/dwarf.h
> @@ -0,0 +1,199 @@
> +/* SPDX-License-Identifier: GPL-2.0
> + *
> + * Architecture independent definitions of DWARF.
> + *
> + * Copyright (C) 2019 Changbin Du <changbin.du@gmail.com>

You're claiming copyright on dwarf definitions? ;-)

I'm thinking only Oracle was daft enough to think stuff like that was
copyrightable.

Also; I think it would be very good to not use/depend on DWARF for this.

You really don't need all of DWARF; I'm thikning you only need a few
types; for location we already have regs_get_kernel_argument() which
has all the logic to find the n-th argument.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
