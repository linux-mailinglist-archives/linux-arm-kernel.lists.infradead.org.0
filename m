Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC1811841D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr3uohyfc1tR+GtL5CIh8+x8Qy/7w4K12ROqSjbnqRQ=; b=VW4fbeAZ+3IiGS
	vGlyjCBLbbPzubwtsEnM8F+GBEQgfOvMD1ViYEcH7Ll4IMI43rmNrbTy8xcN7LrqR8aBaMPik4MlU
	XM+iqtwrWWUuwIKbvC5S+TLISV5Qy50x1nYA1yUAns0oKH3yOPsd5N0zr9e9jFoMMarrRlLLDFS1/
	3wrx8rARWczYcTgTVkEaanVH4czAtszVsR2xQmurXmj4ky69gmmw8IWPMzSHfezzdZjBSdt79GeI0
	i4hIta/Ya8MSt+ro2LM3xeyT4DftUid35I/JqVUFyQr4kWw8ZXTBUWL+8RFH4+iIED53YGYGeQlHv
	OJgMvQB+9flU6a9avojQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecBj-0005cf-Gm; Tue, 10 Dec 2019 09:52:15 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecBT-0005ah-Eh
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:52:01 +0000
Received: by mail-ua1-x943.google.com with SMTP id w20so6947658uap.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xUN3rGfqd0QTJZr6aZxtmVJn1us7qeeluWmJXj0Te7E=;
 b=xggK1nB9ejv8RrFLLP7MF/oV73DlomCcEFt6HG/TCk2YTOnfjzU3+OzQE8gFIrWdVJ
 TtWMwOMAm+lNOHbSBgqqfcWGtcvUCv75lA3LChaXWTTz0IACzZ6lxZQSbnTN3Fb3DP2O
 IJuvDyC789CqjCdgQcDf5UoOTHebBGiol9I8m3u0iIMym5mvaHzTt67ZcXglu22tZM6l
 vj4qeiLkVAYovR5jRIo0hNv66L1NOWtskL6JUwzFKzCajY4uwA3NIaWBXmgWfJSWKlEj
 WWrieoWz89mX714X7EAYQ87oD6/+ERYpjZqPZoyFB1vPFlOGCcfg9yzMlnZJzgMAYDNB
 /0XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xUN3rGfqd0QTJZr6aZxtmVJn1us7qeeluWmJXj0Te7E=;
 b=Lz5MOr0xjLyWmfFOWHR3BuK8E6uoJSnfjFXyfSvHuNa47gjifWwaEkuD72v4gAH7DY
 KRgEbBoUBfd6NQJ1WtUCsRQ1dyJW8lJLqoPfQ5Qi+e8169Kh2dUdzUwLy4BmhhxGEvYn
 M/9L6mhnYhHYH+aQBs6L+SU2oz+9kBEfiq5i3ywGb855L3QUhVArWV2AqMKP0zAJ+MQx
 7Cv6K58KCRMM5doa4qfBigEnVVLfbpwVTUPXqdxG17dIa3Crp8/98O1RDlIpynseTLBB
 eEq0fOlzpm3Ix8eBXgb80bi0RzQUpuJo9kcPQiDOvSFRn6RK1EUQDdtKM+k8yvUZ9egY
 QEgQ==
X-Gm-Message-State: APjAAAVvV9AcfhQdzDfKKeDGAZHDyRiaviNLOi3gq0ug3hIBh19DgpkF
 xxLkWpofeowerF489mIj0/cNJRV+ttCUHldXmBeYPg==
X-Google-Smtp-Source: APXvYqxI9QdLGOMqq6QaCpjOk+V2l3LXtFs7IfnhUjP0TmSsF2jOR5CpH0EuMu4/BYNbPnekTo3AHs1xkdV1CNj9hNE=
X-Received: by 2002:ab0:2759:: with SMTP id c25mr2903677uap.104.1575971518126; 
 Tue, 10 Dec 2019 01:51:58 -0800 (PST)
MIME-Version: 1.0
References: <20191204071958.18553-1-chaotian.jing@mediatek.com>
In-Reply-To: <20191204071958.18553-1-chaotian.jing@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2019 10:51:22 +0100
Message-ID: <CAPDyKFo9Z2yj7zC5VOS-iX_LyavPp1A4n73eAp7VD-Q+dpoqpw@mail.gmail.com>
Subject: Re: [PATCH] mmc: mediatek: fix CMD_TA to 2 for MT8173 HS200/HS400 mode
To: Chaotian Jing <chaotian.jing@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_015200_308366_CC6C50CD 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 hsinyi@google.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Dec 2019 at 08:20, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
>
> there is a chance that always get response CRC error after HS200 tuning,
> the reason is that need set CMD_TA to 2. this modification is only for
> MT8173.
>
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>

I have applied this for fixes, however it seems like this should also
be tagged for stable, right?

Is there a specific commit this fixes or should we just find the
version it applies to?

Kind regards
Uffe



> ---
>  drivers/mmc/host/mtk-sd.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 189e42674d85..010fe29a4888 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -228,6 +228,7 @@
>  #define MSDC_PATCH_BIT_SPCPUSH    (0x1 << 29)  /* RW */
>  #define MSDC_PATCH_BIT_DECRCTMO   (0x1 << 30)  /* RW */
>
> +#define MSDC_PATCH_BIT1_CMDTA     (0x7 << 3)    /* RW */
>  #define MSDC_PATCH_BIT1_STOP_DLY  (0xf << 8)    /* RW */
>
>  #define MSDC_PATCH_BIT2_CFGRESP   (0x1 << 15)   /* RW */
> @@ -1881,6 +1882,7 @@ static int hs400_tune_response(struct mmc_host *mmc, u32 opcode)
>
>         /* select EMMC50 PAD CMD tune */
>         sdr_set_bits(host->base + PAD_CMD_TUNE, BIT(0));
> +       sdr_set_field(host->base + MSDC_PATCH_BIT1, MSDC_PATCH_BIT1_CMDTA, 2);
>
>         if (mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
>             mmc->ios.timing == MMC_TIMING_UHS_SDR104)
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
