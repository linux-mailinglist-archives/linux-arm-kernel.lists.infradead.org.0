Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7371F6F3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 23:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KT491ga3EdYEoU3w8GZeW859p0TKAnwzxPD1ZjyLzqo=; b=kZDRYu6v7jIpLO
	Nx+cD+PujaIFGPC+DlxS0kFA4SPFKDK0ycg/pDNEJth8u9TY5Dhewv75NOTJ96noEjFnkQq09Jb3y
	J1mooAEev/qH8hPxdZgSZhT5yjkUJbM0G/TZ8h48M1EDGe8NYFx0PB3pqpTXBepNQHsFvsX7PL74l
	eid6akmIPfwinAwjvqUDGePCrFkPszbzTzdcjnrfln/WgiPIsYRi/YgkaDEEqhRi5+azw5dRG28uw
	fg/i2Atel24EHU+iTwtL2MVgMTSs/cBouUK25Qcqu72am/yjwhYpouNckEriGi8q+ai9jYuxvLVTd
	8LGeK28OKOGHYVeNxI3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjUVT-0000oE-KZ; Thu, 11 Jun 2020 21:13:03 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjUUb-00009z-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 21:12:12 +0000
Received: from [78.134.85.74] (port=40536 helo=melee.dev.aim)
 by hostingweb31.netsons.net with esmtpa (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jjUUP-000C9m-7w; Thu, 11 Jun 2020 23:11:57 +0200
From: Luca Ceresoli <luca@lucaceresoli.net>
To: linux-fpga@vger.kernel.org
Subject: [PATCH 5/5] fpga manager: xilinx-spi: check INIT_B pin during
 write_init
Date: Thu, 11 Jun 2020 23:11:44 +0200
Message-Id: <20200611211144.9421-5-luca@lucaceresoli.net>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200611211144.9421-1-luca@lucaceresoli.net>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca+lucaceresoli.net/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_141209_569278_0CEF7E95 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.40.174.40 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Moritz Fischer <mdf@kernel.org>, Luca Ceresoli <luca@lucaceresoli.net>,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The INIT_B reports the status during startup and after the end of the
programming process. However the current driver completely ignores it.

Check the pin status during startup to make sure programming is never
started too early and also to detect any hardware issues in the FPGA
connection.

This is optional for backward compatibility. If INIT_B is not passed by
device tree, just fallback to the old udelays.

Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
---
 drivers/fpga/xilinx-spi.c | 54 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/fpga/xilinx-spi.c b/drivers/fpga/xilinx-spi.c
index 799ae04301be..2710a15ed16b 100644
--- a/drivers/fpga/xilinx-spi.c
+++ b/drivers/fpga/xilinx-spi.c
@@ -23,6 +23,7 @@
 struct xilinx_spi_conf {
 	struct spi_device *spi;
 	struct gpio_desc *prog_b;
+	struct gpio_desc *init_b;
 	struct gpio_desc *done;
 };
 
@@ -36,11 +37,44 @@ static enum fpga_mgr_states xilinx_spi_state(struct fpga_manager *mgr)
 	return FPGA_MGR_STATE_UNKNOWN;
 }
 
+/**
+ * wait_for_init_b - wait for the INIT_B pin to have a given state, or wait
+ * a given delay if the pin is unavailable
+ *
+ * @mgr        The FPGA manager object
+ * @value      Value INIT_B to wait for (1 = asserted = low)
+ * @act_udelay Delay to wait if the INIT_B pin is not available
+ *
+ * Returns 0 when the pin reached the given state or -ETIMEDOUT if too much
+ * time passed waiting for that. If there is no INIT_B, always return 0.
+ */
+static int wait_for_init_b(struct fpga_manager *mgr, int value,
+			   unsigned long backup_udelay)
+{
+	struct xilinx_spi_conf *conf = mgr->priv;
+	unsigned long timeout = jiffies + msecs_to_jiffies(1000);
+
+	if (conf->init_b) {
+		while (time_before(jiffies, timeout)) {
+			/* dump_state(conf, "wait for init_d .."); */
+			if (gpiod_get_value(conf->init_b) == value)
+				return 0;
+			usleep_range(100, 400);
+		}
+		return -ETIMEDOUT;
+	}
+
+	udelay(backup_udelay);
+
+	return 0;
+}
+
 static int xilinx_spi_write_init(struct fpga_manager *mgr,
 				 struct fpga_image_info *info,
 				 const char *buf, size_t count)
 {
 	struct xilinx_spi_conf *conf = mgr->priv;
+	int err;
 
 	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
 		dev_err(&mgr->dev, "Partial reconfiguration not supported.\n");
@@ -49,10 +83,21 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
 
 	gpiod_set_value(conf->prog_b, 1);
 
-	udelay(1); /* min is 500 ns */
+	err = wait_for_init_b(mgr, 1, 1); /* min is 500 ns */
+	if (err) {
+		dev_err(&mgr->dev, "INIT_B pin did not go low\n");
+		gpiod_set_value(conf->prog_b, 0);
+		return err;
+	}
 
 	gpiod_set_value(conf->prog_b, 0);
 
+	err = wait_for_init_b(mgr, 0, 0);
+	if (err) {
+		dev_err(&mgr->dev, "INIT_B pin did not go high\n");
+		return err;
+	}
+
 	if (gpiod_get_value(conf->done)) {
 		dev_err(&mgr->dev, "Unexpected DONE pin state...\n");
 		return -EIO;
@@ -154,6 +199,13 @@ static int xilinx_spi_probe(struct spi_device *spi)
 		return PTR_ERR(conf->prog_b);
 	}
 
+	conf->init_b = devm_gpiod_get_optional(&spi->dev, "init_b", GPIOD_IN);
+	if (IS_ERR(conf->init_b)) {
+		dev_err(&spi->dev, "Failed to get INIT_B gpio: %ld\n",
+			PTR_ERR(conf->init_b));
+		return PTR_ERR(conf->init_b);
+	}
+
 	conf->done = devm_gpiod_get(&spi->dev, "done", GPIOD_IN);
 	if (IS_ERR(conf->done)) {
 		dev_err(&spi->dev, "Failed to get DONE gpio: %ld\n",
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
