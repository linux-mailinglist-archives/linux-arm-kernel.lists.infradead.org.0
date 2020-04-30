Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFB71BFDE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWKvLcad7K19B9kNLadlZov8ut/lwQf1E2NFauFzVdw=; b=dstr1A2doSpwtk
	x/lj7byfo3Kwc0OSsTocPwj5f3vLW1xJn9zm7LuNNAhNH9BR+IFMvOs3PGqGTuVRN70ftt50V13lc
	DlH+qG0pjBmTJT9RoFKqHaX2+CWauDe48Yok3W8PHaDDxQSbZYR5Phxzfzq+9Zsac+McXw0mC2/7h
	bt0Y5RKs3twJ+oQoa9GQeREcg89SSrQEzaT6FumcLsIAKDYk3lLNHfXDc+kii8O8hNivSwBGYg2iL
	qWxp41/n6fTRTm4kBwm3UDVa7zdZeCs10LI1seAKXZABFt128FYPQIF1+4URyno6GpJdz0vri+rAq
	dn3m9d5V7dwDnfxOpbKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUA6E-0004PW-0A; Thu, 30 Apr 2020 14:23:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUA5t-0004Hi-Sz
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:23:19 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D06420873;
 Thu, 30 Apr 2020 14:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588256596;
 bh=wa4iZmsNsnV9kwtN/cSv2L1Cq1T8JX5xTxnk/b/mVoM=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=THlHc2EhnHkvU/Xnqbs1Updhh5+0dJ2BAttkePnBKEUtGvq0xsju13+L4V/Gd1IMl
 7doZ+Mp0xvsEQs1qa2SFWf3qVR7GafibX9at0gFOsoYAcHJ585C8CXxmT5pq5F8KFT
 iTUqwW09fdugh7yZ6RHzzqYCAcFzX7umgvkauUCs=
Date: Thu, 30 Apr 2020 15:23:14 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Jules Irenge <jbi.octave@gmail.com>
In-Reply-To: <20200429225723.31258-1-jbi.octave@gmail.com>
References: <0/2> <20200429225723.31258-1-jbi.octave@gmail.com>
Subject: Re: [PATCH 0/2] Lock warning cleanup
Message-Id: <158825658829.42351.8658305560393460400.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_072318_065899_0603FD70 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 23:57:21 +0100, Jules Irenge wrote:
> This patchset proposes a solution to functions that regiter context
> imbalance warnin, we add annotations to fix the warnings.
> 
> Jules Irenge (2):
>   cxgb4: Add missing annotation for service_ofldq()
>   spi: atmel: Add missing annotation for
>     atmel_spi_next_xfer_dma_submit()
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8

Thanks!

[1/2] cxgb4: Add missing annotation for service_ofldq()
      commit: d7f27df50eea54fd00c26c5dda7bc12d2541e5e4
[2/2] spi: atmel: Add missing annotation for atmel_spi_next_xfer_dma_submit()
      commit: e124e205124c7ab1d35ab19a45b9a70fe4f17d49

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
