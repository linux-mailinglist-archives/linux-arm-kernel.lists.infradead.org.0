Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90348195523
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gq0v6B9/9R0LLPyvFRyPHG605cai0RkwEBxulHMNwBs=; b=IggwgP6tUAkm1n
	s1vr/GfWZswTuO0Q45sjJd0L7WvZEe31aQ8O0BKcn9Rfy5RJY2uxPhDNUC1Sn2qG5E2BWV1GR38x+
	dzkAEgkobsJ9Cx73qOUG1UiTPxu5XLW2dTDgzXqGttw3LLkQAL9cEjTx1++CbSQFKOrAQKY2bRvni
	VpQZyZSR6GWuGw8lbgAhTNtTmkzc6h3JRqDUYU8Yx5F2MUPGIr9yXDEpWxciS/3SLqvjeOpzRdZt3
	YsjlTbHWzpwXGjNX3UvQCD6zk4/FXEqf1rdQlsY/ZRlLfbRWnZDdTzCEggzRIzvK2GvfgHytk6Nlx
	9kfQriHKBfmBciTBZiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmAw-0002Ap-9Z; Fri, 27 Mar 2020 10:25:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmAi-0001KZ-4N
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:25:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id p14so9581867lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 03:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7m4lWvk4//cGrxQhI0ltBzlijc7RgGiBhxq+4JikvIo=;
 b=g5D4YyM74lsERyxVWEtSBIzcaGgdj91X+gvlZ19U9ZMi+fX9jzIbSx241hKH+2N10n
 ziWkkfCA99BNAYxuSyr8N2yRDOb+CrAs3hUW9nWyYL+T1Zbdpimu14dpwEQ8u0ZgWorn
 jSCE336+YRKMQoWrUu2H935e/YYhgLXs9uYqKbli4hJwXxKwIoSHMeuymqJgQkpQfZRQ
 2Yv0Je3RpW5WlNLbgou34/CGii2qNfxtnKZVPdAwGRM8dmO0AwU6kRISyRfEoQQtliQ0
 PzSk/y9Z5dGPWAExpyKivHo6EP0AGCQljfldCXbcC+z3SspoLHj5TtF3Ff10dRFHFfY5
 IkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7m4lWvk4//cGrxQhI0ltBzlijc7RgGiBhxq+4JikvIo=;
 b=mxv840AEHRNKwtg29VhqQfT/t56VPiddWI7uoZMQ6Bojs9Q4qBhKR6BZ6pBWww+N+x
 HpyLQ9DT6MSF3FFFPXngLx44IYw8xLFoCAyQC0jeIzVP2okJOfhtZaLpng+1ySFe5MOb
 ct8i/IxYLaMD1KxaFT2jfErcpo6fKw6hd2DgJ905U8y14HZPczbTl8XLkW3yaSxW7dXf
 1xKXrGlBYz6QOYmQ1efBLd425Dk7Y9PU6kis1o6qHlfYpaW3WUBf2pTQvAJAVv2GihOk
 EEycue0x9q8+whSy6cYDB5r8EVehhDwii/v8YHkic91CVmo1WqRRJRu6i9uK2Bbz1/17
 E5+g==
X-Gm-Message-State: AGi0PuZrjgSYdZd2fUo3FFyZak2HUY77F5wvEflpOUttz8W4l6zpW37W
 gtBqq0kIQAvRdcQVKWpkY3N9XYJs9fe91v98GU4qGw==
X-Google-Smtp-Source: APiQypLGNjy+bso8fEQU1Rr+N9WpSOr49XJcW20+rl9/F0WHi6kN5XEtnL5MgahJRdxrpJS/UNceeTWkSa9YNVg/vb8=
X-Received: by 2002:a2e:9c48:: with SMTP id t8mr2097823ljj.168.1585304702362; 
 Fri, 27 Mar 2020 03:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <e6cd8adf-60df-437a-003f-58e3403e4697@linaro.org>
 <20200318174131.20582-1-daniel.lezcano@linaro.org>
 <20200318174131.20582-10-daniel.lezcano@linaro.org>
In-Reply-To: <20200318174131.20582-10-daniel.lezcano@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 11:24:51 +0100
Message-ID: <CACRpkdbt2yJ4-_82ZGrkgCat+Qywyy7HFLaqremzhc1rKTp+3w@mail.gmail.com>
Subject: Re: [PATCH 10/21] clocksource: Replace setup_irq() by request_irq()
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_032504_207474_2B623384 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Barry Song <baohua@kernel.org>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tony Prisk <linux@prisktech.co.nz>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Kevin Hilman <khilman@baylibre.com>, Enrico Weigelt <info@metux.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 6:42 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:

> From: afzal mohammed <afzal.mohd.ma@gmail.com>
>
> request_irq() is preferred over setup_irq(). The early boot setup_irq()
> invocations happen either via 'init_IRQ()' or 'time_init()', while
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
> A build error that was reported by kbuild test robot <lkp@intel.com>
> in the previous version of the patch also has been fixed.
>
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
>
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Link: https://lore.kernel.org/r/91961c77c1cf93d41523f5e1ac52043f32f97077.1582799709.git.afzal.mohd.ma@gmail.com

Acked-by: Linus Walleij <linus.walleij@linaro.org>

It is definitely the right thing to do, I cannot test it right now
but if desired I can test it on my targets later in the following
weeks.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
