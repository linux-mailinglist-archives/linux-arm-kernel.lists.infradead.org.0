Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0B11BE5AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9MfCupUMrwci98HIhmUbMh6bq5qpzKFCXdOVcnTUxk=; b=hC2q03aIA2kV9L
	jTsrNVhFIAyHPpHmwWTlYfWGwFX5yOGel1z9AkGRF9rV3VPiBoUjyOBWjei3mFDXP517K3kCe25WW
	QqpWVMdNEpiF6EWuDcA9RFFGJDBsCajnMXC79iUdQU0HcguIX1F0ULG5078bPnVNUY8s2/74aWN5d
	4inP38N0oKdW0mqmixEzoME8J8ZRodhyEf8ehpIZp5yc4SrxLuW7f/NohvQgOPWh1kfMscxr3sW6F
	SBkYHbKKNBuP7khbjx46cUbWuhwmPVv4tAii4QWZ++WIjhuuti7VTyEtwxB3HuASIvCPmqu0Y9c6c
	UVz4pyt6FdeQ+Y2JCeOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTqtM-0006hx-EO; Wed, 29 Apr 2020 17:53:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqsz-0006as-DB
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 17:52:42 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01343214AF;
 Wed, 29 Apr 2020 17:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588182760;
 bh=ES/AC49kG70DIeBoUFCj6k0/eXWr5dZhz6D6I3bt4SM=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=wRyAaHr5GrGTXM5UgLJZIGl01uLgXsmF67jImQIB4jOhTJmsonSizjobNcp41Ubsc
 M/j/qsxZVe1RjDctWECoOEuEOm32HimXfyI/9cd6udD2f98MTRrMpZ97ss7wc2u8JY
 zkjYThF72UP0xDNodhG0kqbJzuo7JIsBeXaezpLM=
Date: Wed, 29 Apr 2020 18:52:38 +0100
From: Mark Brown <broonie@kernel.org>
To: "patrice.chotard@st.com" <patrice.chotard@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
In-Reply-To: <20200429102625.25974-1-patrice.chotard@st.com>
References: <20200429102625.25974-1-patrice.chotard@st.com>
Subject: Re: spi: stm32-qspi: Fix unbalanced pm_runtime_enable issue
Message-Id: <158818274449.17408.18085895262432291085.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_105241_503248_2780908F 
X-CRM114-Status: UNSURE (   9.57  )
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
Cc: mcoquelin.stm32@gmail.com, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 12:26:25 +0200, patrice.chotard@st.com wrote:
> From: Patrice Chotard <patrice.chotard@st.com>
> 
> Issue detected by unbinding/binding the stm32 qspi driver as following:
> 
> root@stm32mp2:~# echo 40430000.spi > /sys/bus/platform/drivers/stm32-qspi/404300
> 00.spi/driver/unbind
> root@stm32mp2:~# echo 40430000.spi > /sys/bus/platform/drivers/stm32-qspi/bind
> [  969.864021] stm32-qspi 40430000.spi: Unbalanced pm_runtime_enable!
> [  970.225161] spi-nor spi0.0: mx66u51235f (65536 Kbytes)
> [  970.935721] spi-nor spi0.1: mx66u51235f (65536 Kbytes)
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8

Thanks!

[1/1] spi: stm32-qspi: Fix unbalanced pm_runtime_enable issue
      commit: be6ef160840f23d9723d9bd008ca08e864ce4745

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
