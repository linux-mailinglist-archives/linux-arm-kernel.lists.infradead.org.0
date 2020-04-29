Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F19A1BE289
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fI5ssnoogdqw5hCvpHZBJytutDst6AZiizCBvgTmDho=; b=BidH2SGGN7oBTU
	W1rcrcIYtjf0JjIrJc4cIr1FLze2TNzOoik3UwiDpllfbK54ZYLU8HD94oiQS1dbId3wr5yWtDuq5
	ujv67T4AgHnAyd+N3Y+Mo8ujE1iZiKSp4ObPntMIrGaLYWENS7Dl59IQXJAky1p4MPqWIr+8kt6FD
	yO45GipQ/+S8Vfttln3XQ+fc2XIVIynot5zUWICQoH52AI2El8znze2VDRwQ3ktXyNCd3XmnnZKEp
	1sTmEdJd+3mTzWRfn6iFGTeGs9InDijghDdUFShMQQAKaYRYakad8JsZjSc49zbsBAmur8fINLF9F
	ZK7mc0nhr+rxuZqO4dxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToa4-00043p-2t; Wed, 29 Apr 2020 15:25:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToZt-00042i-7e
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:24:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64F0A1045;
 Wed, 29 Apr 2020 08:24:48 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FD523F68F;
 Wed, 29 Apr 2020 08:24:46 -0700 (PDT)
Date: Wed, 29 Apr 2020 16:24:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kevin Brodsky <kevin.brodsky@arm.com>
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Message-ID: <20200429152443.GD10651@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
 <e568615c-7f13-5ad6-48cc-45f5211ed1df@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e568615c-7f13-5ad6-48cc-45f5211ed1df@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_082449_327216_F6E75E99 
X-CRM114-Status: GOOD (  17.90  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Luis Machado <luis.machado@linaro.org>, Omair Javaid <omair.javaid@linaro.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:27:10AM +0100, Kevin Brodsky wrote:
> On 21/04/2020 15:25, Catalin Marinas wrote:
> > diff --git a/arch/arm64/lib/mte.S b/arch/arm64/lib/mte.S
> > index bd51ea7e2fcb..45be04a8c73c 100644
> > --- a/arch/arm64/lib/mte.S
> > +++ b/arch/arm64/lib/mte.S
> > @@ -5,6 +5,7 @@
> >   #include <linux/linkage.h>
> >   #include <asm/assembler.h>
> > +#include <asm/mte.h>
> >   /*
> >    * Compare tags of two pages
> > @@ -44,3 +45,52 @@ SYM_FUNC_START(mte_memcmp_pages)
> >   	ret
> >   SYM_FUNC_END(mte_memcmp_pages)
> > +
> > +/*
> > + * Read tags from a user buffer (one tag per byte) and set the corresponding
> > + * tags at the given kernel address. Used by PTRACE_POKEMTETAGS.
> > + *   x0 - kernel address (to)
> > + *   x1 - user buffer (from)
> > + *   x2 - number of tags/bytes (n)
> > + * Returns:
> > + *   x0 - number of tags read/set
> > + */
> > +SYM_FUNC_START(mte_copy_tags_from_user)
> > +	mov	x3, x1
> > +1:
> > +USER(2f, ldtrb	w4, [x1])
> 
> Here we are making either of the following assumptions:
> 1. The __user pointer (here `from`) actually points to user memory, not
> kernel memory (and we have set_fs(USER_DS) in place).
> 2. CONFIG_ARM64_UAO is enabled and the hardware implements UAO.
> 
> 1. is currently true because these functions are only used for the new
> ptrace requests, which indeed pass pointers to user memory. However, future
> users of these functions may not know about this requirement.
> 2. is not necessarily true because ARM64_MTE does not depend on ARM64_UAO.
> 
> It is unlikely that future users of these functions actually need to pass
> __user pointers to kernel memory, so adding a comment spelling out the first
> assumption is probably fine.

I found it easier to add uao_user_alternative rather than writing a
comment ;).

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
