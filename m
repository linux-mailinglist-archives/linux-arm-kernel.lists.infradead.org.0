Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE48714AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HbtRix/+cvzQ56Zs2jHzQGP/tKYrzdN1jAdaCd3rLEQ=; b=jtMOoDdTMBneYf
	c6S7e8NTDaFnKY39LUOdrsbxrVs5WnjV+dD081YYcBS0kXZW7b88oTEBi6D+qwVp95/CGUvzRQBhY
	rNya2gnUuEKQYdNSvcfY3hbkqZhbfpJKSGIzEMU0kXkWSjOZvzbfP1qmbHCDlii8JWrc7UuCOobqy
	GGZ02HixtdmPbwsAdnuf1JZINtraxdwH8pxtHByoah+D1WWE+0C6qDmPx/d0V/TgZXzIwznQ+FUHU
	sznK2qPCHCdTgIMu3+2Js2vgDh1jxcq1/+eyM+KnyHc34YNw5GMTOAly974qnHR/1TL+bpx88Hj7N
	WbBFuRfJN16fZ2KRww1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqnM-0005Ri-9q; Tue, 23 Jul 2019 09:09:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqn3-0005QC-UJ
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:08:59 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5BE12251A;
 Tue, 23 Jul 2019 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563872936;
 bh=S0ICJGUHiiaGHk7s6zKayTmwMHd8oIYTD65UiSGCvlY=;
 h=Date:From:To:Cc:Subject:From;
 b=Oq4gJpihhr95Kr6JAPVQDvR0DL4GEB2Q4XwPs84JDNc8eVj/UuT1JHY2akC+A7Mbz
 GocXK15CeRQPIBwG7r4GWom+uwI586lPcYs/onaVNhOkpoA9KCPX2FZWA3tYKNtyh/
 VMne7uD2bJX85yn+zJVcs1bnjj5dZSElhHGkt3HI=
Date: Tue, 23 Jul 2019 17:08:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.3
Message-ID: <20190723090827.GU15632@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_020858_023337_F8DFC7AD 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx=
-fixes-5.3

for you to fetch changes up to 8d0148473dece51675d11dd59b8db5fe4b5d2e7e:

  arm64: dts: imx8mq: fix SAI compatible (2019-07-23 15:37:31 +0800)

----------------------------------------------------------------
i.MX fixes for 5.3:
 - Fix i.MX8MM SAI3 RXC/TXFS pinmux configuration.
 - Fix i.MX7ULP usb-phy unit address to drop extra '0x' notation.
 - Fix typo of clock frequency property name in a few i.MX6UL board
   I2C buses.
 - Drop "fsl,imx6sx-sai" from i.MX8M SAI device, as it's not compatible
   with i.MX6SX SAI.

----------------------------------------------------------------
Anson Huang (1):
      arm64: dts: imx8mm: Correct SAI3 RXC/TXFS pin's mux option #1

Fabio Estevam (1):
      ARM: dts: imx7ulp: Fix usb-phy unit address format

Lucas Stach (1):
      arm64: dts: imx8mq: fix SAI compatible

S=E9bastien Szymanski (1):
      ARM: dts: imx6ul: fix clock frequency property name of I2C buses

 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi        | 2 +-
 arch/arm/boot/dts/imx6ul-geam.dts              | 2 +-
 arch/arm/boot/dts/imx6ul-isiot.dtsi            | 2 +-
 arch/arm/boot/dts/imx6ul-pico-hobbit.dts       | 2 +-
 arch/arm/boot/dts/imx6ul-pico-pi.dts           | 4 ++--
 arch/arm/boot/dts/imx7ulp.dtsi                 | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mq.dtsi      | 3 +--
 8 files changed, 10 insertions(+), 11 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
