Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964C71A30EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACdFRsDukTdDNygHsWUqLqtBDH84gWOmzxWImoEmrVw=; b=SlZWqE2u5HPE5O
	ZUEuqV3Jpg+1yaLEa0XkkitpWv9Te8y6zV2Zy2fDkmbxJB5BGZXuslo5XVDUqp1oSJ/ALBtd9m5wH
	rHhWB7SaIMkLlTg4MABVp/8osEloJvcusExGEp1m7LM30WAzeeIAXUjK9z4nIWcAZpqKOGzjE53xZ
	j3SFlTUQvxv1Kq79X21196WkP8PgJF/sGOLxrvZNmPUV20ELc5FPFFhZazQpv36rJ5L/f2dnFbNO5
	uWPHA8r3fc46R8oreW7o9a6Uk5zf/vs7x3nTyFmGmHVDCUTUI/tMHE99Mds99/JS/cY/saaocna8a
	Tl5z5PnK8uAvnnhENJ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSaH-0007RB-NX; Thu, 09 Apr 2020 08:30:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSaA-0007Ql-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:30:44 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D2E620784;
 Thu,  9 Apr 2020 08:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586421042;
 bh=tecY0VJsbe8EdmmXXtksU0Y0zBQ4pnIaVfI2igeka+g=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ptohimgNcSS6YVP6voh44L9Sg9U4vla0zIuPhH//YJlP0Pij9fyw2K+ZNUAEHVrPo
 Ro/p1DceVy1DmnpHiLRWeBbTqOmFjwO56VpfspN5AASuHpAIJ7hqo6PYHpZolmT3RQ
 PQprX0YetLoQeGYubZAI1tdqQfcS3ncgfxC7byN4=
MIME-Version: 1.0
In-Reply-To: <20200408160044.2550437-1-arnd@arndb.de>
References: <20200408160044.2550437-1-arnd@arndb.de>
Subject: Re: [PATCH] [RFC] clk: sprd: fix compile-testing
From: Stephen Boyd <sboyd@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>, catalin.marinas@arm.com,
 chunyan.zhang@unisoc.com, mturquette@baylibre.com, will@kernel.org
Date: Thu, 09 Apr 2020 01:30:41 -0700
Message-ID: <158642104168.126188.8440219577017239983@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_013043_035745_E21AAF4D 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: gregkh@linuxfoundation.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Arnd Bergmann (2020-04-08 09:00:44)
> I got a build failure with CONFIG_ARCH_SPRD=m when the
> main portion of the clock driver failed to get linked into
> the kernel:
> 
> ERROR: modpost: "sprd_pll_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_comp_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_clk_probe" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_clk_regmap_init" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
> ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
> ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
> ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
> 
> This is a combination of two trivial bugs:
> 
> - A platform should not be 'tristate', it should be a 'bool' symbol
>   like the other platforms, if only for consistency, and to avoid
>   surprises like this one.
> 
> - The clk Makefile does not traverse into the sprd subdirectory
>   if the platform is disabled but the drivers are enabled for
>   compile-testing.
> 
> Fixing either of the two would be sufficient to address the link failure,
> but for correctness, both need to be changed.
> 
> Fixes: 2b1b799d7630 ("arm64: change ARCH_SPRD Kconfig to tristate")
> Fixes: d41f59fd92f2 ("clk: sprd: Add common infrastructure")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/Kconfig.platforms | 2 +-
>  drivers/clk/Makefile         | 2 +-

For clk part

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
