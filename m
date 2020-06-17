Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B631FCE72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQLARtZbKNWwfHMD1Y27M60AGzfzGw+/KjyJvxStQY0=; b=PSlHeX28TD5zHi
	SG3tRcF5/nhPeCqoZVoK6PtRTJlggq8a0aJMvRMEmzRAm4aUEpvxLI6GbLeLN+EUjy0Kl8C/FPSy0
	SYG6EzdpZdfQq14pukVUnufiyQbllclszionRxKMycHTiT0TmRvYkayqlarE6hYpaaMwXvX9adAK5
	vFKHDSU0RbsMQt7p3skdxfXEG/avc06VTrag2Vi4dkab4y/BJ3rUzdUGNQ20LOwSg/m30bq7b5XMV
	vsYZmL6xKTLO0BQP1w+HI3aga6h3Gd+sLmMLdPQ2mkoodfLI094KK64AxKi+fWBdCVshRzy+zPtbo
	gQdxM+UmaZUeltk740lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlY9y-0007r3-Bv; Wed, 17 Jun 2020 13:31:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlY9p-0007qf-9z
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:31:14 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 675DF207E8;
 Wed, 17 Jun 2020 13:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592400672;
 bh=Yrztuz9ss1JEyzxZFF5ooU4M0q3ngs+arYrIpm6e7Xc=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=bIqxN4xUykm3IEHS25CVNFIBUx6gWacOpy/eCd1RTBwaOXcKUG8Iz390Y6AyhfgUV
 z0aSSPKhiphwcXVXM244AQwFq51JEKjun6NumaC962lxSrcwDRgFIue2pIK+IoWBD2
 uThNmfZkWwzugDpuyCHWE3iOIh6DObfcABjIkC4c=
Date: Wed, 17 Jun 2020 14:31:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>
In-Reply-To: <20200616113035.4514-1-patrice.chotard@st.com>
References: <20200616113035.4514-1-patrice.chotard@st.com>
Subject: Re: spi: stm32-qspi: Fix error path in case of -EPROBE_DEFER
Message-Id: <159240067072.19521.18133995970522150258.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_063113_364312_C7920B1A 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
Cc: mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 13:30:35 +0200, patrice.chotard@st.com wrote:
> In case of -EPROBE_DEFER, stm32_qspi_release() was called
> in any case which unregistered driver from pm_runtime framework
> even if it has not been registered yet to it. This leads to:
> 
> stm32-qspi 58003000.spi: can't setup spi0.0, status -13
> spi_master spi0: spi_device register error /soc/spi@58003000/mx66l51235l@0
> spi_master spi0: Failed to create SPI device for /soc/spi@58003000/mx66l51235l@0
> stm32-qspi 58003000.spi: can't setup spi0.1, status -13
> spi_master spi0: spi_device register error /soc/spi@58003000/mx66l51235l@1
> spi_master spi0: Failed to create SPI device for /soc/spi@58003000/mx66l51235l@1
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: stm32-qspi: Fix error path in case of -EPROBE_DEFER
      commit: 35700e221b18fa53401e5f315be90af9e0bbcdca

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
