Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C7E1CF258
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBcKfqeNzynxo8T7W0ZeO5lkWOZ0PH2kLMMv55LJJYw=; b=PKo3ScB+BvUGFy
	rNVbUDu9yKwJ6Clh64TutcvdNyuWVdayhzcxSTLi/1vukhWnlYerS5bAan+3KFQISTAobxrbIzZpL
	7L/B+xO4ph4miNsbwQby5QBhJDSKEffbgnELSvgR002dOJe9jrerXPfyhQfO7MYiQl07fDlst/zOE
	+pcVhD+XtRu6XU8XYSat2EFiFV91NaEAc+j+hG8ZqUnMlF2YO8NvXu4zKgUWHtegiYUJ9EJRlySl3
	oatJ2VvYHY3TiA57P5rEHq7pe0s7N7h0GbGnhRsjq7mYblMTBzMRtkyjEn4s5S/DmXwaHN7HnyGOn
	1dci6HUhWHHKiMz2dzAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYS9G-0006ZZ-J2; Tue, 12 May 2020 10:28:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYS98-0006Z1-Fx
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:28:23 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36D03206A3;
 Tue, 12 May 2020 10:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589279301;
 bh=zpiNmb4UCtavZMNo6BKDHyMlep5F58zW98wc3jsNU58=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=ihzpMPLAN81AlB25/9+LOE8ebLXxL9p8Pg4XBABQl/FDbwirChiSg0NqiDbyUICtM
 CGM3YqXUwIwt0UNR/9lK5dRG+l4pBg5YaLuyq113Cjw8m0Y1V1cZAX+J0g7yVWJ43j
 y8SHmOZ37Vf+QufDa9IByqy9+ylQ/+DwQk6gn05c=
Date: Tue, 12 May 2020 11:28:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
In-Reply-To: <1587720562-15293-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1587720562-15293-1-git-send-email-hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2] dt-bindings: spi: Convert UniPhier SPI controller to
 json-schema
Message-Id: <158927929911.28665.8593031021251686663.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_032822_553965_0F727C63 
X-CRM114-Status: UNSURE (   8.83  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 18:29:22 +0900, Kunihiko Hayashi wrote:
> Convert UniPhier SPI controller binding to DT schema format.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8

Thanks!

[1/1] spi: Convert UniPhier SPI controller to json-schema
      commit: 5483ef03e075c1625c66ba728b55ef67f7cb3ed1

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
