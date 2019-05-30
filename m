Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0612FD98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CGG3CorEVMPEbi2gcIDdRyjwgrEsz4OdJnSXHphqPP4=; b=Kn4CIFONFKd3VeqJ+kDU5mfT7w
	yaOdhX0i5wgbk/NRF58Ui1B52ZPWKxNYBTv5jVwI5X1w3JQHc4KfFqOxOi0XTzMAnBSIxtZMPwBNM
	ykmGISqedVEEQGtyI5JBj5nqX8g3N9kKmH0H/eubE3vGcJe/cJnKTxK7K7c57BwIgYR9r6vjgmYz4
	oNg4Lr5qsuH6cftZlZhvaOv4Hfl/V0eXlvHRzX3++9ONzXaIaXL107/VOdqLT2t5tdEm9aDXxHC2k
	WuLlyXfnIHDnb/1ekHCb57nELfMiCdQ6AyBcE0u6Jthf9asQmHpMP0uOc3cE2KGXgX4GnDpddO9Cm
	yhlopcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLwX-0007DZ-PJ; Thu, 30 May 2019 14:22:09 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLuS-0003vU-1d
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:20:01 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C226B2005D7;
 Thu, 30 May 2019 16:19:54 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B4BD620027F;
 Thu, 30 May 2019 16:19:54 +0200 (CEST)
Received: from fsr-ub1864-101.ea.freescale.net
 (fsr-ub1864-101.ea.freescale.net [10.171.82.13])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2BF522061C;
 Thu, 30 May 2019 16:19:54 +0200 (CEST)
From: laurentiu.tudor@nxp.com
To: netdev@vger.kernel.org, madalin.bucur@nxp.com, roy.pledge@nxp.com,
 camelia.groza@nxp.com, leoyang.li@nxp.com
Subject: [PATCH v3 2/6] fsl/fman: add API to get the device behind a fman port
Date: Thu, 30 May 2019 17:19:47 +0300
Message-Id: <20190530141951.6704-3-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_072000_383532_72CC9202 
X-CRM114-Status: UNSURE (   8.18  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, Joakim.Tjernlund@infinera.com,
 iommu@lists.linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

Add an API that retrieves the 'struct device' that the specified fman
port probed against. The new API will be used in a subsequent iommu
enablement related patch.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Acked-by: Madalin Bucur <madalin.bucur@nxp.com>
---
 drivers/net/ethernet/freescale/fman/fman_port.c | 14 ++++++++++++++
 drivers/net/ethernet/freescale/fman/fman_port.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/freescale/fman/fman_port.c b/drivers/net/ethernet/freescale/fman/fman_port.c
index ee82ee1384eb..bd76c9730692 100644
--- a/drivers/net/ethernet/freescale/fman/fman_port.c
+++ b/drivers/net/ethernet/freescale/fman/fman_port.c
@@ -1728,6 +1728,20 @@ u32 fman_port_get_qman_channel_id(struct fman_port *port)
 }
 EXPORT_SYMBOL(fman_port_get_qman_channel_id);
 
+/**
+ * fman_port_get_device
+ * port:	Pointer to the FMan port device
+ *
+ * Get the 'struct device' associated to the specified FMan port device
+ *
+ * Return: pointer to associated 'struct device'
+ */
+struct device *fman_port_get_device(struct fman_port *port)
+{
+	return port->dev;
+}
+EXPORT_SYMBOL(fman_port_get_device);
+
 int fman_port_get_hash_result_offset(struct fman_port *port, u32 *offset)
 {
 	if (port->buffer_offsets.hash_result_offset == ILLEGAL_BASE)
diff --git a/drivers/net/ethernet/freescale/fman/fman_port.h b/drivers/net/ethernet/freescale/fman/fman_port.h
index 9dbb69f40121..82f12661a46d 100644
--- a/drivers/net/ethernet/freescale/fman/fman_port.h
+++ b/drivers/net/ethernet/freescale/fman/fman_port.h
@@ -157,4 +157,6 @@ int fman_port_get_tstamp(struct fman_port *port, const void *data, u64 *tstamp);
 
 struct fman_port *fman_port_bind(struct device *dev);
 
+struct device *fman_port_get_device(struct fman_port *port);
+
 #endif /* __FMAN_PORT_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
