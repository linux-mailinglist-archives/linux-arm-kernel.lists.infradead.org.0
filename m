Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3681F6F3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 23:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2hgN+yB63Bp88pepyMak8GLllBd1VMkx8FVlgJ27o4=; b=Iczubp5YcOggfL
	rl4MDlcSrGOIZzUKsGEWXXnuEZw4owUNZjw6dKSCvaK9rhN4A0eKqQJJJj1zyykz78nsJo6rY9Wms
	+SBp03EEkKvwNywI7EqCuxJC7qZTGn0IpCo59kguEbCxYwjRAXg6Xi2jopNSp/HHyoJvqQk74m/6W
	NxwJc4es4mej45emG3TIN1tz3Ss2iaQ4kmH1/v2qg/9EzYKp5t5i9bVO+6sEU0R/B5to+yJ5J0AtB
	Vt3bQaDvkce+XyAU3/aq96H/MWtD16n8a9PKkkXzQwwEl9QSkItL4RSmUfVk6cD/d6ojMiRDGxcXj
	XgjMpWHLn5Y34mW2jl1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjUV0-0000JG-Gu; Thu, 11 Jun 2020 21:12:34 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjUUb-00009x-BT
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 21:12:11 +0000
Received: from [78.134.85.74] (port=40536 helo=melee.dev.aim)
 by hostingweb31.netsons.net with esmtpa (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jjUUO-000C9m-KX; Thu, 11 Jun 2020 23:11:56 +0200
From: Luca Ceresoli <luca@lucaceresoli.net>
To: linux-fpga@vger.kernel.org
Subject: [PATCH 3/5] fpga manager: xilinx-spi: remove unneeded,
 mistyped variables
Date: Thu, 11 Jun 2020 23:11:42 +0200
Message-Id: <20200611211144.9421-3-luca@lucaceresoli.net>
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
X-CRM114-CacheID: sfid-20200611_141209_554139_9318DB96 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
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

Using variables does not add readability here: parameters passed
to udelay*() are obviously in microseconds and their meaning is clear
from the context.

The type is also wrong, udelay expects an unsigned long.

Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
---
 drivers/fpga/xilinx-spi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/fpga/xilinx-spi.c b/drivers/fpga/xilinx-spi.c
index 79106626c3f8..799ae04301be 100644
--- a/drivers/fpga/xilinx-spi.c
+++ b/drivers/fpga/xilinx-spi.c
@@ -41,8 +41,6 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
 				 const char *buf, size_t count)
 {
 	struct xilinx_spi_conf *conf = mgr->priv;
-	const size_t prog_latency_7500us = 7500;
-	const size_t prog_pulse_1us = 1;
 
 	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
 		dev_err(&mgr->dev, "Partial reconfiguration not supported.\n");
@@ -51,7 +49,7 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
 
 	gpiod_set_value(conf->prog_b, 1);
 
-	udelay(prog_pulse_1us); /* min is 500 ns */
+	udelay(1); /* min is 500 ns */
 
 	gpiod_set_value(conf->prog_b, 0);
 
@@ -61,7 +59,7 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
 	}
 
 	/* program latency */
-	usleep_range(prog_latency_7500us, prog_latency_7500us + 100);
+	usleep_range(7500, 7600);
 	return 0;
 }
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
