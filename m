Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE051FAF58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPbnB8hgH1as268xR8IBvRmKlv3EnvdzJPF/Go9tbEI=; b=hCVhHrHOcYIqTm
	2QW2AGSjGhF5BGG7OLyRT1sC2kURZcaYE5Ghv5j7Bl8sQKtR1jaYwwlQVx334lT2eSUW/oHUjS7b0
	ymiAVWcIXm157OqU0pKTbB/lQlVfkpDTFyEyat/laCgORNjzIVhzLZu2lQ1GuA1Bs/pnq6ueDN0WT
	87F415MCuXBJW4JNw7y4u9OrXbitss5KzBc0Qz+6LyAjUoTSDGz/I3Fwhz1fuIY6nm1Dibqwgve4r
	9JZte7BflnOmj6GODwmvzew5m3ueOu9PBsMtPPS+JaLEa+DgvXAfFiQR0gb1vk4mErbfp3UkhyWP4
	/l33gX+Z8VH3lEIpROpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9rG-0006Gk-3k; Tue, 16 Jun 2020 11:34:26 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9qa-0005pL-UN
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:33:46 +0000
Received: by mail-vk1-xa43.google.com with SMTP id m23so4721360vko.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 04:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d3xurtsGxG5+pBj/Wd/EiagOHM+i8tFxNIlSk/FHDFA=;
 b=VK0MaGVKyzGVAsortmOAkqQBfDxQ17xbC+E5ynMMCx+V6YoKoddQvXDG6GVU74fLDE
 3AOFqiB9yyL/7Bx9YbSZLLalzmmfXNKl6UgP0RgUNX3H7O8go3qlIWEaicPbap/w/fXa
 4Dhyg/QJIX3D4Sla8YWYe2UxMKRASkzm3vhhJ92d+92UAs26cKGtLdQHKIY+0/lLV17o
 EXPHDXICY8O7sHOyRdGyfYzx8DP/K2SXD3XSK5Ng/Eqjth22KJy3v6SHvbp8TdknSgHv
 DfOVaqgwFbXbUHUJLXtQCjdgXitPvvjeBqi3BmhG9GCsQleQY/b0GQ/ZXogtXQe8XA02
 3SlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d3xurtsGxG5+pBj/Wd/EiagOHM+i8tFxNIlSk/FHDFA=;
 b=DP1kDuc4vEY5m7c1oKhpBEkd6LoaMXDHQm5NV+qHGZaw1q1QeimVSLy+Ozdr+dlEeK
 7J66ZaCYK1N+cGqD0V+4P24Lnj7XtJJMvD1dJeEM6iznDoj8Guvzt8YaC5F57J054cb0
 QEfWXq+367qFUqd/yCN0FBZgeAzUa63u4Cx3jR9kcurVL4JMPrEDd7oxX60V2E+vnVfB
 PnGiOG7b7IZ5RILOSRZqlx33Pq4sBKYQMI0e2KxDxtlih9FH3l6NQdhq30Ql9Ab/I4Lm
 mouDjdAQsfIewrPyyedow3Ym7u3dssuVNrzcesDqPsVAe0BOhgKCYK31pUCYCvfIDVnt
 Wguw==
X-Gm-Message-State: AOAM530pAGi4IEo2OeYYofXL/7mcpUHsUJn2cNCdTZNcGrsQtWKTlMDf
 vc+ZqpydtGcvHje5A7v0D6ilnE0NDxbSXNiD1Aw0HA==
X-Google-Smtp-Source: ABdhPJwISf1vfOjyjum1tJCBaNteiqD3S1uRqKWFGycL6f89hwszildCgajIP6J3PoKnXdvffL4CBueNZTWeqBkPb0Y=
X-Received: by 2002:ac5:cc44:: with SMTP id l4mr1143248vkm.43.1592307223208;
 Tue, 16 Jun 2020 04:33:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200611132839.4515-1-ludovic.barre@st.com>
In-Reply-To: <20200611132839.4515-1-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 16 Jun 2020 13:33:06 +0200
Message-ID: <CAPDyKFpeEdvFWj98LRHtckVRzzz1TaHcYR5AFJSMujuRCDoVgw@mail.gmail.com>
Subject: Re: [PATCH] mmc: mmci: add sdio datactrl mask for sdmmc revisions
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_043344_996754_BDB5989C 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, 11 Jun 2020 at 15:28, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> This patch adds datactrl_mask_sdio for sdmmc revisions.
> sdmmc revisions used same bit of previous ST variant.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/mmci.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index a69d6a0c2e15..b5a41a7ce165 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -267,6 +267,7 @@ static struct variant_data variant_stm32_sdmmc = {
>         .datalength_bits        = 25,
>         .datactrl_blocksz       = 14,
>         .datactrl_any_blocksz   = true,
> +       .datactrl_mask_sdio     = MCI_DPSM_ST_SDIOEN,
>         .stm32_idmabsize_mask   = GENMASK(12, 5),
>         .busy_timeout           = true,
>         .busy_detect            = true,
> @@ -292,6 +293,7 @@ static struct variant_data variant_stm32_sdmmcv2 = {
>         .datalength_bits        = 25,
>         .datactrl_blocksz       = 14,
>         .datactrl_any_blocksz   = true,
> +       .datactrl_mask_sdio     = MCI_DPSM_ST_SDIOEN,
>         .stm32_idmabsize_mask   = GENMASK(16, 5),
>         .dma_lli                = true,
>         .busy_timeout           = true,
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
