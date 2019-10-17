Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51223DA59B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=H9d5WBNhtqF9h6jHQzKSdhUdokOg7056N8A4Ga6DRng=; b=O0S
	cBPJhFJky00HBJloyPHgoI7gBKGkkN3DXM94mQQJcmuTet/nbOYUB9tBddq1671+AhhLAVYt5Pq+7
	ZtQJTYURbGNUoupZ3VhUP4yIPwpRWHIk1R1Iv9Y1tnMnAHWRMNPWEx/grLPQbaaLfjMoX9DqAbcJa
	VeLku8YxCpZZdsIUSP0zE8Y5nTwKLUsgo9iqYnDICAKy/MKmwITXXYL/ph+H33ZlY0rNVbJ7hCJRO
	CPIvAXgNg8nS9bHQdb8mCDLxWt67CzANh+yT7uXCeqQ/9DlyOjM8WtDIsw3xIbgmoGmpxtnXD8nQt
	npGzX7V/hHX3yGYatdJ2Pp/yN2XjkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzHl-0000TS-6U; Thu, 17 Oct 2019 06:29:21 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzHc-0000SS-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:29:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 23:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="226051846"
Received: from unknown (HELO ubuntu.localdomain) ([10.226.250.133])
 by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2019 23:29:07 -0700
From: "Ooi, Joyce" <joyce.ooi@intel.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>
Subject: [PATCHv2] arm64: defconfig: add JFFS FS support in defconfig
Date: Wed, 16 Oct 2019 23:28:52 -0700
Message-Id: <1571293732-13667-1-git-send-email-joyce.ooi@intel.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_232912_314662_80C84C5E 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tan Ley Foon <ley.foon.tan@intel.com>, Anson Huang <Anson.Huang@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Ong Hean Loong <hean.loong.ong@intel.com>,
 Joyce Ooi <joyce.ooi@intel.com>, See Chin Liang <chin.liang.see@intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds JFFS2 FS support and remove QSPI Sector 4K size force in
the default defconfig

Signed-off-by: Ooi, Joyce <joyce.ooi@intel.com>
---
v2: disable CONFIG_MTD_SPI_NOR_USE_4K_SECTORS using the correct syntax
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9adae4..6080c6e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -860,3 +860,5 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_DEBUG_PREEMPT is not set
 # CONFIG_FTRACE is not set
 CONFIG_MEMTEST=y
+CONFIG_JFFS2_FS=y
+# CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is not set
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
