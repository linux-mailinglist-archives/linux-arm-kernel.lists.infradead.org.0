Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9D041BD4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 07:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZY699RoPXE9JG4JnQrqsnlHA+UyFXUjYrMs0zbBG9Q=; b=tNz6L3Uq+LrOED
	vKeRJ1e+QykyiBKtJyDPsrda/z+LVe43JB4Glgyu1ZQE0mxOJbJvzR7C433usk3yLl1qCx5bjHjqJ
	26okwSpgS8zv0DPPBrPN0maYMQ7IkVrZiNDs2UFcThUAGFcAHZPx0Lb+zqwRvtdMpDsYBmMfRNg8b
	0oUyMvAxZ4/s+pH0WiVANmH8w71SKBQ7mVMHZT44PJHSO+j4i+xju3gs/DwtAnbTQCx7jPkENLyKU
	MsZdQCJzIRqGNdc/GD38XFQBQ5d4LrMtgPjNi+OfA+d4o+NW+R6kkDqfHCfIpJwJqOKsf6MPLrfOl
	icMUp2G3j2Q/NlV7PKOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawG7-0004XP-NY; Wed, 12 Jun 2019 05:57:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawF0-0003ey-SK; Wed, 12 Jun 2019 05:56:12 +0000
X-UUID: 5b544a3cc1614c96a1b4aa034781c92b-20190611
X-UUID: 5b544a3cc1614c96a1b4aa034781c92b-20190611
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 203891946; Tue, 11 Jun 2019 21:55:51 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 22:55:50 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 13:55:47 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 13:55:45 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 4/5] usb: mtu3: support force_vbus mode
Date: Wed, 12 Jun 2019 13:55:20 +0800
Message-ID: <80b3e7ed4d7719b854816dfdd974772999a2e672.1560246390.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
References: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_225610_951999_5A31EDD1 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Jumin
 Li <jumin.li@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some SoCs don't support Vbus detection due to non-exist Vbus PIN,
so software need set force_vbus state when the controller works
as device mode.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/usb/mtu3/mtu3.h      |  3 +++
 drivers/usb/mtu3/mtu3_core.c |  1 +
 drivers/usb/mtu3/mtu3_dr.c   |  2 ++
 drivers/usb/mtu3/mtu3_host.c |  1 +
 drivers/usb/mtu3/mtu3_plat.c | 23 +++++++++++++++++++++++
 5 files changed, 30 insertions(+)

