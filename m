Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A1DAA571
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2QVf+gZ6O+RXwFBw0HigwDdl4jdxjS+ANswSnOlZPOA=; b=QHLHZ5TtFKh/xP
	nwOYM8A6GYPE5KzyvbBbAyCFCjtwASjc7gAfPtNJhQfSNxWSyMZ6fkoKHCyRbNXXavOSLvBcnQESx
	AXkJj3niVLcH8T+oe+9Jw4ZBWFw0c7IjNABSQPPI6S5BSEpcIGn57YG8vSIlj5v1ADc1FlYVBb7x2
	/lISahV9YYmToqlOdhoo2lv1E9QWjLvrt0RhThrJUcBtr3N8VZcM+UN0m2xMtMotLnl1YWYM8s2DK
	AQ9o2vWD9DYs353WfL6Sz8dnSFRrEA4lUv4awbvBSYhF1ewH8clGML3mNedE9p0mobN3wSnLEnfg9
	HmPtZymiM+5RQsZi7elQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sS7-0008KZ-OT; Thu, 05 Sep 2019 14:09:35 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sRy-0008IW-0i
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:09:27 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i5sRr-0001aJ-Mw; Thu, 05 Sep 2019 14:09:19 +0000
From: Colin King <colin.king@canonical.com>
To: Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] pinctrl: bcm: remove redundant assignment to pointer log
Date: Thu,  5 Sep 2019 15:09:19 +0100
Message-Id: <20190905140919.29283-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_070926_203172_0F4E9DEC 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The pointer log is being initialized with a value that is never read
and is being re-assigned a little later on. The assignment is
redundant and hence can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/pinctrl/bcm/pinctrl-cygnus-mux.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c b/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
index 44df35942a43..dcab2204c60c 100644
--- a/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
+++ b/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
@@ -923,7 +923,6 @@ static int cygnus_mux_log_init(struct cygnus_pinctrl *pinctrl)
 	if (!pinctrl->mux_log)
 		return -ENOMEM;
 
-	log = pinctrl->mux_log;
 	for (i = 0; i < CYGNUS_NUM_IOMUX_REGS; i++) {
 		for (j = 0; j < CYGNUS_NUM_MUX_PER_REG; j++) {
 			log = &pinctrl->mux_log[i * CYGNUS_NUM_MUX_PER_REG
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
