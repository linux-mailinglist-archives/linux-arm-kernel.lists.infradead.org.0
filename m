Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2266B7911C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0Izk4bSQ7HqqwUMw2sFSRGJqZmezLDokSL3EjQ9j8M=; b=QAsmshI0l0+SIG
	xzpKIqCyvvRZCLiF5hHgkfngMBrQVRAwDOlGoj0HebyM1z8m16H1isFirEjx6vQKkWxpnfnVBshTV
	3U8sutJxdKhCAOM94gJbb4ecb/s3SiVjd562Q0c1k9EcYNe82Hp4P/bA31olGgsoaMLm/GY5ZtjRT
	ea0EQu3sDdyh4lL7EeGQZcEn6ozafTaDPfWnz9L6ZUeE5aKos+c9MvCv5V0sw76LJK/kZh+HF6ceA
	l/yxIQFtWN04qXuDeI3k37tDCer/WlMcc9ljN6ZYpQbamSfoaMsahdrqBjDf6oNnPDZBZzblDe1R+
	b0newyn2Axu4vR14ibIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8eA-000865-CJ; Mon, 29 Jul 2019 16:37:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8dw-00085l-7p
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:37:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so28319697pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ga/2Rkys4OBxKwHmDa/SO5A/WN+qG4IZH9LzNl034NY=;
 b=kAPu5y1+60CFh1JFFlnoQg73UgCHnpsTo+iLEEVCWtZwSzq3w0cQBTP1h1/03TAzuK
 4JXE+UoZR/qgpfzDhY5ZPT2X9mF8EBv+MBXoUOiVHeiGpuTMMTYsooH1YDqvjSJqW4wc
 mWM3ddIv9b9cnkjINoRwHjp3lNMiVZaTZDm6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ga/2Rkys4OBxKwHmDa/SO5A/WN+qG4IZH9LzNl034NY=;
 b=BbJgVB/ZKuxZK342E2TExweQZ3Rl9U+kwRKZ2+55WMUHwY5SmHuqMAuemnhDfU55I3
 anYRnanJjub+OQiHbuhBwMOqw9mbM6BbQoQXPekJk6euJ7uoK/5noaDbUjNueHzsvtRm
 IoJBW9u2ZxZfHzksbxdBkDSwTbmBqEB5NIzswKsTuFATuht/ZnA6d+XZUyQqI2jdqTo8
 Aj6QkFaJUZ7fxUh329+W6hNAfl7mr5n94yxXMFEmvIaNJuZMvnM7r13CjnKW2y1PSUh/
 hewswqVlNRPrQxVFs//gFJ8D5e2vxZ9k2njsEWyPVPi+mm0eA5j4FdgdY7ns3r1SzNdi
 EtSw==
X-Gm-Message-State: APjAAAXC0PGRqw26mD/jD3tgGRpO33Mgz2nSaRrCUFANPJYND7afcrJB
 u1HZeL4ieykFa10xqJ6AdGwEdw==
X-Google-Smtp-Source: APXvYqyuX0Yp3tC+fV6lYhk93Oy6w8OfbTFSHTwrGb3WhPwYPa6zOVpIAuhc6drCsY3nbo7pgCxmSA==
X-Received: by 2002:aa7:9ab5:: with SMTP id x21mr37092909pfi.139.1564418219913; 
 Mon, 29 Jul 2019 09:36:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id h11sm62978340pfn.120.2019.07.29.09.36.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:36:59 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:36:58 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] ARM: signal: Mark expected switch fall-through
Message-ID: <201907290936.C5887FA6A7@keescook>
References: <20190729001314.GA24747@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729001314.GA24747@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093700_276300_85A8C423 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 07:13:14PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warning:
> 
> arch/arm/kernel/signal.c: In function 'do_signal':
> arch/arm/kernel/signal.c:598:12: warning: this statement may fall through [-Wimplicit-fallthrough=]
>     restart -= 2;
>     ~~~~~~~~^~~~
> arch/arm/kernel/signal.c:599:3: note: here
>    case -ERESTARTNOHAND:
>    ^~~~
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm/kernel/signal.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
> index 09f6fdd41974..ab2568996ddb 100644
> --- a/arch/arm/kernel/signal.c
> +++ b/arch/arm/kernel/signal.c
> @@ -596,6 +596,7 @@ static int do_signal(struct pt_regs *regs, int syscall)
>  		switch (retval) {
>  		case -ERESTART_RESTARTBLOCK:
>  			restart -= 2;
> +			/* Fall through */
>  		case -ERESTARTNOHAND:
>  		case -ERESTARTSYS:
>  		case -ERESTARTNOINTR:
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
