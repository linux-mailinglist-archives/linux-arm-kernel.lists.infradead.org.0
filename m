Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEC115FCF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 06:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMg25IZHmoeiM/wJdaPZT1f5GihrfM3t+Jy9K31PmLk=; b=LLMp+YWqG+himm
	ful9zcIBTSAwW6Dm98LgHrYBoQ1fu9THuwpuWu6DsHxS3g3KdVuEb+gIiuakyEG2uiOmOGJ4T9Jh2
	pnVPIjlNewOadBnMvHjwFkk7jxTcWHFoqcCHfDFyHIQ1sJr3yJFOOj5T+kqE2MxY7MjEYq49iIhHS
	4vS8yNOdTGo7bCNI4VIXsSeDSazCGMRklRj9w+ideUtkJ4ChJiqmzg3CGyiW1Qvio4YmKoA61RSWt
	mWDfv/gS+Bc4JQV3Sdp4vR8T6IOc1b4D0tfwDlNbW/h1/aNUrjj/cFLpbx8iieK5iNKqdTXu3mjUI
	bebId3buO8jhlvs0hygQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2q7o-0004Gs-9R; Sat, 15 Feb 2020 05:36:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2q7e-0004Fj-Pt
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 05:36:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so6132085pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 21:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=umSLSqFdcTUcW15IlOni/Tuec1i7imfq7Q7J9RYYX4g=;
 b=cIxrqNRp65WCtK+fiYn9g3PVPZKXWCeUB0uFKNIzbK215QX3Al36Ke7lSPKliczQPG
 zRn7Bi6DqLKPjlqWNiNyIv1hfnOjroG9dJAo7zBVoxdcOscAu96nnIAHZ0M1KbXjm0Sl
 ZR04ZlFB/h9Rx1G6+2XpmHZ6qc00E2hKTf9RBjGMhvM/S7iYiuAY2TTttm/rFAuLs3bq
 Tl4EPCrQfsVTe0Oz0o9vN+XxWzhv+LiQ+CYz/xTgBuLMVClebtR7iuNxNAyHBtWlm0Wp
 bHYgpgS19tzczImghBSGzs7yS4YbFHy+7+42F6gNr1Xyalax7P6gX0gNY6JBKTkCYKiJ
 SqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=umSLSqFdcTUcW15IlOni/Tuec1i7imfq7Q7J9RYYX4g=;
 b=oKzscZ+eBltwNDAU25exvaLeoxzoamUmjVGOB4yZ+7SXx/S45lInov40dmgQEHDiL0
 puO1hlLlx2xtNtmcSZjgcLsUbFwZNIZVZ5Hka7mpltuYgSyrbjMWMMv9CapwqKWjj/0S
 Ju9C816V+yD26t3Om9/j3miOzYnZLomyD+zzcMi9SWCAp4xr/Khc9oV7NGWHMdRNMcYE
 mPQde89uLUFoxzrL8/i0y0GcQTTToxrKKoSSLa/u3jp9IzxkCKyunSjtLWclSIS9Vqhw
 RTSULM7uXQ3Gyqfrvad1oeu254la9aE2Yz4yMdxta7hUQM+vCsjmPsg66GRfUzSyj9U9
 PcUA==
X-Gm-Message-State: APjAAAV/rLLdx8n8qB0twgK7riJKJGDn41SVUoyoc9XslCOd22f7NMDa
 sptcZu3jsY0CBOf63mmVNlla/A==
X-Google-Smtp-Source: APXvYqzk4mzSWnD3eisseNOAoKEFSWYJ3iXu/MnMV3x1ieUnd9jyOy7C/UGmCSr9X/1fRkBJKg6m3w==
X-Received: by 2002:a62:6842:: with SMTP id d63mr6945184pfc.113.1581744969478; 
 Fri, 14 Feb 2020 21:36:09 -0800 (PST)
Received: from ripper (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q12sm8411743pfh.158.2020.02.14.21.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 21:36:08 -0800 (PST)
Date: Fri, 14 Feb 2020 21:35:17 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Message-ID: <20200215053517.GN955802@ripper>
References: <20191112141819.GA22076@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112141819.GA22076@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_213610_851206_5F9522E8 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Patrice Chotard <patrice.chotard@st.com>, Paul Cercueil <paul@crapouillou.net>,
 Eric Anholt <eric@anholt.net>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-msm@vger.kernel.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, mazziesaccount@gmail.com,
 Ray Jui <rjui@broadcom.com>, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Sean Wang <sean.wang@kernel.org>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-oxnas@groups.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 12 Nov 06:18 PST 2019, Matti Vaittinen wrote:
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
> index 763da0be10d6..8844ca1261d5 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.c
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
> @@ -485,8 +485,8 @@ static int msm_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
>  
>  	val = msm_readl_ctl(pctrl, g);
>  
> -	/* 0 = output, 1 = input */
> -	return val & BIT(g->oe_bit) ? 0 : 1;
> +	return val & BIT(g->oe_bit) ? GPIO_LINE_DIRECTION_OUT :
> +				      GPIO_LINE_DIRECTION_IN;

For pinctrl-msm:
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

>  }

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
