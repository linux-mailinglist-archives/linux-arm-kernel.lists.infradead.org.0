Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5548198C67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 08:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J75P2CA2B0jxM+JRIIMtKcHYwF7yzae9+/fBGcWStqM=; b=HbFag8QbltV42G
	9IVpybHhetCrvlpniK9nuRvjF29hJ7S1yL2+tQXgtW3i4itDIZJNZrneRlRI78f6fHRhwRcydcGWf
	oPZMPlKu0bWGFZcSCXko6HNOta6oXO7A1+VemWFefJquSo/ZpVmxL+pcAFMYnyAOmgk1KwhgdMWyT
	mb+JQoXkgxCm2WaF+4alpIWfbD4a++AE5f6v+BmKxzaj3GFL1Fth92mIChYWnIdTfkTSvWWSQSpOq
	UOqUJOR43QIw86Oj0/Hfme1oNlBzG0R1f01du5ITiNAEgI9ZuZJ/UV5v0NhcFlwXVI/2iECxLVnjd
	+3wkfKwNG8DWeD5pYdMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAWN-00028x-MB; Tue, 31 Mar 2020 06:37:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAWD-00028X-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 06:37:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id 22so9865402pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 23:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=i+kZ1kB/oiPs26tQOXEu+SZlkkg0fl6X4bH+/zZzR/Y=;
 b=b0K14d1rtzslnDocfYlmGWDEoIFOYQrE9NfVQ12Fo8M2JNq2nTaCht0NJ2QV3EKTMA
 7xtrHz458av4TvoX8oZpmQpt4yt13/cKUHKEM7og+JfhABP0tKccYb96kdYtpGzj6oUg
 ezYIHsaouZQBMx++516zKtN8PJExU48jKvBsfc8UOAhC9bsvlLlC8wINSVb+2IE5TtXq
 wjNYAhLDm4sg98weDYq38lZ2rlR9nZtGJB8QEgIxSeArvtt2hrqy/L/HNejtnB1sJ16G
 hOm18EFStMwHCdSHkoTpNFoUk+nSPo3wmE4+uw1AC5DL7aJ77JQu8FT3NQQYfBJVCbjD
 x4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i+kZ1kB/oiPs26tQOXEu+SZlkkg0fl6X4bH+/zZzR/Y=;
 b=SXQkKnJoOxos18q9KuFlcN5EMkBhfVJOUjQX17hnYNbbtljg8bBUFQHiLnWCWVuT0S
 k1FoMeYPX6Vqn6SQ2LtandjaJnAr4wd3+fkU/r5ERXUe2uA2T737bDQwIkOydZa/IU9v
 8jI55bdWbar19unf0eXKvZBSCVfgkGkVquoAAZftjH830nNJ9D+wN3agBRK7YBsqUNMH
 XzpH8JFdQ7PmIEawJmm6AdwXepbFisgTAPd2RBD2nIhyfNIxGJLrUNiOgz+0SOIc6www
 FJsxQUwRxHjYeR3EsKyPasMBWnGJknXPnArxMDbR1/eAV5ybLOnls9PbPq720JnbfaIc
 izfA==
X-Gm-Message-State: ANhLgQ27kf8yM5tKdFyvtdX7lAfde1qRn4Ob2GfoEbOVlgdiWOmhHsWX
 gNyoEw+atC+1x56EUqJdea94
X-Google-Smtp-Source: ADFU+vv7XyfV7ZrcsfD6d7bNSgeyCQGLaj+Go1NGZpWxtxuDBxUW9f7eq4YjFDviWXwlUHKYPcmIqQ==
X-Received: by 2002:a63:9043:: with SMTP id a64mr16654345pge.308.1585636620523; 
 Mon, 30 Mar 2020 23:37:00 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id f5sm12136243pfq.63.2020.03.30.23.36.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 23:36:59 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:06:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 13/22] ARM: dts: stm32: Enable GPU on AV96
Message-ID: <20200331063653.GB17400@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-14-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-14-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_233701_384244_179998C1 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:56:52AM +0200, Marek Vasut wrote:
> Enable the GPU present on the STM32MP1 populated on AV96.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 3dfc51f65709..3aeb3afa37d9 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -140,6 +140,10 @@ phy0: ethernet-phy@7 {
>  	};
>  };
>  
> +&gpu {
> +	status = "okay";
> +};
> +
>  &i2c1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c1_pins_b>;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
