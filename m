Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25161CE18D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 19:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pM6NZhaZysN7mGdjgNPWuw7tBOl0NsOHrOd8SgFUX20=; b=nFu6z5Z29qAv5X
	dEDJeCnb9SJK0LTSj7FuYEzsKTUmaxOTPfm8uVys+EBdpkwPY5PZjGkSD467GgPQ6KtKneGHEwdGO
	dx/ZFBS9H8tKSH7U6I2CpNC/qYoHLTwf2t0Xy6bcz8XudS3IiULtkekTtQkmof2QTa4mfwwGVz8fD
	3t3kxz+p0K5IKU6ELmL6KJzrD1O1rNJSbZ05lkydZw2KOI3sV5GVVY3XHPpNUgzDhilTO68X8Tu2s
	0kzRCLiCZiPTKQ0Cxm2Lt82PW2tcLMPG4ItJ6ie1v/dhxDNApbiTWm2yUGeT+nDBuJwFMruLztMjZ
	3Hf7MxqsWlxr8e+xsP5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYC7o-0007F6-Ns; Mon, 11 May 2020 17:21:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYC7h-0007Ef-Kl
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 17:21:50 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6451E20746;
 Mon, 11 May 2020 17:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589217708;
 bh=uLiY26Fl0HsdaY+0df8HTe/ulHJxBjmHpFvc/MQdxKo=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=D85ROROMtcdx6iqvyEY3chT8cRwx2acwED/ck89w9onUCiajphvGfrEaUuGOYC7ja
 87qbsFodx/iGjXkelEMrwc0r+VX06FWesqsnMaF3dFTzFq/o4+v3KNJpaghu4zqI+8
 kuSN6VvDWwH8O69xThbxxzSEvUhRK73ymiQ183F0=
Date: Mon, 11 May 2020 18:21:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
In-Reply-To: <1589185530-28170-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1589185530-28170-1-git-send-email-hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 1/2] spi: uniphier: Depend on HAS_IOMEM
Message-Id: <158921769452.22432.4067237223059688972.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_102149_701267_04102486 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 17:25:29 +0900, Kunihiko Hayashi wrote:
> The driver uses devm_ioremap_resource() which is only available when
> CONFIG_HAS_IOMEM is set, so the driver depends on this option.

Applied to

   local tree spi/for-5.7

Thanks!

[1/2] spi: uniphier: Depend on HAS_IOMEM
      (no commit info)
[2/2] spi: uniphier: Use devm_platform_get_and_ioremap_resource() to simplify code
      (no commit info)

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
