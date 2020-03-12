Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9747E182836
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:21:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1q7ru/K0O5Y9HlvBvx/7WadUXOaBR7WL3K63Qc898I=; b=k42NwkH6W4ORSZ
	bYfSqJ7C53LYt2tlWH+qZxxH7YgNWGpDL5wjF7pbOKpmSYp70kDdZakLV0UmndU8LE6qH4S/lLzcn
	IsOIxpPtWcRew1EkBOzgjB9jxdAKdXSWWMdugQDT0rjCM/4gbo6qzx3wY1p2LdSHysNY1Om+LBcog
	/otyWc2IKhxhtNJc6AQu5GDwCSiTkL5a6T79NisdK2ZJ6jwlYZ+hkPD92d6+x7R2t5ZoyS1c7XEdi
	LQ8ZIFDiVvmoY7q7COB32U8flIS5r7XtIr06Xmr6jmrJAWun6aRTVIC+bOaG6BgFfcKQjZmonUopw
	9Q8/Kiz3070NZYwgNLeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGHy-0004JN-Bu; Thu, 12 Mar 2020 05:21:46 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGHq-0004Im-Lh
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:21:40 +0000
Received: by mail-vs1-xe41.google.com with SMTP id p7so686489vso.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2rL0f1stvcai+881pBzgsoAh3qUJVmAXvCC/htsXh94=;
 b=wQ9KH1LqIfVUdGWfsDTAG+874YZgIwVtgGGlTea3dhDmu2xXr5bh2weH8pSA1cs83v
 LNFpEJqNoPoqs+FEeeoIZHDx0Gr5xJkhp0s+019VRA8mCVD43rqr+D50dcKYJUc5lH9I
 wKTLDyLEFgqgfReS4ykjcWppP0hwPyKfk69aHc6JLu6M80sjR0hC1S4Udb2ACOs+Y0by
 0cOCsM00sI3dUnZoKqNcupUFnORtwYBWWoOX+2PBDVM31fFx+K6JOC30cnvFcZdlrSN1
 xMt23dbDLuGi0ffPtdHN99su4OlLUarO+DVokGJtrYJxAff1NbPDWI0nzroqCjY9sXL0
 ASXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2rL0f1stvcai+881pBzgsoAh3qUJVmAXvCC/htsXh94=;
 b=VQLTY1Rjv1rrwS8mov39urmV5ZjfbrSbK381eBgMMKvE68uIkmjRvjcoVZZ5FrRSA4
 m88LhxdNNtBg4JuanQgrZTftU3AzQr13+o6jonRphxzcBqvtCLSdT7f6XP1ZkWzhToq2
 n/QWFJ11l9M8NlE2oxzsvgF9xEFXX3pqUVUeDcmhUyRYKLbFBIB5SPhaGuwi2uadeR+A
 3PfqfttdnEKV5GqkmYiEINzEy3n9ABY86U0IQxL0yPILJ3+PGt3F8VjM/GJCrP/AUIL4
 Wb3beQ+K6zQS3LCKYAJWZCyiZbWXrz9L/EyNOXP9AzR0rS6bmbt+IjB4TU6HySDhE86G
 rIpA==
X-Gm-Message-State: ANhLgQ3a0WFOK12eHCe/zxlfd91Ae6llBas37xewn6cfykV74AVcZYwS
 pFaFqOVMpocpxrijnaEXIUbQFyncjMMUEVDIgBWlOg==
X-Google-Smtp-Source: ADFU+vvcIQBsD6+Qf4EXhXxuhdx/RuDKXyEsnw/NEhzlaB7+WISf9/LVykqfs227GC7dL+5kSizWix/lKMiNIw74MX8=
X-Received: by 2002:a67:e99a:: with SMTP id b26mr4269737vso.27.1583990496623; 
 Wed, 11 Mar 2020 22:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200311233039.928605-1-bjorn.andersson@linaro.org>
In-Reply-To: <20200311233039.928605-1-bjorn.andersson@linaro.org>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 12 Mar 2020 10:51:25 +0530
Message-ID: <CAHLCerMxf5HwcFqqyOuV+LjMqw_6PJdcsGLQzW2GDSSwt_Uz4w@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable Truly NT35597 WQXGA panel
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_222138_850207_928015A0 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 5:02 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> The Truly NT35597 WQXGA panel is found on the Qualcomm SDM845 MTP,
> enable the driver for it.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index e8be14b93b40..07b57510394b 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -573,6 +573,7 @@ CONFIG_DRM_TEGRA=m
>  CONFIG_DRM_PANEL_LVDS=m
>  CONFIG_DRM_PANEL_SIMPLE=m
>  CONFIG_DRM_DUMB_VGA_DAC=m
> +CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
>  CONFIG_DRM_SII902X=m
>  CONFIG_DRM_THINE_THC63LVD1024=m
>  CONFIG_DRM_TI_SN65DSI86=m
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
