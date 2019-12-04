Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F39E1129B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VPhQ2bquQ4lLyFXBXUoCMhMEXTlK0toULoZMKLzPrbI=; b=ngH
	vN+kYARdH5qvnhWRSwbzcVmypMBw+O364m7nFUKVhJVAUV+fPLH5cGgMbPVwGpwY8/dLRc/fS9Y74
	6aiZmweL7uJZC1XHZH6qUOIU/O5x1H64wv7hEQfVwm+wvxjlCYpJ//fpy80wTW0rzDXVJo+PSOlr0
	53XkY/c2pciWuz1Hfq1mz9p/OjXSrRr36UQ1DP4G9bjNlJE9q6zrvaiRoYQ4Dx/3zJ/De/SL93hlp
	o3erpg4zYNyk7iTThVq/sY2kBRPl7oJeGFk604CjNUkYlXt5PvX9ZB1HfMPyhpicvq57L9gS34ADl
	ZvviMblCsz5jTU0w3DEZ77P1O0Fx5cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSMm-0007HZ-2u; Wed, 04 Dec 2019 10:58:44 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSMb-0007Fg-9K
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:58:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 165092001BB;
 Wed,  4 Dec 2019 11:58:30 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B58ED20117B;
 Wed,  4 Dec 2019 11:58:26 +0100 (CET)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 210A4402AD;
 Wed,  4 Dec 2019 18:58:22 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: devicetree@vger.kernel.org, robh@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org
Subject: [Patch v2 0/5] Add dts support for various NXP boards
Date: Wed,  4 Dec 2019 16:28:13 +0530
Message-Id: <1575457098-18368-1-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_025833_461978_F5FDBBC9 
X-CRM114-Status: UNSURE (   8.15  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ashish Kumar <Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series add dts support for various boards like 1028ardb,
1028aqds, ls1046afrwy, ls1046ardb and ls1088ardb.
QSPI dts nodes are sorted alphabeticaly and dtsi nodes are sorted
addresswise.

Patch 1 adds support for ls1028ardb and ls1028aqds.

Patch 2 adds support for ls1046afrwy.

Patch 3 adds support for ls1046ardb.

Patch 4 adds support for ls2080a.

Patch 5 adds support for ls1088ardb and ls1088aqds.

Ashish Kumar (4):
  arm64: dts: ls1028a: Add FlexSPI support
  arm64: dts: ls1046a: Update QSPI node properties of ls1046ardb
  arm64: dts: ls208x: Remove non-compatible driver device from qspi node
  arm64: dts: ls1088a: Add QSPI support for NXP LS1088

Kuldeep Singh (1):
  arm64: dts: ls1046a: Add QSPI node for ls1046afrwy

 .../boot/dts/freescale/fsl-ls1028a-qds.dts    | 15 ++++++++++++
 .../boot/dts/freescale/fsl-ls1028a-rdb.dts    | 15 ++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 13 ++++++++++
 .../boot/dts/freescale/fsl-ls1046a-frwy.dts   | 14 +++++++++++
 .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 16 ++++++-------
 .../boot/dts/freescale/fsl-ls1088a-qds.dts    | 24 +++++++++++++++++++
 .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 24 +++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 ++++++++++
 .../arm64/boot/dts/freescale/fsl-ls208xa.dtsi |  2 +-
 9 files changed, 127 insertions(+), 9 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
