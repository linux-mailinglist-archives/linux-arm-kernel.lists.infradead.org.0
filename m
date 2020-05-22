Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EC71DEF9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 21:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HU9kL1OJlxw+cxU386hQ84apDV4IknLFuIcSOzqfzG0=; b=V61XHWu15Pfq9s
	kxiVrqhCDoLZhE5jJFqwIunFIJ+39OCvWZSpV5CcjEJ2LBKv1Y8B+18WYNOakHFmFjxZ/Vno2cQMk
	t1OM9pbp/eTFHexpHJi8qrYxJgEHeDoyYJ2XGX+3OTrGR8nw8ER7zGT7yau4b7w9rt/UotLpnE/qm
	ENl+G7dBpswtJqZFKNcr4h+bBTFMWmVVqqNVa9BNYnTKxTQYPYtXDAH66cQRirfPEX4LeeeQajTZn
	ckjEq+Du0bX7x4Wd1hJmgjw55mjBTFLEu4r0TotF1mtD+nqd9eKb8OCxCOrumKb5b2XuvFYbdJRh0
	R8tXhKe3qkptsRlyaDxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCuc-0004s4-M4; Fri, 22 May 2020 19:00:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCuP-0004pW-KP
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 19:00:44 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 661F32070A;
 Fri, 22 May 2020 19:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590174041;
 bh=cZksGg1oeYNuGZ1ChsW09N1isYUNMgsbYUB9aXYGbBc=;
 h=Date:From:List-Id:To:Cc:In-Reply-To:References:Subject:From;
 b=2KgpT1akwW1t15sCSCOFuWDlpc8/796efM9j7xc69wnypaV7uSN+DwZ+t1bRKiABi
 Yhj3h/fcV5W6MLUMCGDMazcgsW74HKk4unGiSQbBsZFFZtuMl1mIvkujnhMsT+2AmN
 kArnXHIAlLuGEYnOkTFsZ9QlMMi/1qh4OOwsyEg0=
Date: Fri, 22 May 2020 20:00:38 +0100
From: Mark Brown <broonie@kernel.org>
To: soc@kernel.org, Daniel Mack <daniel@zonque.org>,
 Jaroslav Kysela <perex@perex.cz>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Haojian Zhuang <haojian.zhuang@gmail.com>
In-Reply-To: <20200521185140.27276-1-robert.jarzmik@free.fr>
References: <20200521185140.27276-1-robert.jarzmik@free.fr>
Subject: Re: [PATCH v3 1/3] ARM: pxa: remove Compulab pxa2xx boards
Message-Id: <159017403821.20813.3053695214331756106.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_120041_697530_533E154B 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@kernel.org>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 20:51:37 +0200, Robert Jarzmik wrote:
> As these boards have no more users nor testers, and patching them has
> become a burden, be that because of the PCI part or the MTD NAND
> support, let's remove them.
> 
> The cm-x300 will for now remain and represent Compulab boards at its
> best in the PXA department.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: pxa: remove Compulab pxa2xx boards
      commit: 168aac9de09551bb0ac9bd3b7a311cd681894fc3

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
