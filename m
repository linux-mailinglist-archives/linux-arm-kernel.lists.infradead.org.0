Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C223F36730
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 00:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deHbRpI8kvXSMcFh7bzRJq+Cf+/07cgLkajDBIPF7QA=; b=UHVLso+IkLmxyT
	WKWHOR+XTMD9trTRR2pe5ZFGSgm25IK0D/SCftRyT/oS74W5ZFBuwksiJAtTYZlhlsiGJ3kCQLDXP
	B1jpakeKekxiV3zarwdm+YzR6o/+5Ect9z8EyTxL8kSK+j3sy4m/66lmZo7Ot4IHs5TKCfj6T8rGX
	UzBD7RM+DkeHOqpOqFqQ5i4AAqchJLnQ7Mr4q1kXJs5UqWL0CflfEhKMsWVxCZszqtUpjN+iq4GH0
	FCj/fipaICq1BDYjKKgyUnIerG/5k+IdbHp0o+i1jfKdv3OeQ68aBzT2VITZnwOGMGSo82A6rYtBW
	oBNWq/RGXPA2Tymhk/aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYe14-0007MN-8C; Wed, 05 Jun 2019 22:04:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYe0x-0007Lc-Oq
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 22:04:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so137091pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 15:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=z9pLT8wo4kRTr+gtCA1M1Ly0FQFsqlnRs1HGSmoPjII=;
 b=E94e8JwgQ1kjzgi3CKj3KO4Qd7M8QoL1kgN7bbFarmoeIjauidKKrEvWajXojiYvQ/
 mHIfWo89t6E1p1YP5+1JmZD2CGUB6k9L9m6EsRQC1PazIM8rW/MDn7SUjLgIMcuKKHwh
 I3kjpWYZ5nH/3EkDoehZP0AFenDdcZAi5161Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=z9pLT8wo4kRTr+gtCA1M1Ly0FQFsqlnRs1HGSmoPjII=;
 b=PEKJ9aq8h7DEDpNOYn5CPWl+/15k481SMnjMlZBSQM33Lz7mPUPx37SWbTbb4uCpmE
 FkHPc1p8yuSvsE0O1gt6imaNGqHaRr8SP5yiIafONKBV+MHDIqesP+8g8hkr3l/tF4XA
 UcyBz+1/cAXbxfD4IAreoF+Qyp+RIJLz7xfnBY7UePBE66YZGWj/d2sjZQqqf7187kV/
 sW6RGpH+dKoB3vpYVQsl7eBVCoiv9DiBkte14Wv0U3gP3HHIwyMbO6q5knkobDAH41c9
 HziSTv7RjCqCkpLf0BQlIiiTSUjDBDrEmOlyqnzXd0H9RJweDySBRPJ68eJUQSzn1nD0
 lzwA==
X-Gm-Message-State: APjAAAWoARz3qqLnipLp7vgZWJq1vKYbZbBPzp5msH0y4umyDNB9gz9e
 wvwO9jeuvybBxUa+i6T8hClJdg==
X-Google-Smtp-Source: APXvYqygxgCCFNGSe8MQ3vUVRmt6rBIiTDwLWg2bJm+/6PKlMLuvNBmD/F/ExTPEkkybIRsB1JGNnA==
X-Received: by 2002:a63:e358:: with SMTP id o24mr68099pgj.78.1559772249489;
 Wed, 05 Jun 2019 15:04:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m11sm3969pjv.21.2019.06.05.15.04.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 15:04:08 -0700 (PDT)
Date: Wed, 5 Jun 2019 15:04:06 -0700
From: Kees Cook <keescook@chromium.org>
To: "George G. Davis" <george_davis@mentor.com>
Subject: Re: [PATCH 1/3] ARM64: trivial: s/TIF_SECOMP/TIF_SECCOMP/ comment
 typo fix
Message-ID: <201906051503.010FF2AF@keescook>
References: <1559766612-12178-1-git-send-email-george_davis@mentor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559766612-12178-1-git-send-email-george_davis@mentor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_150411_856989_A0DC37F4 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jiri Kosina <trivial@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Andy Lutomirski <luto@amacapital.net>, Julien Grall <julien.grall@arm.com>,
 Will Drewry <wad@chromium.org>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 04:30:09PM -0400, George G. Davis wrote:
> Fix a s/TIF_SECOMP/TIF_SECCOMP/ comment typo
> 
> Cc: Jiri Kosina <trivial@kernel.org>
> Signed-off-by: George G. Davis <george_davis@mentor.com>

Sneaky missing "C"! :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/include/asm/thread_info.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
> index eb3ef73e07cf..f1d032be628a 100644
> --- a/arch/arm64/include/asm/thread_info.h
> +++ b/arch/arm64/include/asm/thread_info.h
> @@ -75,7 +75,7 @@ void arch_release_task_struct(struct task_struct *tsk);
>   *  TIF_SYSCALL_TRACE	- syscall trace active
>   *  TIF_SYSCALL_TRACEPOINT - syscall tracepoint for ftrace
>   *  TIF_SYSCALL_AUDIT	- syscall auditing
> - *  TIF_SECOMP		- syscall secure computing
> + *  TIF_SECCOMP		- syscall secure computing
>   *  TIF_SIGPENDING	- signal pending
>   *  TIF_NEED_RESCHED	- rescheduling necessary
>   *  TIF_NOTIFY_RESUME	- callback before returning to user
> -- 
> 2.7.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
