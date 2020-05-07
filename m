Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A341C85D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beuiBDc75ZvcmqfVOk8XumZEaZNzcCcnCuGTbEzrbcU=; b=p/HjsllmpQL7xd
	zZPQqCI98vRcDvqw18Ddjt+3niwIHmX6u2OI/fj7T6s/ehKE8Q88a0cER09tlZzsDRsnf5XMiP5SA
	b4cIecOG8zxqx1qorwqR/nwZprUTjZ2yphu3KFsaPno4EI0X9u+msoL1dnU0AhPLmhfkli7UvO04g
	WExxFMfUsKWveRH6H4Mf2gxhc3az3NbxsOdnZzMJgMsoSJIblTeVOlM8fS1x3HB/Zb0zhgJ6Yitrw
	/lt3QJPKXtw03CX8gV/6ShmhatStGLVWa6BaLTF8ECljFtYv0yBDlILX6PX3GHZUeuYrbOiIBz+tM
	3NcCH+p1d7dadQcV+Fcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcrG-00013C-1n; Thu, 07 May 2020 09:30:22 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcqr-00011w-W1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:29:59 +0000
Received: by mail-vs1-xe43.google.com with SMTP id e10so2936236vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 02:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=viH1iV0igem6dG1osD5lXSFto5UeKQo6I/r6j41w2Kg=;
 b=kI+WeYFEEA9jLoKV2d3E7dwUyyonlIPIl242k9750XKo5ORe4klWfuAV7grrUmx0pe
 81oSbWvf2JRpXrMDhtyaIzsMHzryrCqE0t4iOTWk45BvIr2QwotvhUUNbfqfE0msdui8
 A/+Tx3vLGOvtTPE1kWGs//HDeaZI2xem+qIyqcHHUztTiprouVP8b8AuR5o78AMr89UA
 HQzNycaDph+I3X8/VRavIrGj+mUVMK/JPdIhTI7VAtbK0NComAh/lF/6zjRcrVSpW9xG
 GFPpsYWE/TH2D45e4L0+VhUZX/H6aNF9Tc8iOkF1hmV0MpGcaJAkoIVvTpDm7sSAnW/t
 gQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=viH1iV0igem6dG1osD5lXSFto5UeKQo6I/r6j41w2Kg=;
 b=i9d+GrZlhw2GeMZjX19OL+WEwfnNgMYaa76qjt9YFGlXbMNnRKddUSQCGqnSjQwTJd
 HNeIRB3BClNnDmFsGNmWhIViq8Jhky/lOX2NRnCmgpUBKP6ksvnrmE0Iyp9CqaGV00gt
 F8DgC0MksK0DCsCKpEFhI3SlHYrJ2shRFjy/nfs21o4meZ1d+tAekzDehN+ExG5uXaz2
 asm7ViCQ3jwWteBzOnKvF0JvEZmTJOSmaA/lgN10KRvK00Av94SRSbJ4B8ooiwX4+LWx
 hnarjas0BB6slvl2adVcuQZvEKvbV40nFzLubZCHEam75k3SPqcW87rkFnYuyK4G2e4h
 jNUw==
X-Gm-Message-State: AGi0Pub5Q0MxSjyILBEZs9oxEjsrDfRQ9y3g5kxYbShRVwWBiffXiDso
 GB2TG1pXPQ2wq8iQnV9Zm5k8miktkui7mEpTdgG0BA==
X-Google-Smtp-Source: APiQypI4am7jPf3se8Tdni9X7LAo6FYulFfGe4r2VYbr/7W89ZmzBdleCOUBkENYjHbYMqRf6aOMQjzkJhq36+9MZOM=
X-Received: by 2002:a67:ee0d:: with SMTP id f13mr11495244vsp.191.1588843795661; 
 Thu, 07 May 2020 02:29:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200503222805.2668941-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200503222805.2668941-1-martin.blumenstingl@googlemail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 7 May 2020 11:29:19 +0200
Message-ID: <CAPDyKFrY0ApUCNL4gVHRc2FRcYaS0PKr_P4a18RUZHxcVceVWg@mail.gmail.com>
Subject: Re: [PATCH] mmc: meson-mx-sdio: trigger a soft reset after a timeout
 or CRC error
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_022958_030475_74F637EC 
X-CRM114-Status: GOOD (  24.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 at 00:28, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> The vendor driver (from the 3.10 kernel) triggers a soft reset every
> time before starting a new command. While this fixes a problem where
> SDIO cards are not detected at all (because all commands simply
> timed out) this hurts SD card read performance a bit (in my tests
> between 10% to 20%).
>
> Trigger a soft reset after we got a CRC error or if the previous command
> timed out (just like the vendor driver from the same 3.10 kernel for the
> newer SDHC controller IP does). This fixes detection of SDIO cards and
> doesn't hurt SD card read performance at the same time.
>
> With this patch the initialization of an RTL8723BS SDIO card looks like
> this:
>   req done (CMD52): -110: 00000000 00000000 00000000 00000000
>   clock 400000Hz busmode 2 powermode 2 cs 1 Vdd 21 width 1 timing 0
>   starting CMD0 arg 00000000 flags 000000c0
>   req done (CMD0): 0: 00000000 00000000 00000000 00000000
>   clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 0
>   starting CMD8 arg 000001aa flags 000002f5
>   req done (CMD8): -110: 00000000 00000000 00000000 00000000
>   starting CMD5 arg 00000000 flags 000002e1
>   req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
>   starting CMD5 arg 00200000 flags 000002e1
>   req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
>   starting CMD3 arg 00000000 flags 00000075
>   req done (CMD3): 0: 00010000 00000000 00000000 00000000
>   starting CMD7 arg 00010000 flags 00000015
>   req done (CMD7): 0: 00001e00 00000000 00000000 00000000
>   starting CMD52 arg 00000000 flags 00000195
>   req done (CMD52): 0: 00001032 00000000 00000000 00000000
>   [... more CMD52 omitted ...]
>   clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
>   clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
>   starting CMD52 arg 00000e00 flags 00000195
>   req done (CMD52): 0: 00001000 00000000 00000000 00000000
>   starting CMD52 arg 80000e02 flags 00000195
>   req done (CMD52): 0: 00001002 00000000 00000000 00000000
>   clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 4 timing 2
>   starting CMD52 arg 00020000 flags 00000195
>   req done (CMD52): 0: 00001007 00000000 00000000 00000000
>   [... more CMD52 omitted ...]
>   new high speed SDIO card at address 0001
>
> Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the Amlogic Meson8 and Meson8b SoCs")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> Ulf, I consider this non-critical because as long as the meson-mx-sdhc
> driver is not merged we only have one MMC driver for these platforms.
> I don't know anybody to prefer SDIO wifi over SD card access, so this
> can go into -next (in my option at least).
>

Alright, applied for next, thanks!

Kind regards
Uffe


>
>  drivers/mmc/host/meson-mx-sdio.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
> index 2e58743d83bb..3813b544f571 100644
> --- a/drivers/mmc/host/meson-mx-sdio.c
> +++ b/drivers/mmc/host/meson-mx-sdio.c
> @@ -246,6 +246,9 @@ static void meson_mx_mmc_request_done(struct meson_mx_mmc_host *host)
>
>         mrq = host->mrq;
>
> +       if (host->cmd->error)
> +               meson_mx_mmc_soft_reset(host);
> +
>         host->mrq = NULL;
>         host->cmd = NULL;
>
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
