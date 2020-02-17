Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F063161267
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qXGnDHsLw22g8M9yJQuF+uJmxk1cRBiojX7ec5iDCzw=; b=sYq+EgqJcR2nsE
	hiKai0T4GkSLsxnzag6rsFr0/3TwvGsexnJ04TeZZZBMD4rCaS5HjXyEIkzi8/e+07MXqoSZsCooX
	VzLen94mTv2FaW9A83cbz54QSKCgBAUDMJ0WEijZjuZ1iAzuwgHRDkrnVC6Tri5alkwltOq9Gc7wt
	/8jqtBnnH1ankPcYC8tY3uCoZfkJqF1i1EVYxZVAGD33+GzPa/QU3Fp8/KRmijSH6Ndyfo3X4ZI+V
	oRW+uGz6SwXxtoztedLxbFRTAbPAh1GiWJv2cI+JtmCV215tFfW9k1+WxrzNV83hrqLufc4132g11
	oC6jFW0T1x1CaKY2OtmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fyc-0007jw-TY; Mon, 17 Feb 2020 12:58:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fyU-0007jb-93
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:58:11 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3FC620578;
 Mon, 17 Feb 2020 12:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581944289;
 bh=z2e1rZOv+WP3xOWtzUPRXPB3lFkCpqMrWk4ubOcCo44=;
 h=Date:From:To:Cc:Subject:From;
 b=aL4F/29WL7mbuG9SguO3G5HQxrqEIVSTUkyMgGSu99aYMYGHv3OV70n74elBhmFgx
 karA6pL1mVKk2lUwngA/EV2fHb9f05hLamPz0RFPs1sUmQZV8uOxX9ulVeJ7R4yzuI
 o7wDXxYs7KBUbOqrMbTiGqMbURkG9sCLAOjel070=
Date: Mon, 17 Feb 2020 20:58:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock fixes for 5.6
Message-ID: <20200217125759.GA3671@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_045810_343535_1BE47E94 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.6

for you to fetch changes up to 5eb40257047fb11085d582b7b9ccd0bffe900726:

  clk: imx8mn: Fix incorrect clock defines (2020-02-17 15:18:00 +0800)

----------------------------------------------------------------
i.MX clock fixes for 5.6:

A fix on i.MX8MN I2C4 and UART1 clock IDs, which clash with PWM2 and
PWM3 ID.  This bug makes I2C4 and UART1 device in i.MX8MN DT point to
PWM2 and PWM3 clock.

----------------------------------------------------------------
Anson Huang (1):
      clk: imx8mn: Fix incorrect clock defines

 include/dt-bindings/clock/imx8mn-clock.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
