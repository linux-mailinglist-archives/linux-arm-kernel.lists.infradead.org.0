Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDD8EF27F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 02:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iePHkk9woBy89M7n9P99oYZGA7YcG2nJlQeLQAJhPA=; b=CeDev3DP1ORONb
	pQugQOeBoGNww6QY/EXP9TqdWpvsgGWxPcr0c+P37fYJ2EGMOdMXpbJDEM6j16Grx33fGx2Y4PzgC
	lUREquLdyN1koruH708junTyrskEdxgKayiOnxXEdMF+P4ZLrKawVADm5GwzjoNYib6pjtv8f2rq7
	/qSGuVmvkkczx0xWEkiK0g1Uvu9CSHUDFvw4Hr7ZwtGj9xMvZvVIk3q0zFSWPWdNZaPDQnXgSza8R
	QlhHO0tBKDyB9e8C61jlN5uSRFY7M60AsIDYdEyDfUyse18MjDJFp2Frgcp5yQj9ZMYFnG4vAeRbh
	eXDNMaLFzd5pi949vDig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRnSv-0001B1-UA; Tue, 05 Nov 2019 01:17:01 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRnSp-0001Ab-8D
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 01:16:56 +0000
Received: by mail-oi1-x243.google.com with SMTP id n14so263871oie.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 17:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kBeY4f2OvdQA5xTLMkQLC0YdOsAuWNMqH+SmmFAXcgs=;
 b=bCx9UYoyZMXoeo3o8cc0y22tALdHKfscWqvoj5CIoH+KXchcEQ8N7GY26Iwj1HHWTh
 5GSaNGSgUqrYUKv7WUsQ7VZ8NG1PbBsppoGug8I4DEIbcfXGqC0bBkIOpIu08X0E09Oa
 +Q7gxj/Yt6IeVVLtXM9nayAGqADYROl6IGC0yU3xXkXsMETPoxZu8rO7BNigtGQDc6R3
 wJxxMCtvIsRuLF3Vy68ozP0dHrE9SBhxzydlWOwbK3lh/VlIstUu5NM8wA+MD4UVe3cM
 8l4JpJApDFg8NUoFqJTvwgdKwbht27ZViljR1/4cz8SPOJYxT8l0J2rQpVm4XlvsUcdl
 bKaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kBeY4f2OvdQA5xTLMkQLC0YdOsAuWNMqH+SmmFAXcgs=;
 b=PevvLnxQ9anXzZTIyWTMufxp8wSlvy17jp0oEorOoYhAaCUTFH8SfbObbL6gxJQ9aw
 Fuq/T3i4w0M67LZV6rYeY9YlHXd0fONnOhC+rwKnhDbPnNLnDXNrUL1kGRJoOhOHDmXY
 8H6L/1FUuJyZ4QDdQvMZKeD90N5DtDjKcMJ4FbiRXoazyvh+bMMaYUQNZvJgM2I/aF6n
 baKmiYirRHLySRSKCaz5PfNc2sCEqperjjATO+tn0sTXcQ1idhvVa/yHhakXLQyBdGYj
 g/uG6McOBBKPIRBWm1+tQxi7+aabIep+O0BHkZFR3uLq1nZrsAKFhIq13ewSP/YWYteR
 va3A==
X-Gm-Message-State: APjAAAW4iue4bUdCUtyRNNQS2sgups3v576LUnfj+LLWOAb0Z0LwrbYO
 df/zylYV8moyEiTXk0JBrNpmVam3yHOeztFGuhRaSQ==
X-Google-Smtp-Source: APXvYqyf7IeMKspg6JW7fJbbf2hW11JVdVyOHNLOnfin4tyCvuxMjfE67fC863wVdT3V1oGIhBhfkC4oLJhg/ULtgGA=
X-Received: by 2002:a05:6808:113:: with SMTP id
 b19mr1571484oie.169.1572916613450; 
 Mon, 04 Nov 2019 17:16:53 -0800 (PST)
MIME-Version: 1.0
References: <20191029153051.24367-1-catalin.marinas@arm.com>
In-Reply-To: <20191029153051.24367-1-catalin.marinas@arm.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 4 Nov 2019 17:16:42 -0800
Message-ID: <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_171655_299896_CB896AB7 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>,
 Will Deacon <will@kernel.org>, stable <stable@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 8:31 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> Shared and writable mappings (__S.1.) should be clean (!dirty) initially
> and made dirty on a subsequent write either through the hardware DBM
> (dirty bit management) mechanism or through a write page fault. A clean
> pte for the arm64 kernel is one that has PTE_RDONLY set and PTE_DIRTY
> clear.
>
> The PAGE_SHARED{,_EXEC} attributes have PTE_WRITE set (PTE_DBM) and
> PTE_DIRTY clear. Prior to commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY
> bit handling out of set_pte_at()"), it was the responsibility of
> set_pte_at() to set the PTE_RDONLY bit and mark the pte clean if the
> software PTE_DIRTY bit was not set. However, the above commit removed
> the pte_sw_dirty() check and the subsequent setting of PTE_RDONLY in
> set_pte_at() while leaving the PAGE_SHARED{,_EXEC} definitions
> unchanged. The result is that shared+writable mappings are now dirty by
> default
>
> Fix the above by explicitly setting PTE_RDONLY in PAGE_SHARED{,_EXEC}.
> In addition, remove the superfluous PTE_DIRTY bit from the kernel PROT_*
> attributes.
>
> Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> Cc: <stable@vger.kernel.org> # 4.14.x-
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Hey,
  So I'm not yet sure why, but I've just validated that this patch is
causing trouble with booting AOSP on HiKey960 with 5.4-rc6 (-rc5 works
fine).
Its odd, because the system does boot and is alive, but seems to stall
out at the boot animation, and userland never finishes coming up to
the home screen. It just sits there without a useful error message
that I can find so far.  Reverting just this patch seems to solve it
and it boots all the way.

I'll try to dig further to see what might be going on (the mali driver
is a prime suspect here), but I wanted to raise the flag since we're
at the end of the -rc cycle.

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
