Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB1F1C261A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 16:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZONwZQi0SxeogFu7gKpdXPiT/wb6K9IzyWNSWmiuX2o=; b=Ur8Bd5vjK3yiNl
	rAPPuEARYy8DfDblIG8S1jtG5W4oYTtvWsU1aXUa9yKn2GHsCVXa2y+Fdu/hgnFL0oO/bzHJ81nvL
	StwQgMwnaCLCQoVXEeCVgeZ0sHO5vuP6Fn3wT6ThIw2ix1WLjS9RX5C0y5n8x7j07n0DXRu74ELyK
	OoZ51WJ36WTIoOiPm9Jqsp9g04/lEGSB1MBX3VuTssxTi6l0FhKPQAU57o5cYLCFZN+4y1SGKgkob
	jNPDXvHH9ifbCz1caYsN7HmT+rtbhaogTruIvVKUAzfRC1vYq1NefqXvGmEHACiH+eZKxfHK/ZzPn
	qoeKg5kSt8d9fvLXBT/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUt6d-0001Wf-Kn; Sat, 02 May 2020 14:27:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUt6W-0001Vj-UK
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 14:26:58 +0000
Received: from localhost (p5486C608.dip0.t-ipconnect.de [84.134.198.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DC2724957;
 Sat,  2 May 2020 14:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588429616;
 bh=CB2qIt0YCg9YgJ9w+bsz7dbW1Jd2EWMmQ+Y4nnyAh2Q=;
 h=From:To:Cc:Subject:Date:From;
 b=LUbyz7VZinr56lxLh69WLjCpZJL3uX7m/udTre8cgjcLU5NU9vvAgTkjzIoNAZcPd
 hwrOzm9whdu4cfAW4a8h2c2vDmwYg0a81ZuXzhNmLECwedwZZoUjAEXUj5EF23UUQt
 Tk0TzZJslz46Oufr4azQvVG+hK7aYkjK8ADHxSWo=
From: Wolfram Sang <wsa@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] watchdog: imx2_wdt: update contact email
Date: Sat,  2 May 2020 16:26:53 +0200
Message-Id: <20200502142653.19144-1-wsa@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_072656_995158_B36B4950 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Wolfram Sang <wsa@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Shawn Guo <shawnguo@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'pengutronix' address is defunct for years. Use the proper contact
address.

Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 drivers/watchdog/imx2_wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
index 1fe472f56cb3..b84f80f7d342 100644
--- a/drivers/watchdog/imx2_wdt.c
+++ b/drivers/watchdog/imx2_wdt.c
@@ -2,7 +2,7 @@
 /*
  * Watchdog driver for IMX2 and later processors
  *
- *  Copyright (C) 2010 Wolfram Sang, Pengutronix e.K. <w.sang@pengutronix.de>
+ *  Copyright (C) 2010 Wolfram Sang, Pengutronix e.K. <kernel@pengutronix.de>
  *  Copyright (C) 2014 Freescale Semiconductor, Inc.
  *
  * some parts adapted by similar drivers from Darius Augulis and Vladimir
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
