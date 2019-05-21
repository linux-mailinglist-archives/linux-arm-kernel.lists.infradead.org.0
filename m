Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB88E24A26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+/1gAGJ+vDgPcCdTs+CsIVqW0PsuOnXjvLIaDn8/Ew=; b=T9DZUv1hBht8K7
	6PnfKWzrBjyomzbLcwIpWBsQaNLBKsd+O20KfEMrNyf55UKZpT/+rqoD/qpvrfZK+oeBk5h7u3LGt
	Ohkl6aK5QW7lCG9P7TqmHh294257AHAgoZlaOkL1xp3ABuIf0++/2thhIVA6QeGg/r2sfw2kwtbnA
	BawIot/KjFECqMwZBleS6sehGRaPM6teh5x1VbCNGSDJkBH74C0aEQjRewZxTfuj1G1xaOacplCtt
	FvqAuQkQm+iLowla6t+KgSqUu1A9M9QdAETZ8ZS9+NoktbNZw5P5SJLxhXAXIehrBClSq07wBRi+O
	IIDzTyx5SMOYYzlg49zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT01y-0001Fz-1x; Tue, 21 May 2019 08:21:54 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT01p-0001DQ-Rw
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:21:47 +0000
Received: from localhost (p54B334E1.dip0.t-ipconnect.de [84.179.52.225])
 by pokefinder.org (Postfix) with ESMTPSA id B506A2C775D;
 Tue, 21 May 2019 10:21:44 +0200 (CEST)
From: Wolfram Sang <wsa@the-dreams.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/8] MAINTAINERS: add I2C DT bindings to Zynq platform
Date: Tue, 21 May 2019 10:21:30 +0200
Message-Id: <20190521082137.2889-2-wsa@the-dreams.de>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521082137.2889-1-wsa@the-dreams.de>
References: <20190521082137.2889-1-wsa@the-dreams.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_012146_053669_760D5197 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Michal Simek <michal.simek@xilinx.com>, linux-i2c@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Cc: Michal Simek <michal.simek@xilinx.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 509a8e6d2dcc..5cb019f8e597 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2532,6 +2532,8 @@ F:	drivers/cpuidle/cpuidle-zynq.c
 F:	drivers/block/xsysace.c
 N:	zynq
 N:	xilinx
+F:	Documentation/devicetree/bindings/i2c/i2c-cadence.txt
+F:	Documentation/devicetree/bindings/i2c/i2c-xiic.txt
 F:	drivers/clocksource/timer-cadence-ttc.c
 F:	drivers/i2c/busses/i2c-cadence.c
 F:	drivers/mmc/host/sdhci-of-arasan.c
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
