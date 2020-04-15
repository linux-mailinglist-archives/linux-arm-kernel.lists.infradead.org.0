Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0C81AA1E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpF/AG/hwbzAwl7VYQtbN7ttv3ITZzmGELTb87Lo1Os=; b=RDVryTVApVVccG
	Ulvi+j7JIEqbT9OHBkMtYr35vnnJQ1K9ocB329O09QoeDkcoEGGdnNOjv7qosbMCz3dRgXQUEwsN4
	TYjWqFsZZrfDo5dXWPdi6l2QsrxWAohwmhETeu7FV+0CwsnyrmHXJqpGW34y5GkHwLR+RhXyBJmdB
	3WkjcD2Bzp6crtWkwBH3kcDwC59BELnzM2sSqVfupRZ5cVyKKCiq8l4pzsP3lSvOVONnJQrEZTTkT
	U9PV1JXbIctGRYoVriQbsO9g9wvFnZqu+o+q/cngrq7VmqM1jHzXNLWQb44GjTWMEfUIlLChZ+xFi
	FoMKMNhgPu7yDDtPUAIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhcI-00046S-TG; Wed, 15 Apr 2020 12:58:10 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhc5-00042D-GL
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:57:59 +0000
Received: by mail-ua1-x941.google.com with SMTP id a10so1257515uad.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 05:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r5sKn1JJVgm/fgQdr3rP8MdzsVK7nHhD8/ZfpnREROo=;
 b=G5O0ZNtI/lhvh2YbkeigqevONdPcJNyW36RJu6DaCTNULDY22D+wXKMjJdQd7KvBlv
 oTfthgAY1md6uAa3CEIDnutbFslq3+BYX7QggVz2V1zExH2exyxZetM5k1rTefLCgxtV
 iEpyKNYDo1nRA4Kq2/WKGKWa+NsM6AH3OujDgWXJRfQ0THNzaeyfZm9/dmFGqES1rja2
 m3zdbshttS6S6hL/oRkv/+nmnvpjca3VwFla3S0Tdd9HW7J9kmiObkbehxG3ekM93FcZ
 TUuwjMSuHc2pY+a8zt7Vfd5qR/ryC85oOzXRlBbFLTsUE6VyIrnCLTKqW55P49wf09wY
 8Iag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r5sKn1JJVgm/fgQdr3rP8MdzsVK7nHhD8/ZfpnREROo=;
 b=FxbzufemVGpx/khNcNRfCE3pdqk8fn/3jcEHPH9lekkEuVvOm0ZOEIOP/M6lDYa9b3
 8BiyHrZ6v2602UdNdftAwW/8gJi/lcQgMtSk5yAZPArU6+Jl7n9gzRuaOQqTOmDKq2Ma
 c89+xApHnr5KfYDO4wN1lH8jaPe47/D7WBfPpyXMvLFMqM6pmbgPGP5zLGUpTuyxqe0S
 1YTgY8etOpUCmJdOpIqzpJI1S7I+n2GiCq3vI/W3EE9hZGtLPn0ciIPRwE84wtzaK9sp
 h1WqIh+nSKlKLQ28nsWbuK0CK5+0zyuozuPk1P/AeCsj8YdIu8jGXjcOUfhrU6Z1Vag4
 arcQ==
X-Gm-Message-State: AGi0PuYFhR1k63W9y90BOnC5uFGc7Dxv0ncZL86Qk/MPe+gvPt1SkieV
 s2ODRctzlY9xYZi3b9VvjyRdQSyZL7gFe7UUzNRPhg==
X-Google-Smtp-Source: APiQypJI7c0NMJgUbFRtW4uPDq40cfg0SP5CzG4iio6GHzdHCd5X+k9Oy9LawY1QGN7bl3rJK38vw1RGEuY06aeP87Q=
X-Received: by 2002:ab0:6449:: with SMTP id j9mr4172749uap.19.1586955475320;
 Wed, 15 Apr 2020 05:57:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200410213043.1091851-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200410213043.1091851-1-martin.blumenstingl@googlemail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 Apr 2020 14:57:19 +0200
