Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888AA1E1E3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 11:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lSYRfpFFl0ospf0QY0VdKwrlrnBhdR5lVK4HycCyJM=; b=kficXnCitueCMZ
	VlsafMSxFricl20sFLbdeYU01NF8yfBBXCKR+o7wC3nqaeBs2iyGz3CrforSQHsQK16ujsSIz9boP
	k6rxHR89JZjB1TKxYFVQkX0M9MSGoOWG5l69k290o1EpnHoxs8AfJ1hz9O5kDFU6MH8PCVxK1PRhA
	6pCCTuq4+o0OFetlx/tc0hUiZaeVC4wF5mTVDR9n5qNvVgDaCuJ4qb8Q+VPoJ1KSGO00PRzdyczNa
	XgoR7LXbQf5DTbfJK+2OQA8xOd2Hj66WmsyhGlSCXn9S5SHiv4zGbtgyyBd9ewkjwkJh8NEr1L5Fp
	XVut/O8lq+Qnu8oreAZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVkH-0007Ig-Cp; Tue, 26 May 2020 09:19:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVk0-0007Gg-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 09:19:21 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A7C82073B;
 Tue, 26 May 2020 09:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590484760;
 bh=pQ9fSIsd2546ytSpDQuQx2cfrsXYFihGA5BoJ2QU+ds=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=n+3mDJ0XDwFUiVHYZkKbTC2uE5yIjCtnlRYbS8jwqSCDc7Cui5pUHoUegUZePsW4s
 WYWFddgcOpEBwGbXLF71WExMKCgY+mOfSOpeozhUTOWCMV8y+uE4U2O1rnDSa+oHvG
 LIzJVsrejlOYQFvW4u31p/rSDKJa9NMjmAPjb++4=
Date: Tue, 26 May 2020 10:19:17 +0100
From: Mark Brown <broonie@kernel.org>
To: "dillon.minfei@gmail.com" <dillon.minfei@gmail.com>,
 linus.walleij@linaro.org
In-Reply-To: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
Subject: Re: [PATCH v5 0/8] Enable ili9341 and l3gd20 on stm32f429-disco
Message-Id: <159048475756.7363.2129939912077382888.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_021920_539951_4F7D0083 
X-CRM114-Status: GOOD (  10.60  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-spi@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 11:45:40 +0800, dillon.minfei@gmail.com wrote:
> V5's update based on Mark Brown's suggestion, use 'SPI_MASTER_MUST_RX'
> for SPI_SIMPLEX_RX mode on stm32 spi controller.
> 
> V5:
> 1 instead of add send dummy data out under SIMPLEX_RX mode,
>    add flags 'SPI_CONTROLLER_MUST_TX' for stm32 spi driver
> 2 bypass 'SPI_CONTROLLER_MUST_TX' and 'SPI_CONTROLLER_MUST_RX' under
> 'SPI_3WIRE' mode
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/2] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX' support for stm32f4
      commit: 61367d0b8f5edf5146059ba8b79ce4e4485340b2
[2/2] spi: flags 'SPI_CONTROLLER_MUST_RX' and 'SPI_CONTROLLER_MUST_TX' can't be coexit with 'SPI_3WIRE' mode
      commit: aee67fe879e5030a2f5e1d9af3cb5b2a1027e78a

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
