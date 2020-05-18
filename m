Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C88C1D8BAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9wuXi7Dz08m/tLwkUKT8wYqI6/S3Qe5nUstugwV2Nc=; b=r6L34YkBq2urri
	oWrB/Wi64xUtWZ/+gm7nczqeqYU8V9RtCzjsgzS52L25F2CF4nerJlFsrkTuIXLApU/QwdSZSJqwO
	V8G/4lkup2D+MuttID3rH32Dr13CmmgeJJVHuVcyqm6USAbtMemKK9Q3iMu7qcMPi7xuZLmS0Y9J9
	GeqFW99QM9y29ZZeOPA8kV2Ja8bGIP86/91WItZvE+6pUAxTTth9YeHyJCVNhpC7lIiv530Zg9D8Q
	rkGCO4S7fryUIV0ZBWWkplVPpo7915dmR0ErbFGK3EKHPy9uwrcN85+oTgKqOZmOmj4rwLO0mnJbr
	dQLIKKXMbTT4AzrZvRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1japLC-0004hI-TP; Mon, 18 May 2020 23:38:38 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1japL3-0004g9-5K
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:38:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so153449pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 16:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jUXXsTVi/ol985AWsfw16Z8ftNIvXp6W/qpkEYQEo4U=;
 b=s+mKwNYijhWIaplbTKQgFR81bjW3dhUrsvBZ7376un9NuP3I9BnY+6jNHD4t+ESEGL
 pdsEJyHKaNVvZ8/L5F5XsY8rGOchEDnWk4/7SsbN8CVOa//TA+YsGneY/7JT9DmUQFR3
 H2VS+nh+KO/dzlck7nYlysUPYGCrwwt0lz/g4jjtsFFQYuNnz4XgWZU0IwWMgWqynTqN
 v8u3q/9APfJ+yBh7DnuvgnXF4fdpQDb4Y8ajPAzLuM5YhhLJFLjzHTbSdU7acdyDoNOx
 m+1pO09nOIhxXKWbNq5038Xp7ZHJ7IdhAT65XzSsWnqhlG3z739aJMzXOD9rL2LuRX2F
 5UyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jUXXsTVi/ol985AWsfw16Z8ftNIvXp6W/qpkEYQEo4U=;
 b=LUPPZAuJgCSZnp6amLzRYxGsFcOfZPm5+TzbR5nNboYe/Xhk9BNI3q3eI2eCNFe+IR
 +IyVcGRpJgkaj6IM7oCUEiMiCGNVKP+hml6u+PAv7wcyxXy5wc+W0kbl34IX3b/DXJne
 zeBZewxzaSS1zni+JSaZ1Yi8Z+xG6aiVMdh2nultVBpemEdhbyBv5VnSk+BSVeAjCnU1
 CGKAkVt4gm1d0FmQk7hoSx+dz/TN0KvM56zVv9JacaOZ2YEawAaw2p5+csVcvHAOfKnW
 OeZ1Y2HilEmqGWNq63WTT5Xsr4bRFbokcdVdFGlhCgzMgUWNAjOnO0phf4SUjAyiO/3r
 hc5g==
X-Gm-Message-State: AOAM531rvuB/YRQClXs5L39EQgCrOFdwlW6Gif0IJkrfMeT8MWqKbxg+
 5KfmBdBhWf3aTyrOlk+zSiS41A==
X-Google-Smtp-Source: ABdhPJxYl66UOfL4Wmt6zKr1t0JLL0daGRW0Q1y3cPixiDFAjzScVKrnHuzvjxMckb9CWPsZyYjdgg==
X-Received: by 2002:a17:90a:5802:: with SMTP id
 h2mr1765854pji.221.1589845103175; 
 Mon, 18 May 2020 16:38:23 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id i2sm8490631pgb.14.2020.05.18.16.38.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 16:38:22 -0700 (PDT)
Date: Mon, 18 May 2020 16:37:00 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: enable Qualcomm IPA and RMNet modules
Message-ID: <20200518233700.GF279327@builder.lan>
References: <20200518215455.10095-1-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518215455.10095-1-elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_163829_256333_EA64CAD8 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 subashab@codeaurora.org, will@kernel.org, cpratapa@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 18 May 14:54 PDT 2020, Alex Elder wrote:

> Enable building the Qualcomm IPA driver as a kernel module.  To be
> useful, the IPA driver also requires RMNet, so enable building that
> as a module as well.
> 
> Signed-off-by: Alex Elder <elder@linaro.org>

Applied

Thanks,
Bjorn

> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 9c6500b71bc6..56261fd7ea8d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -306,6 +306,7 @@ CONFIG_MLX4_EN=m
>  CONFIG_MLX5_CORE=m
>  CONFIG_MLX5_CORE_EN=y
>  CONFIG_QCOM_EMAC=m
> +CONFIG_RMNET=m
>  CONFIG_RAVB=y
>  CONFIG_SMC91X=y
>  CONFIG_SMSC911X=y
> @@ -313,6 +314,7 @@ CONFIG_SNI_AVE=y
>  CONFIG_SNI_NETSEC=y
>  CONFIG_STMMAC_ETH=m
>  CONFIG_TI_K3_AM65_CPSW_NUSS=y
> +CONFIG_QCOM_IPA=m
>  CONFIG_MDIO_BUS_MUX_MMIOREG=y
>  CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
>  CONFIG_AQUANTIA_PHY=y
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
