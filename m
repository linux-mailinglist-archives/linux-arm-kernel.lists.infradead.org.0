Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3960A6991B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 18:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9jullBzo/PE9XhwrcRY3wOQjcLZ9wxcGEdcOLxo3/U=; b=pqjMt9tgIZSwwF
	VuhN1vK2zDwOg44ZqMICf3Rcuu+XkF0Ckdu0dj2xSa4JyIprLCnCdqOrlGtK6sF0S843kW8lof6Tk
	UL52gzPlRqCpXAy9TqeLwm6S2GGFCvsLQfzXZlYSQOF2XpkseJvm6Uw2csU0KoAQEbO6NmYL5Mi1b
	O82vmEo3aJqxf5xMOTpvyLaMd7LUjJgx/75dPy3D+Z9pMFZ3ijpZoLDcdCkxmsOR2DtRihmK2Dmfx
	u5dGWeWPhASESbpW81gHeovNrfmBkkoYVsPgPN2Q4kVDLHKqRLJOsLcx6E8mimY3zQ7cCmoYKEjzv
	8njGoEfz0U4dI6biAQAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3u8-0003dk-In; Mon, 15 Jul 2019 16:32:44 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn3tI-0003cZ-Vu
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 16:31:55 +0000
Received: by mail-vs1-xe42.google.com with SMTP id m23so11818023vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 09:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l9coYjSe3XSNr091GZSS9724rWMOjYgkm8g/YPUGrBk=;
 b=NYNAvMcRho+50ikquItIbaA8xyQqZTsW5KuU71/3Q+SoqDVsAy0+FM2d2PDcePt7/n
 11RZxGJC6mTRC4h6FGCGzw5ghhxx3RwnG0GjedgAFNGGoDc3a9QiHq+8ObcMmIqDsmmR
 J3Vsoi/0eyXbw2JYkw6d/qyG0Pcpoe3itkm/WnnZNuH1KiiwADvf3ntPy/+VrYE6PIw6
 uIF81NM9pWUyOV4tcN7jlhU8hIQWnXcFmd8zg9BnmqlN0/rWPA8H02F6iWBLylvyWZNz
 XJSLk/1VCaTu2yjDkpvSOUpRVRh2m0Rv0bmcg2VHCyu5QVYHl7BD6bBxYfh/jlUUzWJe
 HABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l9coYjSe3XSNr091GZSS9724rWMOjYgkm8g/YPUGrBk=;
 b=YAc6uSe+ALxP0JrGqcOjukpPrAt+B/s9sxHrJDqP5JlE4SMP/eKm1QalV2JaFvshhZ
 bomzxDhpiddWY1UHRVM5TilvfwBPWp8eGsZoiS92ItByiBtDoDAgXtOnzDa5LhCp5izs
 IcAJscmPv7oqFGD7mt+jci2dr0P57DxXV8aeHSWTAlqcYSURGC0dqWxtNzmabnIg1cz3
 e2iGS6cKkO9aQ+NSRa7WDFnSroYPfxR0+GdvVJIM/FOT4/tDcMuB2t1rKQAW6h7NFbtv
 iwWV2UP32aigyhkSM3lG6IGF8wLK6nMGBMglFNRGGkrbwAW1blXHDr6N12qUYB/K6gJz
 YCDA==
X-Gm-Message-State: APjAAAW1PCSN/BDXt8RtmEqhkr4fAEPckz6XTMxReTp2J8QIRdemtSUW
 aUBrxEzQ7nAhmLXfqo7f1x4hrfV0I7h8ey810uImCQ==
X-Google-Smtp-Source: APXvYqyUVL5RPnQWYVDvWMTPG8b/y4kpVO36hdyZcWBMkgiuUbpz8JwBx7OzH4gYy2hAxp1kCITo99T3NjrGPMBeorE=
X-Received: by 2002:a67:7a90:: with SMTP id
 v138mr16907417vsc.200.1563208311475; 
 Mon, 15 Jul 2019 09:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
 <1559577325-19266-2-git-send-email-ludovic.Barre@st.com>
In-Reply-To: <1559577325-19266-2-git-send-email-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 15 Jul 2019 18:31:15 +0200
Message-ID: <CAPDyKFpJPbpTnfA2cynFURyxFY_YCm7MRXw3m2nQyU+z=ZWsFA@mail.gmail.com>
Subject: Re: [PATCH V3 1/3] mmc: mmci: fix read status for busy detect
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_093153_290122_90088BBE 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 at 17:55, Ludovic Barre <ludovic.Barre@st.com> wrote:
>
> From: Ludovic Barre <ludovic.barre@st.com>
>
> "busy_detect_flag" is used to read & clear busy value of mmci status.
> "busy_detect_mask" is used to manage busy irq of mmci mask.
> So to read mmci status the busy_detect_flag must be take account.
> if the variant does not support busy detect feature the flag is null
> and there is no impact.

By reading the changelog, it doesn't tell me the purpose of this
change. When going forward, please work harder on your changelogs.

Make sure to answer the questions, *why* is this change needed,
*what/how* does the change do.

>
> Not need to re-read the status register in mmci_cmd_irq, the
> status parameter can be used.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index 356833a..5b5cc45 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -1240,7 +1240,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>                  */
>                 if (!host->busy_status &&
>                     !(status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT)) &&
> -                   (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
> +                   (status & host->variant->busy_detect_flag)) {

I suggested you to do this change through some of my earlier comments,
however I think it should be made as a stand alone change.

Anyway, when looking at the details in your series, I decided to try
to help out a bit, so I have prepared a couple of related patches for
cleaning up and clarifying the busy detection code/comments in mmci. I
have incorporated the above change, so let me post them asap.

>
>                         /* Clear the busy start IRQ */
>                         writel(host->variant->busy_detect_mask,
> @@ -1517,7 +1517,8 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
>                  * to make sure that both start and end interrupts are always
>                  * cleared one after the other.
>                  */
> -               status &= readl(host->base + MMCIMASK0);
> +               status &= readl(host->base + MMCIMASK0) |
> +                       host->variant->busy_detect_flag;

As I told earlier in the review, this looks wrong to me.

It means that you will add the bit for the ->busy_detect_flag to the
status field we have just read from the MMCISTATUS register. That
means the busy status may be set when it shouldn't.

>                 if (host->variant->busy_detect)
>                         writel(status & ~host->variant->busy_detect_mask,
>                                host->base + MMCICLEAR);
> --
> 2.7.4
>

By looking at the other changes in the series, I assume @subject patch
is intended to prepare for the other changes on top. But it's not
really clear.

Anyway, in that regards, the below is my observations of what seems to
be important part, when supporting busy detection for the stm32 sdmmc
variant (except the timeout things in patch2, which I intend to
comment separately on).

I figured, these are the involved register bits/masks:

MMCISTATUS:
MCI_STM32_BUSYD0 BIT(20)
MCI_STM32_BUSYD0END BIT(21)

MMCIMASK0:
MCI_STM32_BUSYD0ENDMASK BIT(21)

For the legacy ST variant, there is only one register bit in
MMCISTATUS that is used for indicating busy (MCI_ST_CARDBUSY BIT(24)).
There is no dedicated busy-end bit for the busy-end IRQ, which I
believe is the reason to why the current code also is bit messy.

It seems like the stm32 sdmmc variant have a separate status bit for
the busy-end IRQ, correct?

If I understand correctly by looking at patch3, you don't use the
dedicated busy-end status bit (MCI_STM32_BUSYD0END), right? Then why
not?

Thoughts?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
