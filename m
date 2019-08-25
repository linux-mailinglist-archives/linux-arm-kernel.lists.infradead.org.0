Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F069C4B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 17:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NW6vVunfQhwNh2AiiZRtDiIXYkRspsflZRNZKA84znY=; b=pUuJ/82CoxXII4
	CtK4TB2U3bjhq9+lL1tcx0fekcqmMCesYB46+VXWrYGGUgWHR7pM1saHW6iIVG/5G3JhC1yVGTnho
	4+UZd8it2aeDsREIhrZ5d1PgetlLllD+uQ6xrPP0wMm4Aga+IwZMoOjGeCTaGUQ4w3qXUKZcjCZU5
	qyEtV3d1ErG/G5hcBTXNssXIkhYG5xwWLeixAiFyy+DDZgKQ0zOaQP3rgPdjVwFhqFO1+1WUzpUxU
	XtUU/e+gxq7TShr0rKhSrmHMKbN9UxbfxFOBv5gajPGVMRTjW7xoGsLE1xuNvyCE6q0CJa3jtr+aq
	fMXruSp28ZWVJiMXdkwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1uWw-0000Wz-CX; Sun, 25 Aug 2019 15:34:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uWC-00008g-HH
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 15:33:26 +0000
Received: from X250.getinternet.no (cm-84.211.118.175.getinternet.no
 [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03D24217F4;
 Sun, 25 Aug 2019 15:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566747204;
 bh=rHTyAoH71/yZqAZDqKuHPNHAmu0BcKB7tGHWlpxzPP0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=opl06UB6qX8pQppU0H6AXJfkJiEAqs6ddYmfH/5npc17vEVq/467bOxCp+Vs4Lmf8
 wd1JmoWh94Y/ehQIks/ktju/sFcx6yyumKchmJP4NlIiC59+j+mZMhe0PFs6J0fASh
 Ss3cuu/Fpt0INJOLU+R4Gp1R2LJHNz/+ahwAA0E0=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 3/7] i.MX DT bindings update for 5.4
Date: Sun, 25 Aug 2019 17:32:33 +0200
Message-Id: <20190825153237.28829-3-shawnguo@kernel.org>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190825153237.28829-1-shawnguo@kernel.org>
References: <20190825153237.28829-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_083324_646889_0EF4F3A4 
X-CRM114-Status: GOOD (  10.43  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-bindings-5.4

for you to fetch changes up to 8d5fc0b95fd1542c575ac64457bd17d74a206497:

  dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310 compatibles (2019-08-24 22:44:48 +0200)

----------------------------------------------------------------
i.MX DT bindings update for 5.4
 - Add SoC bindings for i.MX8MN.
 - Add board bindings for pico-pi-imx8m, Hummingboard Pulse, imx8mq
   nitrogen, i.MX8QXP AI_ML, ls1046a-frwy etc.
 - Add vendor prefix for Anvo-Systems and Einfochips.
 - Update LPUART bindings for i.MX8QXP clock requirement.
 - Update imx-weim bindings for optional burst clock mode support.
 - Update EEPROM bindings for Anvo ANV32E61W device support.

----------------------------------------------------------------
Andra Danciu (1):
      dt-bindings: arm: fsl: Add the pico-pi-imx8m board

Andrey Smirnov (1):
      dt-bindings: arm: fsl: Add support for ZII i.MX7 RMU2 board

Anson Huang (1):
      dt-bindings: arm: imx: Add the soc binding for i.MX8MN

Baruch Siach (1):
      dt-bindings: arm: fsl: add Hummingboard Pulse

Chuanhua Han (1):
      dt-bindings: fsl: dspi: Add fsl,ls1088a-dspi compatible string

Fugang Duan (1):
      dt-bindings: serial: lpuart: add the clock requirement for imx8qxp

Gary Bisson (1):
      dt-bindings: arm: imx: add imx8mq nitrogen support

Krzysztof Kozlowski (3):
      dt-bindings: vendor-prefixes: Add Anvo-Systems
      dt-bindings: eeprom: at25: Add Anvo ANV32E61W
      dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310 compatibles

Manivannan Sadhasivam (2):
      dt-bindings: Add Vendor prefix for Einfochips
      dt-bindings: arm: Document i.MX8QXP AI_ML board binding

Pramod Kumar (1):
      dt-bindings: arm: nxp: Add device tree binding for ls1046a-frwy board

Sven Van Asbroeck (1):
      dt-bindings: bus: imx-weim: document optional burst clock mode

 Documentation/devicetree/bindings/arm/fsl.yaml     | 26 ++++++++++++++++++++++
 Documentation/devicetree/bindings/bus/imx-weim.txt |  4 ++++
 Documentation/devicetree/bindings/eeprom/at25.txt  |  1 +
 .../devicetree/bindings/serial/fsl-lpuart.txt      |  5 ++++-
 .../devicetree/bindings/spi/spi-fsl-dspi.txt       |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |  4 ++++
 6 files changed, 40 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
