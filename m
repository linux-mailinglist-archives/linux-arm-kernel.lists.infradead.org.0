Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ACA10CC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 20:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOTT5inAIm3Y5zpopPbqQMMcirF48wbDUqcunEUL6cQ=; b=AnAgqLJHqPVSfK
	s1HYJYtRq17B8nf5Vh3VFY7YYGlI3QUdRIT18B2N+MKexcGe5cz9vMY+BzXhFOtVxCFofjxgcv2wa
	FjwLKTDMmC6CPzZCyBvkl+ACKw5tuFFkICchKxW+EZP6d/TgRZoxt/4wS4HLwfaC3K0GiohYlFH/R
	YA3G5HgSYZKew5Z4bYuLjzJMoXxXh2fc6GyRNCMvRmlgby3zeEOS4NTuhlYVdslxFyg0tWpgRLDUQ
	BoNvhSzxyOY0qu1w5TApyXavxNx3iLLuEy7HsncNHsb0CLlVNKGN0SFUknezQIuHyxXZj2LstNhAb
	mVw7bG3tw4Vs1N9PgSuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLu7h-0003Ac-6Y; Wed, 01 May 2019 18:38:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLu7a-0003AB-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 18:38:24 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26D8A20652
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  1 May 2019 18:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556735902;
 bh=v72lZ0mNNyG4uZ5ndNBI1kcDK5K/AMuSayYUTPc3KmY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IAL62/s0AAB91djQRkfxl70b/gOmJnv3jihZ1jK0iyjVPntL2b24zn1mzkEMsVTvu
 FW7FaNNXrHKxQaWphgz44g+oqLXJ6x07Xm7gHMgZ6NAaby7oxzl1OMCBnfaltWubc3
 vt7IQggy57Xrq/zwJk1AZHejYtMAoJtsFQd87dHg=
Received: by mail-qt1-f181.google.com with SMTP id t1so109682qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 11:38:22 -0700 (PDT)
X-Gm-Message-State: APjAAAXiRqnJ2zpx+s08rB31jVNnBSuLhjWE0gswPVodi2ZKUxfb+cUV
 ZrcONVKsKW3X3wxQlevAo4Ow6FJRJHonO2guwQ==
X-Google-Smtp-Source: APXvYqzv1teS15/DSUMuFzoBJjdr3g1ZKU5TuoEQs8UKcGWGgtMpNz17lIOdTkhgDQOXQk//a7aRWJfXCsqoDUinmbw=
X-Received: by 2002:ac8:610f:: with SMTP id a15mr51742092qtm.257.1556735901386; 
 Wed, 01 May 2019 11:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190428024847.5046-1-peter.chen@nxp.com>
 <20190428024847.5046-7-peter.chen@nxp.com>
In-Reply-To: <20190428024847.5046-7-peter.chen@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 1 May 2019 13:38:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLPK8kuYTT7ekZbAzywp2kr9xKA0_X3BAqVn5hShbPM+w@mail.gmail.com>
Message-ID: <CAL_JsqLPK8kuYTT7ekZbAzywp2kr9xKA0_X3BAqVn5hShbPM+w@mail.gmail.com>
Subject: Re: [PATCH 6/7] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
To: Peter Chen <peter.chen@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_113822_924604_07597973 
X-CRM114-Status: GOOD (  15.66  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 9:51 PM Peter Chen <peter.chen@nxp.com> wrote:
>
> Add imx7ulp USBOTG1 support.
>
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  arch/arm/boot/dts/imx7ulp.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
> index fca6e50f37c8..e2944f98eac6 100644
> --- a/arch/arm/boot/dts/imx7ulp.dtsi
> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> @@ -30,6 +30,7 @@
>                 serial1 = &lpuart5;
>                 serial2 = &lpuart6;
>                 serial3 = &lpuart7;
> +               usbphy0 = &usbphy1;

Drop this. You shouldn't need an alias.

>         };
>
>         cpus {
> @@ -133,6 +134,35 @@
>                         clock-names = "ipg", "per";
>                 };
>
> +               usbotg1: usb@40330000 {
> +                       compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb",
> +                               "fsl,imx27-usb";
> +                       reg = <0x40330000 0x200>;
> +                       interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&pcc2 IMX7ULP_CLK_USB0>;
> +                       fsl,usbphy = <&usbphy1>;

Don't use this for new users. Use the phy binding instead.

> +                       fsl,usbmisc = <&usbmisc1 0>;
> +                       ahb-burst-config = <0x0>;
> +                       tx-burst-size-dword = <0x8>;
> +                       rx-burst-size-dword = <0x8>;
> +                       status = "disabled";
> +               };
> +
> +               usbmisc1: usbmisc@40330200 {
> +                       #index-cells = <1>;
> +                       compatible = "fsl,imx7ulp-usbmisc", "fsl,imx7d-usbmisc",
> +                               "fsl,imx6q-usbmisc";
> +                       reg = <0x40330200 0x200>;
> +               };
> +
> +               usbphy1: usbphy@0x40350000 {
> +                       compatible = "fsl,imx7ulp-usbphy",
> +                               "fsl,imx6ul-usbphy", "fsl,imx23-usbphy";
> +                       reg = <0x40350000 0x1000>;
> +                       interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
> +               };
> +
>                 usdhc0: mmc@40370000 {
>                         compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
>                         reg = <0x40370000 0x10000>;
> --
> 2.14.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
