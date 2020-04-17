Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 966941AE8A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 01:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOyYFQZHXBa4V8QiNJsfnB6LN1iLxY+LoMXuZC4/skU=; b=cgtyGfI/13GFQ8
	MT6VGZ6PbO7xBXdg5Mmss8oTA3NSCUzoLnnW2FaiSONdBhlYfJpv/biHnMU27SQFp7eXbZAk5WC5R
	TE6jdUAJu5Zzugz7LuqneAcse04MN2ScfIj8sl/Qbk+JCbgoCKzYEQ9WLIE3inrAIkjW1IbfpuVBE
	xa5m0r92xgDA5U4st2kSiekyvTb972eTnHljMS5SJv+/wXndvIC+8YNIP8FQmvsHz91dOufQVP5y5
	GvZJEaLExqH45fgydYVFdbbaRymtf14c/PZkd4cfD80tgYGC9LcI6hGra6Gket78lPdnsvXBTi2sF
	42yu8pIkaulyk6VqM27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPaYj-0002x0-39; Fri, 17 Apr 2020 23:38:09 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPaYb-0002wP-9X
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 23:38:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id q22so3814278ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 16:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2OwtuK/s6W98pXxiI5acjuuYp0wvirEHlnDfF8kmK+I=;
 b=C4M0Zv8sLVnF9ulFyhcznLXWxGiTaYgZW51iES3GQdizUFcn6DfTol8hhu8eBD0if2
 nt3ABj66Ryz5Jalpcr78fBgxogNhpWvUEJTyFJcUcooFo1Agap8Sa4NBmGTXVil4//DN
 oPtjBiTsFhAQ7gRcxRK6QzC+Jv6AkDvsFtAnSEKL48TTpJrrFc32cxt5UaqeoWaZzvy2
 /+Qez1aSinQ63IEHqPNWduOhyry3/XnErGULSg2TPduZdNU6QV1h6dJq46No4fWDtFPz
 suqC6/Xx0a/rKXRy+f70HWmlahTkTkQnvuLiTF6BnW0S9EFdGF4lX0Z67yXTHWFtiPKv
 3YbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2OwtuK/s6W98pXxiI5acjuuYp0wvirEHlnDfF8kmK+I=;
 b=bP6NrjMeFtDrmkhxrdoFrsBK84ZPCNdvASgN3rSdSPUtS/ICcmeURQPyQRog/Jz1R+
 0xWhAd3SEWzGo36ZebsMXvd40Vt8ZjHtBpdae62cCqQnviHq/xR3utcM31wtmLzqZ+DX
 ovIqr5BtLs8I+U6FaYJZWaZku23eCgo1RH0TLekLj6T3w9bAhRsF5wiyLDG1X87j6jHh
 c3wP/Y7sslSvo7x7OCt6n9e3fY8mnOXaDXovVag9zl63ECekFhqvhXrmUDMsA5BfnTm1
 OJZHUQmByDPs02qj7cm+x+0aTkKjFeiXpF61sSAu7U43iA4/R/Y+6muTndWHLeEcDGHC
 124A==
X-Gm-Message-State: AGi0PuZpvVK51dm9SSzbN8ksM2smxl2sjqmQ0qyrbHSS4iY+n5KLuErp
 tJ1UgUR1c0tJGmn83XQov0V9naNMcY8mXPY4vvOOzg==
X-Google-Smtp-Source: APiQypLR6SXkGBE9agdmWjxJ0FAGrwnz8sWQpv0qDFlgkLQzOGFVtZmQFGeel4Dhem1fG+IDjHQB7l2DwUWhPvhdsBQ=
X-Received: by 2002:a2e:8087:: with SMTP id i7mr1681220ljg.99.1587166677983;
 Fri, 17 Apr 2020 16:37:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200417212045.16917-1-robh@kernel.org>
In-Reply-To: <20200417212045.16917-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 18 Apr 2020 01:37:46 +0200
Message-ID: <CACRpkdau0X1y3N6ryJaTA7BK2MdCHVsG_X2bpQKp0mP5VQTucA@mail.gmail.com>
Subject: Re: [PATCH] clocksource: versatile: Allow CONFIG_CLKSRC_VERSATILE to
 be disabled
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_163801_502568_13BCF35A 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 11:20 PM Rob Herring <robh@kernel.org> wrote:

> The timer-versatile driver provides a sched_clock for certain Arm Ltd.
> reference platforms. Specifically, it is used on Versatile and 32-bit
> VExpress. It is not needed for those platforms with an arch timer (all
> the 64-bit ones) yet CONFIG_MFD_VEXPRESS_SYSREG does still need to be
> enabled. In that case, the timer-versatile can only be disabled when
> COMPILE_TEST is enabled which is not desirable. Let's use the sub-arch
> kconfig symbols instead.
>
> Realview platforms don't have the sysregs that this driver uses so
> correct the help text.
>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