diff --git a/drivers/usb/mtu3/mtu3.h b/drivers/usb/mtu3/mtu3.h
index 76ecf12fdf62..01b0dc9caa3e 100644
--- a/drivers/usb/mtu3/mtu3.h
+++ b/drivers/usb/mtu3/mtu3.h
@@ -231,6 +231,7 @@ struct otg_switch_mtk {
  * @u3p_dis_msk: mask of disabling usb3 ports, for example, bit0==1 to
  *		disable u3port0, bit1==1 to disable u3port1,... etc
  * @dbgfs_root: only used when supports manual dual-role switch via debugfs
+ * @force_vbus: without Vbus PIN, SW need set force_vbus state for device
  * @uwk_en: it's true when supports remote wakeup in host mode
  * @uwk: syscon including usb wakeup glue layer between SSUSB IP and SPM
  * @uwk_reg_base: the base address of the wakeup glue layer in @uwk
@@ -257,6 +258,7 @@ struct ssusb_mtk {
 	int u3_ports;
 	int u3p_dis_msk;
 	struct dentry *dbgfs_root;
+	bool force_vbus;
 	/* usb wakeup for host mode */
 	bool uwk_en;
 	struct regmap *uwk;
@@ -415,6 +417,7 @@ static inline void mtu3_clrbits(void __iomem *base, u32 offset, u32 bits)
 }
 
 int ssusb_check_clocks(struct ssusb_mtk *ssusb, u32 ex_clks);
+void ssusb_set_force_vbus(struct ssusb_mtk *ssusb, bool vbus_on);
 struct usb_request *mtu3_alloc_request(struct usb_ep *ep, gfp_t gfp_flags);
 void mtu3_free_request(struct usb_ep *ep, struct usb_request *req);
 void mtu3_req_complete(struct mtu3_ep *mep,
diff --git a/drivers/usb/mtu3/mtu3_core.c b/drivers/usb/mtu3/mtu3_core.c
index f8bd1d57e795..65aa382ffb85 100644
--- a/drivers/usb/mtu3/mtu3_core.c
+++ b/drivers/usb/mtu3/mtu3_core.c
@@ -604,6 +604,7 @@ static void mtu3_regs_init(struct mtu3 *mtu)
 	/* enable automatical HWRW from L1 */
 	mtu3_setbits(mbase, U3D_POWER_MANAGEMENT, LPM_HRWE);
 
+	ssusb_set_force_vbus(mtu->ssusb, true);
 	/* use new QMU format when HW version >= 0x1003 */
 	if (mtu->gen2cp)
 		mtu3_writel(mbase, U3D_QFCR, ~0x0);
diff --git a/drivers/usb/mtu3/mtu3_dr.c b/drivers/usb/mtu3/mtu3_dr.c
index 5fcb71af875a..006c5864ff45 100644
--- a/drivers/usb/mtu3/mtu3_dr.c
+++ b/drivers/usb/mtu3/mtu3_dr.c
@@ -173,8 +173,10 @@ static void ssusb_set_mailbox(struct otg_switch_mtk *otg_sx,
 	case MTU3_VBUS_OFF:
 		mtu3_stop(mtu);
 		pm_relax(ssusb->dev);
+		ssusb_set_force_vbus(ssusb, false);
 		break;
 	case MTU3_VBUS_VALID:
+		ssusb_set_force_vbus(ssusb, true);
 		/* avoid suspend when works as device */
 		pm_stay_awake(ssusb->dev);
 		mtu3_start(mtu);
diff --git a/drivers/usb/mtu3/mtu3_host.c b/drivers/usb/mtu3/mtu3_host.c
index c871b94f3e6f..7618a0c384f9 100644
--- a/drivers/usb/mtu3/mtu3_host.c
+++ b/drivers/usb/mtu3/mtu3_host.c
@@ -205,6 +205,7 @@ static void ssusb_host_setup(struct ssusb_mtk *ssusb)
 		ssusb_set_force_mode(ssusb, MTU3_DR_FORCE_HOST);
 
 	/* if port0 supports dual-role, works as host mode by default */
+	ssusb_set_force_vbus(ssusb, false);
 	ssusb_set_vbus(&ssusb->otg_switch, 1);
 }
 
diff --git a/drivers/usb/mtu3/mtu3_plat.c b/drivers/usb/mtu3/mtu3_plat.c
index fd0f6c5dfbc1..e9d313e92fc3 100644
--- a/drivers/usb/mtu3/mtu3_plat.c
+++ b/drivers/usb/mtu3/mtu3_plat.c
@@ -45,6 +45,27 @@ int ssusb_check_clocks(struct ssusb_mtk *ssusb, u32 ex_clks)
 	return 0;
 }
 
+void ssusb_set_force_vbus(struct ssusb_mtk *ssusb, bool vbus_on)
+{
+	u32 u2ctl;
+	u32 misc;
+
+	if (!ssusb->force_vbus)
+		return;
+
+	u2ctl = mtu3_readl(ssusb->ippc_base, SSUSB_U2_CTRL(0));
+	misc = mtu3_readl(ssusb->mac_base, U3D_MISC_CTRL);
+	if (vbus_on) {
+		u2ctl &= ~SSUSB_U2_PORT_OTG_SEL;
+		misc |= VBUS_FRC_EN | VBUS_ON;
+	} else {
+		u2ctl |= SSUSB_U2_PORT_OTG_SEL;
+		misc &= ~(VBUS_FRC_EN | VBUS_ON);
+	}
+	mtu3_writel(ssusb->ippc_base, SSUSB_U2_CTRL(0), u2ctl);
+	mtu3_writel(ssusb->mac_base, U3D_MISC_CTRL, misc);
+}
+
 static int ssusb_phy_init(struct ssusb_mtk *ssusb)
 {
 	int i;
@@ -268,6 +289,8 @@ static int get_ssusb_rscs(struct platform_device *pdev, struct ssusb_mtk *ssusb)
 	if (IS_ERR(ssusb->ippc_base))
 		return PTR_ERR(ssusb->ippc_base);
 
+	ssusb->force_vbus = of_property_read_bool(node, "mediatek,force-vbus");
+
 	ssusb->dr_mode = usb_get_dr_mode(dev);
 	if (ssusb->dr_mode == USB_DR_MODE_UNKNOWN)
 		ssusb->dr_mode = USB_DR_MODE_OTG;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
