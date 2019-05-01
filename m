Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C350710C6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXWrt5vZxPi4K3H1o30R93vrz3EfVvA80y4idVfuuwU=; b=LlarODVKtNCa49
	BESJhcJqodVzXHMZsl+ijgdEvaBubFCRZPHt2eG6NZL9tQ2yug1f7ZGS0NhPvhryTnCfbd6SdCbi/
	6cOEwx8jhCzMEt+fGhSoAb2pa2QZY+qPge8crPqQovsMsmbW1gNwuVR3yBp4qs5Gupj72PuX7p0jA
	rVam/P+pKQYtQBLmgSc1syBpyUfj5B7yeOCMtmajNsbDa9Tegv3pqo/gcS/7rJbQTli5ZM0lDQD2B
	GEGYUTXEYwAhFDusFtRHqxC/t7AUcuCiSCjUTQCwlYl4a6X0pzFev9b1myJePZgphjA1SpD4sjA+f
	/Xzkc8FxrsjhDHd2zxDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtNY-0004R3-Cc; Wed, 01 May 2019 17:50:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtNS-0004Qg-29
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:50:43 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32FDD208E4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  1 May 2019 17:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556733041;
 bh=c1wj1L2mmEp3b5Zc4h0P4p/sRviKAqQNIMtj49lFokg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gG+sCU7Pn+mQT5F91kLO8vO2FqssmxCjlJLDuSvhFBgsFLDPE20VbFliRvcxUTqYW
 fVAjvtF/VHvokMcFJ9bJ5f9NiePZ8U7ua4194GOFbGJ191dIFLdVADwBTFhWpXm+Dt
 U/k/vMGI81AXUxcNqct2TGxXPKcnz7hzbnFdBTc0=
Received: by mail-qk1-f170.google.com with SMTP id l199so10603118qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 10:50:41 -0700 (PDT)
X-Gm-Message-State: APjAAAUWlXQDqy50Y2Tp/Wj7uF3XyWJ/AdR94sk3ZG3I7Rwz0JEVAeWW
 H7A9MIJPO5QLaMc/XZvdKF0TjmiDSsKRg445BA==
X-Google-Smtp-Source: APXvYqxaALIZpIXVBCrI5e0AF+QhkCcGm6801hN03DMuRHPJPYGqONfx33oDbS0RZyhIRlVGgu4C1MuY3dbTFHDfvjc=
X-Received: by 2002:a37:5c81:: with SMTP id q123mr39758359qkb.29.1556733040411; 
 Wed, 01 May 2019 10:50:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190423114424.3578-1-yinbo.zhu@nxp.com>
In-Reply-To: <20190423114424.3578-1-yinbo.zhu@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 1 May 2019 12:50:29 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+4g+inxc+qcC3oLrXuR+L9AMvXFShGaU5Y3iRDsK3P6A@mail.gmail.com>
Message-ID: <CAL_Jsq+4g+inxc+qcC3oLrXuR+L9AMvXFShGaU5Y3iRDsK3P6A@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: ls1028: dtsi: Add esdhc node in dtsi
To: Yinbo Zhu <yinbo.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_105042_135353_7A9F5E70 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ashish Kumar <ashish.kumar@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Xiaobo Xie <xiaobo.xie@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, Jiafei Pan <jiafei.pan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 6:42 AM Yinbo Zhu <yinbo.zhu@nxp.com> wrote:
>
> From: Ashish Kumar <Ashish.Kumar@nxp.com>
>
> This patch is to add esdhc node and enable SD UHS-I,
> eMMC HS200 for ls1028ardb/ls1028aqds board.
>
> Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> ---
>  .../boot/dts/freescale/fsl-ls1028a-qds.dts    |  8 ++++++
>  .../boot/dts/freescale/fsl-ls1028a-rdb.dts    | 13 +++++++++
>  .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 27 +++++++++++++++++++
>  3 files changed, 48 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index 14c79f4691ea..180e5d2a00d1 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -42,6 +42,14 @@
>         status = "okay";
>  };
>
> +&esdhc {
> +       status = "okay";
> +};
> +
> +&esdhc1 {
> +       status = "okay";
> +};
> +
>  &i2c0 {
>         status = "okay";
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index f86b054a74ae..1bfaf4294db4 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -30,6 +30,19 @@
>         };
>  };
>
> +&esdhc {
> +       status = "okay";
> +       sd-uhs-sdr104;
> +       sd-uhs-sdr50;
> +       sd-uhs-sdr25;
> +       sd-uhs-sdr12;
> +       };
> +
> +&esdhc1 {
> +       status = "okay";
> +       mmc-hs200-1_8v;
> +       };
> +
>  &i2c0 {
>         status = "okay";
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 2896bbcfa3bb..d13cd3fb455b 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -274,6 +274,33 @@
>                         status = "disabled";
>                 };
>
> +               esdhc: esdhc@2140000 {

mmc@...

> +                       compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
> +                       reg = <0x0 0x2140000 0x0 0x10000>;
> +                       interrupts = <0 28 0x4>; /* Level high type */
> +                       clock-frequency = <0>;

Filled in by bootloader? If so, add a comment.

> +                       clocks = <&clockgen 2 1>;
> +                       voltage-ranges = <1800 1800 3300 3300>;
> +                       sdhci,auto-cmd12;
> +                       little-endian;
> +                       bus-width = <4>;
> +                       status = "disabled";
> +               };
> +
> +               esdhc1: esdhc@2150000 {

mmc@...

> +                       compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
> +                       reg = <0x0 0x2150000 0x0 0x10000>;
> +                       interrupts = <0 63 0x4>; /* Level high type */
> +                       clock-frequency = <0>;
> +                       clocks = <&clockgen 2 1>;
> +                       voltage-ranges = <1800 1800 3300 3300>;
> +                       sdhci,auto-cmd12;
> +                       broken-cd;
> +                       little-endian;
> +                       bus-width = <4>;
> +                       status = "disabled";
> +               };
> +
>                 sata: sata@3200000 {
>                         compatible = "fsl,ls1028a-ahci";
>                         reg = <0x0 0x3200000 0x0 0x10000>,
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
