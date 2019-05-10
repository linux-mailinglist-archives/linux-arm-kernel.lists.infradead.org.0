Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898C119E19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrPTNVEHOmyHOkRW4DQri1S94clj7+KDPgilUxJDw2I=; b=kvfeudL77fXpIS
	9GJUceWg0BBw6J5Hrtq6GO+OnA6HJbPNdnMybOD99ozcupHBlrLWmr1ioSsjc5CFlivNFnhYkXkpV
	uaVAIn+/6+K/n//Qgm1wOcOlZadl3OnZs9ulzz0j911RIpGKl7fyrWVidpWB8RgpYUoCdv1TuvdgP
	FC8jF+WzMA2J+DXkL6PKggQo+fb3B1yCFPoORE/xqCHSlSLN5Gfc414gY11fdGv7Ow1Vb3nY7TrYM
	O/rxf03uv7iYwPaqYC8mRPLCvVcc+7eJOcWFJFSImo5PLVH/VAunGIM/Nd0kE8r6nuNmFbLlhkexf
	OaNmY+QfFzuNFnnlIwDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5YY-0001d2-Qe; Fri, 10 May 2019 13:27:22 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5YP-0001ca-7v
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:27:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4759374;
 Fri, 10 May 2019 06:27:08 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 937253F575;
 Fri, 10 May 2019 06:27:07 -0700 (PDT)
Date: Fri, 10 May 2019 14:26:59 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: [patch] arm64: assembler: Update the yield NEON comment
Message-ID: <20190510132651.GA28398@e103592.cambridge.arm.com>
References: <177247.865216003-sendEmail@laptop-0p1i5f25>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <177247.865216003-sendEmail@laptop-0p1i5f25>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062713_295226_6B7E6494 
X-CRM114-Status: GOOD (  25.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Will Deacon <will.deacon@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 03:01:43PM +0000, Hillf Danton wrote:

Your mailer did something funny here and send a multipart MIME message.

If in doubt, use git send-email.

> The comment was a bit misleading when it was created in commit 24534b3511, and
> deserves a tweak like,
> 
> - * - Check whether the preempt count is exactly 1, in which case disabling
> - *   preemption once will make the task preemptible. If this is not the case,
> + * - Check whether the preempt count is exactly 1, in which case decrementing
> + *   preempt count once will make the task preemptible. If this is not the case,
> 
> then code fix was added in commit 7faa313f05 with the comment left behind untouched.
> 
> It no longer matches the code now, so fix it. It is changed along the original
> direction as much as I can, though simply deleting the relevant block looks fine.
> 
> And finally a question remains: is it needed to decrement preempt count before
> invoking kernel_neon_end() in which preempt_enable() is put at the end?

Nit: please follow the recommendations in
Documentation/process/submitting-patches.rst regarding formatting commit
messages.

(Or run scripts/checkpatch.pl.)

> 
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Dave Martin <Dave.Martin@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Hillf Danton <hdanton@sina.com>
> ---
>  arch/arm64/include/asm/assembler.h | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index c5308d0..8518a7b 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -713,13 +713,9 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
>   * Note that the patchup code does not support assembler directives that change
>   * the output section, any use of such directives is undefined.
>   *
> - * The yield itself consists of the following:
> - * - Check whether the preempt count is exactly 1, in which case disabling
> - *   preemption once will make the task preemptible. If this is not the case,
> - *   yielding is pointless.
> - * - Check whether TIF_NEED_RESCHED is set, and if so, disable and re-enable
> - *   kernel mode NEON (which will trigger a reschedule), and branch to the
> - *   yield fixup code.
> + * The yield itself decrements the preempt count and if count hits zero, disable
> + * and re-enable kernel mode NEON (which will trigger a reschedule), and branch
> + * to the yield fixup code.

Good spot -- the original comment is definitely wrong: disabling
preemption certainly shouldn't make the task preemptible!

So, I'm certainly in favour of fixing that.

Your new text doesn't look right, though: AFAICT commit 7faa313f05
didn't intentionally change the behaviour here.  It looks to me like
the preempt count (i.e., current_thread_info()->preempt) is not
decremented by this code: the value is read and the subtraction is done
for comparison purposes, but no value is stored back.

This is intentional, because the the code needs to do some cleanup
before preemption can be enabled for real: the call to kernel_neon_end
does both of those jobs.

Or did I miss something?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
