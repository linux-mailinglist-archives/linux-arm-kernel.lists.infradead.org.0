Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A6EB3C94
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1cEDsFEzghGamSNnAkN/YMPCSIOVtd71QqAeCzvJMU=; b=GIrHsZnNPW5prh
	9xWT1f5skKe/PZpuiiJjZrpnr077L2he42l3oI1gNCwvQJ9gROtG7F2t1YDJkbTVzhDUVzbHx1XSP
	+FjkvCM0H8+iJZucJ9CWPilFYWOgODcFGdTTnm+SXcgaooB26Ok/w9+6iQO7XQSpfGoK7kqyFvrQP
	rGEiUkTtGboMDTs6KVzjqRGrsx/BH6UyDfTSeW3Nn26a7olZi+Yu+CJi4gcU1DsY+T/Pl77D9YpKj
	5COx7Y6qNLC8y7wBkOwaS6c25J/cMO6xNuPQmePmz/ixWiyy2Wb5LGV21FlvFNOo0PkaGb8qT55RS
	aq4CgARo2+G+i51Z1q7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9s39-0002x7-Vy; Mon, 16 Sep 2019 14:32:20 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9s2x-0002wn-7I
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:32:08 +0000
Received: by mail-qk1-f193.google.com with SMTP id u184so160152qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 07:32:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vQ4OdTaXXSbS+Q+CNv7iM+SwZFmiETIcICEWC5EEWuA=;
 b=uQQ1YiEYFp1/42nQt8Oaen6/Mzr2dicx0QF3gUxv6d4l5VkN02WmLnbLo4nPtUUzVk
 9ADqWqem4sEcWwYusO45m9iGWN3sIpYodu+wawLNDQ/jZr/olj+alzGZDVhfp4/OtqLd
 3xUeKLF2MM+z66TENsPt8i0ggeNjYyB4CT8R4rUb2iwkuZPG6suKTRYVUchI0GUc6VVG
 PSYGgyV9Fw+2fmVe4t59EvEaE8rz6+iGmqb4P9GdZBP1MiUs8IJFfP9pIWMlrzzkq7LE
 C7O0hgIx8Rq3dwODaRWfmJMy7dkKApW4DH6bDYWcEU5H20ySopX45uByja0fVcXqYnsD
 M5wg==
X-Gm-Message-State: APjAAAUIMW9cj2pynz7HpEsDUytkX2572XZuBHJojh1MS1dQQY1ulA1x
 F60NyZPo8pb9saqIx/i3rHhMuUKoGxXa89DJJ4g=
X-Google-Smtp-Source: APXvYqzWt4gDd7LHHZbeBdIsOgb8e3zghu8ZntHiaW7ZF4/xYYIWKimpz6i2ug3ma4FXpkC1opsQwB0aRW8fOKjesKg=
X-Received: by 2002:ae9:f503:: with SMTP id o3mr219613qkg.3.1568644325923;
 Mon, 16 Sep 2019 07:32:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190915135444.11066-1-linus.walleij@linaro.org>
In-Reply-To: <20190915135444.11066-1-linus.walleij@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Sep 2019 16:31:49 +0200
Message-ID: <CAK8P3a3p7B3DP+yYrmGSAYORLESisPtawUruVQu0xpdBqY_n5A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: dir685: Drop spi-cpol from the display
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_073207_264167_19197B5D 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 15, 2019 at 3:55 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> The D-Link DIR-685 had its clock polarity set as active
> low using the special SPI "spi-cpol" property.
>
> This is not correct: the datasheet clearly states:
> "Fix SCL to GND level when not in use" which is
> indicative that this line is active high.
>
> After a recent fix making the GPIO-based SPI driver
> force the clock line de-asserted at the beginning of
> each SPI transaction this reared its ugly head: now
> de-asserted was taken to mean the line should be
> driven high, but it should be driven low.
>
> Fix this up in the DTS file and the display works again.
>
> Cc: Mark Brown <broonie@kernel.org>
> Fixes: 2922d1cc1696 ("spi: gpio: Add SPI_MASTER_GPIO_SS flag")
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: please apply this directly to fixes if
> you're OK with the patch.


As the merge window is now open, I just applied this to
the 'arm/late' branch.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
