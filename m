Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87343128B8F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38HTcieowlW36g2NtJ8PrH38ecKPZxW/XZNf7XT+Wzk=; b=MpY8Cue/PO0chS
	qstci15lfw+Tt1EuLzv3W7yPzebL7b+b3RRCpXHAkJtiKzWOYO+x5cCpAomJRckqF5O5H1lxrO2x6
	gCChdPtxDp8ljw8tkUHBFy5zPOQDj6jV+JD6pLQxje4k33JvvdoN3vU0iK/Pf7WYA2EUq3CK94BWZ
	ir3AIquji4HVL1itPWOByIv570pZQCELN0q4A3Wy7flwOga8wObxXFuNJs1sY5mDImycxjPbs6hp+
	2tmmq8oUuvMRdGNh8jURCfXT1dTI2s8V7AQCZ2/PKzjfsxZb6PeXXGAICXQRM7c6PUF2opmoibHBS
	XM94igt5xmo/3RZbLyvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iilpA-0003Cv-C4; Sat, 21 Dec 2019 20:58:08 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iilp0-0003CQ-1O
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 20:57:59 +0000
Received: by mail-il1-x141.google.com with SMTP id g12so11010058ild.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 12:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RdRMbfvT7ToYO4IXf9aTfMV8O7SDeU1yIb+GInd1nZw=;
 b=WCDIKDoM1/9OxguUwRo5xL3Y56bhxtsYB/A117Dvol4FrLN7xgp17JqsiuBYp7TKTY
 ydbTmGBYUK4fvvoVgXHXjdLgAeMqhsjNBuLppXolh8V8kYt0wwuAW59jEnt0vdr+lzOh
 aAWmk3zgQypudHymFYhrQzhwqSIf2KCiqiTWqAqeePQuY3kVY18t5Cq1+TQAs5/SpCbc
 lGG2BJYPwYt1GocodDclUcWkXkb62i/W9Kz8uri+Lb7VtIRAyhN3cYRQ9K95J+pGPNv4
 f6Qiq/wkDj3olX9enJShP1SHafGfJQsZe9sy6yKan62+scAqm4Yoeo6jpTfjoqUq4a2Y
 M6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RdRMbfvT7ToYO4IXf9aTfMV8O7SDeU1yIb+GInd1nZw=;
 b=nF3duZAomt9vilfTpyh/vMb7xJrX7kGpgkDoI2MIkLXBpRQCcYJXB9mv5+1xQ8htVu
 P/8D42p5Ehn1q4PqgZ/+QybTG6H6YODFvDPk1bqp4WgoGVVAMnqDUA/mmu72OyM3qN09
 6UrWYwl+J/5ggBgy8+0JrHLMF5rCC5wfyGm/ddDPh2rNuLUujkbfQQQhr32bZ5zg089F
 J7dkKD/whrT/XFisImgBSEbj3CBCIbXA5mpY3Ia4/LooT7PzwCyp1Sb3rYVnKsbPeRlN
 +BjIiQxuNI0F0OLbt6LLT8DbumsV+lk82QOxtlo2k2DL50ElkbmCsz2iM4Rr9DIKMyDa
 K6RA==
X-Gm-Message-State: APjAAAWOg4dls2HkZwB7mWLX5IyFm3eqv8Lwnw4YzzGfO8+O4YQoo8a0
 CkxADL0Tse0mb/Cjy7R9njEH+zCNeagTL0E4Ja4=
X-Google-Smtp-Source: APXvYqyc3usFhtdUMBFJVhsK8kbJdVf5uAfgGNjp3RnRQcd67CMjzV5QLX70BxY68NmGPHOn4t6NFZ3U1CraR0TI1u0=
X-Received: by 2002:a92:465c:: with SMTP id t89mr19462451ila.263.1576961875969; 
 Sat, 21 Dec 2019 12:57:55 -0800 (PST)
MIME-Version: 1.0
References: <20191028171837.3907550-1-bjorn.andersson@linaro.org>
In-Reply-To: <20191028171837.3907550-1-bjorn.andersson@linaro.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Sat, 21 Dec 2019 13:57:45 -0700
Message-ID: <CAOCk7NqB2ZYewAb9cy=-atACGEF0Wi=b5QbAhFtQEPxU-KKzbA@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable ATH10K_SNOC
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_125758_107940_38D75A00 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:18 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> The ath10k snoc is found on the Qualcomm QCS404 and SDM845, so enable
> the driver for this.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

This also works for MSM8998, particularly the Lenovo Miix 630 laptop.

Reviewed-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index e5e83dbf1433..c350ca25ba8e 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -308,6 +308,7 @@ CONFIG_USB_NET_PLUSB=m
>  CONFIG_USB_NET_MCS7830=m
>  CONFIG_ATH10K=m
>  CONFIG_ATH10K_PCI=m
> +CONFIG_ATH10K_SNOC=m
>  CONFIG_BRCMFMAC=m
>  CONFIG_MWIFIEX=m
>  CONFIG_MWIFIEX_PCIE=m
> --
> 2.23.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
