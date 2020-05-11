Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4318E1CD836
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htGGHtQ0fc09a6I0w+LqPjRFBtzAYh10BuvVAQvthXA=; b=hYaeVu8vkhOJD/
	rN72sJ//+5RrlqsGM1+is3Rj/ole70qILu61VCgAIRMdPP6KizCHGhYKcpURuNPUj6pcrdprGpsSJ
	+70YiI2nhhLPwA9/P2Nv5DK0L5J9yaK5YYz41yhHFZTMLtoT3BtNjwprhJfpsAs1tLkw5OF0ZJk68
	1PQcBbHH4nOS4ybN7w7rspZxIyUOY0GfmJnm2/YAdNohkNVXsuVEcYfD8Qu1QYWH0iFDjaJUN6IU3
	Q3biP88bq3/7m7wQYN4sxQLuFFNgjd4guhBoCQsN2D2TQh7xjoNGslZte4Ly+rgzYhzNyOf3gbpUY
	HUNr4T+248wiep9XXOWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6aW-0007Qy-Mb; Mon, 11 May 2020 11:27:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Z0-000670-My
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:25:49 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 813C920736;
 Mon, 11 May 2020 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589196338;
 bh=iM8v+QfgxIMkd/ubDyYGJ/Lo+FpxBTAgrfwxnETDfBA=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=Y5SuKuX/7yPBXeDxkYtcbXQwgIhCYWiK7SRh6xG90AJ0YwUiByurS0ZviupWe1VH2
 BV2ldz8nERLbCEWDPxHILaNt2Yyxcq5RK0sSyOkmiQMtJ2Zv90tIaP/cc1bCIDxndA
 tN2uTKGTA+cQO/XhdoTX5+9mXeGxnotA8SJm1Bmo=
Date: Mon, 11 May 2020 12:25:35 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, Alistair Francis <alistair@alistair23.me>
In-Reply-To: <20200511045330.690507-1-alistair@alistair23.me>
References: <20200511045330.690507-1-alistair@alistair23.me>
Subject: Re: [PATCH v2] spi: sun6i: Add support for GPIO chip select lines
Message-Id: <158919630591.8372.404655401498379497.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042538_918399_F61D433E 
X-CRM114-Status: UNSURE (   9.32  )
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
Cc: linux-arm-kernel@lists.infradead.org, alistair23@gmail.com, wens@csie.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 21:53:30 -0700, Alistair Francis wrote:
> Set use_gpio_descriptors as true to support using generic GPIO
> lines for the chip select.

Applied to

   local tree asoc/for-5.7

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
