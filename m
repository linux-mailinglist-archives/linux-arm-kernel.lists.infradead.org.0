Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D431C3359
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 09:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yI4+r0MX49TcPUsQ1p6E0ZB3IeglXHayl3/wOVGWxHs=; b=Kbnqn9tgUzSuEj
	F+BLO6LVr2ibcdeuo4xaG7WUjUX7XiEIwK69DCXmTn+2/XGT1kdKWcbe38gwOfSwEEFrPxDOLomm8
	pxwDSMAYVEkzRZu+QJK0eCPmiINCcExpQdhPuPctQ79DoS7dBfjqUDaLg2B1AFfwZ45fxYTvKiAeU
	VRKucVFgWwdMRtizGQa5aTHfE8SpO+OVu+zml/qkyusOfeF26zLuiqh0L/CyYaa2r2augfU+ACPIG
	Fd+9doxoNVf+Nj1XGI28ytHt55AjgDp8i3oF/IORAu1j55AKKJUC+oTmeNs71olzSH8+qCaTZycuc
	ojzyNhKh7agNx2ay2dNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVVGH-0002SI-5p; Mon, 04 May 2020 07:11:33 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVG8-0002RB-KK
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 07:11:26 +0000
Received: by mail-ot1-f66.google.com with SMTP id k110so3556367otc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 00:11:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rfkxILgR6gYq3zL8Nxb8d3GiP3wwKG2LbudzQQF7WbU=;
 b=adjDIu9RhJBywpiEnQTzUBa5nOx5nJadVK0Y3LRLm3ukPKqp50UD72hh1MgRdGIvHh
 Gmk+anlsXJ5iw87cBv2J7z74IiXK5oi6Jxk76Ps/Uu8jSOuswAt3KS9j7gSrATVrD3qu
 T5aqKsHM+T2rJXhSpRRoswmK70UhGEckD9FjfnqmXygZ3GB9HHarNNAgE43/VeLc3C5B
 /bK+zYiQoGwBariZXihxLhvI5rWwaOjCdjc+DnHbTdI0ql4yUboM1HI+i7aDEhjqzxC4
 2zDQ8Cl8ssNIvHOOw/dACcqofvmGfyPR+BR+SKb4cFZpTYbWnGIYqL8wTaKccb/2EVhP
 RVtg==
X-Gm-Message-State: AGi0PuaRDBVoKFvpHXzna41mnexKLk0plA59HLIQdEs4mjqIBZGfPkus
 CQK/glirOKV983XaWx5W7zsFeoJAUg8UTatbMVw=
X-Google-Smtp-Source: APiQypJPMgeWBRUiVyeVnkIiZGgJNdYK9YfY571As0RfWeLMVNq4WlAgY4mBZ80+C3ouKbzMSZ5KFVm7VZsG8Eqtf1M=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr12499692otn.107.1588576283223; 
 Mon, 04 May 2020 00:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <1585568499-21585-1-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1585568499-21585-1-git-send-email-amit.kachhap@arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 4 May 2020 09:11:12 +0200
Message-ID: <CAMuHMdWxTtFxgpabeK3L4Ev4zgZ6r=_c+5MBVYd7ZAHbNYxm=Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] init/kconfig: Add LD_VERSION Kconfig
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_001124_668450_20C3893C 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On Mon, Mar 30, 2020 at 1:42 PM Amit Daniel Kachhap
<amit.kachhap@arm.com> wrote:
> This option can be used in Kconfig files to compare the ld version
> and enable/disable incompatible config options if required.
>
> This option is used in the subsequent patch along with GCC_VERSION to
> filter out an incompatible feature.
>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -17,6 +17,10 @@ config GCC_VERSION
>         default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
>         default 0
>
> +config LD_VERSION
> +       int
> +       default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
> +
>  config CC_IS_CLANG
>         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)

.config: warning: symbol value '2.01827e+11' invalid for LD_VERSION

Seen with the or32 compiler on kisskb, e.g.
http://kisskb.ellerman.id.au/kisskb/buildresult/14226173/

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
