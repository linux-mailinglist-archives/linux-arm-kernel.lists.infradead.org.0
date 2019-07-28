Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E1F7826A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HL0dQiStf+NP43VrSs085r0Tv+UXTGgZgk4mVDK1z+Y=; b=nSriiSM1d7xoQH
	y1HJaRRtsWdCl8YpkyYIvhz406rXiH45ViEVt2cnj1xSplNAnhrrr9TH7ZCZTT8ZZ0b/XcYr4uokv
	tgDU2GjxIE3Ctnn/2p0m3rzSFDHDSabZiKgIgBZ07wx+U5ZZtUm4qkdDoFXr11a+ltIp6/BPFwiCF
	Ks2amueydzyypRvIC1sa8/h785Xo2bN1LTMshzTwA9diQvYUU+0qhtWCp+FxQ/O+1LYYhCUXPGnBd
	X+77dmdkpeyomEwlUMxFxkiAfmpx3yFMCQ5L8g/rUS7X+fLUd2FPS0YI8tR4Pk00seP7R684I/ETQ
	qySHqGRVXfxV15U8dtLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrskB-0007E2-Sc; Sun, 28 Jul 2019 23:38:24 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsk0-0007Dl-4u
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:38:13 +0000
Received: by mail-lf1-x144.google.com with SMTP id x3so40830361lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A2YoLjOmjoi0MvPq3QD0hmADDj+Ydfv3BHipfJHYsV4=;
 b=XlhkQmH67dhcBDB/Xr7JvFPOG2VU81DTdMdboPT/HeIYWgB9tdya4Qu7sHgU0WMkaM
 vLenZczcXQneLoQwwIMosVAUQ7eROBagrCowwDdHynkzWR6TG6G/348pyMvV2ko15fAX
 J6eOaYIHqHdN2UumITKAxV05/2xTZbsY0nfOHx2zKefVEAWZk/V94esJyXg+dV04m9ZC
 3T6esDVVvsV2RDBV0sLFBEN22b9i5xaNaCrAxueDIdJQotuNWYkqh9CJdvvAgneQ8VYO
 PxSF+7xqWZhasZ+4KJQhOOybJ6f/GiXAs/huwwXy1rfoOxGb0FkKxX89PQJ4JjNcb5+Z
 0kRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A2YoLjOmjoi0MvPq3QD0hmADDj+Ydfv3BHipfJHYsV4=;
 b=DWNsSFAbpb3UW8mYLBxMQiI/TkVYW71ac5VyLqfbhXvmFRtkp5eKjvANncyRQ+iI+n
 zWnF4CGd0M306twPlYBmHod6iyT5IA4qmu2eShUUaBrRSTqNsCIaWDje6Zj8GCr2P4Qo
 OVt/bWZ7QLPEj7Co+nOY+QZKXrzYkU6E+cC2tXooHbysbjBAVUU5AmpaD8wPi+2MZJig
 Wo/dRfXFg0o3oputnTRCXQR8QqzboIE/IoWIdB677LpRmNtQDo/gPYsdm/L3pa9d/dyv
 xm6zUC0TXpmhmomsNSbTPcS1fbNBACIiR/CatN2oTi6APvd+KgGLXyyrRQCPCSIKYndw
 +JIQ==
X-Gm-Message-State: APjAAAUsgp4z+HjjSn4oCJj2JMFRxOSZXdH65ICJbf/RP+texDNYg4cO
 nkwWS1N2D6EyaTNKJGUYJ7h6Wd0Pt+cqa2gOWfp46Q==
X-Google-Smtp-Source: APXvYqzNLF2GKPsxU0k1Fl9UXDm3yiIIWBYWeFyjCRu2eWqJIj+FDChdYuoS6Cmi6P1mJrVQoHtEsToFX8UBgZc9YJM=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr45895639lfg.152.1564357090803; 
 Sun, 28 Jul 2019 16:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <1563564291-9692-3-git-send-email-hongweiz@ami.com>
 <1563827815-15092-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1563827815-15092-1-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 01:37:33 +0200
Message-ID: <CACRpkdbkLj7WDMp7vtNDR81yezw-zPq3MWvVRLKvpkvAueo0uw@mail.gmail.com>
Subject: Re: [v5 2/2] gpio: aspeed: Add SGPIO driver
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_163812_409131_FD5EF85A 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 10:37 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> As you suspected it correctly, AST2500 utilizes all the 32 bits of the registers
> (data value, interrupt, etc...), such that using 8-bit bands
> [7:0]/[15:8]/23:16]/[31:24] of GPIO_200H for SGPIO_A/B/C/D .
> so registering 10 gpiochip drivers separately will make code more
> complicated, for example gpio_200 register (data_value reg) has to be
> shared by 4 gpiochip instances, and the same is true for gpio204 (interrupt reg),
> and other more registers.
> So we would prefer to keeping current implementation.

OK this is a pretty good argument. My review assumed one
32-bit register was not shared between banks but it is,
I see.

The above situation can be managed by regmap, but that will
just a different complexity so go with this approach then.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
