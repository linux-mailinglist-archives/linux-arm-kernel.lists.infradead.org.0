Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6728CD33A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixNRMpMmcYcAofHQ03IxsAIPiPOV93l1R3KejddQVco=; b=fgB/tianAE8pws
	k5152A3ejUajnt2cyqsQiQ7ijUi2YfzaleQzyi/39AAjEFFsheQtO3m2lRFUNjT9uaBVZw7o7Roq9
	JUisvGtb1X3mYv5vV/AJgBe6doDOBQ2tU6qCvHb6ELyatxfVyWzq4I9fwBQiGPZiB7M6+hGMuj7BJ
	l95n7kwjq/yLBLGgE5hIsxUpjySLLquSD9DGkSlX41r/10CFatn6C3CF+vfdzA41jvrv4lCkCLsIy
	DK5QZ+np60K4G4o1pgPV+6dQel7HPcOfOnU0vJQUDuYRgdDWKrIS/9uxgKUgkwQpDLXQwHenyOhL6
	jmJ6QR/spRn5oBebFf0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgNK-0003Qk-DG; Thu, 10 Oct 2019 21:53:34 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIgND-0003Q7-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 21:53:28 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so3434895pls.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 14:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eZ5a1UrQhKc0eFrayHNWPPaPzIDNm8Pl4fc7UtzEcwI=;
 b=C2jVvEnjI3cDO6vB/Rft3tcJex85MLNmn0DKywgUaA+JqHl5XVj8PXi/cisN6F6y3c
 jEyND9KgFacuQi0DUApP9FWNA9RdjSaH2p6/y3f9VUjJTyU7C7G4tqBJKEoaMJdm2xc7
 cC3Xwkvz83wYVon/M1YaWoXbhEZ1L27sCVrzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eZ5a1UrQhKc0eFrayHNWPPaPzIDNm8Pl4fc7UtzEcwI=;
 b=RtS3Wpj9AHD1SjxOmF+pUqovAzRY/dayoDxjXqF6je40gmgnfeD9dJvQvwao67C3Jq
 aif/AmrJT81DIaAUaughUFVxCG5Gj8qt0TFVl1dI9O46UVHpVEf1z+4dEAzGxLoFhuGP
 uFROkKn62q4OkUl7tPswLkD2Nwl9pbw92xGfboixHOXOO53oQUcjjsQ0g2iVlefQijKX
 ZJjTaqwTtyfwzebbPVyP3g811H/PrzwyiJtkgkM07nqxFnGy1glRA4L2sHlyGYwiGMAJ
 6J5XQ+bJlC28qvUv6ZlNz6fto6GtqmnEbyJlHv+gsFz8rQfbEPk4XtTLLCNZW+giAXA4
 sK6Q==
X-Gm-Message-State: APjAAAX/K9+fpYoRSLIFrCzAnTk5yJUGEG+ZLD6LBznxQxV47NcpZ5UF
 XTG5UIOx5MF/EHzzpKeUY53SAw==
X-Google-Smtp-Source: APXvYqzvP9DPNQm4eEFwpmDjtjMePiabTkC2OLVsNO4cce1OJAtguBuNxerHNmLTKublc5lHaVGkBg==
X-Received: by 2002:a17:902:8bc4:: with SMTP id
 r4mr11153280plo.341.1570744406496; 
 Thu, 10 Oct 2019 14:53:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y4sm23629pfr.118.2019.10.10.14.53.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 14:53:25 -0700 (PDT)
Date: Thu, 10 Oct 2019 14:53:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH v1] seccomp: simplify secure_computing()
Message-ID: <201910101450.0B13B7F@keescook>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190924064420.6353-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924064420.6353-1-christian.brauner@ubuntu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_145327_361632_15727581 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org, wad@chromium.org, linux-parisc@vger.kernel.org,
 x86@kernel.org, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com, Borislav Petkov <bp@alien8.de>, luto@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 08:44:20AM +0200, Christian Brauner wrote:
> Afaict, the struct seccomp_data argument to secure_computing() is unused
> by all current callers. So let's remove it.
> The argument was added in [1]. It was added because having the arch
> supply the syscall arguments used to be faster than having it done by
> secure_computing() (cf. Andy's comment in [2]). This is not true anymore
> though.

Yes; thanks for cleaning this up!

> diff --git a/arch/s390/kernel/ptrace.c b/arch/s390/kernel/ptrace.c
> index ad71132374f0..ed80bdfbf5fe 100644
> --- a/arch/s390/kernel/ptrace.c
> +++ b/arch/s390/kernel/ptrace.c
> @@ -439,7 +439,7 @@ static int poke_user(struct task_struct *child, addr_t addr, addr_t data)
>  long arch_ptrace(struct task_struct *child, long request,
>  		 unsigned long addr, unsigned long data)
>  {
> -	ptrace_area parea; 
> +	ptrace_area parea;
>  	int copied, ret;
>  
>  	switch (request) {

If this were whitespace cleanup in kernel/seccomp.c, I'd take it without
flinching. As this is only tangentially related and in an arch
directory, I've dropped this hunk out of a cowardly fear of causing
(a likely very unlikely) merge conflict.

I'd rather we globally clean up trailing whitespace at the end of -rc1
and ask Linus to run some crazy script. :)

So, with that hunk removed, I've applied this to for-next/seccomp. :)

Thanks!

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
