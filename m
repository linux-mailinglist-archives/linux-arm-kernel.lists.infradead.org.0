Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A108165FF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:49:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GoorrBCLOUhx6a1gmhbLBLD/1SW6NyEj5cnNPG360Q=; b=LMLHKOs3fLmcwK
	p5pNnarPaTORjyYCVbs6T3LBAdYgx+AhMgWilwMf7KiUQc1FOxbJVb+nMtMuE/kKfukQqPjiHbnMR
	5d34SIJK855DI7YOXH2QHDyDUCtIZqe812U9qV0REOd9rrMDeZjLm6XZe4g6Co63jJ1jq4qo5mXCy
	R/MNeZDp78Nbficn44ROLA50nwTyWKOmChJ7yoJFzHSFe29G3uH//SfjfFGk5zVPptNdjuIalghnp
	eGlrigalB9WW/duhyDng/DsTYHv7tjAJcMAX4opXZD2pxXyw7poMW1t49kncfDCO/YGaCElWnlnca
	qKKpQoHpSDfXbq32Nv1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4n8M-0006jM-Jm; Thu, 20 Feb 2020 14:48:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4n88-0006ge-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:48:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id n18so4496341ljo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 06:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VFsELfj9kJG75Pqbvz1ocn9qZImBer1nJRUwC4Q7bZY=;
 b=MqqtgYfSSn3FHYbEg13WQb6BWeq4sbtryqg6cZPsn20u3rxkq6YEFBDAKvqJIFORbm
 M1po1MNlQg90SORMlvuRTXHTALEgnixnZsrP1s5lpXbugJqoEfSx8o58UyRkAkmMVOJp
 x+L3zNQohho2+EaJBd3pH+v8U8eiBJ1NTeZ6h9zMcQVEmoCiIdBjGjNBO8Pz95ppvPQ6
 2tvTxNVaFFK5eyU6Onxv+Ad+n9MLSmCgPJ0u1C4VA1ZLT5alsQXwfPHcF+esY0xcjqP0
 eTgvVT9GXk3/30zrL57T+5kp/4Np5rJTR2vAbph1f77RDtWaR3Oncv7yRHXuVt2MPSVY
 oSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VFsELfj9kJG75Pqbvz1ocn9qZImBer1nJRUwC4Q7bZY=;
 b=BuAhtw9z6ZzhZf7PSNlAdEYHF78i4HZsKCVy4wgjX0rFQN4kbC943XYRaxCgsJKEO5
 u6AqxYYBL3hgDA0fqL+wh1yCdrdiD8OXppSYT9Mjo5IWmB36A9pBEn0GX5zrGh/f6bDz
 Mw3qblMtKCdx8NB3awdGCDzBeFvkDEYBoQfIogGO9+gcN4EclePom+QxpkyECNkr5MwS
 mrgloWb0WWqXPX8lmfO/kyE1t8SwKi+7sI5Wyoq/P9NrDlqo68Lxq3ei4K+y48ojbFET
 IV/V8M+iWIvGLqqgpUQknvvfZ7w/4S6ul8wmHCAVyYkQ8CZf5V8vWjngZBHGoXVdqmGF
 IrCw==
X-Gm-Message-State: APjAAAXVOC3Ql3jmfmeE0x3ZSBkxm6bArfSG+qqSnZny4vB6K6F55ZfB
 UkeLrCoHIQ2uhjKbJh9h7jFi7HpH9wASQkeHpDf3Hg==
X-Google-Smtp-Source: APXvYqzC9uvcXVQUMEqfFBmLgRYjVN2yaUx+FWOP5lrFQgxOH/VrI5JSlJHy+5NkZQj0tvezfPvYss2NMoiD7aj8evk=
X-Received: by 2002:a2e:81c3:: with SMTP id s3mr18661030ljg.168.1582210121456; 
 Thu, 20 Feb 2020 06:48:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
 <109d17402bc75ed186a2e151dfda1edf05463b5a.1581478324.git.afzal.mohd.ma@gmail.com>
In-Reply-To: <109d17402bc75ed186a2e151dfda1edf05463b5a.1581478324.git.afzal.mohd.ma@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 20 Feb 2020 15:48:30 +0100
Message-ID: <CACRpkda-k26bWR9EJMMPDz0S4xy3QW_+uABdmPRbaKPD0b4qfA@mail.gmail.com>
Subject: Re: [PATCH 16/18] clocksource: Replace setup_irq() by request_irq()
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_064844_343665_E3D2B5F3 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Enrico Weigelt <info@metux.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tony Prisk <linux@prisktech.co.nz>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 9:05 AM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

> request_irq() is preferred over setup_irq(). Existing callers of
> setup_irq() reached mostly via 'init_IRQ()' & 'time_init()', while
> memory allocators are ready by 'mm_init()'.
>
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
>
> Hence replace setup_irq() by request_irq().
>
> Seldom remove_irq() usage has been observed coupled with setup_irq(),
> wherever that has been found, it too has been replaced by free_irq().
>
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
>
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>

This makes the kernel a better place.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
