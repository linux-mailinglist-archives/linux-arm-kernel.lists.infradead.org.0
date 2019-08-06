Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E17182D8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dags0lh+XLj0FFUYPNu0hAEx/VgCHqmu3My1+adUtfc=; b=i3QKscTlyp0Bdo
	qOOtXZoKZClf334IXiYarPk7DkiqbxoDJE+Ey6SLAJFPD4DmIFqBdBgjvaAqCYDSPJCGqxcmTIDkw
	0QNe/bk5TYsh0sOVZzBeGU8Z8kEp1hyUeJ8phvES6QPgJncnlLr8iHeycf/wEQHgn+dzXTdnMyJ0Y
	qYClR1qVkd/V1yi0SO/mkxy+I0rFnmzgNPEXJtSoXdwHLsMtnHIeXjkALYx9/3oTjtfz/6vZ2uxqk
	gpMkzn6wLIpy6QVkjaToMOCmyJkcs7z8AHzVOXqlUxgK6O0/v+z5zGp+MSU/397oZKZtfANyN/seH
	Q9esIzfa9Cw0UlQbOZVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuXQ-00030H-Nw; Tue, 06 Aug 2019 08:09:44 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuXD-0002za-DX
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:09:32 +0000
Received: by mail-ot1-f65.google.com with SMTP id j11so33048823otp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 01:09:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xqMzHVpDgAOeonwqolEAexQrNRkRWUmsMZx6uc5Di+U=;
 b=FI41HtdD/7Dc2ZQ7NBdA/yqPzwrc8wxAe+hOXN4pvLoa3zRrAYW90KkGvA5FkLrgX0
 1CGQLrUoQwC/x3pFLRJxS4gRqXRsIzx10vHMcU1g3wSwzZRBIJgXfQhvs1vuzd9JchjB
 9axwDTvPWtsGxK8L6wJATXXEpwt3aRtHhs8obPhelOl6j1wSN+lptjJZvomVO7JyiE3l
 iIlYJuYaftVcFpuOMNoyMmCjvOqi5kpKI3Dk4lg1T7tVx97MkitZpuJ3XrKb/oJmDFb0
 7gYJiZrnJeAUWdfhZn/SLtpHgrZvV2g2JcuDqc14mrO+UetQ4Tdbb7NjSnPvQLN1JK/Q
 sPQQ==
X-Gm-Message-State: APjAAAXVxJgeoGlR/QBIIAxNoUF/JFGp5YCl0ecxh3DdXKGi+rwua3Eu
 cmJkFUHrjp0Lu35WGxGa2KIl/0GGLxXO18g1UZc=
X-Google-Smtp-Source: APXvYqyxyt+Zm9XpZFQ3yabtEsQoWuW6uuAYo0QQEQY3CgXVLXrqXiHwww1RAwfouKG1y4E2IuOgL/omHPxmr9xrqjg=
X-Received: by 2002:a9d:5c11:: with SMTP id o17mr1832302otk.107.1565078968223; 
 Tue, 06 Aug 2019 01:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190802100349.8659-1-frieder.schrempf@kontron.de>
In-Reply-To: <20190802100349.8659-1-frieder.schrempf@kontron.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 6 Aug 2019 10:09:17 +0200
Message-ID: <CAMuHMdXp9GAgWE7Ea_oA08PdPc8+J_wGVhM7L5B466OSbr7D_A@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] serial: mctrl_gpio: Avoid probe failures in case
 of missing gpiolib
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_010931_459990_55EE3908 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 12:04 PM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>
> If CONFIG_GPIOLIB is not enabled, mctrl_gpio_init() and
> mctrl_gpio_init_noauto() will currently return an error pointer with
> -ENOSYS. As the mctrl GPIOs are usually optional, drivers need to
> check for this condition to allow continue probing.
>
> To avoid the need for this check in each driver, we return NULL
> instead, as all the mctrl_gpio_*() functions are skipped anyway.
> We also adapt mctrl_gpio_to_gpiod() to be in line with this change.
>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

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
