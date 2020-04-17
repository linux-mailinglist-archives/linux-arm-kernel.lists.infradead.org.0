Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F6F1AD9F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 11:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXmQehkAsPGJLb3XwKbg8znZaci8ePAxn4OyDLg9kks=; b=JDVrNoLKyJV6bD
	6Hq5KeotYk34IwRHXrQsHzbaKa0/+mIniC4K6d7zbDyco/ZwIe0V5sTWqeXPhlj+GIga+U4XBHezS
	aYnBMyYrWViuTQLAHcCbtI48pTwZIP0PfWFkvK5GRyA2Z2Zpnj1MYxBSn1tYUUCtAVnduZ2uIkkj9
	URX8mLVQAvZ9os+TWG8ES/kwwT7agibJvoXn8bsxdFTdMMMl/uc7c5Y2Nq437cz5EY0iO/YaY8wxS
	bnW+QGEL+c91E+izJUGGGw/KkDighUXbrsJc/5Nlj+oV3KcfGHVD1y7r6vmYqZzs2H5eiJO2S1F5d
	kXf/JDmIJozkGLIUSgvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNLo-0000vE-2N; Fri, 17 Apr 2020 09:31:56 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPNLP-0000j2-F4
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 09:31:33 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y185so755215vsy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 02:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p64gz4wBBzrCn9693S5Yg9rZbwKOwkix1v4fg68Kaak=;
 b=By0UkC0UOpKSJshUVUxtFt+AsHtAS3exQ/0f8C0eZVdh7ZlgbbEO/V4/W6S2CLvsEQ
 la185+DwqLva/ga3ddjQJsHoOckWFGSG/bOGp4zRs8MW9lL1WDRMAoIIAPXCqAOLSeEL
 F2zkDGqaH4/qUcByFpf7pU7/zVEfcs1IyMNpp8VCxDQqTMzYeTdlbiAaaG/RsazOJGmg
 s6v79X0qRbhRxMcibMTRHPqhIzkzJW25rgkNY64JpOyVu2eiuCj83apSm9arX5dkAGFI
 2kax/j+06Gb0y6o6BDMxUD2cbc/bXyuJqpu00MNatNuaDblJnHKjhPxUrsR/+cV5PDm8
 VGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p64gz4wBBzrCn9693S5Yg9rZbwKOwkix1v4fg68Kaak=;
 b=lnEfz3WpCbbpXhzyh2OR/GjqxwvvpR4zEXuXV6guV1VKEVICMHxKDnwzPrsUDLbiMI
 4w0gsCpHROrEMDiLknB9OUb9gE/5FbQVqgS8SCHGLzX79X8G0DFQaPjjoIqfVMveuUK7
 U5Iz2Y8zV3uZ/sBECUCIu1GzGRMoFFm+ZGSuvhOd7DIc7s1y4e7sbUTscRoh3Y/jyI7l
 ILKkKAH8qBN/7JY3H+dkYcGX2Y5vbNtOlcf1Om4Gq4aPtAfRnc8ZQkzOwzohXuuXy7Y5
 c6f6VqB6gfvqDXgA0hyPsRhTDBRH4GIf6LRqLedJ7V2JzumSAWtHtZMl/sslfUmLV00x
 en8w==
X-Gm-Message-State: AGi0PuYipgiPnppdSY8EZOV1oS/rFkDWB3c3Ln/f5gyj9clx3spH5HP5
 666vuYOEN8T8F4BAz6hH1qkXcztk8ior3W954dLCNQ==
X-Google-Smtp-Source: APiQypKTNkTpvRdq+a9PAoyBZV9h6xbL3cicvsKIs4XdjEhAkHKBJJUZuuhk8/gcK1ihy/h/WXevsS5Uvr1S19jnvHg=
X-Received: by 2002:a05:6102:72d:: with SMTP id
 u13mr1392649vsg.35.1587115890241; 
 Fri, 17 Apr 2020 02:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200416182402.16858-1-natechancellor@gmail.com>
In-Reply-To: <20200416182402.16858-1-natechancellor@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 17 Apr 2020 11:30:54 +0200
Message-ID: <CAPDyKFr4VX-3Z=iboMbDmhJvwh+GL5wg_50aPw+_j5jMLBWctg@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_023131_544751_13884F21 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kernelci . org bot" <bot@kernelci.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, clang-built-linux@googlegroups.com,
 Manish Narani <manish.narani@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 at 20:24, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
> uninitialized when used here [-Wuninitialized]
>         return ret;
>                ^~~
> drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
> 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
> uninitialized when used here [-Wuninitialized]
>         return ret;
>                ^~~
> drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
> 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> 2 warnings generated.
>
> This looks like a copy paste error. Neither function has handling that
> needs ret so just remove it and return 0 directly.
>
> Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
> Link: https://github.com/ClangBuiltLinux/linux/issues/996
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 16e26c217a77..18bf0e76b1eb 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -735,7 +735,6 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>                 container_of(clk_data, struct sdhci_arasan_data, clk_data);
>         struct sdhci_host *host = sdhci_arasan->host;
>         u8 tap_delay, tap_max = 0;
> -       int ret;
>
>         /*
>          * This is applicable for SDHCI_SPEC_300 and above
> @@ -781,7 +780,7 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>                 sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
>         }
>
> -       return ret;
> +       return 0;
>  }
>
>  static const struct clk_ops versal_sdcardclk_ops = {
> @@ -807,7 +806,6 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>                 container_of(clk_data, struct sdhci_arasan_data, clk_data);
>         struct sdhci_host *host = sdhci_arasan->host;
>         u8 tap_delay, tap_max = 0;
> -       int ret;
>
>         /*
>          * This is applicable for SDHCI_SPEC_300 and above
> @@ -857,7 +855,7 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>                 sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
>         }
>
> -       return ret;
> +       return 0;
>  }
>
>  static const struct clk_ops versal_sampleclk_ops = {
>
> base-commit: a3ca59b9af21e68069555ffff1ad89bd2a7c40fc
> --
> 2.26.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
