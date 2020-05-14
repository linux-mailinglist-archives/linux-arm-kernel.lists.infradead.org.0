Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC09A1D3E27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JG7ACW6+AERUep4ys72R5XI1OhJuJHNzDHUT3C3SmZE=; b=OuBoUMyEnn3Fcz
	8VkrwWnz8MbRxLiGFQOsY7zDGyje/Dp1t0Holi0AeyMTGUfPtnZuu9GT8O5u7tvS0qBIQjHq6hiTb
	NTSdngN8HQBhLcgR76eRfE+ldr3u38vaTD7TC9wdTsXilUQBMED6legff0ewjtpSdUAvBnrH3jopi
	U/A24SS/QOafBsMKXWJXRut33Af30Pio4BEQTLnJas+2h1OyCevhSThZUlLMCQjmP06tDB79GET35
	+/4UabYh9JhRVPmqbYxjln3f8aU1uNj+K7/NM7imnGGDDqKE8CfrlnLzr9S5o8SM3fRxeh6tC+1oF
	qUaJSwNo7UrvutqN4yRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJz6-0000Lp-OU; Thu, 14 May 2020 19:57:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJyg-00009c-A8
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:57:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A12BD2065C;
 Thu, 14 May 2020 19:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589486229;
 bh=tKWWpxgYPG4stldxvX9LV4nXlvk64bNtADCpumJxIS8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=DnV2pqjEmRyOCXZKQIEqug66EC+hc9asFPpTuLcTnyudVx0bDXotfl7Pz5utF4cYJ
 BX9CmERuev/Arisrw13igQHXER6LmTxuvq30R6Kl27kbGu12YpOGKNGTxasZuPMzNE
 nS9VDd2hzL5tfWX0Gast9VuE//fzVBrUApHzS1Y4=
MIME-Version: 1.0
In-Reply-To: <20200409064416.83340-8-sboyd@kernel.org>
References: <20200409064416.83340-1-sboyd@kernel.org>
 <20200409064416.83340-8-sboyd@kernel.org>
Subject: Re: [PATCH v2 07/10] clk: Allow the common clk framework to be
 selectable
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Date: Thu, 14 May 2020 12:57:08 -0700
Message-ID: <158948622898.215346.8325812794724480286@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125710_472644_536C0DFE 
X-CRM114-Status: GOOD (  11.02  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Arnd Bergmann <arnd@arndb.de>, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k@lists.linux-m68k.org, Mark Brown <broonie@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stephen Boyd (2020-04-08 23:44:13)
> Enable build testing and configuration control of the common clk
> framework so that more code coverage and testing can be done on the
> common clk framework across various architectures. This also nicely
> removes the requirement that architectures must select the framework
> when they don't use it in architecture code.
> 
> There's one snag with doing this, and that's making sure that randconfig
> builds don't select this option when some architecture or platform
> implements 'struct clk' outside of the common clk framework. Introduce a
> new config option 'HAVE_LEGACY_CLK' to indicate those platforms that
> haven't migrated to the common clk framework and therefore shouldn't be
> allowed to select this new config option. Also add a note that we hope
> one day to remove this config entirely.
> 
> Based on a patch by Mark Brown <broonie@kernel.org>.
> 
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: Mark Salter <msalter@redhat.com>
> Cc: Aurelien Jacquiot <jacquiot.aurelien@gmail.com>
> Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Cc: Guan Xuetao <gxt@pku.edu.cn>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
> Cc: Rich Felker <dalias@libc.org>
> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Cc: <linux-mips@vger.kernel.org>
> Cc: <linux-c6x-dev@linux-c6x.org>
> Cc: <linux-m68k@lists.linux-m68k.org>
> Cc: <linux-arm-kernel@lists.infradead.org>
> Cc: <linux-sh@vger.kernel.org>
> Link: https://lore.kernel.org/r/1470915049-15249-1-git-send-email-broonie@kernel.org
> Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
