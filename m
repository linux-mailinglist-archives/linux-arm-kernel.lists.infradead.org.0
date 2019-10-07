Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C4CE743
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BahBOspEqcZ4Yt0IJ0ExO98ZQ2iZ9sPfKa8UWB3+Q6c=; b=mBKRHSBAQFu0Cs
	0OBUhK7dNmDwRWUdJL/zZTxcOO9C6mQoP8G5c/UIRxmkK4wd18kKyi1qwQzx8TMxWfWOtDlQky5Av
	3SyIys4mS2zDYcGAXvu5LlQ2aGQeBv4sK7TS1jqYYlDYnhW7wLTeOQsV4Qw0DtKyZUIyNht7kHRB8
	TUEwXBjmlyVaxZRboVhm4F+NBBubHF8Ng7P+8eYkkJPQPTR/MpQZBpfT8A+1lcsX/bPqV+iTaftb8
	NMVH5pAY3mva/mAeI76yVXXbAk77k8C/DjSdg45ZLYF9V68/0JPY+gKVtY31gv/duZVodCYX6fYIV
	Z7PJpfHSkvhbzFUq229Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUne-0001ZT-EV; Mon, 07 Oct 2019 15:19:50 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUnE-0001Jh-1J
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:19:27 +0000
Received: by mail-ed1-f68.google.com with SMTP id h2so12833423edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 08:19:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U9Eo+vECGc4wLCsE5vOdMoNqc4gaxJEFIE4DZGZkf+Y=;
 b=n17wSzP9BN6KUbiSJCMEuxyfAPygNkRhPsmATkwxLJVuui7kuZDOfkZKoALRRNnhPc
 xhDSpJQVzsxdPR6lsleKQ76rYpq3bfudoQ9ieuP38M3MKLCr5f5tZ09IilrKORktFmBu
 bBhOdWqrW+BqLGGmw4u6CT74ZBhfIV/YrPuHIcEREM2NwI9+LDeVjLlro7xUnIDpicW6
 p342SaUuGCbeMFDzzPPcG/rpBnpbLEJsVxRhSmUHRWuB3trjLCikthbC3KJcN59QTlJm
 OBe+O77JsNKibbgHWwhN0szn8nvtR0ipBm7jom1B5vhZPl+Rw5z672aQazZ0dsOxV5xK
 RzKw==
X-Gm-Message-State: APjAAAWIAdE4ML+0eDRen8XvhJWS+c8QsHZp5IrNO0n0EXAtFDmdb/fy
 +Q/xCqiKHUHPbM7OmRSa8TAUFSyDHtU=
X-Google-Smtp-Source: APXvYqxMGEsEABrUicXWIiKKaC86f792Zb2iMzIko8Da74Rv9mEipeZDDtiHZ/G3ID1DCYLB/zi2vQ==
X-Received: by 2002:a17:906:1659:: with SMTP id
 n25mr24656039ejd.258.1570461561128; 
 Mon, 07 Oct 2019 08:19:21 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id u30sm3349476edd.18.2019.10.07.08.19.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2019 08:19:20 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 3so12793661wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 08:19:20 -0700 (PDT)
X-Received: by 2002:a7b:c188:: with SMTP id y8mr22266962wmi.51.1570461559776; 
 Mon, 07 Oct 2019 08:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190824175013.28840-1-samuel@sholland.org>
In-Reply-To: <20190824175013.28840-1-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 7 Oct 2019 23:19:06 +0800
X-Gmail-Original-Message-ID: <CAGb2v67nuMnN_o1Pvz2bEyUVeg5OMfJMVgih9-ZsgYFYDbffGw@mail.gmail.com>
Message-ID: <CAGb2v67nuMnN_o1Pvz2bEyUVeg5OMfJMVgih9-ZsgYFYDbffGw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] bus: sunxi-rsb: Make interrupt handling
 more robust
