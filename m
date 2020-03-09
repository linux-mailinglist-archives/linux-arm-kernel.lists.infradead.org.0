Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6878117DA2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rE0f44H/cfiWTp7imY0eqfQpvXQO6Q61va5QvxxLjIc=; b=TViDQ8hLi+0lBH
	SVS/5f6RB539Hyb+3SBDdXw4N8MLFNRfIvqGwVtrrLKQS9/xQ7afk3U6pFJAhycGr/s3nq4UZxaj7
	lOlQphJQNEgEmu8aZbw2jSLDe/A4WtuTAdejxEfBY2R2MW16x4ohWI1I+aM+qE+3TdbZfHjJnTsxM
	vcP9Q3Vo2TaOWoyHWNHCoYGU9fd2qBG1LFGlSTiOHFZbf4WIV/HjA4ZN+mzWjKUlKNWfuvwM6MDPL
	C+VFDz7qPIDumiLeEqPS/ke4FlXjt/6U1Wbbx2aP/ot9Z2Pu+RCzd/Kw+vEOwfyYvUS8pCgdlMW+P
	R5OZ65RysffjjL75dJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDNq-0007Rw-QF; Mon, 09 Mar 2020 08:03:30 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDNi-0007Ra-0e
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:03:23 +0000
Received: by mail-oi1-f196.google.com with SMTP id k21so2349973oij.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 01:03:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GlxhLCzBWLBcTK+nyEBCaSV9wLdQnn+A1WWbazSD9FQ=;
 b=AjRC2HuDHw/t0Ct1JaokWv3u1u6GIx6fbhVxs+jtXIWCa9AJ8iN+os/D4w+uwJLXQO
 FM51gqWCGLHYL8rgM6jiq8i59MlFLfCMsQHdZqvDSSiCznBXfByLVD3q/0Qugz7ZRi7K
 KTnhc/2MIpQ0w4v/Sx6dRpjnSnE6JIIWVXVMoZynAARwglOpJov2AYaoq59crRRPcyEx
 OndsXGaKRDigzK5sBrKTBu0XbhlIibf48dXvsVFzFzbGBfySgbHy63Pk7RBdOzyVUpdc
 dqLrOa/kFudyYT3uipzwzKvE6ILtNjrZLqsGHnhPRz4iVegV95X1BxevxcRk50THbg00
 qkWg==
X-Gm-Message-State: ANhLgQ0tWi0NsNm8dlx6cjza0bHg5SGC6NmeaWNeY0fWFQTFvGyCPG6k
 lRbcNp7Nei7BdoK4ziVnKSTDi76jj/UvqedNnxg=
X-Google-Smtp-Source: ADFU+vsEnvEXz092Ba8rHTDMlFV+mJV7f1t+H+q6yO9aRXpnLYyqXDaEvw5trHzcZDuV1wPX+OKtcn4+88iZFeSMFyk=
X-Received: by 2002:aca:1a06:: with SMTP id a6mr10074950oia.148.1583741001068; 
 Mon, 09 Mar 2020 01:03:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
In-Reply-To: <20200305103228.9686-1-zhang.lyra@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Mar 2020 09:03:09 +0100
Message-ID: <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
To: Chunyan Zhang <zhang.lyra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_010322_059276_4145B351 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunyan.

On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
>
> The default value of Kconfig for almost all sprd drivers are the same with
> ARCH_SPRD, making these drivers built as modules as default would be easier
> if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
>
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>

Can you actually boot a kernel on a Spreadtrum platform when all platform
and driver support is modular?

> +++ b/arch/arm64/Kconfig.platforms
> @@ -249,7 +249,7 @@ config ARCH_TEGRA
>           This enables support for the NVIDIA Tegra SoC family.
>
>  config ARCH_SPRD
> -       bool "Spreadtrum SoC platform"
> +       tristate "Spreadtrum SoC platform"
>         help
>           Support for Spreadtrum ARM based SoCs

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
