Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851ADC9551
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 02:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oS49h70RG0r8hzYxkhkPJwM9oVHpjSH9StVjC9DPlZ4=; b=uY4bzeP6LfaCfw
	gHEp4g+Y5PRVjOvGbiosU/VWrvpP9eQ907XeSuMogkOPuU5Kgf9JrMct/v1muqzUz3xKupBoBGyuI
	mEWYbd7YPXD0rYWnYMqwRQ+RAF1L2br3cE1jzcjvW8uHkjovohajs8EJTTWhgFzarZcn6+1Ji4fQC
	6rAWPiq/4XVmgWDQiAAreVCmF7ERpg43fL3o3H+so0/pp0b0FsyBiJOyWXlTv8sm8LkIF+H9dY1sg
	7bnWwExlh8WPhM5nNltIRiYJCvMOQaXkbKD26UHyAVTQB5BEKhCtsNJVYcato2fCfXU8hYOHy3QY4
	TPWbnNDBks+vfwrGuXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFoap-0005n3-IL; Thu, 03 Oct 2019 00:03:39 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFoaW-0005dL-3t
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 00:03:22 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 95A36891AC;
 Thu,  3 Oct 2019 13:03:13 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1570060993;
 bh=iUvA3HctFAZbLaG023LjBql2W+ZBQfiEqjeVbF2OMeI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=K4uihTorKxE0T+IhKkM9Ri1yc2NhJIFE2zA/QLUImn6J2VPyvKBHT4anq5dgXcP/S
 c6QZry8JLXjQ88O6zL3+SbauIfUyRCq/cFyvGMSedncjAVFvgLuoqRFkbdYjl+1rA/
 u0BTNGyYgQ7KsZY7xiZ3cAv6WcnoHhfSpW6NEj/OxaYi/xanidPEwYwQJ04xHD3thi
 QYZ9LGTrhvJzTXQcXPdQE/oQpUumc2Xnp3eOxooLSYWAKnZxWwX8v1x66V9KWgJwM6
 /j5VGjTOE1ab9QIVBqPve2SbO4ch3e3Nedg15YYHPSlTeeiKod4YdwPzwwS8XPHTiR
 N5BRy3iwm8x+A==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d953ac20000>; Thu, 03 Oct 2019 13:03:14 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 4A36C13EEC9;
 Thu,  3 Oct 2019 13:03:17 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 729E228003E; Thu,  3 Oct 2019 13:03:13 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com
Subject: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
Date: Thu,  3 Oct 2019 13:03:10 +1300
Message-Id: <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_170320_526739_ECA530A4 
X-CRM114-Status: GOOD (  11.63  )
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

Use the dev_name(dev) for the irqc->name so that we get unique names
when we have multiple instances of this driver.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index 8971fc54e974..c24d49d436ce 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -858,7 +858,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
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
