Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F342D25C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYSYu1F0CSPoQYdT/OohmkQ7n/Jxnga0QNdJ04alNDs=; b=X2gGfhPziwl7LH
	J8IrEyKZP9T0laR3o6XD46ZvPltqEqqxPHnQc9Gu7CM7fBlhp0ZwFovPtnhXyqTLeaKycIpRgN21C
	ZjGhJfiVGUudd0TWVQ9cmUDvtMZbttOg/3EWBL2N73acQ/SvhmJ59kAZ0eZgQXkHa7T+lAYg45mC/
	u+ZpVBvI4QJ5rKTOrckCfsOt4OPA70cGuK3G2poNYTlKv5IG2BIghGnq2I4i6/YmoNtnG8rnzmWOU
	61/4MdOjLLyBfC9yFntrhQB1Euf8Y6yQ1x9YDK4fQylbJ6Qtf8qIAk5vG7J+GxedXyz5YheTkKQO2
	FPo8CDyM1QGabh5fgxMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUQp-0007RZ-4a; Thu, 10 Oct 2019 09:08:23 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUQd-0007QO-Qs
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:08:13 +0000
Received: by mail-qk1-x744.google.com with SMTP id u22so4874459qkk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xx/5ivC8+wB4MKu4yR0Ppryr6BtLEmc7x2YuwNcfbiU=;
 b=aXFXLXf9WNQKvFcjlU5MlohqPWQ9c1GEapMUp8kn9Ji0Nf0Y2DalUZ21YIV5w9Yoek
 jS5WJkBJ73QscZEwUM1J3bb+pqYpmN6gNG+8hziyOILEc/Cv2klTVlREuWhXT94Mgm7+
 7xvF6ObloyQdvyA9Vj0umU7uNASrYs6sHJAp0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xx/5ivC8+wB4MKu4yR0Ppryr6BtLEmc7x2YuwNcfbiU=;
 b=NHIWfcM073TpLOa+kXwi4mnKlp49h1IWXeMNd9qQCxfzDwRw/ctCycxKlXv1u8JlJH
 t9ySFBnZKSINDoNjWS+qYNEyotFp2zjb8Ze++YSQBYwbBbwrLPZKT6weoNZi8tX5hmMZ
 fyX6daqecgrS3jMkR6fNxM65bnO6poMcGV9yVJfsaRT1u2413jVlzm/Zn3DopW3l0ynU
 lqHfhQPHtuXe4qGmqudeEBL0hyDNxAJkoYWKbO1AZALeaEPhSEyMdJ5NxVTuYI2mDPN6
 22mCl+Ak8pM3ScteVjCWtNCFmVJJh4PpskcOqvGzewlQ7Nya5U3DrI0xgWc1/hdaL8mG
 zMgw==
X-Gm-Message-State: APjAAAVXk+WPbcHnl+RKgWDIApAuReeWKIWMcPxsQW9S7uJbMjfEE0w6
 GmOeqj30Q200cwnpK3+9aM3PC02pvFS6hsfWLXXCCw==
X-Google-Smtp-Source: APXvYqzwoJTTh6/AyzHZ9HDk0OjkJqyS/iSBZyH2/vPu+Dl7wuQU45eTBfY0lkl/AHWiFgvhaZ9+YLGWn+ZXBdZQ++A=
X-Received: by 2002:a37:342:: with SMTP id 63mr8915746qkd.144.1570698489815;
 Thu, 10 Oct 2019 02:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
In-Reply-To: <20191010075004.192818-1-tfiga@chromium.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 10 Oct 2019 17:07:58 +0800
Message-ID: <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Tomasz Figa <tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_020811_896353_587F7CDE 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Changqi Hu <Changqi.Hu@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 3:50 PM Tomasz Figa <tfiga@chromium.org> wrote:
>
> MediaTek XHCI host controller does not support 64-bit addressing despite
> the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> glue sets the DMA mask to 32 bits on its own, but it has no effect,
> because xhci_gen_setup() overrides it according to hardware
> capabilities.
>
> Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> 32-bit DMA mask instead.
>
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>

Can we add a Fixes: tag for stable backports?
(after addressing the other comments of course)


> ---
>  drivers/usb/host/xhci-mtk.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> index b18a6baef204a..4d101d52cc11b 100644
> --- a/drivers/usb/host/xhci-mtk.c
> +++ b/drivers/usb/host/xhci-mtk.c
> @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
>         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
>         if (mtk->lpm_support)
>                 xhci->quirks |= XHCI_LPM_SUPPORT;
> +       /*
> +        * MTK host controller does not support 64-bit addressing, despite
> +        * having the AC64 bit of the HCCPARAMS1 register set.
> +        */
> +       xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
>  }
>
>  /* called during probe() after chip reset completes */
> @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
>                 goto disable_clk;
>         }
>
> -       /* Initialize dma_mask and coherent_dma_mask to 32-bits */
> -       ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> -       if (ret)
> -               goto disable_clk;
> -
>         hcd = usb_create_hcd(driver, dev, dev_name(dev));
>         if (!hcd) {
>                 ret = -ENOMEM;
> --
> 2.23.0.581.g78d2f28ef7-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
