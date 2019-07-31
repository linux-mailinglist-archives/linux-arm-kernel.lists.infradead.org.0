Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E667C8FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wu5GZcnyvKdOY8tAjlDEioEB7BjcBC31ArcVRcs2uqM=; b=T14+CBv4obQl/J
	KptNOqEEQhXtpQAlEuRHwtIWVdJuC3ry/K+30r8ce5nDt5xO/RHr7lY4QhUN8A29EcfaaTz79s5YF
	wN/oJsbURLsbvAtUlSYmOsNu7GAPcI1s/GppxshJhtHPqTR/Ee1ReEDbBMtz60OZnhQ9GqWV2eEfi
	h9gLaS5WBV2LIHpzZ3texGC8eaxck+bPkVF2lJOrt3hDmXf0tnZlze2COWizyE0giXvkG/THcPBFQ
	y9kYiZ2Me9iOAsNySmMeWYdP3hMvB6U4U0G1O/KqT2DHHiafOGlu6sWRHVcNZdmyS1c950jzpjd83
	p2e8BNAxzuM7vlbIMd4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrg9-0006da-ML; Wed, 31 Jul 2019 16:42:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrft-0006TL-MS
 for linux-arm-kernel@bombadil.infradead.org; Wed, 31 Jul 2019 16:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AQ1rm0BJguZRkAuzXiZ9Hbe3Xn52gT5iksqzCf0p7HQ=; b=I8n1ruyBxDVj/42+Tb0QXwcJ9
 IBxb9yKIofZX5OcNRa5GLuljo7mOabyXzJ7WTsR5Y/aXYijgrxrqQkvG6G57bp73wa9bOuKlZESWx
 drv18MkNPkn2X+vun/Ciww1F/HkH9+1rKuKEEAOg+JlOj+ZNbuGqScARWGN9fmFVI18pWufL/B/KV
 Q24dq85NhOiyFufItcIJS3yjsQp4Z++tRfCOywzMAwxBrmYL8KpSUfoCLDwUbYkE4aSYao+Stg4l9
 EbdDorjVirUHclmN14oXRQDYhyjzsVqILsrCLDszM8Y398RRs5U/AuaAPgJaXP9zzPQMIFy/QQHQr
 1AqTk+06A==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrfp-0004cQ-Lt; Wed, 31 Jul 2019 16:41:58 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 574472029F4C9; Wed, 31 Jul 2019 18:41:56 +0200 (CEST)
Date: Wed, 31 Jul 2019 18:41:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 1/5] jump_label: Don't warn on __exit jump entries
Message-ID: <20190731164156.GX31398@hirez.programming.kicks-ass.net>
References: <20190731161256.22210-1-andrew.murray@arm.com>
 <20190731161256.22210-2-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731161256.22210-2-andrew.murray@arm.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 05:12:52PM +0100, Andrew Murray wrote:
> On architectures that discard .exit.* sections at runtime, a
> warning is printed for each jump label that is used within an
> in-kernel __exit annotated function:
> 
> can't patch jump_label at ehci_hcd_cleanup+0x8/0x3c
> WARNING: CPU: 0 PID: 1 at kernel/jump_label.c:410 __jump_label_update+0x12c/0x138
> 
> As these functions will never get executed (they are free'd along
> with the rest of initmem) - we do not need to patch them and should
> not display any warnings.
> 
> The warning is displayed because the test required to satisfy
> jump_entry_is_init is based on init_section_contains (__init_begin to
> __init_end) whereas the test in __jump_label_update is based on
> init_kernel_text (_sinittext to _einittext) via kernel_text_address).
> 
> In addition to fixing this, we also remove an out-of-date comment
> and use a WARN instead of a WARN_ONCE.
> 
> Fixes: 19483677684b ("jump_label: Annotate entries that operate on __init code earlier")
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  kernel/jump_label.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/jump_label.c b/kernel/jump_label.c
> index df3008419a1d..c984078a5c28 100644
> --- a/kernel/jump_label.c
> +++ b/kernel/jump_label.c
> @@ -407,7 +407,9 @@ static bool jump_label_can_update(struct jump_entry *entry, bool init)
>  		return false;
>  
>  	if (!kernel_text_address(jump_entry_code(entry))) {
> -		WARN_ONCE(1, "can't patch jump_label at %pS", (void *)jump_entry_code(entry));
> +		if (!jump_entry_is_init(entry))
> +			WARN_ONCE(1, "can't patch jump_label at %pS",
> +				  (void *)jump_entry_code(entry));

It seems to me we can writes that as:

		WARN_ONCE(!jump_entry_is_init(entry),
			  "can't patch jump_label at %pS",
			  (void *)jump_entry_code(entry));

>  		return false;
>  	}

Other than that,

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
