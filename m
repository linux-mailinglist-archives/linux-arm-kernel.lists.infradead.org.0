Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD0C19EC17
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 16:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpQyxq4Se5fvXl8lAzV9ao7fPYt5k0oVqxNHnmlcM4o=; b=ADK9e11kC1QBd0
	XsbqPQ69uhBa6enHxuO4cH4gkMSNLLLC6XCjnMenVGCfriP9VC4kOtNnmaMvw3QTUadvnrhHS/nRd
	ZgXzhp6vcJFD46jDKun3dqq+73JBkNGX1yBjHufaxt6EUOniSNt1+qsznDiZaqFCNJrzppQC93uIY
	1pomWyu2KC58/ZUEe4BgVp3k0F/0v7E7jAAdf41J4vEE1yDM7UJm6Ltesj4xkmqJGppYBLMYsIGRa
	/TVvhyWPUEcDwktC1UyoY88g+xjrTJRRaSUOQ4/4rNRDwzOkcXlMuFbW1iraspz+YqrrOs4U1Jm7X
	DgnLXebaOrG8hTWvssYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6Ua-0007GC-36; Sun, 05 Apr 2020 14:43:20 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6UT-0007Ft-SX
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 14:43:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id h11so4858355plk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 07:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kksYcodGsgJN93lR/yuLls+Kf4sbHQlz9HuaAXuMDok=;
 b=vk5a3Wa+p6KfMVfeTymhQ2DekbHmJCDGB2j16j6WBRjMwoql7dBqvD/m3hhzyTvFUe
 BO+c0RJ5UGo7ef6DIglvAAhg9qJp7gAB9SwL3yOACdOgYCDfTO9bprvG8NUEGTo385YE
 wN2B5mDvcfPFzaHG7MPVcS7djY75E40UsqgM0JdiIvGw9AUxUAF5LnjndYmRmPvk7vPK
 i0cMhAPsIqCWsZIL8h18sif11xjALM/kLyZ+kn+yCdwJIuvOnXG9wYysPZmWJUiDN316
 VKGKirmp+ytDGiPAZfGnO4QVQPkyQddp0EDmmgNtKj3K2lsemWGHiwVRdy3XJUC/2hj2
 zaQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kksYcodGsgJN93lR/yuLls+Kf4sbHQlz9HuaAXuMDok=;
 b=N/zADdwfWl371Nd8yx0RQx0iiiaOdjL9r+e4JH0tfBzktXLrtO0dvO8r1Jr1L1n9BP
 Br2pSDUPXbJNxAvOMDch1h0/fqk15LTyPYZJ60h+AU4iDSbjoY5V1FXKHKhA7GtmrYZx
 VfgtBKYvVrWgmdh43WQukdZLLQ/7lx5CJYeQMOGZV6uV8xZATjdEHzprHOWID7iRc57p
 eDdNyARGEUCxQjrxmHXe4v1fZO14ulOTkFj8HM06b0IubAlqjw41rbG83GwrQjnf/bfd
 NRntz/rujiDx4OInpvdztpD/D7MmPcKuPcDJRs1Fvp5ZiFT2EG2aFX5TFB13NnWi/Qg9
 6bCg==
X-Gm-Message-State: AGi0PuaUg9kxYcqG+dYTtqJ4aeimDOfcGqyHtfRJvaVeflVJKco1KGe9
 gH9HP7HloKXlX0iPzsyKTD+k
X-Google-Smtp-Source: APiQypKhBSzwKnPiV0YD7ynK27J1OgP/xvaiH505eyBuyDawrKXtgfN0BKZ9frLondKcu15Ah7XnBg==
X-Received: by 2002:a17:90a:f004:: with SMTP id
 bt4mr20037713pjb.83.1586097792679; 
 Sun, 05 Apr 2020 07:43:12 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e83:b2ab:75aa:fbdc:e9da:9d96])
 by smtp.gmail.com with ESMTPSA id w24sm9958015pjn.14.2020.04.05.07.43.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 07:43:11 -0700 (PDT)
Date: Sun, 5 Apr 2020 20:13:05 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200405144305.GT8912@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_074313_996632_DBAA9008 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Hi Marek,

On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
> The AV96 board device tree is completely broken and does not match the
> hardware. This series fixes it up.
> 

Can you please share a git tree with all these patches? These are not
applying cleanly on top of mainline/master or linux-next/master.

Thanks,
Mani

> Marek Vasut (22):
>   ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
>   ARM: dts: stm32: Repair ethernet operation on AV96
>   ARM: dts: stm32: Add missing ethernet PHY reset on AV96
>   ARM: dts: stm32: Add missing ethernet PHY skews on AV96
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
