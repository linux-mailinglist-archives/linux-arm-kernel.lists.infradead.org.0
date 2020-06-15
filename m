Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3FE1FA485
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 01:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DK3/M2iqoLHWKbeKCVS53BN6L0c2LVECdN2uYAolSA=; b=Ui4OWImULHcWQT
	wrB5u9huTK5/MZbkceJ+bR2dA/hJ7/0OKVveiXPJgY299RpdnkvV4EKlhtTBn+DR8sBDdF1Jb99zA
	shQyCzw3TvoPmDZahZi8DCpZ4p+ZQjHV0h2v2uPfKEgIY8Mjt8JROLheTN0viqoRHg6YGWk0hSiUJ
	e76aL8FZEdpSZmn7AbYR/r8OOKV08hqS9WYLxTQBNvEm2CcCihu0F0VmrdH3u3GtYJSyA7z0Nd/L6
	Kd11nR5PwZWT+xoXRsXdzTYRZ+qPuD6ciFBCaK11eYAEQ97B72r0O3zTYaL09Wp5SwnbT5uZJwsNo
	pbui2gf8WIwrw25dSDGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkyix-0000hR-4C; Mon, 15 Jun 2020 23:41:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkyim-0000h1-NX; Mon, 15 Jun 2020 23:40:58 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3B46208C7;
 Mon, 15 Jun 2020 23:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592264456;
 bh=wmMrTJlDcXeeLr5UjbU5+uAWskHZyXjosJMgpE4Z/Ys=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=FMytGS/l9Q7rfRAWWuUJCjK4MdsYQ2tN5IbvduDrZtNhidlx8yhZFOPzGNUGHL5GW
 v9X3c71oALhFIQgqNdVKcPZ89EWHihH25poCzcxKLBrGUYKbqvAn3F1mFvdoO5iYbY
 0icsalBe+CJcIfNBdvnAOTaxIYIvjfkZiwZSGleI=
Date: Tue, 16 Jun 2020 00:40:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>, lgirdwood@gmail.com,
 matthias.bgg@gmail.com, tiwai@suse.com, hariprasad.kelam@gmail.com
In-Reply-To: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
Subject: Re: [PATCH v2 0/2] ASoC: mediatek: mt6358: support DMIC one-wire mode
Message-Id: <159226439189.27409.5559737025420657238.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_164056_785895_BD93B35D 
X-CRM114-Status: UNSURE (   9.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, howie.huang@mediatek.com,
 linux-kernel@vger.kernel.org, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 5 Jun 2020 18:33:40 +0800, Jiaxin Yu wrote:
> v2 changes:
> 	1. Uses a DT property to select DMIC mode instead of a mixer control.
> 
> v1 changes:
> 	1. Uses a mixer control to select DMIC mode.
> 	2. patchwork list:
> 		https://patchwork.kernel.org/patch/11578309
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: mediatek: mt6358: support DMIC one-wire mode
      commit: c46fc800948c2d0afb548ca12453b837aa1ac880
[2/2] ASoC: dt-bindings: mediatek: mt6358: add dmic-mode property
      commit: 6323f13b4d927f52f339f7122676de0b0d1da3c3

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
