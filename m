Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BC01389D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 04:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SR4y5XGrEcmK77anBJcoyajTj7AS3FhH0fYTVxFn7gc=; b=Mi4
	2KXxVN16Eq02Pr5P13zRSgO4VxMIQLxuFY4+j85rifjCGfbXaO9mzakprsrROndiz4y1oWqfiL1Lt
	8E4gDJBmJjVYS//YbwODMvV6ipM2p7WetGybMh1Omjqs/4ZSXbUgccCb85bYgl/DX3HLh0GQdb0aM
	J5n8sZ0js+vDu3gnVB9tBCfUsQa97ygsMYElu+7dIOvqKByZZW6ynyUZi5gViAJ5Hw0g97wIRq7Rv
	th4Z/v7jW+x3WbiPXEG1eBGgcsClNiNSla/z5yM5CxsMBagWq5YX3DVma5sX94qoUVGy7p3IVAiHG
	o/vvM3z6crBBlc4e6S2rEke5VTKODTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqqan-0002Xm-OQ; Mon, 13 Jan 2020 03:40:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqqah-0002XV-9J
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 03:40:36 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D53A206D7;
 Mon, 13 Jan 2020 03:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578886834;
 bh=gGK34dJogVl/YYrRvG1PL0kOw3Q6TX6Ai6aJkaYEfjc=;
 h=From:To:Cc:Subject:Date:From;
 b=f7zT6fllFsnZC0q6OQRFphPtsE0segN8G7XqfnC1lDSaASBiIY6EBjt1sGFRzuFem
 b54g/Y/+P6oejZq3DwhdNFYgi/R4SxjnSsEpeYscmiDCB7sE6nkCl96f6Qq4r5dzP8
 JSu6NYLEAs505HXJHyVBUOlxV/H5iY5CzWTjgrwQ=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 1/6] i.MX driver changes for 5.6
Date: Mon, 13 Jan 2020 11:40:01 +0800
Message-Id: <20200113034006.17430-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_194035_348346_36E55A21 
X-CRM114-Status: UNSURE (   8.67  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-driver-5.6

for you to fetch changes up to f52cdcce9197fef9d4a68792dd3b840ad2b77117:

  firmware: imx: Allow IMX DSP to be selected as module (2020-01-09 17:21:33 +0800)

----------------------------------------------------------------
i.MX driver changes for 5.6:

 - Add i.MX8MP SoC driver support.
 - Allow IMX DSP Protocol driver to be built as module.
 - Add COMPILE_TEST for IMX_SCU_SOC driver to increase build coverage.
 - Print SoC type and revision in i.MX8 SoC driver, as this is useful
   information to have when looking through boot log.

----------------------------------------------------------------
Anson Huang (1):
      soc: imx: Add i.MX8MP SoC driver support

Daniel Baluta (1):
      firmware: imx: Allow IMX DSP to be selected as module

Krzysztof Kozlowski (1):
      soc: imx: Enable compile testing of IMX_SCU_SOC

Lucas Stach (1):
      soc: imx8: print SoC type and revision

 drivers/firmware/imx/Kconfig | 2 +-
 drivers/soc/imx/Kconfig      | 2 +-
 drivers/soc/imx/soc-imx8.c   | 9 +++++++++
 3 files changed, 11 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
