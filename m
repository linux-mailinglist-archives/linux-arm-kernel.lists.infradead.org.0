Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACABFDDEA3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 15:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KTiH6+pYrFHHJReh1p50PvrnHOBFWFA4X3NqpXEjTw=; b=WUjLM7vuIa65KX
	OHj40KYCgwkr/7eNNuuHtw4izFol2MpyV9ay3uSfyabu8mhnOlQKWnAybLU2jm0aNzdmm2nuJQ/3v
	ujVr9muw2P6hb2NdWU1KrPgNVZ+Q7PlliQPZ27Q1846S6RgId4hULfxSfA+BeF8rZbgw/iF2QHOlN
	LP+30qawF0t0RUGGI1iXkH/bNpe5A/noNTec+an1XMQmtDgtiLYMs8eEtM1c02Cpx41pEuW5gIi+p
	AQtMU6MPdJJbPpI6VzypjwXj8C9xalEnR9FmbGsydxoRC84R20T0YpsI99apUtm6GyDiGTkfdkm6B
	uJ7uT3MvT4l/NN2R+A5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMBMZ-0001ZP-Fn; Sun, 20 Oct 2019 13:35:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMBMM-00014z-Jk
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 13:35:04 +0000
Received: from localhost (unknown [106.51.108.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8FDA20640;
 Sun, 20 Oct 2019 13:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571578501;
 bh=+4amG+FG7GWnyfpjXdXwK7H4DrC9sreLmaUdP6OQ5p4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m2v3U+a94DsWB/fUiKtmWVvQO1na+tb2s51uhNt9vUwsFoaUjVD40cy9r4ikHUP20
 kZ382FXkuWNWfPOdp8VU7YJLTJi0f9zZ/w4pnKSE7Z4qiwzXI+v2c32kh9P7otTm52
 mRZRWQ4e9Mc9Y34dUFGjIscmYk6bObBd5ZIo/XHw=
Date: Sun, 20 Oct 2019 19:04:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2] arm64: defconfig: Enable Qualcomm pseudo rng
Message-ID: <20191020133456.GS2654@vkoul-mobl>
References: <20191019195812.3834545-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191019195812.3834545-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_063502_683123_965BC16A 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-msm@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-19, 12:58, Bjorn Andersson wrote:
> Most Qualcomm platforms contain a pseudo random number generator
> hardware block. Enable the driver for this block and also enable the
> interface for exposing this to userspace.

Reviewed-by: Vinod Koul <vkoul@kernel.org>
Tested-by: Vinod Koul <vkoul@kernel.org>

> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 6baf90875263..4591bf1303da 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -860,6 +860,8 @@ CONFIG_NLS_ISO8859_1=y
>  CONFIG_SECURITY=y
>  CONFIG_CRYPTO_ECHAINIV=y
>  CONFIG_CRYPTO_ANSI_CPRNG=y
> +CONFIG_CRYPTO_USER_API_RNG=m
> +CONFIG_CRYPTO_DEV_QCOM_RNG=m
>  CONFIG_DMA_CMA=y
>  CONFIG_CMA_SIZE_MBYTES=32
>  CONFIG_PRINTK_TIME=y
> -- 
> 2.23.0

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
