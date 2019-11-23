Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1488107F69
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 17:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sURmXmM0KVkY70bEcec87WRGDCSR1kwQEcQBpjSS0Tg=; b=C3UxogU7wc8bra
	WzZoKchXRY3ZQPw1zxl3LZFyG4enKMsiufnCJY1bfz2ohLhRSJxxgOcef50+x+3DqyP/E0j/8CaSw
	GNpWziGjBdCiWYi8oqrv8hA+/uwXX6M2L9KflhIzcpG+GZFIc/NwEqGiXRoYTs4kWXDCnR2xvcJ0R
	n983xaQY3t1LshZUAIds2n7iTy7109kLYO6XY6CoKESWEn3/KABrRq301BnJ4C+TwGCUQjL+u9xWj
	yAmZ+HF1E87Mg/BD4Cpq2pQXBVFxeHpA1kJJt1ST7wRsrsfyBhjDw6hgO/pnMWlSK5t/Q59FYZ3GH
	RWhGZ2sYoYvwFQdoJgOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYYVe-0006Z0-8d; Sat, 23 Nov 2019 16:43:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYYVV-0006Ye-EC
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 16:43:38 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AADCC2070E;
 Sat, 23 Nov 2019 16:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574527416;
 bh=NYF7myKhi5RYq2ICOWgPxRYnz2JyYw4d7NLCuexs998=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Nk/sJIrTSqES6rCOA8bglankx0REQQdcXsEMCLyYqPnw4Hjru0nxhRm4SgI96tbxJ
 4Wo63N+9hQULsupg1AmR1hIhtfG66+RoPnkRYAyqaLYZx7hiscYe35iGW5PENVQ/YT
 OOuEY95+uYU0uvtX9WeVRI0j3amoh2qRGZI+ZDW8=
Date: Sat, 23 Nov 2019 16:43:30 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: trigger: stm32-timer: remove unnecessary update event
Message-ID: <20191123164330.04785b93@archlinux>
In-Reply-To: <1574334317-30014-1-git-send-email-fabrice.gasnier@st.com>
References: <1574334317-30014-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_084337_494721_90D2540E 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 12:05:17 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> There is no need to explicitly generate update event to update
> timer master mode.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to poke at it

Thanks,

Jonathan

> ---
>  drivers/iio/trigger/stm32-timer-trigger.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
> index a5dfe65..2e0d32a 100644
> --- a/drivers/iio/trigger/stm32-timer-trigger.c
> +++ b/drivers/iio/trigger/stm32-timer-trigger.c
> @@ -297,9 +297,6 @@ static ssize_t stm32_tt_store_master_mode(struct device *dev,
>  			     strlen(master_mode_table[i]))) {
>  			regmap_update_bits(priv->regmap, TIM_CR2, mask,
>  					   i << shift);
> -			/* Make sure that registers are updated */
> -			regmap_update_bits(priv->regmap, TIM_EGR,
> -					   TIM_EGR_UG, TIM_EGR_UG);
>  			return len;
>  		}
>  	}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
