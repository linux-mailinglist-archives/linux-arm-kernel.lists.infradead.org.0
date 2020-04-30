Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AC61BFDE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5CfopJ8X5KKdAffdGVGu1kctNF4ruxu1i6dF7pP7pI=; b=Tu4V9e2XZ7qzxw
	XphD0Mi/LVs4k1IJO2DBzSGszgSPoMYqalKLACgkK4NCdb5iO9Z+9Unwcb5o2KFX2I8uvoSoAXs5W
	jIwsvq4/HW8qFahSwkA8vf5jjOrdPUzjzrt3zNKYdu2Es+KF9j86o3okW9qJZTrRUlwwEBQ8+jPQb
	8oIJpg0Jt3TKTdeYr0K/exh28KpBaZnQDnahMUdczXWyDw0NnxJ0sptQHLOv39m6WJh+vicm1Uv3r
	O24BG/B3tYQvhJc49+Omwt/QPba1nDSmhKrN5oi1zlc+R8wlU42hrDmwvpCvDlJVvl0ici3rGY6Ub
	Er3tkozF5nI90LKpuW7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUA5v-0004DI-QV; Thu, 30 Apr 2020 14:23:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUA5n-0004Ce-83
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:23:12 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A289206D9;
 Thu, 30 Apr 2020 14:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588256590;
 bh=1HClZEGzBCelyiF4UCiysAh2V+7CymCp62XvWZhTejI=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=gedCp9tmqY8eh7DVTv182Mud5AMXOiuPAW8Yo6T1q3Y5+WRDBu6B9FdBZDuelhaWP
 asHr4ZM5RPtdZFDgDTZNRgo0gpf1idsZzfHbO0w159eSWZj78wWU3gmWNMR0hk8jkJ
 A7VJm9RD2RkCR4KOC1LcL3lbIhxLfYu59uCBLEEY=
Date: Thu, 30 Apr 2020 15:23:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Evan Green <evgreen@chromium.org>
In-Reply-To: <20200427163238.1.Ib1faaabe236e37ea73be9b8dcc6aa034cb3c8804@changeid>
References: <20200427163238.1.Ib1faaabe236e37ea73be9b8dcc6aa034cb3c8804@changeid>
Subject: Re: [PATCH] spi: pxa2xx: Apply CS clk quirk to BXT
Message-Id: <158825658830.42351.13459280823066625982.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_072311_310864_91005253 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shobhit Srivastava <shobhit.srivastava@intel.com>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 16:32:48 -0700, Evan Green wrote:
> With a couple allies at Intel, and much badgering, I got confirmation
> from Intel that at least BXT suffers from the same SPI chip-select
> issue as Cannonlake (and beyond). The issue being that after going
> through runtime suspend/resume, toggling the chip-select line without
> also sending data does nothing.
> 
> Add the quirk to BXT to briefly toggle dynamic clock gating off and
> on, forcing the fabric to wake up enough to notice the CS register
> change.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8

Thanks!

[1/1] spi: pxa2xx: Apply CS clk quirk to BXT
      commit: 6eefaee4f2d366a389da0eb95e524ba82bf358c4

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
