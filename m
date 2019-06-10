Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55C23AD90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 05:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IXt8kxtGzGeADJxaDVFz0KSzr79mMoHVo8hU737KGws=; b=OcX
	LqUNsT1Up66y7ilsgsLDw9I0ZnVdHN/n2vOh7hugHVf3fYlANJUgCxSopkoWTxHiAJ/qHDJC1Yfjz
	Tp3nsRdbE7tyCrkKka7723wsioolWl5pdnLsCfepn02v3eqJao2qjRa7Z1ScO+nvBnD6VvTpd5D5G
	tk4M1zNFEke9icupQF9X4ys8hy6ACiS3ZLHoOs5mCduuFCCJlbw57iCRqzjaYXI3YQMeDPQhVxzvP
	D8xXZFNBla7OJsawgk9aqGZr0tJ+4kwrfqhTGQZ/fZd3qPRP4IvWz//KrUO+CHh/e0AwY4Igajq3u
	jT2dyM940lA0Zx1ZD3KqZf1I8d01dWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haAqy-0003pW-Ce; Mon, 10 Jun 2019 03:20:12 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haAqM-0003b6-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 03:19:35 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 952AC2006C2;
 Mon, 10 Jun 2019 05:19:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 731C32006C8;
 Mon, 10 Jun 2019 05:19:26 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 15731402D2;
 Mon, 10 Jun 2019 11:19:21 +0800 (SGT)
From: Yangbo Lu <yangbo.lu@nxp.com>
To: netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/6] Reuse ptp_qoriq driver for dpaa2-ptp
Date: Mon, 10 Jun 2019 11:21:02 +0800
Message-Id: <20190610032108.5791-1-yangbo.lu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_201934_508424_61017250 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-kernel@lists.infradead.org, Yangbo Lu <yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although dpaa2-ptp.c driver is a fsl_mc_driver which
is using MC APIs for register accessing, it's same IP
block with eTSEC/DPAA/ENETC 1588 timer.
This patch-set is to convert to reuse ptp_qoriq driver by
using register ioremap and dropping related MC APIs.
However the interrupts could only be handled by MC which
fires MSIs to ARM cores. So the interrupt enabling and
handling still rely on MC APIs. MC APIs for interrupt
and PPS event support are also added by this patch-set.

Yangbo Lu (6):
  ptp: add QorIQ PTP support for DPAA2
  dpaa2-ptp: reuse ptp_qoriq driver
  dt-binding: ptp_qoriq: support DPAA2 PTP compatible
  arm64: dts: fsl: add ptp timer node for dpaa2 platforms
  dpaa2-ptp: add interrupt support
  MAINTAINERS: maintain DPAA2 PTP driver in QorIQ PTP entry

 .../devicetree/bindings/ptp/ptp-qoriq.txt          |   3 +-
 MAINTAINERS                                        |   9 +-
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi     |   8 +
 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi     |   8 +
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |   8 +
 drivers/net/ethernet/freescale/dpaa2/Kconfig       |   3 +-
 drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c   | 242 +++++++++++----------
 drivers/net/ethernet/freescale/dpaa2/dprtc-cmd.h   |  48 +++-
 drivers/net/ethernet/freescale/dpaa2/dprtc.c       | 191 ++++++++++++----
 drivers/net/ethernet/freescale/dpaa2/dprtc.h       |  62 ++++--
 drivers/ptp/Kconfig                                |   2 +-
 11 files changed, 386 insertions(+), 198 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
