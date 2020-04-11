Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACB61A4D82
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 04:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zm8akpXygOJsl5uYJ/7tCCw70ziLmHKhBFfrOVUyzXI=; b=VpgATuPJHwi2LU
	2YDygoOSc08HDagHd0XICgEab9YiFIUv/kKD3PJF1cSl92X0Tt0XqH+4MP2GMOmmBiFrNl+37UO8S
	xPG0m9kryuhWZRYNpVJkPw6UCQ0dO4goGr1qJZVEYxyCNEWKBXwzn/l8AvqUictrWAgwAsyof6R08
	QF4AEvS1WQ6r7HYlfUqEYYZEv7ASKCqEMPXS+F1G9SIADDgmAW8cK3R+3WjQzW49n+SReuJaLNjTV
	duiEGxKmTlpUwzfTvRgQBDdmsn5IlQLLZDHK4eQzoXbTNs5gp87UPPrUxQ2RJQ9w9AJ7lrbn0dD2z
	TiugHqxvRgfmerOQEzUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN5rr-0005Xi-Rn; Sat, 11 Apr 2020 02:27:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN5rk-0005Wx-R4
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 02:27:30 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 004E0206A1;
 Sat, 11 Apr 2020 02:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586572047;
 bh=HUi2hrUBSigypj7OLb4O+ntBuDmB4tsP4LR2Q8kzRy8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=p74Y9fw4spXP8pf4T5VF32/bLgWuuZPiqXJ+qwE6TdU3spWHWZoocPJZCScu098NO
 mdzxubA+o7uu/V75cIWSMbkFN8o6UIgFacDnbNELRUcunPHJiZoPFA9aV7E7Z/fX0x
 osRc40ASzj49v7Fz/0J96Bm8nLJO7F0FQJIkLfNs=
MIME-Version: 1.0
In-Reply-To: <CAAfSe-s=dZe=6y7UH8CBcddL1BKoLOAvi24RekgdmVv0StxTTA@mail.gmail.com>
References: <20200408160044.2550437-1-arnd@arndb.de>
 <CABOV4+UocLs3jLi7-vTi8muiFqACVdxH7Td8=U1ABveLnmyCuw@mail.gmail.com>
 <CA+nhYX0H-czfJ6Kg+FK7X2=hHQK185UOLGoPdEP3nqWQWcA+bg@mail.gmail.com>
 <CAAfSe-s=dZe=6y7UH8CBcddL1BKoLOAvi24RekgdmVv0StxTTA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] clk: sprd: fix compile-testing
From: Stephen Boyd <sboyd@kernel.org>
To: Chunyan Zhang <zhang.lyra@gmail.com>, Sandeep Patil <sspatil@android.com>
Date: Fri, 10 Apr 2020 19:27:26 -0700
Message-ID: <158657204622.199533.16589832598336244320@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_192728_895783_38F8729C 
X-CRM114-Status: GOOD (  12.44  )
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>, Chunyan Zhang <chunyan.zhang@unisoc.com>,
 Orson Zhai <orson.zhai@unisoc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Chunyan Zhang (2020-04-09 20:45:16)
> We see this broken because I shouldn't leave clk Makefile a tristate
> compile [1] after changing ARCH_SPRD to be tristate.
> 
> If we will make ARCH_SPRD tristate-able in the future and you all
> aggree that, I would like to do it now, and pay more attention to
> Makefiles and dependencies.
> 
> I can also make a change like below:
> 
> diff --git a/drivers/clk/sprd/Kconfig b/drivers/clk/sprd/Kconfig
> index e18c80fbe804..9f7d9d8899a5 100644
> --- a/drivers/clk/sprd/Kconfig
> +++ b/drivers/clk/sprd/Kconfig
> @@ -2,6 +2,7 @@
>  config SPRD_COMMON_CLK
>         tristate "Clock support for Spreadtrum SoCs"
>         depends on ARCH_SPRD || COMPILE_TEST
> +       depends on m || ARCH_SPRD != m
>         default ARCH_SPRD
>         select REGMAP_MMIO
> 
> Arnd, Stephen, Sandeep, what do you think? Does that make sense?

Sorry, doesn't make any sense to me. The ARCH_FOO configs for various
platforms are intended to be used to limit the configuration space of
various other Kconfig symbols for the code that only matters to those
platforms. The usage of depends and default is correct here already. The
ARCH_FOO configs should always be bool. Any code bloat problems seen by
config symbols enabling because they're 'default ARCH_FOO' can be
resolved by explicitly disabling those configs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
