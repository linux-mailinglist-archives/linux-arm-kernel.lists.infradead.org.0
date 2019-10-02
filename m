Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25926C93F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 00:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7IND1uYD/9YDWeWhkWH24CFUsji2WMAKQBEfmmv1c0M=; b=pe/g8GWFkm5g+3
	TACH07rZO6eMQP7ofMTifFF38SUbUp8X4tWGczpu401E/J7PAJlSL/0OhpZvBv863TzoTqc7urVbE
	/Uuw3aYR3PyAPQ5mwCy3ANVP7gxMAdNmPHRTOIE2bVc7bRbM74fuAivZpbNtObCaWleyCwYltdFY3
	/CxAUeDN6JAOI4iTWaCUt21mrvo5p3lx3Y/Wxj3ytiZyk5/RYTRWeIhTempHajlPOo15l2jIA4+05
	7OFhB9uyjt5bOswvAOjMtB8lMR6JS0/JhR4uuMy9MuWKWusiJIKViaN4FsGz52cTRVPsMZShN4B7E
	kkOOihOVy2B5/XsB+OWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFmfz-0006NA-FV; Wed, 02 Oct 2019 22:00:51 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFmfr-0006Lb-Ui
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 22:00:45 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 268A1891A9;
 Thu,  3 Oct 2019 11:00:38 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1570053638;
 bh=YLkP+2lAHWkPfMgk6pb+w4QEvy7mnsmDv74TU3Uz62c=;
 h=From:To:Cc:Subject:Date;
 b=IwimoNCrsPFplXawmbt8wLuLtStub2nm0qotITdAm+Su6EDzjvmeEwP6xDbE/8knz
 +VQ16/PSyzdtoU2XwAyc+Eg3gtCcF+eJg7uRWZy84gFAdW0sg2HquLTbZCojqe0Qgg
 nzpIOifjgsYyYkAbXKBYGCsv7zUPYW8wpJp32ktC3KMvRVunNRLHyrH/EL5vcFzori
 GtVPv9VjOYkWobRJoWn8U2kVBAtw09eTJQXjQSZZSRrzoefRuqKb/jboBYLKRHAbKc
 lZI4viHWHZ5fLcDPJuKQNr29s2cTWBaGiZIV+X7ir3dGLqv/f1iLKdJy5fPahDWESA
 dnTS9t+GzSsDw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d951e060000>; Thu, 03 Oct 2019 11:00:38 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id B015913EEC9;
 Thu,  3 Oct 2019 11:00:41 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id D493228003E; Thu,  3 Oct 2019 11:00:37 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com
Subject: [PATCH] pinctrl: iproc: improve error handling
Date: Thu,  3 Oct 2019 11:00:33 +1300
Message-Id: <20191002220034.2034-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_150044_151356_F4EAE8E2 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

platform_get_irq() can return an error code. Allow for this when getting
the irq.  While we're here use the dev_name(dev) for the irqc->name so
that we get unique names when we have multiple instances of this driver.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
Noticed this while debugging another problem.

 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index 6f7d3a2f2e97..c24d49d436ce 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -853,12 +853,12 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 
 	/* optional GPIO interrupt support */
 	irq = platform_get_irq(pdev, 0);
-	if (irq) {
+	if (irq > 0) {
 		struct irq_chip *irqc;
 		struct gpio_irq_chip *girq;
 
 		irqc = &chip->irqchip;
-		irqc->name = "bcm-iproc-gpio";
+		irqc->name = dev_name(dev);
 		irqc->irq_ack = iproc_gpio_irq_ack;
 		irqc->irq_mask = iproc_gpio_irq_mask;
 		irqc->irq_unmask = iproc_gpio_irq_unmask;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
