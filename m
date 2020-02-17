Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 157F9161E12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 00:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKz6+AxtGsHjWxJK8OTe28jtmb3EejjCOvsX+rBAqtA=; b=RcTqJ/uY17O2Ft
	XQQwSulUdUISOCpYeIgFnTk20CQ4+oSVli/MJzUKrgkpzcHAz1Vkd0aMUCFWOz41e/ez+qK38l8V0
	he+SRyIhC/1RvmUWnf/bWPPbfr+FPcde07wyMdPw574YJ0Q28dkJdjAB9tRX7Oa5WhbtXd0p3XWrV
	Dh4X1Xdz1uil9qndk7EyN5EjJvINgv3pnCxAs5jvZifGf5xBieqrbN2NtR3w8Bshcqohg8lOkpko7
	TjY8qdcjUMSsNgW6rkMUokI/dI4Ks0w0TvU7f7oAH3KSFbYgI7FRZhnMtUg3cohGgqagwraBVCcRE
	n69ZcP8nS33xbHrAxZjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3qAW-0000wk-Ag; Mon, 17 Feb 2020 23:51:16 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3qAO-0000wO-Pr
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 23:51:10 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m13so185467pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 15:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=beoWgjmtv4C8lMdXs8ZVYSK7TXLRa3fJGxz8+h92Jdk=;
 b=iriwVWPOg6Mt86qPyRkuSC7HYWEaPvBL+kqgZiT6SNJNQI9LJ3uxKdyBJeg/EbhOph
 1Z9cPLMOIyMNJMMofAJ1DVFL5qY7WWBogxMDYQ3dQfbArO2t4atiS+J3hADFximZ+UyZ
 R8Svn/kSQqjYQNrwlAnxKrY4lWU4lQZYvZ/i0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=beoWgjmtv4C8lMdXs8ZVYSK7TXLRa3fJGxz8+h92Jdk=;
 b=sj54Wv2PWDahlyUsl4dUV24BhrMIAXLUfbV4MjmUq2TdXs5R0vXu73N0GUaaRQHPqr
 SJynxLznvyUMHCNHewFGBQu3CQOUuzfbH/fZZoBF/WJ8OUi4YOzMy79gMYn3KlccOYnY
 1HZDkjTHdUfWVU2tQXZN0M/uRk2Xe7hxBNmMtjfM+yTsP+yCFpdCfB/Dc9jLvUqKDhsq
 fEiBoyWRSv8x/31/QFLw1GeJwQ4LfHTHabySfnVNT1dQ/8hJO/Tqq0qizi4ryWacfmX1
 wYKTdhfZQGNNWKByXl/SCi9lCS92LjgS3A4GMSce2O6ShpfcfisN2uWkvbMSugZCj6Tb
 jNwA==
X-Gm-Message-State: APjAAAVFyehPzhe9PeUE2QgdmJNUcsIpaQzHk+JkvglTuIn5dty8E3cn
 DypcYHA18UJY519ss0Gb+srtP21Ob1A=
X-Google-Smtp-Source: APXvYqwkvAvfeh3Wkht3kbeRNUMfuyRPBqMjhF/2MpPokJYtxUD/wqLZpQYFDK42lwQT6Fgbk+6tsw==
X-Received: by 2002:a17:90a:930f:: with SMTP id
 p15mr1826309pjo.0.1581983466711; 
 Mon, 17 Feb 2020 15:51:06 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b133sm1968439pga.43.2020.02.17.15.51.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 15:51:05 -0800 (PST)
Date: Mon, 17 Feb 2020 15:51:04 -0800
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm: fix Kbuild issue caused by per-task stack protector
 GCC plugin
Message-ID: <202002171549.1BAB6CA8A@keescook>
References: <20200217203013.20102-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217203013.20102-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_155108_840780_EE198559 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: tony@atomide.com, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 09:30:13PM +0100, Ard Biesheuvel wrote:
> When using plugins, GCC requires that the -fplugin= options precedes
> any of its plugin arguments appearing on the command line as well.
> This is usually not a concern, but as it turns out, this requirement
> is causing some issues with ARM's per-task stack protector plugin
> and Kbuild's implementation of $(cc-option).
> 
> When the per-task stack protector plugin is enabled, and we tweak
> the implementation of cc-option not to pipe the stderr output of
> GCC to /dev/null, the following output is generated when GCC is
> executed in the context of cc-option:
> 
>   cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
>          -fplugin-arg-arm_ssp_per_task_plugin-tso=1 in the command line
>   cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
>          -fplugin-arg-arm_ssp_per_task_plugin-offset=24 in the command line
> 
> These errors will cause any option passed to cc-option to be treated
> as unsupported, which is obviously incorrect.
> 
> The cause of this issue is the fact that the -fplugin= argument is
> added to GCC_PLUGINS_CFLAGS, whereas the arguments above are added
> to KBUILD_CFLAGS, and the contents of the former get filtered out of
> the latter before being passed to the GCC running the cc-option test,
> and so the -fplugin= option does not appear at all on the GCC command
> line.
> 
> Adding the arguments to GCC_PLUGINS_CFLAGS instead of KBUILD_CFLAGS
> would be the correct approach here, if it weren't for the fact that we
> are using $(eval) to defer the moment that they are added until after
> asm-offsets.h is generated, which is after the point where the contents
> of GCC_PLUGINS_CFLAGS are added to KBUILD_CFLAGS. So instead, we have
> to add our plugin arguments to both.
> 
> For similar reasons, we cannot append DISABLE_ARM_SSP_PER_TASK_PLUGIN
> to KBUILD_CFLAGS, as it will be passed to GCC when executing in the
> context of cc-option, whereas the other plugin arguments will have
> been filtered out, resulting in a similar error and false negative
> result as above. So add it to ccflags-y instead.
> 
> Reported-by: Tony Lindgren <tony@atomide.com>
> Fixes: 189af4657186da08 ("ARM: smp: add support for per-task stack canaries")
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Oh! Nice find.

Acked-by: Kees Cook <keescook@chromium.org>

I assume this should just go directly into the arm patch tracker, or
should it go via Masahiro's tree?

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
