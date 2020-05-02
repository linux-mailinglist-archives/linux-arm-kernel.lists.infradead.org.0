Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A771C2392
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 08:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37hT2P2mWARL+W6VM6Ou0eTUfvwKG2bo5SIRYb0yspE=; b=rF99X0FGSo5jIB
	fqHQt/kCnX0M0MUnpSYXheXuq5kybPsw5AjSAOEf5hUIXPEsvLSHkNHeKVZLkq9K1r0MENsha9tdN
	hv0Iun7LqgW7aObmO18X2tBgNVoRFzJCNOvEaE86KsgaLldt1/u7BTF1oVrr4o+FORJjhWU4xxS3T
	RO8NMQKNZjZ5oUWiKtkAJSXC/E/xswH0KAMZDOU1hfDwKrPNFYhvdxyv8UeEWPCpiNStBcGpDPLsW
	2xJ+Gp7JBeTPCg7bk3FOiRdLJ9e7PcPaJsEppT3rwp131K3bd2Sw5xcjdjpWWmJ5035JYOUlZSJje
	5tPj+JkpDKsQN/lCCZjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUlhp-0003Vc-9W; Sat, 02 May 2020 06:32:57 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUlhj-00032r-0R
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 06:32:52 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id E87D720034;
 Sat,  2 May 2020 08:30:37 +0200 (CEST)
Date: Sat, 2 May 2020 08:30:36 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: dillon min <dillon.minfei@gmail.com>
Subject: Re: [PATCH 1/4] add dts node for drm panel driver ili9341 add dts
 i2c3 for stmpe touch add dts spi5 for gyro & ili9341
Message-ID: <20200502063036.GA9204@ravnborg.org>
References: <1588239802-11442-1-git-send-email-dillon.minfei@gmail.com>
 <33f928e7-3fde-99a2-b84d-d74a2d3f1186@st.com>
 <CAL9mu0+AqO69+rEcH=HVWRhDLbqDO52-Cjxt-PAZmg6=7QtpvQ@mail.gmail.com>
 <40bdf88c-fbc2-564c-1aec-38318bab5e61@st.com>
 <CAL9mu0KRPPrTUWggs2dQWPGjkyubUMpYx=3JzOpwTPQPHjsGhw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL9mu0KRPPrTUWggs2dQWPGjkyubUMpYx=3JzOpwTPQPHjsGhw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ULXz4hXy c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=bnXyCQR6rJ-qSE-LuncA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_233251_229703_569E6F2F 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi dillon min

> > okay, thanks alexandre, i will go through these docs. currently i'm on may
> day holiday,  will be back at  next wensday.
> after go back to work. i will separate this patch to five part with 9
> patchs , should be more clear
> 
> dts releated
>     1,  ARM: dts: stm32: Add i2c3 node for stm32f429
>     2,  ARM: dts: stm32: Add drm panel ili9341 nodes connect to ldtc
> support for stm32f429-disco board
>     3,  ARM: dts: stm32: Add stmpe811 touch screen support for
> stm32f429-disco board
>     4,  ARM: dts: stm32: Add l3gd20 gyroscope sensor support for
> stm32f429-disco board
> 
> clk releated
>     1, clk: stm32: Fix ltdc loading hang in set clk rate, pll_hw set to
> clks[PLL_VCO_SAI] but not clks[PLL_SAI]
>     2, clk: stm32: Add CLK_IGNORE_UNUSED flags for ltdc, make sure ltdc clk
> not be released after system startup
> 
> spi releated
>     1, spi: stm32: Add transfer mode SPI_SIMPLE_RX, SPI_3WIRE_RX support
> for stm32f4
> 
> drm releated
>     1, drm/panel: Add panel driver ilitek-ili9341
> 
> doc releated
>      1, dt-bindings: display: panel: Add binding document for Ilitek Ili9341

Patch separation looks good.
Please cc: me on both the binding and the panel patches.
The binding must be in DT Schema format (.yaml).
See a lot of examples in drm-misc-next for inspiration.

Looks forward to see/review your submission.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
