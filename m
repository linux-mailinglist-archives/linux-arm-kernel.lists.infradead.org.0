Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8855E198AEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObW0WFJvhGQVE4O1dmZFDDvhE2yGheJ1i1AgbzCtPa8=; b=g1YMm/O9tXEAMv
	gMH62XTTp8CTXG3Au6ExckbtK/o906t5W4rspjcv/ZYISccb3rjOAluUBurqU0aWPhvOuJ7T4+PiT
	NyHcXov8ITBcxIRvObjxdeaAUITlnb246haq9sG/+0lH1mmZ27PLH4y/iPGN/3QTat1QCeuv/NGkj
	3dQP6+Sjnx3972++KVVK36nEKJ3EMvRWnEH9Qu5nOE6oBc2nNOZ6rP93jwm/eEQSuBWY1YU/vvZPd
	jCBoTOKK60G2yjqR6Xk5rD0dQWQVRS7OntTOduWcBuhA3wpmmePoHYouMg9V0TxKmKtWIr3W2QfN4
	OK4BG47zvlRC8QUyl8sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8C6-0003kg-S2; Tue, 31 Mar 2020 04:08:07 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8Bl-0003jG-Pf
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:07:47 +0000
Received: by mail-pj1-x102a.google.com with SMTP id m15so524668pje.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZcPtGhA2QrKGzIux62bHyWTBJE/VY8bdpVEAh0BEh0s=;
 b=MASrn00AGpaEK9XRuvlqy3HDJvFT0PnNi4JJrReygnWYwkQB7XHl9Ef0sBwgN1yl8H
 NNbmyXSGPrGxNEORd7WsSdDly5lL0MKA64Zb+Q2UToA8sRHM8JJWcmBbXD9XU9HvwxZv
 R4R0GwsTSz/n8EArtFo3MIJsbNQsmb8RQYwyi0Vu4n7dXfxCfQhwLO9gaq44t0E/DYBF
 23im8KXnOXoFSRkZPW6XJYGagqdS3IYy/HwMZHXOfn/+MfM8SAAA9O4K/uDVI3CcQC4j
 h6eXh6l+TdMIphYmKXy4xtr7sDztrWrZsAZw7D7MrdVcb36oMHxKUPaIl3QnkLfWor5E
 ugsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZcPtGhA2QrKGzIux62bHyWTBJE/VY8bdpVEAh0BEh0s=;
 b=o0KQpkG6UzBGTp+VVV3d+KY9ixgnERjv0kqhBgzvY/uXUZi003izckf3ShVeMJbT+M
 wrIib9RMHCLqH1N1txDlX5Hq1P0jqgnZGKMbHupHTAftOQJLa2j0B0m/RJ0Hsxi2xWqr
 89W36obnClkbFs6BZKi/0tz6Ii2PtTya2I0nxGGp6KkfJL3oGaKWUv/IlViqaohCBBBa
 D8ZB3OLfrHvL8D+4UDOQZs+Yro0wXb5rLe7Ve7CNHU8T70nn8jaIRBz+2VfTma71Z/dO
 vawXw8xQsBRyqYJdasZYP8ZCwOFWvfpMRyW/l/TeZ4DGT5jcCSgxUyS+dNEKzIETVTL0
 aB3g==
X-Gm-Message-State: AGi0PubY+grXoo54hcHoHGJ1gbwK8rVpFThKjeWk3nQTzm5o6BMigmMu
 448iu2rSVB76LIh4v3HOSzt4
X-Google-Smtp-Source: APiQypKgkux6EMavjoWrH4W01+XW+GyUgz5j1WsJGkyQmilLYP2nJ5JJFlLeSPwTiOeb2zy8Syvx+Q==
X-Received: by 2002:a17:90b:2318:: with SMTP id
 mt24mr1683137pjb.66.1585627664435; 
 Mon, 30 Mar 2020 21:07:44 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id my15sm832311pjb.28.2020.03.30.21.07.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:07:43 -0700 (PDT)
Date: Tue, 31 Mar 2020 09:37:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200331040736.GA14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_210745_844067_1DE365A4 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi Marek,

Thanks for the series. 

On Tue, Mar 31, 2020 at 02:56:39AM +0200, Marek Vasut wrote:
> The AV96 board device tree is completely broken and does not match the
> hardware. This series fixes it up.
> 

Completely broken? The patch submitted previously was an initial one and there
were many interfaces not enabled. I agree that there are few _obvious_ things
like SDMMC1/Ethernet pinmux, LED naming were wrong. This was due to the fact the
board was on early bringup stage and I couldn't test Ethernet due to my setup
issue at that time (yeah I know it is bad). Also, I don't get access to DHCOR
schematics as well for things like PMIC. Do you have access to it? If possible
can you share a link to that if available publicly?

I will test this series and also the uboot one on my board and give my
Tested-by tag soon.

Anyway, I think the patchset subject could be something like,
"Improve AV96 support" :)

Thanks,
Mani

> Marek Vasut (22):
>   ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
>   ARM: dts: stm32: Repair ethernet operation on AV96
>   ARM: dts: stm32: Add missing ethernet PHY reset on AV96
>   ARM: dts: stm32: Add missing ethernet PHY skews on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC1 direction pins
>   ARM: dts: stm32: Repair SDMMC1 operation on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC2 pins 4-7
>   ARM: dts: stm32: Add eMMC attached to SDMMC2 on AV96
>   ARM: dts: stm32: Repair PMIC configuration on AV96
>   ARM: dts: stm32: Repair PMIC interrupt on AV96
>   ARM: dts: stm32: Add QSPI NOR on AV96
>   ARM: dts: stm32: Add configuration EEPROM on AV96
>   ARM: dts: stm32: Enable GPU on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC3 pins
>   ARM: dts: stm32: Enable WiFi on AV96
>   ARM: dts: stm32: Add alternate pinmux for USART2 pins
>   ARM: dts: stm32: Enable Bluetooth on AV96
>   ARM: dts: stm32: Add alternate pinmux for LTDC pins
>   ARM: dts: stm32: Add bindings for HDMI video on AV96
>   ARM: dts: stm32: Add bindings for audio on AV96
>   ARM: dts: stm32: Add bindings for USB on AV96
>   ARM: dts: stm32: Rename LEDs to match silkscreen on AV96
> 
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi    | 248 +++++++++++++++
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 328 ++++++++++++++++++--
>  2 files changed, 543 insertions(+), 33 deletions(-)
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
