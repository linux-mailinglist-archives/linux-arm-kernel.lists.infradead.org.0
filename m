Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A20198B06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ne6Yg7cZeKqq+8qX8uRup0shg5U63xjzUMCQj6mXmsE=; b=iLUSHU5HWwLEef
	WkYl2Zj3C3nSb6qDN4npW51Yyi+0pVrHTIz+ST/R1vlyl8/qgOxHPkFFaIZkbPiY001CM0KSp0zeE
	2zjiktWaho0fi375+OO4y4vxhhbWr9ilEKygsoCRxKS/klwOyo/Nyhh/aSurIv4YpwzNj8cUQ9hnB
	kvOXbgAq2wFliFLNcOLS0OnQAbW9LSHDdhIkSfKDKuDsA5gqTpizAfL1FQB7DBpZ9MOivXP9ZdwTK
	+KdWa+/nFCoZ+rqn+ZzkylrpDOwLCeSyXBv0n9BRnvt4H6EHFoqY3o/xGBaqQDk7K4bKq9qGgC3Cx
	5mSHPaoaq0EQYbZdUuDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8Hm-00088k-PP; Tue, 31 Mar 2020 04:13:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8HZ-000887-Hc
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:13:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id l14so2624625pgb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+ODykTNEoBMWwVXP1vOeSL96MgW7tpodAAuNHsUQlnk=;
 b=whPdBgQ9hFqwgiqzwvs5i4j/QOVecoOCW85Z1n2BdfG4/XnspJ7yfz6Ofa6qln1F2v
 nO5JCTQULNzSfV0QU+TWYrraEwP0dWdQwJpkYXAUy5uYCBfCNpocIBcraCXqBZuSFnQ/
 pVrgqA+Ha8HGcvSUIa4j8o86lQAGbpJ8CCkuoiTl5b+SyHRzJpvRcIVIBxb/VwTLQqVs
 Pr1tj1CP3u08E9rlLftL5DDmoX+uHxg4MxNt9x6MNV++IH8OSMkR7EXTifpOfT6IKHL6
 KBK7UAb4fTfrBB9EAANbIwAk6SFE/CSsYAZjNyuRE+lbtZcWk2uyRLWtrxuArN8AF10w
 cn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+ODykTNEoBMWwVXP1vOeSL96MgW7tpodAAuNHsUQlnk=;
 b=VXtubOB8auFYN5ntNU5H/QJJLk1lTtc8vi+0mKKtUtiHcKJPMICwZTxbuA/EEtTtS9
 z3gW9CB00BvqXtdemeGi40KfiUiYyOhdLAbx5FYPSSCR+yrrgCvTx3vQStmOYhkvmGq0
 Avy/47uBknfDpwf+dxIOpxGyvFK2DAb1mei3D1jegHt7xBCNsdKDbyF14xlvq4lF2soo
 ucbCUnhQUigHQt4SjoMNQ/NyypK7TM+BjCWkEkRshKuNtZpkMqfZ5udQuFv3B3O0y0I8
 xiBgm8MXgCL7OkA4qAjUzdcrcvpIgv8NmjoCXOVMdzZ64xhcrjn+eGWGDbLn+/3lTZ/E
 vKrw==
X-Gm-Message-State: ANhLgQ1QBO20cIWlRJfz0KD5tRPJf2cQOzN0O0w09XoY/VrMuh6yNVZ1
 iBYMGHw4zy37XIGBWekAUpv4
X-Google-Smtp-Source: ADFU+vsqzv9wupOqpQbUTu1IRhMLgXm0mDboWAweGnwsj+zoFbF67byp1UCzsu5STXagHn8fiuckCA==
X-Received: by 2002:a62:55c2:: with SMTP id
 j185mr16923836pfb.318.1585628025005; 
 Mon, 30 Mar 2020 21:13:45 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id g30sm10893171pgn.40.2020.03.30.21.13.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:13:44 -0700 (PDT)
Date: Tue, 31 Mar 2020 09:43:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 02/22] ARM: dts: stm32: Repair ethernet operation on
 AV96
Message-ID: <20200331041336.GD14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-3-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-3-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_211345_592411_D0ABB687 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Tue, Mar 31, 2020 at 02:56:41AM +0200, Marek Vasut wrote:
> The AV96 RGMII uses different pinmux for ETH_RGMII_TXD0, ETH_RGMII_RXD2
> and ETH_RGMII_TX_CTL. Use the correct pinmux to make ethernet operational.
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
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 425175f7d83c..1d15b745feeb 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -81,8 +81,8 @@ led6 {
>  
>  &ethernet0 {
>  	status = "okay";
> -	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
> -	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
> +	pinctrl-0 = <&ethernet0_rgmii_pins_b>;
> +	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_b>;
>  	pinctrl-names = "default", "sleep";
>  	phy-mode = "rgmii";
>  	max-speed = <1000>;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
