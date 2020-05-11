Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98831CE199
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 19:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhmVxjz3hGft0wphiqLgamcPWH0WuweSFxsOOiIWOpU=; b=Fki4oMw8hmFgjY
	s/ZjzqfnZVBgsohEmuYMIpAX+F519sxnxjgx8fyjpvsZqLii4kq+9fsDwiVIxg7NOBIz0KlgVtAn2
	FnZhyrFi9TP1EA3WNuhm4LivVDJQSNig4tzsldrx34HRW1iHu2lGil+0MOpkEDX5D8L5pxaaym07q
	vnXhGiYMfPuHICj7sB+ElBcSrjBBsv/6+umH5B8dOuSO7YkWGlt6kodaQIsEh0YeRXcBC+S//o3ex
	vhi4M8Bk8sjaguJOCpz8K9hcRspdRjj9PSbuhkpJ8Gn3fG23ieuJyxWUXlZEwH8RTItTlZJcvOoek
	TDqeUfBZFxN070kAtaSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYC8B-0007dR-Jb; Mon, 11 May 2020 17:22:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYC7n-0007JX-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 17:21:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EB3F20746;
 Mon, 11 May 2020 17:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589217714;
 bh=hbim+lK4kK4svUzZv9ph3jJIF+6ksgUNjk/EOsFRWqo=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=tDNYww2k6hQ4sYbnEEt/tR5lkW++TYhDRiTFmKPKb5MPvdhzdk/yfl7iHJlGyYgGB
 AcpkbcqGB+aCE6il8WLv5xRKCJfbIzviLk/KjDiukRD+kaNl/nA9snN4hqUFDarks/
 JtfkPYd5hGuoGgkryUFt0KjHDjO4eHCtBqVF+yEY=
Date: Mon, 11 May 2020 18:21:52 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, Alistair Francis <alistair@alistair23.me>
In-Reply-To: <20200511045330.690507-1-alistair@alistair23.me>
References: <20200511045330.690507-1-alistair@alistair23.me>
Subject: Re: [PATCH v2] spi: sun6i: Add support for GPIO chip select lines
Message-Id: <158921769452.22432.2126080919845661372.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_102155_824826_4BC3580B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
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
Cc: alistair23@gmail.com, wens@csie.org, linux-arm-kernel@lists.infradead.org,
 mripard@kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 21:53:30 -0700, Alistair Francis wrote:
> Set use_gpio_descriptors as true to support using generic GPIO
> lines for the chip select.

Applied to

   local tree spi/for-5.7

Thanks!

[1/1] spi: sun6i: Add support for GPIO chip select lines
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
