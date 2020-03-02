Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D05E1751F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 03:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/DIS1Dkw9swrTGu0UKEyVU10TCtrgki9TGJgnHcspcY=; b=Do+
	VYeLlXlaDA/rnlOqKAE+jiDKEtmckqAYLeDJ0+0WHu5ULQJuuowNlqiOsfoULDSimcEBsQhm4GlvY
	XofNxtAxPjBzszkMzrU+5NZ8/daKSSrJpJKJJVSOqGIdV3BplIIn9xxYRw0w1MNn9BnncNkYKNZjo
	M7vLMK5Wk+qJvqlIr1G0b0jUM6KOH9XkkMKEhkKTRnrvcu0OTd5Jk9gG0skzHcjk0w3sp529WkiBI
	t2qEbRys4EU4PECSPoUzEVAgv3xWU3Y7O1g5IUc/PnDSHdiljh7u17KQsnKASNLjvct8IpcUTkctC
	bTeFf5HAr8u4rkG10KL6Att7GlSwxHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8bHA-0000Xi-VW; Mon, 02 Mar 2020 02:57:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8bH0-0000Wu-On
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 02:57:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CB877200E2A;
 Mon,  2 Mar 2020 03:57:36 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1A0CF200C80;
 Mon,  2 Mar 2020 03:57:31 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 762004029E;
 Mon,  2 Mar 2020 10:57:24 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] thermal: imx_sc_thermal: Align imx sc thermal msg structs to 4
Date: Mon,  2 Mar 2020 10:51:25 +0800
Message-Id: <1583117485-30922-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_185738_945104_3B0EE75B 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX SCU API strongly assumes that messages are composed out
of 4-bytes words but some of our message structs have odd sizeofs,
use __packed __aligned(4) to avoid potential oopses.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
This patch is based on https://patchwork.kernel.org/patch/11397719/ which is accepted.
---
 drivers/thermal/imx_sc_thermal.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/imx_sc_thermal.c b/drivers/thermal/imx_sc_thermal.c
index 4955dfd..dbb277a 100644
--- a/drivers/thermal/imx_sc_thermal.c
+++ b/drivers/thermal/imx_sc_thermal.c
@@ -27,12 +27,12 @@ struct imx_sc_sensor {
 struct req_get_temp {
 	u16 resource_id;
 	u8 type;
-} __packed;
+} __packed __aligned(4);
 
 struct resp_get_temp {
 	u16 celsius;
 	u8 tenths;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_misc_get_temp {
 	struct imx_sc_rpc_msg hdr;
@@ -40,7 +40,7 @@ struct imx_sc_msg_misc_get_temp {
 		struct req_get_temp req;
 		struct resp_get_temp resp;
 	} data;
-};
+} __packed __aligned(4);
 
 static int imx_sc_thermal_get_temp(void *data, int *temp)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
