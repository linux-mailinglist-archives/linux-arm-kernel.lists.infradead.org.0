Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E7818253C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 23:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9IcuG3yaEh2tnprD/YpsjQqlwPu9lFkWkTUiCIV5owU=; b=YU+Ar8H0oeAWiB
	T/JJU8luCIaDHnIZ2sQgP1vBn2LVoFjscBcBvVyMz1nmDnsuhW8np2SEg4fBbJoa9H9erLQJ3Viid
	TPR3JJ3wtDNHWl9z6+D+4t7AZS4/hLWiC/lQhCrEdI6jVz2E0+4weG00C/5QeLdTRz6clIP/9fJg9
	axmgaoLdUIgI7gPCKDo7t6fFHP33LywK5HVCBtAxkVxDLaFJ98i0uKwOmwoCD5SfVhTHD3M6ASLWR
	ai9wNOkgQBsD53gIheXMlC+IspNWyrSFWYJxYOhCWYgpOVimy0aoGMMy/7wnOyLG9awvciAlpLPdL
	Vr1SVxKhW/x98g3CGhMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCAF4-0004ry-0m; Wed, 11 Mar 2020 22:54:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCAEr-0004ov-H4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 22:54:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E1961A0CAD;
 Wed, 11 Mar 2020 23:54:07 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 467261A0C9A;
 Wed, 11 Mar 2020 23:54:07 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 8310A40A5F; Wed, 11 Mar 2020 15:54:06 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: shawnguo@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/15] Enable drivers for NXP/FSL QorIQ arm64 boards
Date: Wed, 11 Mar 2020 17:53:02 -0500
Message-Id: <20200311225317.11198-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_155409_714516_A7530754 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The series enables necessary drivers for the QorIQ reference boards
supported in mainline.

Li Yang (15):
  arm64: defconfig: run through savedefconfig for ordering
  arm64: defconfig: Enable NXP flexcan driver
  arm64: defconfig: Enable QorIQ DPAA1 drivers
  arm64: defconfig: Enable QorIQ DPAA2 drivers
  arm64: defconfig: Enable ENETC Ethernet controller and FELIX switch
  arm64: defconfig: Enable NXP/FSL SPI controller drivers
  arm64: defconfig: Enable QorIQ cpufreq driver
  arm64: defconfig: Enable ARM SBSA watchdog driver
  arm64: defconfig: Enable QorIQ IFC NAND controller driver
  arm64: defconfig: Enable QorIQ GPIO driver
  arm64: defconfig: Enable ARM Mali display driver
  arm64: defconfig: Enable flash device drivers for QorIQ boards
  arm64: defconfig: Enable RTC devices for QorIQ boards
  arm64: defconfig: Enable PHY devices used on QorIQ boards
  arm64: defconfig: Enable e1000 device

 arch/arm64/configs/defconfig | 57 +++++++++++++++++++++++++++++-------
 1 file changed, 46 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
