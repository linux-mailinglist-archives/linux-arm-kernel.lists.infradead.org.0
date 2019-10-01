Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF091C3777
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euV4gmw9iq4079jxJqrgOGC09fwqEOJm5Yqed3wd43Y=; b=ZuGMXPDc/7mGXT
	PDVGCNd/dFcIJdzTnThZPVC4qiy9Osl4qoC6PmYT09F3LB8vz9RAJIOd3Ec5JeiR1U0ozhwAc0ct8
	ZVW5CJnTNolrt6UxnIbn+LRv+UKUr0Viz8sGsuUyjGz6k3GN9fLRrJxLChMPlp69qFsBrjFh81ysT
	qJM1nHhZDu4IQFVafCao7iV8a+nOirSPfd5/lNi77ZajlAT6Qu6MUk2D98KNIE4AHpOYFZhKShh4J
	R+y6lJr8kKZj9aeQefb/Ptqm+wgFIX86h7aElJRwyrOIuWZzjI0vaXvTPRzPjvUy+Fi07GeVaIbTi
	4e0MtxxJ9L4ZtaG7K/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJC0-0004k6-0A; Tue, 01 Oct 2019 14:31:56 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJBu-0004j3-D1
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:31:51 +0000
Received: by mail-oi1-f194.google.com with SMTP id k9so14580855oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 07:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c7cxKPjo/PvG1UNiRWmiEKE/lxVRyaTuSLEWIdqzaCU=;
 b=GXa0X3+vjIY91AXC5mGJ0qh1NNbhvTY7Hx6UV5l7EGfa/gm4H2Jrfvy6laXm00EE9a
 +olfqnl/uN/scAWr/CZ0JZeM20XiLKBxvATjasS8Ljn5kDWwjXJfk7RHh8FNM/ERghJl
 zBrkj5Wi0dW6gD1gBqlRFF9vKHbiMOj6fannJ71xEIU1owGWmjAhJ56NHg7xKzOqgYiC
 HCetdBGiQpr4YhVV3u/cfsVB+WHXuzloBzIerB/i9SdqE1PZckQKp4y+3T9U5S+HOzEh
 59PmuyxEnjaK/l9+csZBVd4G6YXYoSmEbZKuZ64ap6ps//HAoLl8y9GKONPaCtDdVx2R
 DqTg==
X-Gm-Message-State: APjAAAWzWs4v2ycbdQN5bshFkIGYuKJjdWaj37fqjbueOr8WUvRFQWUI
 EEQEW/HeFlrw6kdPwD9hBM3bIxtuunEymOHwnttz8AFO
X-Google-Smtp-Source: APXvYqwJTdQ3J23yqLD9IsxmZHAe9BY6F/AoiAtNW1vaU3DJz+mxyoEhrOEAhR9EmxA3Gw72+RrX2A1t40L2sMjC9Kw=
X-Received: by 2002:aca:3908:: with SMTP id g8mr4044723oia.54.1569940309623;
 Tue, 01 Oct 2019 07:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190906154706.2449696-1-arnd@arndb.de>
In-Reply-To: <20190906154706.2449696-1-arnd@arndb.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 1 Oct 2019 16:31:37 +0200
Message-ID: <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073150_441100_AF254379 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> Without the frame pointer enabled, return_address() is an inline
> function and does not need to be exported, as shown by this warning:
>
> WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
>
> Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for your patch!

Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/arch/arm/kernel/return_address.c
> +++ b/arch/arm/kernel/return_address.c
> @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
>                 return NULL;
>  }
>

Checkpatch doesn't like the empty line above:

WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable

> +EXPORT_SYMBOL_GPL(return_address);
> +
>  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
>
> -EXPORT_SYMBOL_GPL(return_address);

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
