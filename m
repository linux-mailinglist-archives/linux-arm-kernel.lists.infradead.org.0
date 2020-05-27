Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998AA1E3C29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qp2H963MEF6U+7yWtVWUDO4lmEVtFeLgjDeQ+463wY4=; b=hTQCzG2qX0IjPk
	c6VLFQdLVRMWPO+T3w+KxMbXsRJUfwk6QbWbsxOERhG3pJOPcvXfDge865tElQUUJ2KMSfSVCTisi
	3g9DgBa3fFBolhPu31Vu7hr7s5MTMdsBF95a/+ttjtIl1oQICdKUI2RSNWn2OWEEmUAowbs1BTsmY
	wUb/bA6e61qtsR9s2js2w3IbLmpluhItWjj1NV9WRGLyuKi5F1kb7pvTPA8J+V4oj18OCe9OwfgA4
	VomOWOXLgxHgTnCKTQTloCAlIfk/gng19UZh9WxDMYK3i21G220a//xmk9eHo1061gDk9noWHnka2
	BBhxA5H1Yiej2e2VvaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrXC-0008GR-LT; Wed, 27 May 2020 08:35:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrWi-0008FP-Rp
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:35:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7453D20723;
 Wed, 27 May 2020 08:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590568504;
 bh=4P6drQSHi9/fWQsr/Ga8r0JMRYT3l59WI9ynWwuCi20=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=OjqOTc1g6ZzEGZuUAXSx989Y9yhyWypaASH76M03vrBHEMdC2kKDvUqSFrGWTrFmH
 1HPFcNZTtVVMVJUpFSVbdN9ObGVTdQznRmcwESXxXFFL1NCa3d9/N9vuwCqVXrJ7bO
 igkQZANuQEZyBwRcwAGYW/38P863/fZt08cACyao=
MIME-Version: 1.0
In-Reply-To: <1590564453-24499-6-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
 <1590564453-24499-6-git-send-email-dillon.minfei@gmail.com>
Subject: Re: [PATCH v6 5/9] clk: stm32: Fix stm32f429's ltdc driver hang in
 set clock rate
From: Stephen Boyd <sboyd@kernel.org>
To: airlied@linux.ie, alexandre.torgue@st.com, andy.shevchenko@gmail.com,
 broonie@kernel.org, daniel@ffwll.ch, dillon.minfei@gmail.com,
 linus.walleij@linaro.org, mcoquelin.stm32@gmail.com, mturquette@baylibre.com,
 noralf@tronnes.org, p.zabel@pengutronix.de, robh+dt@kernel.org,
 sam@ravnborg.org, thierry.reding@gmail.com
Date: Wed, 27 May 2020 01:35:03 -0700
Message-ID: <159056850384.88029.10852284922297394339@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_013504_923462_216D4945 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting dillon.minfei@gmail.com (2020-05-27 00:27:29)
> From: dillon min <dillon.minfei@gmail.com>
> 
> This is due to misuse \u2018PLL_VCO_SAI' and'PLL_SAI' in clk-stm32f4.c
> 'PLL_SAI' is 2, 'PLL_VCO_SAI' is 7(defined in
> include/dt-bindings/clock/stm32fx-clock.h).
> 
> 'post_div' point to 'post_div_data[]', 'post_div->pll_num'
> is PLL_I2S or PLL_SAI.
> 
> 'clks[PLL_VCO_SAI]' has valid 'struct clk_hw* ' return
> from stm32f4_rcc_register_pll() but, at line 1777 of
> driver/clk/clk-stm32f4.c, use the 'clks[post_div->pll_num]',
> equal to 'clks[PLL_SAI]', this is invalid array member at that time.
> 
> Fixes: 517633ef630e ("clk: stm32f4: Add post divisor for I2S & SAI PLLs")
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
