Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4341B5077
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 00:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYORu0cc6hxoIAcbOtyfsgxWGcKDUTpmiKL/FLmbSFQ=; b=SdE3hT4N0XNIOF
	x9wNYZ1rttj4TFtC7oIFNJcpLj6ViMo4dEQEuac87SAuCD1R9/z1U1hIVOoBnMqv6wrLGDo9WaYg6
	3yAZbnXR8wDtei5OCo9RVZQBTsNWFrJIkS+LyXM1nvcZF/iqf/kv9eG3kKjpwa2HgBHNaZVT/UnbP
	Im491nOmRAOJ4md4Xq3ufgRSm1Z0l0B+DhFk4ZhDjnnNKzQrLmWtCAPtd2KsUIL4uZz9HG2sOKXqL
	HOgql/f9Ckv1AHa+2uGa3mg6k4rCbJD/GM33HiXwkRfvV3sxZDCuon877KlvZrFvkQu0w+D0b4GnH
	kuteVrUkweTyGRbVNxhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRO8t-0000Ws-W6; Wed, 22 Apr 2020 22:46:56 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRO8l-0000V9-A9
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 22:46:48 +0000
Received: by mail-pj1-x1043.google.com with SMTP id e6so1622644pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 15:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pLTuQArcwiFXcG9uc7P3/tOH2806IqFHASRaBcIcsEY=;
 b=BSbkpzmsMrB61iVPWzBuW/+ZEnOUMyG61Cjfz/vz3GFTkoJosnfewYwwNytlJSg/r5
 7urIvRN84RRm0goUbfxHHzHPdDP8mVksMX8xC3NIi85jZ0dxMD54ig+wXJWmGJ+PTddQ
 Y/1YKuKZgP6vEwWbBfuWIfhMmf8ZfOiwR0UJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pLTuQArcwiFXcG9uc7P3/tOH2806IqFHASRaBcIcsEY=;
 b=Yi9UA2gQ8WxfrrzthBgBQdzkMMXS7DIhxQdY5HoYBw9vgNAbKi6SmZc0eQ40sy8vW8
 j7NdIxax+LIJ9OovhSgEMCiml0gFWxL26MkkHE7qQan4OwUOVXkcBPmUqMYCSW/AZT3K
 fiUqI8//OIzzihWEOqh6UX2og3FhjECitTGN3N1Ci2ppS7kEWorhPG/ZA7HKW8/tb6vf
 Eua7NYQ71ZR3nW4DC+zyjXFD1AUCiKjl+yBPMBiQfnnKZoiYjCHi/7eU7Yv7cl6kY1z7
 lZlRVyDU1jcyhQUEDSX8OBcZ8SWN+QSH3F2zT1pDgImKxIE3evmvn/OJVrvmwlMqZcO9
 ExvA==
X-Gm-Message-State: AGi0PuYZzf/GYsx6dq8XwdlTY75YQMQGaFCOBf7l+cLy+/crCa+gXXKu
 g5XmnDsb5Y0VsmK5a3Kiz9BHwQ==
X-Google-Smtp-Source: APiQypKhDC0baxY/PgdACBGve8Req9KLYTUEXXH0x/85yLzgvD2k0uCeWYCvvSYzzEadi+NZNpZcBw==
X-Received: by 2002:a17:90a:5aa7:: with SMTP id
 n36mr1056873pji.45.1587595606121; 
 Wed, 22 Apr 2020 15:46:46 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id h11sm539650pfo.120.2020.04.22.15.46.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 15:46:45 -0700 (PDT)
Date: Wed, 22 Apr 2020 15:46:43 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Yong Mao <yong.mao@mediatek.com>
Subject: Re: [PATCH 3/3] mmc: core: fix mmc_sdio_reinit_card fail issue
Message-ID: <20200422224643.GI199755@google.com>
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
 <1586835611-13857-4-git-send-email-yong.mao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586835611-13857-4-git-send-email-yong.mao@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_154647_374903_A70CA6EF 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, srv_heupstream@mediatek.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yong,

On Tue, Apr 14, 2020 at 11:40:11AM +0800, Yong Mao wrote:
> From: yong mao <yong.mao@mediatek.com>
> 
> If SDIO device is initialized by UHS mode, it will run with 1.8v power.
> In this mode, mmc_go_idle may not make SDIO device go idle successfully
> in some special SDIO device. And then it can't be re-initialized
> successfully.
> According to the logic in sdio_reset_comm and mmc_sdio_sw_reset,
> invoking mmc_set_clock(host, host->f_min) before mmc_send_io_op_cond
> can make this SDIO device back to right state.
>

The commit message isn't very concise. Suggestion for a better
structure:

mmc: core: reset clock to minimum speed during card reinit

Some buggy (?) SDIO devices don't (consistently?) enter idle mode
through mmc_go_idle() when running in UHS mode. [add rationale why
setting the clock to minimum speed fixes this]


Also the function sdio_reset_comm() mentioned in the commit message
doesn't exist in recent kernels. And mmc_sdio_sw_reset() does not invoke
mmc_send_io_op_cond(), as the commit message appears to claim.

> Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> ---
>  drivers/mmc/core/sdio.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
> index f173cad..dc4dc63 100644
> --- a/drivers/mmc/core/sdio.c
> +++ b/drivers/mmc/core/sdio.c
> @@ -850,6 +850,7 @@ static int mmc_sdio_reinit_card(struct mmc_host *host)
>  
>  	sdio_reset(host);
>  	mmc_go_idle(host);
> +	mmc_set_clock(host, host->f_min);

mmc_sdio_sw_reset() - which is mentioned as reference in the commit
message - sets the clock speed before sdio_reset(). Should this order
be followed here too?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
