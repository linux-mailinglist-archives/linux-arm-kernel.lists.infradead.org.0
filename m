Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350EE14AC9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 00:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rq2LIDuVxdUc5z/DYU/048WeHHtHXhWc+5iLDvyyGqk=; b=kMtgu7KKiBmnhf
	8YFgDGYs3peymeGV+6QD1oR0RynFKJ59PeKTpvRFeJ+dZcA8WF/nnmGgA4S4LXme0M83d+vwYjoZJ
	KJ5iIlwFc+rRIprvsJdqJUlMc9fes48HqnTkQCh6O3MbAdUAd1p343dNxzyY4z3jDhwpzqohalV9Z
	Q3z/J5sZzHohhmGszw2EwJun24Zq/Iogz2aMABBBQ6wFBbeNcYAe1Ye5qbbTVCr4Ssa0FAo282f+t
	4X6dWpMvb3qkF5D6e2gbdO7wVAF33jt8FQZ3lhmW0wtDX0QSuaVpcms2UKVVAWMvs7KbileDp0TUV
	gU8CnDtbHsgBKWryuxaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwDnH-0005ij-R8; Mon, 27 Jan 2020 23:27:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwDn6-0005hu-EG
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 23:27:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so5964293pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 15:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hwrToBDFY4HIyFLVjgz55WQA/wuDwI/+ZrtWoDNgqy8=;
 b=P7/Ol9VFJBuzQj3BmDZ7XheRs5xTuuwbS3UWi5CNkSUsTkwKfcix4/o2R+Uqg5Z+S7
 bgnUa/54hKHdlkuF9qEt8rIwaLxRSrCEDlNlgmuGNNmsaZgbmaHRHhCCy7vdag57HgjB
 cw4veg02KHYv1G0VjBjblOt60y/D7hKBbXeNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hwrToBDFY4HIyFLVjgz55WQA/wuDwI/+ZrtWoDNgqy8=;
 b=odhGBdTcUubVH0c5rSstj86nizXm5chHL/JKNxqVDGFjjG9FxT5j0/tHsvnaOd5Jjc
 uxL+FBuLCksVjh3/DpWJoO4+rhwM3wCntKsU187DpKfvyT5I+PhgXnNN1j9js0qNHR92
 28poKGEdLsB98ElEdBJNxHQ+pCX/jK2w7kZL6Vo0QWOeTiiYIDNKHPcYUPaTWR4H+4Jx
 ezBB0fNN6DE9KveyEoURzXMMHAb8WCXJU6JBhr86AFoTaBa79oJ4GC5Drqkchx/+NTYw
 vGO+gPCaJSk5b/mY/lCnqZ040iSIUM76WUIbNYzmYq5Tr67Th/V4yiAPdQgEANu0vd2c
 AXTQ==
X-Gm-Message-State: APjAAAVCklMNhXe8EUhTYd/R485J1wdHNP3emXKqahZ2CyQnvSNSsgK5
 SnXTjWPSxhNta8ESlGBf9hUNLg==
X-Google-Smtp-Source: APXvYqzBa+ZBcDQ+dqyhCzSfqudbD6GhoALp9yymRH4pSJpi2ADb/wQQOBTsiGcGP/atIwo/qfxDjQ==
X-Received: by 2002:a62:cd86:: with SMTP id o128mr1017346pfg.187.1580167655327; 
 Mon, 27 Jan 2020 15:27:35 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r2sm17236619pgv.16.2020.01.27.15.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 15:27:34 -0800 (PST)
Date: Mon, 27 Jan 2020 15:27:33 -0800
From: Kees Cook <keescook@chromium.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] pstore: Fix printing of duplicate boot messages to console
Message-ID: <202001271525.E6EB4FDD6@keescook>
References: <20200123160031.9853-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123160031.9853-1-saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_152736_505069_DB39B291 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Douglas Anderson <dianders@chromium.org>, Tony Luck <tony.luck@intel.com>,
 linux-arm-msm@vger.kernel.org, Anton Vorontsov <anton@enomsg.org>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 09:30:31PM +0530, Sai Prakash Ranjan wrote:
> Since commit f92b070f2dc8 ("printk: Do not miss new messages
> when replaying the log"), CON_PRINTBUFFER flag causes the
> duplicate boot messages to be printed on the console when
> PSTORE_CONSOLE and earlycon (boot console) is enabled.
> Pstore console registers to boot console when earlycon is
> enabled during pstore_register_console as a part of ramoops
> initialization in postcore_initcall and the printk core
> checks for CON_PRINTBUFFER flag and replays the log buffer
> to registered console (in this case pstore console which
> just registered to boot console) causing duplicate messages
> to be printed. Remove the CON_PRINTBUFFER flag from pstore
> console since pstore is not concerned with the printing of
> buffer to console but with writing of the buffer to the
> backend.

I agree this patch isn't the solution, but I'm trying to understand
where better logic could be added. Is the issue that printk sees both
earlycon and CON_PRINTBUFFER active? Can we add a new CON_* flag that
means "not actually printing anything"? (Or maybe a new flag for
non-printing to replace CON_PRINTBUFFER that lets pstore still work?)

-Kees

> 
> Console log with earlycon and pstore console enabled:
> 
> [    0.008342] Console: colour dummy device 80x25
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]
> ...
> [    1.244049] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]
> 
> Fixes: f92b070f2dc8 ("printk: Do not miss new messages when replaying the log")
> Reported-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  fs/pstore/platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
> index d896457e7c11..271b00db0973 100644
> --- a/fs/pstore/platform.c
> +++ b/fs/pstore/platform.c
> @@ -505,7 +505,7 @@ static void pstore_console_write(struct console *con, const char *s, unsigned c)
>  static struct console pstore_console = {
>  	.name	= "pstore",
>  	.write	= pstore_console_write,
> -	.flags	= CON_PRINTBUFFER | CON_ENABLED | CON_ANYTIME,
> +	.flags	= CON_ENABLED | CON_ANYTIME,
>  	.index	= -1,
>  };
>  
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
