Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAEE1957F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3whQBFRp62RZWf0f/qJB4dDTSSmNOlhEpaRlKHScmc=; b=WvdBMbKHV8457w
	JjklqRj17TRbhUZbGVkhmg3MEPxX9xSO+8LlbEFI37IRGgyvq/o5LwHcxZj+gtf503rpNGByLivza
	wRhL1gswZcB27NSjmNQHPNiwM/7SyAho3Vx94c+wJCG2eS0CUbzkstuw6Bzfe+vjl/ZUgGg0OBfH/
	PzNqpZCZ9UAz2zUK+gBy+OWTF2A5IcFNV992hVR/Hw7R4vJDxz23Cu8x2xOqJpJEDxPWnF0mvuqhg
	2/XUZQo721WD9BcbWta8bu42rrgveWU6aMblxebAeP5WqdjAAay5NgjQz1Ln3XZ4Z7tOrvCKnyTl0
	jqLGonSl5e7uy/O3wo0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoyS-00074Z-48; Fri, 27 Mar 2020 13:24:36 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoyI-000740-10
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:24:27 +0000
Received: by mail-oi1-f195.google.com with SMTP id y71so8723000oia.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 06:24:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OKthXtFlNti0LSi4OUZW/5dQsmpNf9se60/riHk1XAk=;
 b=hvQpWCOkNPo/jy17oybtQikGswv77HJlgvYW74ZA2AWyd/HgiUwFRyhTc0OKyvz34E
 BggItdLPQdqHOj+5KM2hSLnkQ/ggHcqaZ6obs+/0vSQd675wPDFQnFvLIKVPtJcQoBf3
 SPDD5K7/1eBhyVaWB2KHkZGQkXxQy6Cqhusrm7ixZ4uKKqco71u7LxYLT7oxTFzkWBXj
 CBp/hx8zwx4C4qfI6sMtz565WlO9MpdoNGcCBmEYOlnARxuVtZG41PXwFKHuPsmYhoZB
 LycOYo3CgJQHq9EjmRSanbPeyP3EjQQp51ZvLbZ9BC1Rjs1hDtPKaeFFDGZvM4oAk+jp
 ddvQ==
X-Gm-Message-State: ANhLgQ3linM8uqrQ1/hx2YfrnPM6TNhlOjA4r9/ICwl+HmhT0th4GWj7
 WO8fTNKUKlYQW0gm3yOBS4d2k/kqMWTpu4swlzM=
X-Google-Smtp-Source: ADFU+vswoFq/dDr3qtbsUGZVp2CzdOz0pAn3X10jnaCb7tmV/fihHKD+GJxSWHt9DZGsDGJs3HUQaf2OBy+b5vhI32o=
X-Received: by 2002:aca:ad93:: with SMTP id w141mr4042623oie.54.1585315465084; 
 Fri, 27 Mar 2020 06:24:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200327105906.2665-1-ardb@kernel.org>
 <20200327105906.2665-4-ardb@kernel.org>
In-Reply-To: <20200327105906.2665-4-ardb@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Mar 2020 14:24:14 +0100
Message-ID: <CAMuHMdW35FXXvCFY6euA2p5YqN36-Q4M-5kbAvhhypr1K20uLQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: decompressor: defer loading of the contents of
 the LC0 structure
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_062426_368426_B949B9C9 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Fri, Mar 27, 2020 at 11:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> The remaining contents of LC0 are only used after the point in the
> decompressor startup code where we enter via 'wont_overwrite'. So
> move the loading of the LC0 structure after it. This will allow us
> to jump to wont_overwrite directly from the EFI stub, and execute
> the decompressor in place at the offset it was loaded by the UEFI
> firmware.
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
