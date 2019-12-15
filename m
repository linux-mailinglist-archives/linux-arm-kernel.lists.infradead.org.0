Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A4811FB59
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 22:05:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w4J/uybM6nvxqp/qFarrdkbiY41ir4FvG+AI1kDyZCI=; b=kTsHwO3h2kKnIt
	TtIiqeA57JrIdvfrTddsxpUwpBDzqfLPlVMSMnAIpD/WbMy3x/GJ+UttsgJBZrlFnu0G7IDVaC/Bt
	SixEatXqkuAZiQNDLSieI9+QEzrARQtKIUtRJwvzKpr+v6a4tYnOBULbDkco+guiIFf2sx4MdVobj
	qL5JGD5MyFfPMpmcFEojaUOBX9kQD9YWS5U0ci2Csp3sMjcr0C8mhL1m47VfJ4CUBOly8dydVipo7
	VVZlMOBbevrjEQYUZ2aGXDK3oPWPIDmWkcE04KjEMVRjyRuS5DtVkNih9A+TIHhg+ZVWgHkIGkP7T
	mVKMApKt8OPz3vmrFIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igb5Q-0001Pb-Uh; Sun, 15 Dec 2019 21:05:56 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igb55-0001Ft-Np
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 21:05:37 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 45370891AC;
 Mon, 16 Dec 2019 10:05:10 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1576443910;
 bh=B17L/LC4Pm0ZcN7G12j2beHk5JASujxIbHNMPhRgl64=;
 h=From:To:Cc:Subject:Date;
 b=h3oNptCS2SIfUEpx6WYwTtiiUZ0KYLmQguQZVc3yEQliYop243eVFsFcMZBKu/sIT
 J553w0r8YXSQzXpsAHGMN/QYrif4oFwYFuyrVKvDspZHv54KL1Y82/utiFKicyCP1N
 r8nojL2SUIBOGa1TJe1UjGzoaza5dy0KUF3Nxbf+Oj8jLtiNamGmcBo5xCMNm6421K
 Xbr1mX1NWiFgu+VP4APTslcLpo6qhRBhlgreWxTyUM0/3Q5eLTbfQlJsQcfbIrHHYc
 Dkmyr2ylnYLVw00i/N0+Dfqlpvm/7LXy2QtF+i5Gp2Fcxfx0xBiJ4gVa5VYOLxm2Gs
 kiaPJkKWuJ6vA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5df6a0060000>; Mon, 16 Dec 2019 10:05:10 +1300
Received: from hamishm-dl.ws.atlnz.lc (hamishm-dl.ws.atlnz.lc [10.33.24.30])
 by smtp (Postfix) with ESMTP id 49F4D13EEA8;
 Mon, 16 Dec 2019 10:05:07 +1300 (NZDT)
Received: by hamishm-dl.ws.atlnz.lc (Postfix, from userid 1133)
 id 0F54F540430; Mon, 16 Dec 2019 10:05:10 +1300 (NZDT)
From: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
To: linus.walleij@linaro.org,
	rjui@broadcom.com,
	sbranden@broadcom.com
Subject: [PATCH v2 0/1] pinctrl: iproc: Fix level interrupt handling
Date: Mon, 16 Dec 2019 10:05:02 +1300
Message-Id: <20191215210503.15488-1-hamish.martin@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_130536_128046_E08EF239 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org,
 Hamish Martin <hamish.martin@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An issue is seen on the BCM56060 SoC using the pinctrl-iproc-gpio.c driver
for one of its GPIO blocks.
When a GPIO on this block is used as a level sensitive interrupt the
downstream handler is not invoked until the level returns to its previous
(non-interrupting) state. This makes the level sensitive interrupts
unusable. Edge sensitive interrupts are not affected.

The fix is to simply ensure that we use a more appropriate handler
(handle_level_irq) for the interrupt based on what trigger type has been
configured.
Similar setting of the handler is done in numerous other drivers.

v2: Fixes for Ray Jui's review comments.

Hamish Martin (1):
  pinctrl: iproc: Set irq handler based on trig type

 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
