Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC87159B0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 22:24:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GTxpGPB0zMEmhJeSZuyBErXeDT/W4YGMiZxmFvaFe+0=; b=Ea9
	oeeju7/rlYTKvf82WQDbbuDMstftzztSRVuwED7PqLoe4roBF0S3peyJV73sDM7ezY57lVBv53EBz
	rQraCeAgr8A5NsagU/Zmid0yZUq1QNjRlhorfoUWLtAUMioMzAx2ete0TaYqSkMzeTaLxRDlFzswy
	gvvnVG2iJiGdlEew/sjcVhrKROMLidXFA5Zy2WA2hD7Nej0NdkKIXtMUh0JvFFIef50+RaSUfNUya
	FZQQ+i+kdRTopEEpjWu2fiw/r6UPOgxGQepJbHf+kmk0BXDHe4Z/+SU3Ga7nqPhS7WIRVkO/WHfX0
	mrvdWIs0PPaTbAm0PLpF4ricSr+VH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1d1V-0001TW-RQ; Tue, 11 Feb 2020 21:24:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1d1M-0001S1-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 21:24:42 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B86E1C5C1B;
 Tue, 11 Feb 2020 22:24:36 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8E74D1A11E6;
 Tue, 11 Feb 2020 22:24:36 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D8D4F20567;
 Tue, 11 Feb 2020 22:24:35 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH] firmware: imx: Align imx SC msg structs to 4
Date: Tue, 11 Feb 2020 23:24:33 +0200
Message-Id: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_132440_935075_DF6C5EAA 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: "open list:REAL TIME CLOCK RTC SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 Franck LENORMAND <franck.lenormand@nxp.com>,
 "open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx SC api strongly assumes that messages are composed out of
4-bytes words but some of our message structs have sizeof "6" and "7".

This produces many oopses with CONFIG_KASAN=y:

	BUG: KASAN: stack-out-of-bounds in imx_mu_send_data+0x108/0x1f0

It shouldn't cause an issues in normal use because these structs are
always allocated on the stack.

Cc: stable@vger.kernel.org
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reported-by: Iuliana Prodan <iuliana.prodan@nxp.com>
---
 drivers/clk/imx/clk-scu.c               | 8 ++++----
 drivers/firmware/imx/misc.c             | 8 ++++----
 drivers/firmware/imx/scu-pd.c           | 2 +-
 drivers/pinctrl/freescale/pinctrl-scu.c | 4 ++--
 drivers/rtc/rtc-imx-sc.c                | 2 +-
 drivers/soc/imx/soc-imx-scu.c           | 2 +-
 6 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
index fbef740704d0..b8b2072742a5 100644
--- a/drivers/clk/imx/clk-scu.c
+++ b/drivers/clk/imx/clk-scu.c
@@ -41,16 +41,16 @@ struct clk_scu {
 struct imx_sc_msg_req_set_clock_rate {
 	struct imx_sc_rpc_msg hdr;
 	__le32 rate;
 	__le16 resource;
 	u8 clk;
-} __packed;
+} __packed __aligned(4);
 
 struct req_get_clock_rate {
 	__le16 resource;
 	u8 clk;
-} __packed;
+} __packed __aligned(4);
 
 struct resp_get_clock_rate {
 	__le32 rate;
 };
 
@@ -82,11 +82,11 @@ struct imx_sc_msg_get_clock_parent {
 	struct imx_sc_rpc_msg hdr;
 	union {
 		struct req_get_clock_parent {
 			__le16 resource;
 			u8 clk;
-		} __packed req;
+		} __packed __aligned(4) req;
 		struct resp_get_clock_parent {
 			u8 parent;
 		} resp;
 	} data;
 };
@@ -119,11 +119,11 @@ struct imx_sc_msg_req_clock_enable {
 	struct imx_sc_rpc_msg hdr;
 	__le16 resource;
 	u8 clk;
 	u8 enable;
 	u8 autog;
-} __packed;
+} __packed __aligned(4);
 
 static inline struct clk_scu *to_clk_scu(struct clk_hw *hw)
 {
 	return container_of(hw, struct clk_scu, hw);
 }
diff --git a/drivers/firmware/imx/misc.c b/drivers/firmware/imx/misc.c
index 4b56a587dacd..d073cb3ce699 100644
--- a/drivers/firmware/imx/misc.c
+++ b/drivers/firmware/imx/misc.c
@@ -14,30 +14,30 @@
 struct imx_sc_msg_req_misc_set_ctrl {
 	struct imx_sc_rpc_msg hdr;
 	u32 ctrl;
 	u32 val;
 	u16 resource;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_req_cpu_start {
 	struct imx_sc_rpc_msg hdr;
 	u32 address_hi;
 	u32 address_lo;
 	u16 resource;
 	u8 enable;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_req_misc_get_ctrl {
 	struct imx_sc_rpc_msg hdr;
 	u32 ctrl;
 	u16 resource;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_resp_misc_get_ctrl {
 	struct imx_sc_rpc_msg hdr;
 	u32 val;
-} __packed;
+} __packed __aligned(4);
 
 /*
  * This function sets a miscellaneous control value.
  *
  * @param[in]     ipc         IPC handle
diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index b556612207e5..af3ae0087de4 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -59,11 +59,11 @@
 /* SCU Power Mode Protocol definition */
 struct imx_sc_msg_req_set_resource_power_mode {
 	struct imx_sc_rpc_msg hdr;
 	u16 resource;
 	u8 mode;
-} __packed;
+} __packed __aligned(4);
 
 #define IMX_SCU_PD_NAME_SIZE 20
 struct imx_sc_pm_domain {
 	struct generic_pm_domain pd;
 	char name[IMX_SCU_PD_NAME_SIZE];
diff --git a/drivers/pinctrl/freescale/pinctrl-scu.c b/drivers/pinctrl/freescale/pinctrl-scu.c
index 73bf1d9f9cc6..23cf04bdfc55 100644
--- a/drivers/pinctrl/freescale/pinctrl-scu.c
+++ b/drivers/pinctrl/freescale/pinctrl-scu.c
@@ -21,16 +21,16 @@ enum pad_func_e {
 
 struct imx_sc_msg_req_pad_set {
 	struct imx_sc_rpc_msg hdr;
 	u32 val;
 	u16 pad;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_req_pad_get {
 	struct imx_sc_rpc_msg hdr;
 	u16 pad;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_resp_pad_get {
 	struct imx_sc_rpc_msg hdr;
 	u32 val;
 } __packed;
diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
index cf2c12107f2b..a5f59e6f862e 100644
--- a/drivers/rtc/rtc-imx-sc.c
+++ b/drivers/rtc/rtc-imx-sc.c
@@ -35,11 +35,11 @@ struct imx_sc_msg_timer_rtc_set_alarm {
 	u8 mon;
 	u8 day;
 	u8 hour;
 	u8 min;
 	u8 sec;
-} __packed;
+} __packed __aligned(4);
 
 static int imx_sc_rtc_read_time(struct device *dev, struct rtc_time *tm)
 {
 	struct imx_sc_msg_timer_get_rtc_time msg;
 	struct imx_sc_rpc_msg *hdr = &msg.hdr;
diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
index fb70b8a3f7c5..20d37eaeb5f2 100644
--- a/drivers/soc/imx/soc-imx-scu.c
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -23,11 +23,11 @@ struct imx_sc_msg_misc_get_soc_id {
 		} __packed req;
 		struct {
 			u32 id;
 		} resp;
 	} data;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_misc_get_soc_uid {
 	struct imx_sc_rpc_msg hdr;
 	u32 uid_low;
 	u32 uid_high;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
