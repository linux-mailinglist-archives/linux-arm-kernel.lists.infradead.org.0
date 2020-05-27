Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7A11E44C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T62mhTJ14vmlnYyhWVaL0NE54AcUcewq5skTLUa0hAY=; b=aGf74v/JBFzIA6
	mLLOL6noN7THZgE+WnAcvSQTNAthcL9A9bkkOwV6VaXVnJGzIapFtYX00wojcd0rilW9eBfzr2Rmz
	KfwPD5Z4zMz1TwbswCAQdMA1qNNcps8EbepvoLmdFDIH5TPHI6JRyvuHoJwTD02qRsr6ETvIzV44y
	qGXiwl37REDFabOHznf1L726ts7iAZYuiv3JqacfNRdJ2QQcxW8MD1itrz5EgbNnzRpdx574owo57
	VW/edcMzVg5ejSaY16+L5akxuxXF5kZLr5auK53XqJvrPA3OMM+LQlcFgxF2ZFd+veN0JJl85lKLf
	yI//dGfmBUhiJO2TLO4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwXL-0000m0-E7; Wed, 27 May 2020 13:56:03 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwXB-0000km-CZ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:55:54 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E5A1780DB;
 Wed, 27 May 2020 13:56:39 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Flush posted write on enable and disable
Date: Wed, 27 May 2020 06:55:39 -0700
Message-Id: <20200527135539.49059-1-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_065553_467092_7B0A473B 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like we're missing flush of posted write after module enable and
disable. I've seen occasional errors accessing various modules, and it
is suspected that the lack of posted writes can also cause random reboots.

The errors we can see are similar to the one below from spi for example:

44000000.ocp:L3 Custom Error: MASTER MPU TARGET L4CFG (Read): Data Access
in User mode during Functional access
...
mcspi_wait_for_reg_bit
omap2_mcspi_transfer_one
spi_transfer_one_message
...

We also want to also flush posted write for disable. The clkctrl clock
disable happens after module disable, and we don't want to have the
module potentially stay active while we're trying to disable the clock.

Fixes: d59b60564cbf ("bus: ti-sysc: Add generic enable/disable functions")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -991,6 +991,9 @@ static int sysc_enable_module(struct device *dev)
 		sysc_write_sysconfig(ddata, reg);
 	}
 
+	/* Flush posted write */
+	sysc_read(ddata, ddata->offsets[SYSC_SYSCONFIG]);
+
 	if (ddata->module_enable_quirk)
 		ddata->module_enable_quirk(ddata);
 
@@ -1071,6 +1074,9 @@ static int sysc_disable_module(struct device *dev)
 		reg |= 1 << regbits->autoidle_shift;
 	sysc_write_sysconfig(ddata, reg);
 
+	/* Flush posted write */
+	sysc_read(ddata, ddata->offsets[SYSC_SYSCONFIG]);
+
 	return 0;
 }
 
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
