Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350221FD240
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:Message-Id:Subject:References:In-Reply-To:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fnf2xXHmea7OREhM1pLRf3QS+JpFz5g/eOEf5rKzgXM=; b=Q5jJMwzKJX50XsBfzLeOi5O7c
	i9FKoBYXAjqGtK0yVL/OlXIVuaab5D4Ch/ReOLVqWDil7Lsksotck/R5XKBZq4H9dQBtrfuV7HNax
	OmPsdSthGOfvEOLnZSX3qR7IZ6Qx2Irl2U0N5agHudnS7HRNGn9TQwM6hVXebX72n7Lw6YkJ88Lfy
	ZMB6cs3UP37qOEdaPds5T/NBo/P8xc0RsrTxgf/3HSYnQRQq+RV2RrmUHaiSsZqIALWFuYjf9/xmF
	XL9Vc8ubiaCpZa8OdHgYqtjOza7AU0mOBgF7iw7F5DeJMOsaAISLR16UWukgnv3vwW1/7GNaVfyvE
	C1LVvHMMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlb2r-0007Sc-3M; Wed, 17 Jun 2020 16:36:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlb2h-0007SA-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 16:36:05 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46A3F21532;
 Wed, 17 Jun 2020 16:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592411762;
 bh=T25+j1+oF8KbZN1Y3zNJOXXa00zyjSAqtuDnE1om60c=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=SqNbWaOEhQW2JKqlMi4OLGi6XGatPEVw5b2KBgMEFT7iCVs0gNHETzAEbB2KSs9AE
 5vt/RaZ5SON7uN/eBfn/JJ87o7z/EUkiHtzpwaDzamudJgNgylEU00cnkrA0BfIU7G
 rwiREA9CpFmX11TTp7yg8bSBnKaWEy8QyY2jYGXM=
Date: Wed, 17 Jun 2020 17:36:00 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, f.fainelli@gmail.com, linux-arm-kernel@lists.infradead.org, Álvaro Fernández Rojas <noltari@gmail.com>, bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de
In-Reply-To: <20200616173235.3473149-1-noltari@gmail.com>
References: <20200616173235.3473149-1-noltari@gmail.com>
Subject: Re: [PATCH v4 0/2] spi: bcm63xx: add BMIPS support
Message-Id: <159241176062.13757.2408202694912546334.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_093604_031865_3DD72EDE 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 PP_MIME_FAKE_ASCII_TEXT BODY: MIME text/plain claims to be ASCII
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
Content-Type: multipart/mixed; boundary="===============7206974845841752345=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7206974845841752345==
Content-Type: text/plain

On Tue, 16 Jun 2020 19:32:33 +0200, Álvaro Fernández Rojas wrote:
> BCM63xx SPI and HSSPI controller are present on several BMIPS SoCs (BCM6318,
> BCM6328, BCM6358, BCM6362, BCM6368 and BCM63268).
> 
> v4: simplify devm_reset_control_get_optional_exclusive return handling
> v3: use devm_reset_control_get_optional_exclusive
> v2: use devm_reset_control_get_exclusive
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/2] spi: bcm63xx-spi: add reset support
      commit: 38807adeaf1ec0785b27dc18fe4562a375f80de7
[2/2] spi: bcm63xx-hsspi: add reset support
      commit: 0eeadddbf09a7a36ef1bc8021df1a770dc4b5370

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


--===============7206974845841752345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7206974845841752345==--