Message-ID: <CAPDyKFpsTTUaTLy--DvOr0oAB71cTBdH1pfTV63LtcKOKOsnDw@mail.gmail.com>
Subject: Re: [PATCH 1/1] mmc: meson-mx-sdio: Set MMC_CAP_WAIT_WHILE_BUSY
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_055758_077864_4447F4D7 
X-CRM114-Status: GOOD (  24.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Apr 2020 at 23:30, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> The Meson SDIO controller uses the DAT0 lane for hardware busy
> detection. Set MMC_CAP_WAIT_WHILE_BUSY accordingly. This fixes
> the following error observed with Linux 5.7 (pre-rc-1):
>   mmc1: Card stuck being busy! __mmc_poll_for_busy
>   blk_update_request: I/O error, dev mmcblk1, sector 17111080 op
>    0x3:(DISCARD) flags 0x0 phys_seg 1 prio class 0
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> I'm sending this as RFC because I'm not sure if this is a proper fix.
> It "fixes" the issue for me but I want the MMC maintainers to double-
> check this.

Thanks for sending this! I assume it's a regression and caused by one
of my patches that went in for 5.7. Probably this one:
0d84c3e6a5b2 mmc: core: Convert to mmc_poll_for_busy() for erase/trim/discard

Now, even if enabling MMC_CAP_WAIT_WHILE_BUSY seems like the correct
thing to do, I suggest we really try understand why it works, so we
don't overlook some other issue that needs to be fixed.

Would you be willing to try a few debug patches, according to the below?

First, can you double check so the original polling with CMD13 is
still okay, by trying the below minor change. The intent is to force
polling with CMD13 for the erase/discard operation.

diff --git a/drivers/mmc/core/mmc_ops.c b/drivers/mmc/core/mmc_ops.c
index baa6314f69b4..bbf1dff0ae2a 100644
--- a/drivers/mmc/core/mmc_ops.c
+++ b/drivers/mmc/core/mmc_ops.c
@@ -452,7 +452,7 @@ static int mmc_busy_status(struct mmc_card *card,
bool retry_crc_err,
        u32 status = 0;
        int err;

-       if (host->ops->card_busy) {
+       if (host->ops->card_busy && busy_cmd != MMC_BUSY_ERASE) {
                *busy = host->ops->card_busy(host);
                return 0;
        }
-- 

Second, if the above works, it looks like the polling with
->card_busy() isn't really working for meson-mx-sdio.c, together with
erase/discard. To narrow down that problem, I suggest to try with a
longer erase/discard timeout in a retry fashion, while using
->card_busy(). Along the lines of the below:

diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
index 4c5de6d37ac7..240e52fcdf2d 100644
--- a/drivers/mmc/core/core.c
+++ b/drivers/mmc/core/core.c
@@ -1746,6 +1746,11 @@ static int mmc_do_erase(struct mmc_card *card,
unsigned int from,

        /* Let's poll to find out when the erase operation completes. */
        err = mmc_poll_for_busy(card, busy_timeout, MMC_BUSY_ERASE);
+       if (err) {
+               pr_err("%s: Erase poll failed err=%d timeout_ms=%u - retry!\n",
+                       mmc_hostname(host), err, busy_timeout);
+               err = mmc_poll_for_busy(card, 30000, MMC_BUSY_ERASE);
+       }

 out:
        mmc_retune_release(card->host);
-- 

Let's see what this gives us...

Kind regards
Uffe

>
>
>  drivers/mmc/host/meson-mx-sdio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
> index 8b038e7b2cd3..fe02130237a8 100644
> --- a/drivers/mmc/host/meson-mx-sdio.c
> +++ b/drivers/mmc/host/meson-mx-sdio.c
> @@ -570,7 +570,7 @@ static int meson_mx_mmc_add_host(struct meson_mx_mmc_host *host)
>         mmc->f_max = clk_round_rate(host->cfg_div_clk,
>                                     clk_get_rate(host->parent_clk));
>
> -       mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23;
> +       mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23 | MMC_CAP_WAIT_WHILE_BUSY;
>         mmc->ops = &meson_mx_mmc_ops;
>
>         ret = mmc_of_parse(mmc);
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
