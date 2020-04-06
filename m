Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE2D19F0BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 09:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gy9ZbYLDg99JSGSLuz7Z2RQGB+zV4SaRgT0ucK3EhNI=; b=ZvrtBMBzidjv53
	aOF01GUfUrZ0uaMDYP+PbAm+fqnmlOlhyGm7plBMSvIxEJxz5gaPRTpgw+e/dz4puSJnOWJjSHdyl
	dR+hMdrcT6dl3e/G+1jzHAH1XH/marEGBrBfapTNn2nCZYwlm9o999CN0ZxURE1FcWP1yjl8J6hPk
	vQjxW1LB3e+1xSE6OFdbpBtSJEDs/R0ZFmgdSfZaZcSP5cxYG71JSk4BVMnNcrs2Mqdb1FHwjAD+1
	vZ/dhz7aMBnamLb947BZiUMPozLcwlZFOigvz4URCMt4fGv3TsKq0Fb5WjR0btgqUUMUZt9bClHS6
	Ll6O9YxRcIT7OMpjVG0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMAb-0006si-6J; Mon, 06 Apr 2020 07:27:45 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMAT-0006s8-8a
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 07:27:38 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m15so6084112pje.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 00:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tO5+FH6asKDJ62tqVe4ousdxNeX5ekZ+eF6mjYohlI0=;
 b=G0+p4C3RxyPFSpWJYOG6PrthAMiPhKC2bPWxF/wIWYGy52krDBkTRzvXhGkQQniG+F
 BBwVuxTShwD30hqnI2Bytjb8IZhQCSfr8T3Rqr+o+oPAdgh51wykn/SJkoLIx+uKJBbg
 a34eJdOAK/FX/0MUHWVksJrIWH6lDZoeQ8kLVpUkxkKux8d0aW6XLzcHlXRoNbx8NIeR
 tW9cWrDqw/qlT735jIVamOVCBxU7IqJAT3T5OMZqnNWHGvMb3tsoDEj2e1qF/lNOQy2w
 R4N+ds83Bu0D+GR+WyckurW+QZ32CcTicC9ql0lG0ydynCE7kMntTY59mPVaPLiTzBgc
 b88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tO5+FH6asKDJ62tqVe4ousdxNeX5ekZ+eF6mjYohlI0=;
 b=S3wst4EHtMrKyzCRddaOfw3tvAuuv7CTRDrPMpfwbjhhwpU4YhPQz/Z65U8wO/1Tre
 6OLrkYdj45d0Lj3vsKdImU9Sh20GLScqR760Vhn9bnSYGuzp8uqfrM2Qt7CHLdjGZ4Q6
 iEaBJnezcOKOKVIJOUGWecMmT26umETbhBsRLSobOcepVw46Z+j8LoVWe+9qK3booSfK
 hmnw909MpG84AgkGao+CppbRkXIzOV6Ldt6+SqQuCvetboYjbUnOSuSFMelK0Q/Q07O6
 VeSyUZ1IkqDpJfdEHcAhkkbgEjXYHsgs6PNUvyhHqSrzFoiaP2qFlNbAbKb2ld8oOg74
 ZqRA==
X-Gm-Message-State: AGi0PuYhZh7s23V3Jpm9oRZdrEtDqe9gyfMXVsauQojGn7QrRt4XFCgU
 gKNwJ0suRI9auns2CPhqqNOf
X-Google-Smtp-Source: APiQypIVme/rFuSK72P45JBkET5vhhi2LUUdhRi+2z3KShtvx2W3bJvszSaZ8YF9ZOE8rc5OunQxgw==
X-Received: by 2002:a17:902:9892:: with SMTP id
 s18mr19610218plp.321.1586158055744; 
 Mon, 06 Apr 2020 00:27:35 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id e7sm10980871pfm.3.2020.04.06.00.27.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 00:27:34 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:57:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200406072728.GI2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_002737_331261_642E87FF 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,

On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
> The AV96 board device tree is completely broken and does not match the
> hardware. This series fixes it up.
> 
> Marek Vasut (22):
>   ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
>   ARM: dts: stm32: Repair ethernet operation on AV96
>   ARM: dts: stm32: Add missing ethernet PHY reset on AV96
>   ARM: dts: stm32: Add missing ethernet PHY skews on AV96

Ethernet works fine with cold boot but after warm reboot it fails with below
message,

[   18.192842] stm32-dwmac 5800a000.ethernet eth0: no phy at addr -1
[   18.197539] stm32-dwmac 5800a000.ethernet eth0: stmmac_open: Cannot attach to PHY (err)

Thanks,
Mani

>   ARM: dts: stm32: Add alternate pinmux for SDMMC1 direction pins
>   ARM: dts: stm32: Repair SDMMC1 operation on AV96
>   ARM: dts: stm32: Repair PMIC configuration on AV96
>   ARM: dts: stm32: Repair PMIC interrupt on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC2 pins 4-7
>   ARM: dts: stm32: Add eMMC attached to SDMMC2 on AV96
>   ARM: dts: stm32: Add QSPI NOR on AV96
>   ARM: dts: stm32: Add configuration EEPROM on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC3 pins
>   ARM: dts: stm32: Enable WiFi on AV96
>   ARM: dts: stm32: Add alternate pinmux for USART2 pins
>   ARM: dts: stm32: Enable Bluetooth on AV96
>   ARM: dts: stm32: Add alternate pinmux for LTDC pins
>   ARM: dts: stm32: Add bindings for HDMI video on AV96
>   ARM: dts: stm32: Add alternate pinmux for SAI2 pins
>   ARM: dts: stm32: Add bindings for audio on AV96
>   ARM: dts: stm32: Add bindings for USB on AV96
>   ARM: dts: stm32: Rename LEDs to match silkscreen on AV96
> 
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi    | 280 +++++++++++++++++
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 324 ++++++++++++++++++--
>  2 files changed, 571 insertions(+), 33 deletions(-)
> 
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> 
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
