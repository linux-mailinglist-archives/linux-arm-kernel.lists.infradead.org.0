Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199F918254E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 23:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZAR/1FyHhfSaAJaxAmtKHwMj+Vu2Hb3LBhUCQ/lxU8=; b=firBWqNzNFUm5Y
	9iOyfd4bEcwI3alQLof7FOWdQ722gKWIjbeXhlH0iy8bvxwSDmVf6lJXYzGwdSuRbhHignB69/yS1
	D5T9peWg648p1m8tC2/hFlBaHySCocAw7L5xIoubL0vT4DIW8QIpfiPcklZjQsgOvkgc2ZDhgiv+U
	PPyRO3/FpZfIeZnSbI1dR9iNlkrX2QcaEfmXRMjN2L9Vtuv9Yex5+GVLzfXv6yNrNuEAFqvGJxxMf
	qHSjyvm/qTZXfTe5Mi9cgWMWUglvkiV8wxaG41q+LH8WwMW3tSkVWxSLccGCu3zlg/mAvw60LJ6jZ
	VQol27XKxRbwq7TUWKNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCAGM-0007Xl-NK; Wed, 11 Mar 2020 22:55:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCAEr-0004p0-Tf
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 22:54:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BA8821A0CB1;
 Wed, 11 Mar 2020 23:54:08 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8037D1A0CAE;
 Wed, 11 Mar 2020 23:54:08 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 BF3BF40A63; Wed, 11 Mar 2020 15:54:07 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: shawnguo@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/15] arm64: defconfig: Enable ENETC Ethernet controller
 and FELIX switch
Date: Wed, 11 Mar 2020 17:53:07 -0500
Message-Id: <20200311225317.11198-6-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200311225317.11198-1-leoyang.li@nxp.com>
References: <20200311225317.11198-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_155410_096080_51B42C49 
X-CRM114-Status: UNSURE (   6.57  )
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
