Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39713182127
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S82CYoBVvtk8Zpy26ageiP7jDgGhh7qpc7hYAZTQK+I=; b=fKcabbf5WmRcul
	tg4xOombqHyHDe1W+fGcr5Hny4CznwM19pqt8mJDdiLHTtghkJl2rD2Y7SFNtuw+ZOiZHkT7brbXq
	Px5q1u3WIwVFUF3Yd8qr5B971QmshMjVh2cABbS+dq5uJLZzIphGczU909Pg2S6mB1WrkAG1V+6ts
	eP0o5He8ACp0Dw3An/m5z4KrkfG6Fb9WJL7E3HUC+y06xHNhWNBUQgCW0wjzfBI2vg0FqdN8nX+f3
	ZksA0ptuj7RXSzqleDTLeCJHLoGBBrx/ATcBmket8DWFi6RYosElATinNKBI47TC0v7fzlqJkaTF0
	w8OQIgaOOEv8fO+ZgadA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6OC-0007SP-A6; Wed, 11 Mar 2020 18:47:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6O2-0007Qw-SV
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:47:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id x7so1674577pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DPFOjS65aX83dVrMyWpNcqxjpN5VgGgj9i7MicV1YwI=;
 b=UQ4e2oDI5aWe4clgsCfMJn2WuqSNV6MSzIXKTA/MELu5S35/wFnW+P2AKgc2Nb8p5F
 a2eEhF7s8OZB9Xp5XOA90hgpheqmMYDAXt/OqRTdUIbi3rbHC9YcB726dO3vpa/sXh13
 ax8fSrNwK3SN+sYW4HuU0cRGr8nNcAbHgK5eU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DPFOjS65aX83dVrMyWpNcqxjpN5VgGgj9i7MicV1YwI=;
 b=KaBtlXJJIStf1JtZ0bOBv5QfdQE5drzUb7oNL6VMvsRKf1RDa8qMg+x+ZxmFxRWapK
 TJ9pCo725MW8R8OnfxwVBu3O4x9H5lB+eKigtDJ+ZZWF5kwrmnzrjr6Ue9fIneKQh+S0
 gt9ERvn79syk4Q0R2OuUnnvP8gUloaYcgCLp+9SFcdDghK4VR/wZRjtjtaGxCXnlXBGA
 uI5V97ncWnlDy2+8E+55k2jLhDWkzhH8XJ0uc2Ooly/dYIsI4ROZn3pSRvcniO0n6thC
 0nVbaqCtE4plG9EujTNQFA58cCb82Ss0nCaN3er1ECELOawNAlgFbDdiVn+IhGr6GfwH
 L+UA==
X-Gm-Message-State: ANhLgQ1aHxqwMf1K6vMpzsw6z10TsfDZpH3SUSkIuZG/O4PSt0Gn2UPR
 81KEj3gI8kSDavd0XqLhdKGEWQ==
X-Google-Smtp-Source: ADFU+vuXIizjdYkDBMb7S0jL33R8WS1F2EGioRvewyWf29WjT0E9VAqV9sIyR+/A6GtPH+xZPd9U8A==
X-Received: by 2002:a62:1d1:: with SMTP id 200mr4318121pfb.8.1583952441770;
 Wed, 11 Mar 2020 11:47:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x3sm10574451pfp.167.2020.03.11.11.47.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:47:20 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:47:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3] ARM: smp: add support for per-task stack canaries
Message-ID: <202003111146.E3FC1924@keescook>
References: <20181206083257.9596-1-ard.biesheuvel@linaro.org>
 <20200309164931.GA23889@roeck-us.net>
 <202003111020.D543B4332@keescook>
 <04a8c31a-3c43-3dcf-c9fd-82ba225a19f6@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04a8c31a-3c43-3dcf-c9fd-82ba225a19f6@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_114722_946740_97C83D3E 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kernel-hardening@lists.openwall.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Emese Revfy <re.emese@gmail.com>,
 Laura Abbott <labbott@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 11:31:13AM -0700, Guenter Roeck wrote:
> On 3/11/20 10:21 AM, Kees Cook wrote:
> > On Mon, Mar 09, 2020 at 09:49:31AM -0700, Guenter Roeck wrote:
> >> On Thu, Dec 06, 2018 at 09:32:57AM +0100, Ard Biesheuvel wrote:
> >>> On ARM, we currently only change the value of the stack canary when
> >>> switching tasks if the kernel was built for UP. On SMP kernels, this
> >>> is impossible since the stack canary value is obtained via a global
> >>> symbol reference, which means
> >>> a) all running tasks on all CPUs must use the same value
> >>> b) we can only modify the value when no kernel stack frames are live
> >>>    on any CPU, which is effectively never.
> >>>
> >>> So instead, use a GCC plugin to add a RTL pass that replaces each
> >>> reference to the address of the __stack_chk_guard symbol with an
> >>> expression that produces the address of the 'stack_canary' field
> >>> that is added to struct thread_info. This way, each task will use
> >>> its own randomized value.
> >>>
> >>> Cc: Russell King <linux@armlinux.org.uk>
> >>> Cc: Kees Cook <keescook@chromium.org>
> >>> Cc: Emese Revfy <re.emese@gmail.com>
> >>> Cc: Arnd Bergmann <arnd@arndb.de>
> >>> Cc: Laura Abbott <labbott@redhat.com>
> >>> Cc: kernel-hardening@lists.openwall.com
> >>> Acked-by: Nicolas Pitre <nico@linaro.org>
> >>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> >>
> >> Since this patch is in the tree, cc-option no longer works on
> >> the arm architecture if CONFIG_STACKPROTECTOR_PER_TASK is enabled.
> >>
> >> Any idea how to fix that ? 
> > 
> > I thought Arnd sent a patch to fix it and it got picked up?
> > 
> 
> Yes, but the fix is not upstream (it is only in -next), and I missed it.

Ah, yes, I found it again now too; it went through rmk's tree.

For thread posterity:

ARM: 8961/2: Fix Kbuild issue caused by per-task stack protector GCC plugin
https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8961/2

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
