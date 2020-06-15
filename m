Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DE71FA4A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 01:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:Message-Id:Subject:References:In-Reply-To:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ssNO8JFrYBqG+/zSEIZaIzP+8C3JszdGZ9slB2R0J6g=; b=grA90jP5ImFbsNO8Zu/oL63bg
	knoSjEu2TZiTkKSqpJHT5/2Mo62Tm2EqFSOtoy+upQ/ff911LZrKVlayMvtd1EchqCnbn06gnIj4N
	+2zUo1LN69juBx5AS6nptS4IoJy+/+Wb5y1rElQOIPfYXjuTM2FCTiLwCItMG1TzEdMgouAgINS4e
	JE7XrEzJP2VPtDCBI3Y5M3vIkdZjkcX3b2Lkj//Dmeu9IJYXR5A25IcirPdbiDcRdSetymcP+7nOz
	G+fzmk8NgMEz7+5JMk0icHs4yNBP5Y8LGQuXHXEMd4/nZ9fNYdLUx3yJOS+pqpqjFEHwSSvUg9kSu
	bLCFWnHgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkyjq-0001SC-4g; Mon, 15 Jun 2020 23:42:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkyjS-0001F9-La
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 23:41:41 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4887120714;
 Mon, 15 Jun 2020 23:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592264497;
 bh=Ab68y8wQIv5FLuIPhDUeyQ0ofoPfLk3qw6ifqIKY7+s=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=J6/5Zs9dTago5xWx+Yyeq6KSxczVM8Zp2jyHy51dFs3ce4IUlXJ4h+kzGiQ2U9imW
 K7wBglY/QCrQst5S1AP2UtsBP+mGiHRtRFiVuXK/VH96BnwaVqw5Nf+QTGOG5cUG4M
 zaPOW6/zATHocYMfFu6WXb6TxkEHgNCCGiWRWzD4=
Date: Tue, 16 Jun 2020 00:41:35 +0100
From: Mark Brown <broonie@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org, Álvaro Fernández Rojas <noltari@gmail.com>, f.fainelli@gmail.com, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
In-Reply-To: <20200615090943.2936839-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
Subject: Re: [PATCH v2 0/4] spi: bcm63xx: add BMIPS support
Message-Id: <159226448570.27735.4528805974141654414.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_164138_734069_DFCC4076 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 PP_MIME_FAKE_ASCII_TEXT BODY: MIME text/plain claims to be ASCII
 but isn't
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
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============2999055652637053499=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2999055652637053499==
Content-Type: text/plain

On Mon, 15 Jun 2020 11:09:39 +0200, Álvaro Fernández Rojas wrote:
> BCM63xx SPI and HSSPI controller are present on several BMIPS SoCs (BCM6318,
> BCM6328, BCM6358, BCM6362, BCM6368 and BCM63268).
> 
> v2: use devm_reset_control_get_exclusive
> 
> Álvaro Fernández Rojas (4):
>   spi: bcm63xx-spi: add reset support
>   spi: bcm63xx-spi: allow building for BMIPS
>   spi: bcm63xx-hsspi: add reset support
>   spi: bcm63xx-hsspi: allow building for BMIPS
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/4] spi: bcm63xx-spi: add reset support
      (no commit info)
[2/4] spi: bcm63xx-spi: allow building for BMIPS
      commit: 3a521450ff218ddac9b2c15fcd2bcadab56ff79d
[3/4] spi: bcm63xx-hsspi: add reset support
      (no commit info)
[4/4] spi: bcm63xx-hsspi: allow building for BMIPS
      commit: ba2137f3dbce5e530eba0c67d37a758b42eb26f8

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


--===============2999055652637053499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2999055652637053499==--
