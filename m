Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027571957EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UIMpZp+LpKrxv0PY1rGP9nBDb1jEuTnqgNZEli23YY=; b=NWnuvXJTbTCaJe
	LrZIheKBFc7Eq7iHSE6VZSgdPwWmZ/74hEsMusttBNSrbohaZGLXfmrQ7jF46CrSYCUhJbKBQlDKG
	GhxheH3VUuNYCInQ2+LG1tdzVzArS0FwesNMlzu6mDt2QKrG1uzpcgIybkgRo55PlPXebKnPmycsL
	ATHY/w7Ft7YAoVp/MxxLiFpBTonQdjplk7+IYv4Ewrc7k1lfn89VApY6+m/4gLUiBRLi6XuqKukti
	esc56tpJf4c/bMw6GjLsh4otzbZui/WT790dKd2WJKB+x8seEEIhmIE2ckQCS07bGU4mjdbGK6UCR
	fnEY0atig4HNX+YdEw1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoxV-0006MC-4b; Fri, 27 Mar 2020 13:23:37 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoxJ-0006LX-Ly
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:23:27 +0000
Received: by mail-oi1-f193.google.com with SMTP id p125so8688112oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 06:23:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oesX5llhbV3L19TdgK9MBe+d6BuC3DO0rZ8FRuSs2k8=;
 b=GRDQduVK428TYXFRGgA2TESlhbRqMlmqfZ/UX5v/ULtqU2b5A9hnjk9rYlh06dxbEh
 nLX9zNC4+9gumPjdjLyNq3c33xbSLanBq18w42S9zzz5V8wa3x04IDi127TBLZfHKz67
 12BLIzjiC0b+upEKjivXRhOdimcvzlEQ4ISZqjpGNiGzi7uByuzfBTWkCS7jKydq0sEX
 s3LHZt7nd/F4t4N+TTu8EW8Y/6rUWPQz3xL9yp3a5ICzu926nGCeMyuKpnRxOqnuqVvS
 6hbbIq7Tv9IhnsGRrp9QKR1P96rtU47+pjawdxhPKM6ACdvaNayNitqCklRqJUef/u0l
 9DDw==
X-Gm-Message-State: ANhLgQ2cPDrSNCHViUdMZaKBiEp5LFT7AFiqVi2DMwTYnTtGp4MHwf+i
 DA5EZKV2+t3EtbL6MFnke/PQ/dNQAQ09N4Tzejg=
X-Google-Smtp-Source: ADFU+vsfBQo70NmHwmkKywfxwVpQtWDEuTwZl42kxXqi2Yel+RcB2RMlVWNuIwZmOvoX5zgdLrMENSMIQWa4mDE2Ors=
X-Received: by 2002:aca:4e57:: with SMTP id c84mr3745824oib.148.1585315403440; 
 Fri, 27 Mar 2020 06:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200327105906.2665-1-ardb@kernel.org>
 <20200327105906.2665-2-ardb@kernel.org>
In-Reply-To: <20200327105906.2665-2-ardb@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Mar 2020 14:23:12 +0100
Message-ID: <CAMuHMdWewhg9nDNrKw7F6f3uajxvw_mBZs17cZL64FQ8VrvrNA@mail.gmail.com>
Subject: Re: [PATCH 1/5] ARM: decompressor: move headroom variable out of LC0
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_062325_715149_7F2609EE 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Pitre <nico@fluxnic.net>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

Thanks for your patch!

On Fri, Mar 27, 2020 at 11:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> Before breaking up LC0 into different pieces, move out the variable
> that is already place relative (given that it subtracts 'restart' in

placed

> the expression) and so its value does not need to be added to the
> runtime address of the LC0 symbol itself.
>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
