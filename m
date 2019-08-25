Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31E89C4B4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 17:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90gAfiDKEclL0fS+vr7uZnXjVOt0G5t7q/It5vwP+6c=; b=NhqD6XSV0DUInH
	r88ysGU6axT1lD0jcz0je/GuJjBIBOuea5ncP/OM/EHdpiQfedoPPRPB+tUsyHuJ0d+8W+yg8uajT
	bF6emTMtG5mpQwRC3l92D7aOjEC4tr0Y7U6DloeJihncclK00hY8HkBHsoEQhsV6WkI3hNlug24kq
	P8P4MMh+6iiD1LqvV1AwTz6Z1TqzLH/akMOKxPpxSgECfnkLQcZdzEfE/dXtfoqgloa36hO47phL1
	6JZohh/zp30iH8dBxE53F9PmfTvp+qlhgRMj47CsiEd6PQlIwDaRx9i3ehaSOxWpxp++52SYHZ8hG
	/odQrt97xCKVrBiogsnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1uXC-0000kS-9W; Sun, 25 Aug 2019 15:34:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uWF-0000BH-Gi
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 15:33:28 +0000
Received: from X250.getinternet.no (cm-84.211.118.175.getinternet.no
 [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BED81206DD;
 Sun, 25 Aug 2019 15:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566747207;
 bh=UNktQ2Qv+YETFwUlZeyB8du0pnSSbX5LLup4SudBRNc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZsCV3DUJuBAkGgEu9gG0UNitT7vYeO8rTlnNlg9Uq1chxwf0HRCOJJEeMs7PQuxQ1
 pzHlDVDQ8/N9std87nHi2Ju6RcspfdItk4xMS5tRwh1hTTQWavFVEBuPoaPFuY7Avu
 mVDBdg8s3ubUqrwlpwqexfe8jOyojbimEVwkYWsQ=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 4/7] i.MX device tree update with new clocks
Date: Sun, 25 Aug 2019 17:32:34 +0200
Message-Id: <20190825153237.28829-4-shawnguo@kernel.org>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190825153237.28829-1-shawnguo@kernel.org>
References: <20190825153237.28829-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_083327_609447_2DFAD352 
X-CRM114-Status: GOOD (  11.59  )
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
Cc: Stephen Boyd <sboyd@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is the device tree update with new clocks, so clock commit
6ad7cb7122ce ("clk: imx8: Add DSP related clocks") gets pulled in here
as dependency, from i.MX clock branch I sent to Stephen.  Please
consider to pull, thanks!

Shawn


The following changes since commit 6ad7cb7122cee4d3e672e58bf542b070b9363c15:

  clk: imx8: Add DSP related clocks (2019-08-03 09:16:02 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt-clkdep-5.4

for you to fetch changes up to cd42fa171d913627acb631ddf8b2a5d3a3d7e6ee:

  arm64: dts: imx8qxp: Add DSP DT node (2019-08-19 16:16:02 +0200)

----------------------------------------------------------------
i.MX device tree update with new clocks:
 - A series from Anson Huang to add i.MX8MN SoC and DDR4 EVK board
   device tree support.
 - Add DSP device tree support for i.MX8QXP SoC.

----------------------------------------------------------------
Anson Huang (6):
      arm64: dts: freescale: Add i.MX8MN dtsi support
      arm64: dts: imx8mn: Add gpio-ranges property
      arm64: dts: freescale: Add i.MX8MN DDR4 EVK board support
      arm64: dts: imx8mn-ddr4-evk: Add i2c1 support
      arm64: dts: imx8mn-ddr4-evk: Add rohm,bd71847 PMIC support
      arm64: dts: imx8mn: Add cpu-freq support

Daniel Baluta (1):
      arm64: dts: imx8qxp: Add DSP DT node

 arch/arm64/boot/dts/freescale/Makefile            |   1 +
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 348 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi         | 758 ++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts     |   4 +
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi        |  32 +
 5 files changed, 1143 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
