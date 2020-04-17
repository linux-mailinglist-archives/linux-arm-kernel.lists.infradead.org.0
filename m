Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29801ADE31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 15:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wa8KWYNb/aHehqVAw7BVo0YIfTRrXIbAjbQH2ZCwbwI=; b=OhGt493CsxhHKf
	D6hNONtsu1Zhdtz0eOC6LfD2FCl7610rk8O9XSow50htQJiFOu7WTcZQawt4bOBBPMGPCgGJm+BGU
	JzMqryr1/u5IotB31OBbKMUc3Ef68suVd6Ov640G1/UaE6EelhnyAXvSiDLoke5HWE6Sb0peu2dpr
	2PbfzU3oTu6uaiS0JTQLk/vSP5LepJK8YPUzvBabtdsneNEFEdhipk35tHU9H71W41nr6OLIdrEwy
	e35sEa/V61wTMUtipMAuGAA3EERvCpwPIohKKgWCPF28f1U+Obqa+taY1eQNUxlhSEeH/hDXkIV7D
	0EmvlVst2N+C4ZqO2mDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQww-0004la-UB; Fri, 17 Apr 2020 13:22:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQwp-0004kr-47
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 13:22:24 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F231E20724;
 Fri, 17 Apr 2020 13:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587129742;
 bh=ApBjG0GzABKPlb6hTloJ5iIZRTvdSJEPOLZX/3D9xdE=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=aybB42pK1v8St7Ynd0lCznycB8uo8tw9o7vLKnthk6G+Nir90qAFjZiUGikUjSWaY
 Pjqeqk48sBzHh5XJN0uOkSvEj6N9muanljwWT9YOzpKd36mnD8UL1sDd6jV+ulGi3O
 7wN2ZI6jQwpvnhu6QzeM0YJ1TtfcbAPWIC3Sy1EY=
Date: Fri, 17 Apr 2020 14:22:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>
In-Reply-To: <20200417121241.6473-1-patrice.chotard@st.com>
References: <20200417121241.6473-1-patrice.chotard@st.com>
Subject: Re: spi: stm32-qspi: Add pm_runtime support
Message-Id: <158712973998.35869.11870096143660307572.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_062223_182556_8238830F 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 14:12:41 +0200, patrice.chotard@st.com wrote:
> From: Patrice Chotard <patrice.chotard@st.com>
> 
> By default, STM32_AUTOSUSPEND_DELAY is set to -1 which has for
> effect to prevent runtime suspends.
> Runtime suspends can be activated by setting autosuspend_delay_ms using
> sysfs entry :
> echo {delay_in_ms} > /sys/devices/platform/soc/58003000.spi/power/autosusp
> end_delay_ms)
> 
> [...]

Applied, thanks!

[1/1] spi: stm32-qspi: Add pm_runtime support
      commit: 9d282c17b023a97516a63255ce7f7ee65c39bec1

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
