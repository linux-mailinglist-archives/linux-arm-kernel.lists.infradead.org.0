Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F84F1B1D16
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ih50w6eZ6fiepUQ1CvIhCk1ip3rb+8hFwuU3aLEC0M8=; b=gSE7b1bEFS1kFL
	uzGuc+p8imqZW8fGVaEEj68CI3fVxPJIQqicsKXb0j+tVJH/NZ7cliw0dSzJKQxZbCsuR5fp/EzdT
	tSNK/5ZsWvI4Mk+XgtV/BD+TevgsymxP+vaMbzrC9H7mFb/CzWSeF3/RlyxujPxw2mqGrm8yuOLVr
	UMjyjf+o203UdCtuI0NKF7LZys14cs7flXVCnLOtQG7uCgysiL+8mpWw7czzGTmwpVwd5p+hLOcuI
	/SgTu/p20TrQvw7o8kN8OSktssOKw3HHtF7Ps6QgmOs1VfM2OIVfrOsL3saZx3or4Ija1vpl1pSjv
	d9gNl4xrgPr0ZnA4yBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjuQ-0008BI-P1; Tue, 21 Apr 2020 03:49:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjuF-0008Aj-Fc; Tue, 21 Apr 2020 03:49:09 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88EC52071E;
 Tue, 21 Apr 2020 03:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587440946;
 bh=0D6hYraBu1DbsgpFZCPm8t6r20cXBzyDrsgU4Z9wbZk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WWyMs0j3tGy9ANeQcxvdnl4D2WfDvXmeTx+v/xAjU3v1syDAcRLuG+jTM8pAN9C8c
 +ugCB2prYMNqzzfI9yUZDDQU/E3+XpLnEbFc8dmEc5PWVfX6iEZUISBELut7DAYoEn
 qZ6RAUv8WCZxTJmFNfy78KPXTD5Iybr6mKPjsOrk=
Received: by mail-lj1-f175.google.com with SMTP id m8so12461647lji.1;
 Mon, 20 Apr 2020 20:49:06 -0700 (PDT)
X-Gm-Message-State: AGi0PuYb9x00y2iPVFRytbGNG1LbdaYxnwaPccg4aNibzykwLYjl8DaJ
 IlO0cQNanArZ6/gvRCIJzKrgsbf5zMIdyehaGDA=
X-Google-Smtp-Source: APiQypJ1or0lDKF5QqUv6w69NTZ4v7V/G08isP2Oq7HTw+F7ljB+CKK2Gz7J3f4a+MkTFc+nuAlbnVCvdthGDNd2ybs=
X-Received: by 2002:a2e:9ada:: with SMTP id p26mr8877859ljj.14.1587440944667; 
 Mon, 20 Apr 2020 20:49:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200416181944.5879-1-jbx6244@gmail.com>
In-Reply-To: <20200416181944.5879-1-jbx6244@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 21 Apr 2020 11:48:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v67N6t+C8dVKdjuOv1NzD9=3-n0GZQkshy1Pm6PFPJ87dQ@mail.gmail.com>
Message-ID: <CAGb2v67N6t+C8dVKdjuOv1NzD9=3-n0GZQkshy1Pm6PFPJ87dQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for rk3328.dtsi
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_204907_560823_0F003354 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 2:19 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> 'bus-width' and pinctrl containing the bus-pins
> should be in the same file, so add them to
> all mmc nodes in 'rk3328.dtsi'.

Nope. First of all, pinctrl usage is with pinctrl-N properties, not the
pinctrl device, and there are no defaults set for any of the mmc nodes.
Second, these are board design specific. For example, boards are free to
use just 4 bits for the eMMC if they so desire. So this should be in each
board dts file. If a board is missing this property, fix the board.

This applies to all three patches in the series.

ChenYu

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 175060695..db2c3085e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -861,6 +861,7 @@
>                 clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
>                          <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
>                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +               bus-width = <4>;
>                 fifo-depth = <0x100>;
>                 max-frequency = <150000000>;
>                 status = "disabled";
> @@ -873,6 +874,7 @@
>                 clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
>                          <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
>                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +               bus-width = <4>;
>                 fifo-depth = <0x100>;
>                 max-frequency = <150000000>;
>                 status = "disabled";
> @@ -885,6 +887,7 @@
>                 clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
>                          <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
>                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +               bus-width = <8>;
>                 fifo-depth = <0x100>;
>                 max-frequency = <150000000>;
>                 status = "disabled";
> --
> 2.11.0
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
