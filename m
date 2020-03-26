Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2011194159
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:29:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXCyjWbyUmuOSA4IgpU0D32i/WrHeF1EKznrGpj1EsQ=; b=DJ3oQVjM1LfPHJ
	pRO/O3Hm6mtEqr056MKh547sa8zEx0B0ixheDq7/URBtd5mH2XLeruZugtVekVfcbGQHYbfW2M+ZY
	22mqozDvKSYRegXXjn7uJcwZ2N33yM2g4QxUt3GRTyxCDJfG4t+/dqriN+CRDW9EgV5oooVPzXLfl
	63j0NGLCRzbVmg5WzGQYHBtzHQzNBcuD19aJCQf9Ylvs3TC+hTgoHbKrGzhM9WMqdrtHI6GyGpB9j
	i4tgxpvcGsfbWpK2DWVrF5bxLk1bks0czdyqneC5gU7etMrtQgFBfNJtfBEbj5rjX4QbjObifisE4
	R8CeZL2i3PUL+r7p6Qag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTV9-0002P6-Fo; Thu, 26 Mar 2020 14:28:55 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTV0-0002OT-G5
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:28:47 +0000
Received: by mail-ua1-x941.google.com with SMTP id a6so2177035uao.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 07:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dpR7Oxz1qNUziJu9EkZNTQU3ukjyRpCe41037a5byCM=;
 b=A5cZNsK5c5uZutnm0OIXGS+KX7eNfN7wqt28zszCZAhqy6YCJE5AXwTRTNuYDXqs6O
 kVy906+0sjz7Ea81h3wXaysYdR1rk2YkZaFasf8szBzhyoNf2RhFmIDZJ7itRAwGsL6p
 WNZ1EWZMpmNa1RW0Y3ztF9PD6W/8Tg1LWwKb/Dsx6bkaaASYPLcIsKa1lSndDFWS+ybG
 vY5Q33UTJBetKrYcvjeakGfoc+euPMjtKyS/THQ2N6reNORXrSfKGjJesQFgGTNoI4U1
 wHF6ka30AIQAMrzkrofwUZOiYP3y0tSwom2KGfmjP0/uZtxcc0DRdQQw0w++JfPFBHFp
 PX6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dpR7Oxz1qNUziJu9EkZNTQU3ukjyRpCe41037a5byCM=;
 b=uEJT0kukJlYYk/ScKcGnZqb0AUwOMAmxKWWoMAGItURFlzeapZjWKKbIuiLSd1AAQP
 4iCiff1LB1JzeviU8h8/CeAKC69rPLXcW8r6mseNfVQld+8+IeDnqUXiiZ7LtN/hhlrC
 hTFGQzcGtw27oxEyLhG+FLUWtDBsVAG4RLNL6Rzhi7NQqGe4i9zDNvIhftguWmq/IV4D
 JrPZln31EDzssHTK+Hmt7UM6EmFj8AmUBrTbCZ1085MkJQVQumKcMxQ6p9cwHMAp6S45
 5LD4pTEk8fDbyaE1g+yOwcfsLN6iEMZcJC+InZw7J/NgN28JxQrSVJbEy0Lqt8DblJD9
 8YtA==
X-Gm-Message-State: ANhLgQ2sFihdpY/POgTfmsPvMNuMH6WAasejo1a4gLwkwDYvlQbZkS9b
 twwElIoJHOtRqmxS1CjcDtCRdh9FHzz1b9A6Wy/KFw==
X-Google-Smtp-Source: ADFU+vtSP1ZWeFS0v/IYE0yhokN9YWSHWu7abe9/C6yo19lM7d8FYypGhqrHHkutkPFQ/tySL6jnvOiMocB0QKtvN6g=
X-Received: by 2002:ab0:6204:: with SMTP id m4mr6628927uao.15.1585232925473;
 Thu, 26 Mar 2020 07:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200325143409.13005-1-ludovic.barre@st.com>
 <20200325143409.13005-2-ludovic.barre@st.com>
In-Reply-To: <20200325143409.13005-2-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 26 Mar 2020 15:28:09 +0100
Message-ID: <CAPDyKFo-Lgikwf=PUAd1naXxiyn=z425sTXX9O39__Xi39oUYQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] mmc: mmci_sdmmc: fix clear busyd0end irq flag
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_072846_532162_0AA15BE2 
X-CRM114-Status: GOOD (  15.52  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 at 15:34, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> The busyd0 line transition can be very fast. The busy request
> may be completed by busy_d0end without wait the busy_d0 steps.
> The busyd0end irq flag must be cleared even if no busy_status.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>

Applied for next, by adding a fixes+stable tag, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index f76e82f8f12f..d33e62bd6153 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -358,11 +358,11 @@ static bool sdmmc_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
>         if (host->busy_status) {
>                 writel_relaxed(mask & ~host->variant->busy_detect_mask,
>                                base + MMCIMASK0);
> -               writel_relaxed(host->variant->busy_detect_mask,
> -                              base + MMCICLEAR);
>                 host->busy_status = 0;
>         }
>
> +       writel_relaxed(host->variant->busy_detect_mask, base + MMCICLEAR);
> +
>         return true;
>  }
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
