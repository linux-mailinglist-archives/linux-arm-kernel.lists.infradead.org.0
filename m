Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A4B1957F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:24:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH4T2bE7n7Yedfpw55dQNX6bxGU8fwDTr9tjyuaUoAo=; b=eJ8tvxZbSF+2WV
	vM+5tS6LrIn5oXFGDJb96fyD08EN6KZeWeFUUYK0lK3VP0GIhRSKgD1a+8w3tv4QGJ2yCvm0Utz4R
	yZKQHGY9mGXYOuXcIIOe0+uUITWowIuWMCSqDq3Tk6Ji5HEVpNB8BG2AZx1GwIwjwG3IDf8PoprCr
	Bz2gm+y9lrDIWtYhc4KTSO1rkhlNWeHIjTtGrzZ5l8UnaLL86bngnCi1eWqx+WOpBWXsLn2TJHj8A
	rTbYZw1zbShvY0l+1cQWSk/KSfafTi/EnBTeOzv06a7NKiNT7mgpUDEF+eTKWEzpkqQt26gYjJA17
	Q7ockT7oTA29+ispkvQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoy0-0006ot-D6; Fri, 27 Mar 2020 13:24:08 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoxp-0006oU-J6
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:23:58 +0000
Received: by mail-oi1-f193.google.com with SMTP id l22so8689084oii.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 06:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m+WEAAjpFVGS5XNVSI7hGlF53hkZ5JzPMh1exX/nd7A=;
 b=Vh6gYZuonWdVpUOFqRKkeYEmEx8g6VeISNzdPZLYabrpDebMKS2NBPsFkXIenOUBhA
 +pXkDl6Ql/1upI3XHry8wDgo1TJ6dwHyV3jYd0l19FtlnX/XD7gxmNh5hy7E1Ehbfflr
 CezRBVJ9MWvbhknizmXlnQGGsnu2oF3b5GT7GkLKy3Orauo4TB9sGtDXjHcHZs7h8BT5
 Iqv+JAajHYOShNW/ufhXm0qkkjXdpy/XKAShQ2ddwiwreRXFhxijZ7hD2gwNfuutZkja
 jW6qUAgPjvPWyRFvT0wtY57wkQww2jAqPsIVUIrhbUjhe6XbPabTm7Psch8Q8Led7QLJ
 r4Ag==
X-Gm-Message-State: ANhLgQ3X9a1bCBp3BnWliEWD42Vd7IZV7ek/t0p9HWtzYYcM/4+UnZCb
 37BQOZ73/WymfS2UAQuBY0hlKJSC3dNlZJCvkDw=
X-Google-Smtp-Source: ADFU+vveUylW7NUdtNIS6kGStAP/O+DSrZAqcOLTdjptfRqhLxllGNxMNINXKMIMb12Qh8NWKXA4jI04joDgV7yQ8mQ=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr3706401oig.153.1585315437038; 
 Fri, 27 Mar 2020 06:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200327105906.2665-1-ardb@kernel.org>
 <20200327105906.2665-3-ardb@kernel.org>
In-Reply-To: <20200327105906.2665-3-ardb@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Mar 2020 14:23:46 +0100
Message-ID: <CAMuHMdWm-Q=B6JZz5VumdFfRcZOTRwT0niugEYrGHbv-id8dZw@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: decompressor: split off _edata and stack base
 into separate object
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_062357_623462_4866DD47 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Mar 27, 2020 at 11:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> In preparation of moving the handling of the LC0 object to a later stage
> in the decompressor startup code, move out _edata and the initial value
> of the stack pointer, which are now used in two places, and are needed
> earlier than the remaining contents of LC0.
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
