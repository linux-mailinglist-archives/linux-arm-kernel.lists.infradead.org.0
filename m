Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61E81E7304
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 05:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pDa8WumJ3tluoeMbneLiY7UW6n1QZdm83jVpnmCxlY=; b=JtYnpbAVbFw/Pm
	c47hA5ElCe0CEWlH+JOlS4bkw/OxwJq+cy8A9CAvBcKIpzrle/tl0Z89Lo8b9IRK3w+nzE7LR/Von
	kOXW2foELF1piexm86o/Zc32ZKh6pEz4GdQ8LEKy9Y4mA0SxgfLrgJaRF560+b0Yvf36RdEZGxwMZ
	WUALx97QYaCV0qRbiHAoCnU0OK2ycDuY679u/XWNWAUv6bJ/XCIo3ihAz1Jr871kq5ar+RJDne6pL
	vfNOB2yndExtUReN2bx8uYnUZ+pfQiQP2T1MED5Lb5TE3LdxkupYj/hqVcZFHdUt+NGGUJhEBvEuJ
	rtHhxarbMJMVb208pQ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeVbg-0006Hk-7w; Fri, 29 May 2020 03:22:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeVbY-0006HI-MC
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 03:22:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id x10so478694plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 20:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K/DiwubCb9d/lnQfGWk08d+XnhhmwJW076U44Z32Yrk=;
 b=ABQgg5cWNx5fOyrnNHa7xWkq+xdikDNnjS4W12kEoFKR0VqzBHbk+RuPPSWL9i8bwt
 ZwD3gL5sgjUhkh+nby7ylwBIBCyO77FrzukhHTu0t2aUfllV/R1dPI2jmJ7CMle0hcdQ
 u0lO41zkYplAFYqmnL7st5yTpnkF+5CHTx65BH8JoalBbztHytDqTIelPTfNujamChgd
 Zg96gzGlAGZk1vOTsrYguHhaT+l1DDf69Clk17df+Q90qPIVqU301j5yB9y3aqsT5R+V
 PZhBYF3QzBUT8Bj7EkSmyvcIx1oz7eaIFJqtxoddCABtafZeLYCYD1sBhjmV0Get/pAl
 j9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K/DiwubCb9d/lnQfGWk08d+XnhhmwJW076U44Z32Yrk=;
 b=A3DVza4wE+RLUUgsEpF8Gn6BVjUgvc/FLmP0PVSZeYPxz0Ec1iOqHI4MohxcHOoY+J
 CeWWHSPFbQTb5eSZSJ90QATfagLIGKWggJwgwlUFBuuqLpXZBy0lceV4ek4qQ1PPOMN3
 Fqdbs+15rreMV3ufXoAkT7DoRldlgQoILCvOPotcMucWvjwXnhRlV3tDd3tNOxf1N9hr
 HRlKqZs7OIQA6k92/m7PEgoH+38yUWakA0PACM5FqfvMJVVgptE95IHLuCxEVN+mBqWw
 4NoPPQYl0qLFsqlTHGe92PAJ2Y1Ifxsm3dTGIzQjkpO/HoIADok6Nbu3CAQ4EcXXbpdP
 FcsA==
X-Gm-Message-State: AOAM531xIS9zy+HKOLJw7wN3QjM8dlYHzsHsq7qbTmh9Y/KADgySPrqI
 AGVjCZS+2j6AZn6vGIsGGDMUmQ==
X-Google-Smtp-Source: ABdhPJw0N1bX+6HZCbn3cdREjjbeqIDm8jsbLadZCLHaapUxmWVB6jDz9tqyVh98y3II0S9GF6maIg==
X-Received: by 2002:a17:90a:642:: with SMTP id q2mr7488956pje.71.1590722561475; 
 Thu, 28 May 2020 20:22:41 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m7sm6053822pfb.1.2020.05.28.20.22.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 20:22:40 -0700 (PDT)
Date: Thu, 28 May 2020 20:21:35 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable SDM845 video clock controller
Message-ID: <20200529032135.GB279327@builder.lan>
References: <20200522102109.3607-1-stanimir.varbanov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522102109.3607-1-stanimir.varbanov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_202244_728548_B7D59EAA 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Olof Johansson <olof@lixom.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 22 May 03:21 PDT 2020, Stanimir Varbanov wrote:

> Enable the build of sdm845 video clock controller by default.
> 

Applied

Thanks,
Bjorn

> Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 03d0189f7d68..4eb7e35d2d7d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -806,6 +806,7 @@ CONFIG_MSM_GCC_8998=y
>  CONFIG_QCS_GCC_404=y
>  CONFIG_SDM_GCC_845=y
>  CONFIG_SDM_GPUCC_845=y
> +CONFIG_SDM_VIDEOCC_845=y
>  CONFIG_SDM_DISPCC_845=y
>  CONFIG_SM_GCC_8150=y
>  CONFIG_QCOM_HFPLL=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
