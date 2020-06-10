Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B961F52CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klXzP3D+/EiNxhlasz89+04iv+Asg2vn49rKT8E1vPo=; b=oT6D8mjcJFprmG
	PhJuNG+QWhBw1jfFUQ9QRPriqTIe4NbvKfj8fL8XrfqycSHxiP+hflIl81b3qJdXTpVcDz7t/CS2f
	VU9S5twrR8KiW+dCgTzHdLFpWXhjK6CxvJ8mzmFu9Z4rPVw1xb86OKUlQgjlbV1P/ii+FY4loeyaW
	oQJg3aozBsDxxIqJPhrDmNx575KwYAU3pJiI/QfPotO7C4n3urxQ/CXtzw7XQ74yVAEHTv18kY86c
	Lq0yH1UjV1VRVL+UsaFL4yVZ09JwT9qSCM6ahPM7/fLZ0KBoBTsXLv0c0mBakrOs6QN5Cjbbiqgxq
	1zxzarvQFaaPJAkn2Tpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiyWt-00058j-BE; Wed, 10 Jun 2020 11:04:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiyWj-00057d-9o; Wed, 10 Jun 2020 11:04:14 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64BAE206F7;
 Wed, 10 Jun 2020 11:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591787052;
 bh=EwtPHLWn+DTApDYb5Wc2b44Mud8TrcUb4fGhHcUssCc=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=Stx5Mtk7wXj/6v9y+VYR0hIeysL7z0Xm0ksuymP6/KNReeyO/IyDflz4JyCXnCNmA
 MNvXMTbqyLORwrk10rPcOxic1lbg5IagY/hnybzjtAJ8RQE+TlLBiwrxEkazpuGsM+
 +rgpGghPHNRyMyn6ID9NaGOwUFBBYz+9qwT1JzfQ=
Date: Wed, 10 Jun 2020 12:04:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Kevin Hilman <khilman@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Alexander Stein <alexander.stein@mailbox.org>
In-Reply-To: <20200609165527.55183-1-alexander.stein@mailbox.org>
References: <20200609165527.55183-1-alexander.stein@mailbox.org>
Subject: Re: [PATCH 1/1] spi: dt-bindings: amlogic,
 meson-gx-spicc: Fix schema for meson-g12a
Message-Id: <159178705075.52654.15102712059659144852.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_040413_355955_711BCEAD 
X-CRM114-Status: UNSURE (   8.03  )
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
Cc: devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jun 2020 18:55:27 +0200, Alexander Stein wrote:
> 


Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: dt-bindings: amlogic, meson-gx-spicc: Fix schema for meson-g12a
      commit: a575357b6435c6dd988b8194c59eec83f6e5d5af

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
