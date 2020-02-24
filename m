Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E6F16B4DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eZAR/1FyHhfSaAJaxAmtKHwMj+Vu2Hb3LBhUCQ/lxU8=; b=YyGr6FLMv+xb20IjfU9K30NK/i
	aUyv31RjYReqzixWUOhsB0KuxnQK6UiKyGE2OGXbQovfDblcWnQP5P0csavrf8guWIJMmU84jdQ71
	UwqMDywHWgNyySeXcEatHuuD62RzLuj+V5ZOjP6UDoR7l9c389ZIgBe0foF3pHLhBhlE6JcMVrnVq
	XtPyf3xpVkqbHlgkf76t7jsy5SzEpBPtpPnAgAkxBSSqxgiQcrOklexx8H02XBxkATOIxh6dhkwPK
	i0+NzKs56vf9/5RyGp66zlHN6WpL1vJLBhcX3Mv7sXkvME16/zzWn1Gm+Fh4XQBJTFC9IuZ/BZdXW
	iYPfgQyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6MsB-000584-W0; Mon, 24 Feb 2020 23:10:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Mq6-0002Op-20
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:08:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2FA1D210041;
 Tue, 25 Feb 2020 00:08:31 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E990B210045;
 Tue, 25 Feb 2020 00:08:30 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 3AF9E40BCF; Mon, 24 Feb 2020 16:08:30 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: shawnguo@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/15] arm64: defconfig: Enable ENETC Ethernet controller and
 FELIX switch
Date: Mon, 24 Feb 2020 17:08:00 -0600
Message-Id: <1582585690-463-6-git-send-email-leoyang.li@nxp.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
References: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_150838_286291_015637BD 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enables drivers for NXP ENETC Ethernet controller and FELIX Ethernet
switch used on QorIQ LS1028a SoC.

The ENETC ethernet drivers are enabled as built-in to boot from network
without an initramfs.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 9eaf0993cca5..7390c8f3838d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -154,6 +154,7 @@ CONFIG_IP6_NF_NAT=m
 CONFIG_IP6_NF_TARGET_MASQUERADE=m
 CONFIG_BRIDGE=m
 CONFIG_BRIDGE_VLAN_FILTERING=y
+CONFIG_NET_DSA=m
 CONFIG_VLAN_8021Q=m
 CONFIG_VLAN_8021Q_GVRP=y
 CONFIG_VLAN_8021Q_MVRP=y
@@ -256,6 +257,7 @@ CONFIG_MACVTAP=m
 CONFIG_TUN=y
 CONFIG_VETH=m
 CONFIG_VIRTIO_NET=y
+CONFIG_NET_DSA_MSCC_FELIX=m
 CONFIG_AMD_XGBE=y
 CONFIG_NET_XGENE=y
 CONFIG_ATL1C=m
@@ -267,6 +269,8 @@ CONFIG_FEC=y
 CONFIG_FSL_FMAN=y
 CONFIG_FSL_DPAA_ETH=y
 CONFIG_FSL_DPAA2_ETH=y
+CONFIG_FSL_ENETC=y
+CONFIG_FSL_ENETC_VF=y
 CONFIG_HIX5HD2_GMAC=y
 CONFIG_HNS_DSAF=y
 CONFIG_HNS_ENET=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
