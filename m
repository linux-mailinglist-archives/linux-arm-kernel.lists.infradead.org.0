Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFBC1BE5A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEyUAmHsr0Cd8beLqf+9Hfz5O13ZcID+BftYvCV9oNk=; b=ozU++V2oy3bgaH
	Q2kjBqKeoFLgb5HzZ/6HgPtTRGhpP0HpEwMYjj4A/F1syE9ArNoUEuZKkTjY21FGKifWI9J3q9r/O
	D7XOXwOEp/TupV53kJLrWHIgAhRIO4E3jGQZFa/SmF0yNLSLd37VsUG+9B/3IAaeSP0kBc2RoB+8c
	J7yrIqYok/9+plDyEFQjt1Z/hmmfA0tzJfvSd+5B6EKA/uJXqtepo3WNLbvBJWHfSKtqU8m9wjOXN
	FsKpPzhCgcKGdvD/g5tpGKAXAJ36+Lb6h/6nqVuadiG9vjBY9RApnE5Cwyd9W9IyXd+Y4QhxlG/Pl
	Cc1poul581ktoyVorXeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTqt4-0006Yf-AW; Wed, 29 Apr 2020 17:52:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqss-0006Wy-S7
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 17:52:36 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06721214AF;
 Wed, 29 Apr 2020 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588182754;
 bh=bV5BXMWOppA1Ct35TVp4vONDvDN+O7QcIfgw3X1rATk=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=kUGN5hkdr9eBoiMGBaa6oiSMq5IACOH2MfpxYubC/sPULEAeacfYtwT6z2CJBmrYr
 V3Nzhxa93eJ4Rmo0aMfJlNhvjmc/heEC0+rRwCTUazSxgZ0s8oebWy6MHuL9xepowx
 izAJ+XgRXJPWRnYmGkXQnAeeMHFe8STIPJ5mFLzg=
Date: Wed, 29 Apr 2020 18:52:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
In-Reply-To: <20200429075855.104487-1-weiyongjun1@huawei.com>
References: <20200429075855.104487-1-weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] spi: uniphier: fix error return code in
 uniphier_spi_probe()
Message-Id: <158818274449.17408.17250948289514421453.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_105234_926874_22C72C9C 
X-CRM114-Status: GOOD (  13.21  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 07:58:55 +0000, Wei Yongjun wrote:
> Fix to return negative error code -EPROBE_DEFER from the DMA probe defer
> error handling case instead of 0, as done elsewhere in this function.
> 
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/spi/spi-uniphier.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8

Thanks!

[1/1] spi: uniphier: fix error return code in uniphier_spi_probe()
      commit: 18168291aa7dd48e9d9e3cbb1d4cd06e899357ca

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
