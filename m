Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7D61E849A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JI9EoNq1whxwvc4eMJgi3KOQNp0/sq3TWJHY1ttLJB8=; b=HJ5ayPxCJTMiDH
	bDKK0/bqnZD6/Aeva63xRn5u3C7caSunTs6ZJddNJ2Ya4TQJzgdHzl8BI0aT+DxBcwe+uhT0zIuHF
	LCQ1CW0M3F9oUKdHfpiHbvv5Sgn/9MZ/eFfdwm/SF11hWZnFh6A17a0BjTXnlN8aGMkwKowACJfI8
	MEI4cuvOVWZm8+41i4WKSAQsfDEz467krmxDPa1Org0Ch+Dq1U23TzX92x7v3FsAkryHp92LlJQUZ
	LK7cMdzU/nsZl6t7yv1WN3ki/aTh03iqfIpK/5xL0707aTCoJ3O3RHO9t+1Rxe8fDOyBKmbWK9rv+
	vJKLFEpAwX7JoTuMqQyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeifE-0008Lc-Dl; Fri, 29 May 2020 17:19:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeien-000874-Or; Fri, 29 May 2020 17:18:59 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0FA420897;
 Fri, 29 May 2020 17:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590772737;
 bh=5AnoZIQt/nUngVMipM9Z3V3UapCgO2srd+PigzQFs3Y=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=OhJ+mVVaKP2Dl1XjqU+DoGalrBE9hn5wEeNejkhRZA5ZekruQZcuIfpeU5f2aUE+G
 a6XQuHzTos903BkVK35wpK0T+HnHSC0V6cwE2jqrvM5InXkrQYrOau6Pb9CV5Cqgmn
 Ejsn76KQEKsB0k9FQVw1Wk34d2B1ENh/TGzWL67o=
Date: Fri, 29 May 2020 18:18:54 +0100
From: Mark Brown <broonie@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Scott Branden <sbranden@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20200528185805.28991-1-nsaenzjulienne@suse.de>
References: <20200528185805.28991-1-nsaenzjulienne@suse.de>
Subject: Re: [PATCH] spi: bcm2835: Enable shared interrupt support
Message-Id: <159077271265.17043.9288577188746299196.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_101857_831161_4F60BF24 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Sperl <kernel@martin.sperl.org>, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 20:58:04 +0200, Nicolas Saenz Julienne wrote:
> bcm2711, Rasberry Pi 4's SoC, shares one interrupt for multiple
> instances of the bcm2835 SPI controller. So this enables shared
> interrupt support for them.
> 
> The early bail out in the interrupt routine avoids messing with buffers
> of transfers being done by other means. Otherwise, the driver can handle
> receiving interrupts asserted by other controllers during an IRQ based
> transfer.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: bcm2835: Enable shared interrupt support
      commit: ecfbd3cf3b8bb73ac6a80ddf430b5912fd4402a6

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
