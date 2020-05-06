Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1BE1C736A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JIelrWDJoZntF6iizeJqfZtbkT8uzl04RCHfNrr6bA=; b=njf9f6cjJ/CVCN
	3PM1K3qEE3srkTsPAb1cASNCKLZ8VF6imKCX7LcvGb40V6abPyabbIsRXHXuULmjK0Hp9FBo4UGVL
	wfnUFMdip0ATj673HSW3MgWuzciVla3TRZGU+lWD4LnHV0RUxWHupszqLKpiv8NCPkSyTAYSsAcg2
	ZOx7pD/pRRFbL1w89HoF6dK9xfL2Ypiq2fIDhDHqk3L0XOEESnbb0hlZflEbbRNKCqzt4Z2GE+mZ6
	K7c8ZOAPMWzt+UfqG97uS181i+jguBf99DTZfU9YBH1xlRGeldEzubPdbqfGq3gnVLhw87iccsfcC
	WeE6BIw1Gj4kLEIoUQ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLST-0004US-9Z; Wed, 06 May 2020 14:55:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLSM-0004Tj-8X; Wed, 06 May 2020 14:55:31 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5092B20936;
 Wed,  6 May 2020 14:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588776929;
 bh=7qSC3unUadnWLT0T0vGXVNh94unqRwu+xgvlnuuF6u8=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=dBRpbNrT2j5gbwU5a3t9S+DDLfalw8ZW37dN2ZwmkpSrew4oOwpy9R8Gc5HyDPhgf
 a5z44ZpXJuCAHUy2Jt8T55HFUGA0OzSY2kDbgIwXU1M4aPiDHh1jV773Mr/dPoBBY3
 r8X2RBShfrJI8/2o6tA1mgLmbHBqXMxD684WhbKs=
Date: Wed, 06 May 2020 15:55:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Wei Yongjun <weiyongjun1@huawei.com>, Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20200506125607.90952-1-weiyongjun1@huawei.com>
References: <20200506125607.90952-1-weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] spi: bcm2835: Fix error return code in
 bcm2835_dma_init()
Message-Id: <158877692139.14713.15107842057895225626.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_075530_320582_8FF6E15D 
X-CRM114-Status: GOOD (  13.70  )
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
Cc: kernel-janitors@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 12:56:07 +0000, Wei Yongjun wrote:
> Fix to return negative error code -ENOMEM from the dma mapping error
> handling case instead of 0, as done elsewhere in this function.
> 
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/spi/spi-bcm2835.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8

Thanks!

[1/1] spi: bcm2835: Fix error return code in bcm2835_dma_init()
      commit: dd4441ab1fa1e2787a5f218f92d8ead1aa5ce6b5

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
