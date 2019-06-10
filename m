Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006D43AD9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 05:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wb9sPrYw1lzdktaln1RT+xCbJlvr4g2hbx2FuSJT+Ts=; b=P1KvEUcfdP7m5i+HMef+zFzXO/
	lr0p/1G0XlX5NxEla4Hsw+H1nmppJlvxEOYtg9zH2/GHDCKXQOrLHAgW1Af9VB+IeOfibsK7YoAdJ
	+xaBMXa5c6zCwSkVm8iKFubdQ2zXdKOVAzkPpdrxbgwSlgWFUyxFfHpdQ3N6Tx5eqa3UcCdg4UAl/
	9NYaF1TMV0sFtbk1WUXfo6Jx8WyW9e0nDGWAWE95il3juYcHbMdIXPVwi33ie1qakeIwgDydBeJI7
	adhcV2yjUKxmLfnZcdTE2r6N0OUe5Gx6Eqa7rCGOjbbESL6Rg6pI0VONXh8/wlvoP6kwXL+hco4TE
	YscRrcWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haAsa-0006Kx-7A; Mon, 10 Jun 2019 03:21:52 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haAqP-0003cl-U9
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 03:19:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B1927200080;
 Mon, 10 Jun 2019 05:19:36 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9088F2006C5;
 Mon, 10 Jun 2019 05:19:32 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EC3774031E;
 Mon, 10 Jun 2019 11:19:26 +0800 (SGT)
From: Yangbo Lu <yangbo.lu@nxp.com>
To: netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 6/6] MAINTAINERS: maintain DPAA2 PTP driver in QorIQ PTP entry
Date: Mon, 10 Jun 2019 11:21:08 +0800
Message-Id: <20190610032108.5791-7-yangbo.lu@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610032108.5791-1-yangbo.lu@nxp.com>
References: <20190610032108.5791-1-yangbo.lu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_201938_204230_78CE6F26 
X-CRM114-Status: UNSURE (   6.05  )
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

Maintain DPAA2 PTP driver in QorIQ PTP entry.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
 MAINTAINERS | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index fcbd648..81762bb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4910,13 +4910,6 @@ L:	linux-kernel@vger.kernel.org
 S:	Maintained
 F:	drivers/staging/fsl-dpaa2/ethsw
 
-DPAA2 PTP CLOCK DRIVER
-M:	Yangbo Lu <yangbo.lu@nxp.com>
-L:	netdev@vger.kernel.org
-S:	Maintained
-F:	drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp*
-F:	drivers/net/ethernet/freescale/dpaa2/dprtc*
-
 DPT_I2O SCSI RAID DRIVER
 M:	Adaptec OEM Raid Solutions <aacraid@microsemi.com>
 L:	linux-scsi@vger.kernel.org
@@ -6359,6 +6352,8 @@ FREESCALE QORIQ PTP CLOCK DRIVER
 M:	Yangbo Lu <yangbo.lu@nxp.com>
 L:	netdev@vger.kernel.org
 S:	Maintained
+F:	drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp*
+F:	drivers/net/ethernet/freescale/dpaa2/dprtc*
 F:	drivers/net/ethernet/freescale/enetc/enetc_ptp.c
 F:	drivers/ptp/ptp_qoriq.c
 F:	drivers/ptp/ptp_qoriq_debugfs.c
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
