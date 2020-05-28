Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D361E61BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6of9d3rtartgZCUjjwzYwlztWAk71M2RdjDkslVjY4=; b=d9OibPOO+hUhpq
	MgaBMX3SovvgYA08zHrdIi7Ccnz1xI3+Bk5ganIASFQa71d8S6kH1ksEVjk+zKY8OzP36MHRNGtO0
	UbZhF4IyTuVBJxucIUqASrvqfgOqTnkTgtprwEB/eXwS/zGMvyPOC7pfNe5ednwloWBz0XJ30PFnW
	FOM/WVhmTKLfEh9mOOnuaWILLCowJzFGZTuUiUOjqYHwzo6tWKy7k+1Mcb0ZjmB+j7c556+uU/MK3
	05W2pcASlMB5/cVR2oCNUb47I43M4LG5w+3qc7N0rxeJJntQvX7YRiFD1ItBjG2fFd/ZWwW+2s3i2
	yUysehbvQRATLTEzJ0Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIGX-0007eA-QW; Thu, 28 May 2020 13:08:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIGG-0007bA-Ae
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:07:53 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF1D9206C3;
 Thu, 28 May 2020 13:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590671271;
 bh=8+bOiBn4UNeBdFBuZD/p0QmjYGJU/3XrtqwKS+6zzpg=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=CxtiDCqlNaippwrhA4i2xZr+ffnMK/syNCND6rSfmhvdLl4OLl9mmx8kY7nE93W5s
 gFCpgBwgHAgBjfUey3uaWcHyjuyeCGvqSx2H/MhxcrhYkn1Wf2fxmp3Rlt1Jb7TWmj
 G/Q1OSL6UUWc8xQBW6jE+loSktf5coi1ahy7ch48=
Date: Thu, 28 May 2020 14:07:47 +0100
From: Mark Brown <broonie@kernel.org>
To: catalin.marinas@arm.com, vkoul@kernel.org, mark.rutland@arm.com,
 will.deacon@arm.com, s.hauer@pengutronix.de, festevam@gmail.com,
 dan.j.williams@intel.com, Robin Gong <yibin.gong@nxp.com>, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, martin.fuzzey@flowbird.group,
 robh+dt@kernel.org
In-Reply-To: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
References: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
Subject: Re: [PATCH v8 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Message-Id: <159067126729.55053.2503604469157949492.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_060752_382726_121357CE 
X-CRM114-Status: GOOD (  13.30  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 04:34:12 +0800, Robin Gong wrote:
> There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
> transfer to be send twice in DMA mode. Please get more information from:
> https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf. The workaround is adding
> new sdma ram script which works in XCH  mode as PIO inside sdma instead
> of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0. The issue should be
> exist on all legacy i.mx6/7 soc family before i.mx6ul.
> NXP fix this design issue from i.mx6ul, so newer chips including i.mx6ul/
> 6ull/6sll do not need this workaroud anymore. All other i.mx6/7/8 chips
> still need this workaroud. This patch set add new 'fsl,imx6ul-ecspi'
> for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need errata
> or not.
> The first two reverted patches should be the same issue, though, it
> seems 'fixed' by changing to other shp script. Hope Sean or Sascha could
> have the chance to test this patch set if could fix their issues.
> Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not work
> on i.mx8mm because the event id is zero.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: imx: fallback to PIO if dma setup failure
      commit: bcd8e7761ec9c128b9102b0833d9c7052ae2dbcf

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