To: Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_081924_110178_40A396D3 
X-CRM114-Status: GOOD (  28.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Stephen Boyd <sboyd@chromium.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 1:50 AM Samuel Holland <samuel@sholland.org> wrote:
>
> The RSB controller has two registers for controlling interrupt inputs:
> RSB_INTE, which has bits for each possible interrupt, and the global
> interrupt enable bit in RSB_CTRL.
>
> Currently, we enable the bits in RSB_INTE before each transfer, but this
> is unnecessary because we never disable them. Move the initialization of
> RSB_INTE so it is done only once.
>
> We also set the global interrupt enable bit before each transfer. Unlike
> other bits in RSB_CTRL, this bit is cleared by writing a zero. Thus, we
> clear the bit in the post-timeout cleanup code, so note that in the
> comment.
>
> However, if we do receive an interrupt, we do not clear the bit. Nor do
> we clear interrupt statuses before starting a transfer. Thus, if some
> other driver uses the RSB bus while Linux is suspended (as both Trusted
> Firmware and SCP firmware do to control the PMIC), we receive spurious
> interrupts upon resume. This causes false completion of a transfer, and
> the next transfer starts prematurely, causing a LOAD_BSY condition. The
> end result is that some transfers at resume fail with -EBUSY.

If we are expecting the hardware to not be in the state we assume to be
or left it in, then maybe we should also keep setting the interrupt enable
bits on each transfer?

Surely we expect to have exclusive use of the controller most of the time.
If it's to handle suspend/resume, shouldn't we be adding power management
callbacks instead? That would reset the controller to a known state when
the system comes out of suspend, including clearing any pending interrupts.

Maxime, anything you want to add? (BTW, Maxime switched email addresses.)

ChenYu

> With this patch, all transfers reliably succeed during/after resume.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  drivers/bus/sunxi-rsb.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
> index be79d6c6a4e4..b8043b58568a 100644
> --- a/drivers/bus/sunxi-rsb.c
> +++ b/drivers/bus/sunxi-rsb.c
> @@ -274,7 +274,7 @@ static int _sunxi_rsb_run_xfer(struct sunxi_rsb *rsb)
>         reinit_completion(&rsb->complete);
>
>         writel(RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR | RSB_INTS_TRANS_OVER,
> -              rsb->regs + RSB_INTE);
> +              rsb->regs + RSB_INTS);
>         writel(RSB_CTRL_START_TRANS | RSB_CTRL_GLOBAL_INT_ENB,
>                rsb->regs + RSB_CTRL);
>
> @@ -282,7 +282,7 @@ static int _sunxi_rsb_run_xfer(struct sunxi_rsb *rsb)
>                                             msecs_to_jiffies(100))) {
>                 dev_dbg(rsb->dev, "RSB timeout\n");
>
> -               /* abort the transfer */
> +               /* abort the transfer and disable interrupts */
>                 writel(RSB_CTRL_ABORT_TRANS, rsb->regs + RSB_CTRL);
>
>                 /* clear any interrupt flags */
> @@ -480,6 +480,9 @@ static irqreturn_t sunxi_rsb_irq(int irq, void *dev_id)
>         status = readl(rsb->regs + RSB_INTS);
>         rsb->status = status;
>
> +       /* Disable any further interrupts */
> +       writel(0, rsb->regs + RSB_CTRL);
> +
>         /* Clear interrupts */
>         status &= (RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR |
>                    RSB_INTS_TRANS_OVER);
> @@ -718,6 +721,9 @@ static int sunxi_rsb_probe(struct platform_device *pdev)
>                 goto err_reset_assert;
>         }
>
> +       writel(RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR | RSB_INTS_TRANS_OVER,
> +              rsb->regs + RSB_INTE);
> +
>         /* initialize all devices on the bus into RSB mode */
>         ret = sunxi_rsb_init_device_mode(rsb);
>         if (ret)
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190824175013.28840-1-samuel%40sholland.org.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
