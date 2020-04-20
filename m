Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7663D1B15B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 21:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9M06xDfrnMYBKNnqwtMxuv8vUWDdicfjUqbnSgzGUqY=; b=AHHC5tjcnnOgq3
	l7m40G+YloYWk/OabMRpaXXXESKe5cWpmBiYGbWu2eC835KJaLQA0sL20sXt6VVoY6Rgu1UeYGD8y
	m0XaaQS4F5R5GAAOoM0GIc1g+Vzv/MfjdTYXlC3I5sxV/l4xPxdtwa3k9RvSt9SceBJBCncrv2ZUq
	7JwpDKDuxlMWvPEsHU/AA+fp6hKrmYZ/0mYLFpt3znLlwmi/MqHKiOFRr4z59ng27QlNPzR+1Q0qe
	vEaw2fT8US0scBjIIhd1WbPjE7Dluev5jGNkw3UdnFYJMb/cCyLg5vBIkPQsIgDNLMDqKXG/WpQt+
	NohivI9fMa8tpQfUu8Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbtI-0006g6-Je; Mon, 20 Apr 2020 19:15:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbt4-0006d7-Gj
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 19:15:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id j7so1974896pgj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 12:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s4hrruIEfeHbnCer3L7xymo3BPcqZk1wOgCil6L4gXc=;
 b=jkUCF9b3xkKwajGHRP14VA5YPuTR0uv9ThYOOWUiuSrrcX8fguG/qXV/ZrUEnsXGQ0
 ve3D9RcEwHxcP8Rds85FUEIPAZPk/ZJ4MA3JL1eWCckkp9eUNXyoHxJAzOCLC0l7hJU4
 tjDvPbpkU78tKvlJsgegIpmgqf0kxXn83VDBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s4hrruIEfeHbnCer3L7xymo3BPcqZk1wOgCil6L4gXc=;
 b=sn4WAFbgnRfcEeRPBu2bqGO+6X+JSTiBqVZgE6k1QTzihg1bsZC4WOcGemroDBRpjM
 I7O4zvsMDOIB/WWCeEGnniZsL2656B+8cfixe8fEOvmvqEZuZV9F7pF6OH4V8qqDsqrA
 +XoDzNH03Ap7o+QtFBAvjFi1VN4K9QAdOMn+oR6c12Q6lSmD8ikRRs/3hKtpb3YVjarc
 MBDWucLaJrqEhz2QL3tY6TVg8gs0N9hKCcJH3bPb1ZLxcffbOf3eUk3If199ZRII5xb7
 GsASydWsC0Ld2xfneSBPO7WUwERoLqdSFGcjiKbsUvwi+n8uLySTZLN4fMBjKBQBWRYz
 wz7g==
X-Gm-Message-State: AGi0Pub7DnhYSDAIh2uKuQSReoY+u6Fm8c7Y4w/Hu3RPBGnmSWTB3b+f
 Wec85yR7IWMY2dqfVj9jRzGBDw==
X-Google-Smtp-Source: APiQypJCgAQPRawkGIDVIK1DeGjLm/plSOv3ZpQojggeG3wLIJkbLMEB6AvcO7FMJg7kHrvwF6uHlg==
X-Received: by 2002:a63:d90c:: with SMTP id r12mr17745526pgg.158.1587410121447; 
 Mon, 20 Apr 2020 12:15:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id l15sm96958pgk.59.2020.04.20.12.15.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 12:15:20 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:15:18 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Yong Mao <yong.mao@mediatek.com>
Subject: Re: [PATCH 1/3] mmc: core: need do mmc_power_cycle in
 mmc_sdio_resend_if_cond
Message-ID: <20200420191518.GG199755@google.com>
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
 <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_121522_548887_899366DF 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, srv_heupstream@mediatek.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Apr 14, 2020 at 11:40:09AM +0800, Yong Mao wrote:
> From: yong mao <yong.mao@mediatek.com>
> 
> When mmc_sdio_resned_if_cond is invoked, it indicates the SDIO
> device is not in the right state. In this condition, the previous
> implementation of mmc_sdio_resend_if_cond can't make sure SDIO
> device be back to idle state. mmc_power_cycle can reset the SDIO
> device by HW and also make sure SDIO device enter to idle state
> correctly.
> 
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> ---
>  drivers/mmc/core/sdio.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
> index ebb387a..ada0a80 100644
> --- a/drivers/mmc/core/sdio.c
> +++ b/drivers/mmc/core/sdio.c
> @@ -546,6 +546,7 @@ static int mmc_sdio_init_uhs_card(struct mmc_card *card)
>  static void mmc_sdio_resend_if_cond(struct mmc_host *host,
>  				    struct mmc_card *card)
>  {
> +	mmc_power_cycle(host, host->card->ocr);

My MMC/SDIO background is limited, but it seems this isn't needed for the
vast majority of SDIO devices, otherwise it probably would have been added
earlier. I wonder if it would make sense to make the power cycle
conditional through a quirk, to limit it to the devices that need it.

>  	sdio_reset(host);
>  	mmc_go_idle(host);
>  	mmc_send_if_cond(host, host->ocr_avail);
> -- 
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
