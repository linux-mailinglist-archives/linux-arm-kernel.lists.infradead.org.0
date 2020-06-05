Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773301EF647
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzYmleRBl0L84kOSkKBe+J+cUgXhsgL0iIo11G5oTnU=; b=Ikl9F5gTEL1bsh
	Hi+noNwWIqXCNEkWY1vds570QMhjYVYmpP3J1QSHYtZOSPCgqaUO01/ZWkFuin5tLmrfP71Zx/4wR
	qrFwz3JzSKAyknCEhN9YIq0wxjC0sOdv88RL2kSCAAo2w86xidv2TKNjoU4QHX+AOX5N18sB35xuc
	7OvdO1UkWA6wgfph1qYxyq8AD73xG7DKcSssrCx5jx6Rj6Z7FG9SeA5VxXsOPnloqTzCyclKpWF/d
	VDFRlQSjGV+dMCG+gswv8lRlY9NKlIQZxd0/5IDJjHNduRaI+gxV9zP2xPVa4X1HO3TM/MQb3k5Q1
	srWRr6lrpAWpeZwe1CvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhAIg-0002mc-Gu; Fri, 05 Jun 2020 11:14:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhAIZ-0002lm-EZ; Fri, 05 Jun 2020 11:14:08 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CA18206DC;
 Fri,  5 Jun 2020 11:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591355646;
 bh=FhAb3NUX5XtgX3SNWFKeMQklpim0Rc+VQXAf3n11B48=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=RsNurQNAk+Ygtpn2S+ix+bGTrsx7FD9Wjhd1QTeKJ93xOpk85sjG8ut2NJ8JJwG8A
 qEumIvaXxE7pxU/vLtRjt0oV2BIvt3iMH2r6gFpPePJM9YWmvv/Hzbc616507Yz4rS
 ZlJS5qtQfer0Js4I41SxPRLdulUbbdzq3QDdtn5I=
Date: Fri, 05 Jun 2020 12:14:04 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20200604212819.715-1-f.fainelli@gmail.com>
References: <20200604212819.715-1-f.fainelli@gmail.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-Id: <159135564425.14579.13716287498736798458.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_041407_506642_E7CD6A8B 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jun 2020 14:28:19 -0700, Florian Fainelli wrote:
> The 4 SPI controller instances added in BCM2711 and BCM7211 SoCs (SPI3,
> SPI4, SPI5 and SPI6) share the same interrupt line with SPI0.
> 
> For the BCM2835 case which is deemed performance critical, we would like
> to continue using an interrupt handler which does not have the extra
> comparison on BCM2835_SPI_CS_INTR.
> 
> [...]

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
