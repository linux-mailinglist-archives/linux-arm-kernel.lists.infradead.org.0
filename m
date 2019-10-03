Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48886C9557
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 02:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZBwgK1Eygsr5idSG7nWD05RvN5fc8bWov7qckdu5P4=; b=ZjxgzqqnG4m/7i
	coVPZ3RNxt53VzRX/4j7pmNLTH2Mppl2gAkQe+tH7Equ+Cuzoa9/rwGu9vit2p5zCI8haPn4CbXow
	R5e9IvyBTyD+YJeH1ou0XNVmNSqzdmjZcpEYPkg8AV23UPHopfhhVclzvbAnr2J/YG6x7EMn9AD23
	sLQW4gAr0Nb+KN1Pk4UzCg+fVm02mcSBMrqAJOHDwZ3regaxSDoaa4GV6zoMQkL9UW3D6brjHaw32
	YgnS0QCJFaGKBItAMXBEn7N4SGh+ZnBjlgspfG5JswHxwm88frWxZzNp8QS78en+3KDcT7rj4Qdwm
	nLhFORuFI0Z9EiWghmDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFob1-00062m-RV; Thu, 03 Oct 2019 00:03:51 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFoaW-0005dN-3l
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 00:03:23 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 7EFED891AB;
 Thu,  3 Oct 2019 13:03:13 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1570060993;
 bh=3VnnKl2LrhqjyKH1KQiZB7hJ16Qi3F1l1RHfX6a0Es4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=mjFuhjmSnsBfvlPu9H0nE3Tp+dSwoMoz2TEuBngeGK0Ef5ShLyNn+qHJ/OVwxP8OX
 lpT/9MdSmB7RCGZXZqhD/w5RHQwFV1UWaOfznTaaCChlWeK0rWbDXVq283RENMsDsU
 ds0no38E4UR5cDV1e8Jwzkh8VmEsPYdE9gcbSNYQOsNLCN/sevbTEQ4TAMURXcXTSl
 WEJIf/99w1nY2GSjVL/gNUQSDAU9f/HkhHCCLYgmf9GbuWOWQaMu3YSJdwYB84QAyX
 EMxW3fqvQAQgnBd58Pa+iDn7AAerdNGjtjhIKKWtjnVLeaOb48QHGQzFYExaFdXKIV
 Lsm1b/T45rssw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d953ac10002>; Thu, 03 Oct 2019 13:03:13 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 299E013EEC9;
 Thu,  3 Oct 2019 13:03:17 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 51FA928003E; Thu,  3 Oct 2019 13:03:13 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com
Subject: [PATCH v2 1/2] pinctrl: iproc: allow for error from platform_get_irq()
Date: Thu,  3 Oct 2019 13:03:09 +1300
Message-Id: <20191003000310.17099-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_170320_528709_EA82F183 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
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
the irq.

Fixes: 6f265e5d4da7 ("pinctrl: bcm-iproc: Pass irqchip when adding gpiochip")
Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index 6f7d3a2f2e97..8971fc54e974 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -853,7 +853,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 
 	/* optional GPIO interrupt support */
 	irq = platform_get_irq(pdev, 0);
-	if (irq) {
+	if (irq > 0) {
 		struct irq_chip *irqc;
 		struct gpio_irq_chip *girq;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
