Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF73F2E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4iLOTd8ZGJnEpYJrD4EWoUsmb/ZyNV96p9vd8YZJdk=; b=QUeAyjJIu5BkQr
	WlXbqIFA7ecwMwDHA8/wBLMwz1LlIesRCJmAFw3klJguwlje2MzXcDds640b9t/2gA6T1bNTiYqiP
	/LP0oOF+83V00AsQjvYSybOjKZ9w0HzBqnroywT4N4ETEVk3XPyfmo+tBNNUX3mN7It+dCTWH16Ci
	Qtt4pmV9xQKFCFZtl+lP+ovJYRFB4KPV6ObQedck+rIIMRF25MqVEF7rzquOe07ZDbV2h9LCKN/Z3
	tDmMgb+aQcC0f9UMUTgkZgSj176iTD/iyic4RNhO0z4PlybPiNTG105sE94M+ztjEAqaf026CAKlf
	td2lyVMCj7wvnDo7KyTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP5H-00086T-2X; Tue, 30 Apr 2019 09:29:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP4V-0007IK-EK
 for linux-arm-kernel@bombadil.infradead.org; Tue, 30 Apr 2019 09:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nyTwDaAdv+1pEhmnkVXPRYVpwX2wx5meeUtK7dtnZUg=; b=mf9fLglxaW8bSYJ/J4q36ICSVz
 0L7OP7/6wZg8QfXtc6PHUsoeMo+APsC99b72MXZ5Dr7fjbV9HN4MPCoeZx1onYtA/0TZvYZVTquPW
 ESmmCY/QNb8NNAevymNB6M9SWBL2texkbaNDPId3YFZDbv4NBJufHTV6YrROfI1LFs9sh9ZTmn7r1
 WSfz6+mSxb/3rq6LKPzVtUwwfVimASI5XCkD4tEVir3irS0kbZT0YxPudh4X1PIX8UUm1ckbih6ne
 QZbJMMyeT2KaAVCmOAel99LEV+NbOR4u3Ve7CfEyIAk9zRtHmSQrMS6Pt1IPuwyFiu/tuxip8skrG
 z06YU5bg==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP4R-00042i-Tg
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:29:06 +0000
X-Originating-IP: 109.213.14.175
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 899642000C;
 Tue, 30 Apr 2019 09:28:32 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH v2 7/7] rtc: jz4740: convert to SPDX identifier
Date: Tue, 30 Apr 2019 11:28:21 +0200
Message-Id: <20190430092821.27963-7-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
References: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_102904_056094_C9115A36 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Paul Cercueil <paul@crapouillou.net>, Mathieu Malaterre <malat@debian.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use SPDX-License-Identifier instead of a verbose license text.

Tested-by: Mathieu Malaterre <malat@debian.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-jz4740.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 6dd00b654f93..9e7b3a04debc 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -1,17 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  Copyright (C) 2009-2010, Lars-Peter Clausen <lars@metafoo.de>
  *  Copyright (C) 2010, Paul Cercueil <paul@crapouillou.net>
  *	 JZ4740 SoC RTC driver
- *
- *  This program is free software; you can redistribute it and/or modify it
- *  under  the terms of  the GNU General Public License as published by the
- *  Free Software Foundation;  either version 2 of the License, or (at your
- *  option) any later version.
- *
- *  You should have received a copy of the GNU General Public License along
- *  with this program; if not, write to the Free Software Foundation, Inc.,
- *  675 Mass Ave, Cambridge, MA 02139, USA.
- *
  */
 
 #include <linux/clk.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
