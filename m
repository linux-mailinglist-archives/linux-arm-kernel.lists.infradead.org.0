Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307591BE3C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqZOEbMsKQatJGu9yMLHCFUtSZcnR1FzLvT3+fYonrk=; b=VvWkbL0PPlEiHf
	O/Bts8Y7uDI+6f3HjxwibCndEhsWh/cbPH45ZzXqZqsTjY1j54w9ATIUAyzo8ycfHxzHYGw1MxoGl
	v7AE/PFtVmRJQi0a+SHyAF9064Ew1UhSJkwg0BGTCqhnl2dVObnvwIBJqmGNdYaXGg5uCvwkn+BV0
	oBXQkCGnOSQahKtFWXqrNVGM77rbmsmPs2A1wytFLnZxKTtcI1hTy+bbYgvyLa86lgbP3WIFAnYxC
	afEqdA+ZmQ00HWMsAwHDD97Kck9D5PRwHywvNib8dmLVN0zQIhFilq2t+A/TwkeVKf9dBE2ISH0FX
	tVwSlhj3ZAYmVlzw7y2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpXr-0005lm-MZ; Wed, 29 Apr 2020 16:26:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpXV-0005b8-4l
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:26:26 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 699DD208E0;
 Wed, 29 Apr 2020 16:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588177581;
 bh=ZxG00pU6mh+bsa3od1jPgbNbeOCwD7dTA7vu7VZxcds=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=BIiFzqNu5iPwGOBNXDpDBcob5SyW973d/kLZVuKjlbT/FfPFk7AhvVXaBtHd+IN8z
 zz7sXxBd9dC76ogdj2LICsR6t/mZV0bwK2HV0fANXCvrZndi8LhmxVlsGP96t1V/7Y
 M078OF279W+7Cls7Q7UdZiNdmngc2M/DYut3PoFg=
Date: Wed, 29 Apr 2020 17:26:18 +0100
From: Mark Brown <broonie@kernel.org>
To: tiwai@suse.com, s.hauer@pengutronix.de, lgirdwood@gmail.com,
 shawnguo@kernel.org, perex@perex.cz, Tang Bin <tangbin@cmss.chinamobile.com>
In-Reply-To: <20200429093823.1372-1-tangbin@cmss.chinamobile.com>
References: <20200429093823.1372-1-tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] ASoC: mxs-saif: Fix unused assignment
Message-Id: <158817756638.27768.4592113861894397863.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092625_257931_50680C2B 
X-CRM114-Status: GOOD (  11.93  )
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Zhang Shengju <zhangshengju@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 17:38:23 +0800, Tang Bin wrote:
> Delete unused initialized value, because 'ret' will be assigined
> by the function of_alias_get_id().
> 
> Signed-off-by: Zhang Shengju <zhangshengju@cmss.chinamobile.com>
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
>  sound/soc/mxs/mxs-saif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.8

Thanks!

[1/1] ASoC: mxs-saif: Fix unused assignment
      commit: da33574f7f1c110ec58ea43251a9a85801d6e015

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
