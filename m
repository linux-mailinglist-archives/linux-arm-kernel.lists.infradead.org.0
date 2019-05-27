Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0F02B9FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=758bAIMVgPKvXoc46rH/skDBXBRIb0ZVmU+ob/x779E=; b=RCFcGbSWaYw0Do
	VHKn3gfr1X/z9h45KIXbSHV7bY0WbtHsP/3PV/7JK68/YseQzcUEIt51zBjKTn4qoAD+dgzOOAE4P
	B2faig5RVYa9giAL8yyPVf9zFWx5/3309XYGjB3fiA9+K+6Ko5KN1stuPjtMcOvXyVQSGjZXUE0Jo
	y7WAMLsKoIPkFjsR55e1EsNOgTe+6dwbs2BX2DyIX9FjaSuQ+2tuXqykJ0gmQw+gCe1nowIN0c1ym
	IDhWDwuBkr1n02LVdWct8haPmHGM4T/S7q6Ib3AQirq5SzOiIz5sIoD8VT4bFJ4XeFa8V4O/L7Pu1
	jNhbTCaOH1LiCT7itZag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKBz-0002b0-Dv; Mon, 27 May 2019 18:17:51 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKBs-0002aC-Dp
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 18:17:45 +0000
Received: by mail-vs1-xe44.google.com with SMTP id z11so11112095vsq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 11:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wk2hdUXANFYl1/k0tGnBJuWme842kQgEugYRrAdMJgU=;
 b=dS4IbOdhgZVSQqWE7W9HLkrZGQvhZ5abk5sQyiNlaHVjv85/1nWeAywC/QDyez/NL5
 z5AsU7MavE++ZEHOw8BPtuFl6Sl4UofmOw2JMe8ShMocnqtby87XNUKx/Ynr/IiV5k4S
 orzYRSZzC7PdIRMNlk5aBCIXPnUpTfvSyJn5JPRMiFhwEko33ECMK7cuh70/+y6un1gJ
 rrPyBdC2KSR4FFZ/fXnMog2IOWRqmbwXXzgLgWBhbyphDpZn+xro+tYx+/W4yNXgHXah
 3/mzTz1Ffet/YgR4K1+Noi+2C8Qr5Gf16oP/oHeUde/Cw3BPJYfSTbmqpKYSPiHHrZ9H
 ELeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wk2hdUXANFYl1/k0tGnBJuWme842kQgEugYRrAdMJgU=;
 b=jeu7si9xgu6+bqtnXiqs3mVEmMSz7X9/le9zKC4FGz6uBDr5E7UPZDl3+bQ0SGBfsr
 5ymReNIPRd9e7vYCC4NTBxIbxCBIY0t/fmtSK9MprfEmfvuUILLv84Va2w9BAaigkVp9
 /LJ9ZqyWIQr/ljY7VNd4JTsmiLO0EUvFKPwlrwI+KuHvFx7fiM8DfBRTlTpF/2M82ppb
 0QJG/QcaQAeZ7zDM+jl/dbakACH67POT71nq4oUwIjUAfZFW0PTphf3eVybWZySI2+t5
 cRB6b2H15isr+qanYwKe3c547JE4g0eQQFH3vsYMTq3g9Tp5QULJ2eYAXy9/iDJFxF7p
 zpQg==
X-Gm-Message-State: APjAAAX2ZGx9upyZLha6eR2kAeSn125vLnvpa1/yXNxKSpWmNWOeelQS
 fEZfK/WkTqo/05wDSKg5zWAF5Ja5nZEWVpws1chTDpvxNTk=
X-Google-Smtp-Source: APXvYqzuKcW/79QkdRTF5rt129CfhCTBkDjwdQNIeah8lsnBs26cDYoRW6a2C+MEJfPi6wzVzRHznUMCZcNZHRlI5d8=
X-Received: by 2002:a67:3046:: with SMTP id w67mr51182171vsw.165.1558981062356; 
 Mon, 27 May 2019 11:17:42 -0700 (PDT)
MIME-Version: 1.0
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <1556264798-18540-4-git-send-email-ludovic.Barre@st.com>
In-Reply-To: <1556264798-18540-4-git-send-email-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 27 May 2019 20:17:05 +0200
Message-ID: <CAPDyKFrxp3Y3AudNvkkSRaph2Fe-A-F6Cs0jfy9RUja76GYeiA@mail.gmail.com>
Subject: Re: [PATCH V2 3/5] mmc: mmci: fix clear of busy detect status
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_111744_538876_1FBF380D 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
>
> From: Ludovic Barre <ludovic.barre@st.com>
>
> The "busy_detect_flag" is used to read/clear busy value of
> mmci status. The "busy_detect_mask" is used to manage busy irq of
> mmci mask.
> For sdmmc variant, the 2 properties have not the same offset.
> To clear the busyd0 status bit, we must add busy detect flag,
> the mmci mask is not enough.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>

Ludovic, again, apologies for the delay.

> ---
>  drivers/mmc/host/mmci.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index a040f54..3cd52e8 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -1517,7 +1517,8 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
>                  * to make sure that both start and end interrupts are always
>                  * cleared one after the other.
>                  */
> -               status &= readl(host->base + MMCIMASK0);
> +               status &= readl(host->base + MMCIMASK0) |
> +                       host->variant->busy_detect_flag;

I think this is not entirely correct, because it would mean we check
for busy even if we haven't unmasked the busy IRQ via the
variant->busy_detect_mask.

I suggest to store a new bool in the host (call it
"busy_detect_unmasked" or whatever makes sense to you), to track
whether we have unmasked the busy IRQ or not. Then take this flag into
account, before ORing the value of host->variant->busy_detect_flag,
according to above.

>                 if (host->variant->busy_detect)
>                         writel(status & ~host->variant->busy_detect_mask,
>                                host->base + MMCICLEAR);
> --
> 2.7.4
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
