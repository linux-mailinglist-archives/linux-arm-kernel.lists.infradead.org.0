Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EC31E34E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pq/E8XXinGIvCZyNPNhHVNIcEt6QZ825ZOd2qr7QUd4=; b=sKa95h/rSfZINv
	joA7PnPzyEqJfSeUK2pLN3T65S35fL/P728ipcZ9+ONeLRCqaJaHzPBLpt85aUS277GCDUkMyBfw7
	UdIVGg8p3zEby+Utu5UxQpnkVgmABwPsRt5bmr0huDON91FU3CISh+5MJBYqe5SKh/Q0PukNFORtn
	k39L1ogS7mJTdMkHqSupb+Jx+s7nduNdODi7Bt++TBKmJJBMLifny3OiFY1emvD+vpnv8E+jelpEd
	pN6BIIM4WzvY2oCuJNdzNo+BUBDAlGHLyS4lvaHfnFlTfro8WI3XL0PvzWH4DR+Aikg+RHh9+6CDD
	Qu0dUG91s20ftPWuqMUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdl8B-0001J5-Qb; Wed, 27 May 2020 01:45:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdl7p-0001IP-3D
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:44:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D60D207CB;
 Wed, 27 May 2020 01:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590543896;
 bh=X8IeUYi5TEn1bZovze7WvWR7fZ/TpSB3r+3JOJw+vJQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=QLptIsKhuHarasq/W6RYkU8NHJoMp0xnt0xZil+C30FyLSxx0ko4GnJqD1aLFrCrv
 JahMQqsz6vQdQrXrr7Lr60y5v4JGPCylyVhsRe+7tPWmeip6Q9DrXJiEgtMwCK7xfM
 XKAngA+z8LBWFwXGQrGa2SIOEiDtNeNG0h/0i6vA=
MIME-Version: 1.0
In-Reply-To: <1590378348-8115-6-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
 <1590378348-8115-6-git-send-email-dillon.minfei@gmail.com>
Subject: Re: [PATCH v5 5/8] clk: stm32: Fix stm32f429's ltdc driver hang in
 set clock rate,
 fix duplicated ltdc clock register to 'clk_core' case ltdc's clock turn off by
 clk_disable_unused()
From: Stephen Boyd <sboyd@kernel.org>
To: broonie@kernel.org, dillon.minfei@gmail.com, linus.walleij@linaro.org
Date: Tue, 26 May 2020 18:44:55 -0700
Message-ID: <159054389592.88029.12389551390229328953@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_184457_158404_6C9171F9 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting dillon.minfei@gmail.com (2020-05-24 20:45:45)
> From: dillon min <dillon.minfei@gmail.com>
> 
> ltdc set clock rate crashed
>    'post_div_data[]''s pll_num is PLL_I2S, PLL_SAI (number is 1,2). but,

Please write "post_div_data[]'s" if it is possessive. "But" doesn't
start a sentence. This is one sentence, not two.

>     as pll_num is offset of 'clks[]' input to clk_register_pll_div(), which
>     is FCLK, CLK_LSI, defined in 'include/dt-bindings/clock/stm32fx-clock.h'
>     so, this is a null object at the register time.
>     then, in ltdc's clock is_enabled(), enable(), will call to_clk_gate().
>     will return a null object, cause kernel crashed.
>     need change pll_num to PLL_VCO_I2S, PLL_VCO_SAI for 'post_div_data[]'
> 
>  duplicated ltdc clock
>    'stm32f429_gates[]' has a member 'ltdc' register to 'clk_core', but no
>     upper driver use it, ltdc driver use the lcd-tft defined in
>    'stm32f429_aux_clk[]'. after system startup, as stm32f429_gates[]'s ltdc
>     enable_count is zero, so turn off by clk_disable_unused()

I sort of follow this. Is this another patch? Seems like two things are
going on here.

> 
> Changes since V3:
> 1 drop last wrong changes about 'CLK_IGNORE_UNUSED' patch
> 2 fix PLL_SAI mismatch with PLL_VCO_SAI

This change log goes under the --- below.

> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>

Any Fixes tag?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
