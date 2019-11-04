Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4B9ED698
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 01:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOq++BhPDAvZCeyHAefrTjjazO3Ul9vAB3raaq25kI0=; b=GmqNUZxb5vHL+f
	X7W7M39657mOl2MlaS+1cjO9pyHRZpJQK/1mM3b6JlTQsv36bpFnp1XI9lf9xJCSoxzq8CTwIcX7/
	7Gi5ZmhMce9rO2Sl3uw2kEfmViCdrrLqkDwqjgvZGRGKVhia7SuRV4Eg5hYFKmsrdCuolzkqejix+
	+F1mRoUuGQV/mpDKKS2/mzaNATbWwYUg67Y8T0yZxDEBd/hhM55CGUlwVWj59J786Q1dwuWzqNSSB
	drY3WgIBXcwZPrB8w71BZdbwC75rWwHMVfUL0t5tAVQyk2y2jAiCj6PiQCZEPj54c5xtRGRJU7L1o
	g2Yv7nHzdJXpuXKvlXAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQ5J-00013C-8L; Mon, 04 Nov 2019 00:19:05 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQ51-0000uJ-39
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 00:18:48 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id CD48C891A9;
 Mon,  4 Nov 2019 13:18:22 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572826702;
 bh=Ww5LQFHvbo1fwdgP1bkCVCNF1HEAuKW3lV2I1m2dQwE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=uLNjZDL9Q4LJ7STNSwyA9ewHBZvwq80xe3ly/mU2sXD2NLQlsWv85cDVNdk0Ezv9I
 YtQC/28PkfNB8iR06X067h0iVWhGvlYWmSh/BxbhJojfIwFuYUZQ4rGBydZa9PxLBf
 mju8AV8yKCavZhmTu2AlyHujzl4W6cCF5QQKrqy3SxXzzoB/YZYL/rD96z0o2P6qam
 Au58QP6hbvNr2+AcDZnqZYLiA0ZaIXlwxS97djAMr26qhyzr80PAgXfniKUy+DAnA+
 Jl0HVdWBQFG07eQXdZGQA1hpIg8kUAZph5oNLWpmw7NZT/CL+vEcy+Qtoe2Vam8fUa
 nOftw1uzS39nw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5dbf6e4a0002>; Mon, 04 Nov 2019 13:18:21 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 6864B13EF97;
 Mon,  4 Nov 2019 13:18:18 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 927DD28005D; Mon,  4 Nov 2019 13:18:19 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v3 2/2] pinctrl: bcm: nsp: implement get_direction
Date: Mon,  4 Nov 2019 13:18:19 +1300
Message-Id: <20191104001819.2300-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191104001819.2300-1-chris.packham@alliedtelesis.co.nz>
References: <20191104001819.2300-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_161847_312953_C59F3AE0 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The get_direction api is strongly recommended to be implemented. In fact
if it is not implemented gpio-hogs will not get the correct direction.
Add an implementation of get_direction for the nsp-gpio driver.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---

Notes:
    Changes in v3:
    - add revew from Florian
    Changes in v2:
    - New

 drivers/pinctrl/bcm/pinctrl-nsp-gpio.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c b/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
index 45ae29b22548..bed0124388c0 100644
--- a/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
@@ -297,6 +297,19 @@ static int nsp_gpio_direction_output(struct gpio_chip *gc, unsigned gpio,
 	return 0;
 }
 
+static int nsp_gpio_get_direction(struct gpio_chip *gc, unsigned gpio)
+{
+	struct nsp_gpio *chip = gpiochip_get_data(gc);
+	unsigned long flags;
+	int val;
+
+	raw_spin_lock_irqsave(&chip->lock, flags);
+	val = nsp_get_bit(chip, REG, NSP_GPIO_OUT_EN, gpio);
+	raw_spin_unlock_irqrestore(&chip->lock, flags);
+
+	return !val;
+}
+
 static void nsp_gpio_set(struct gpio_chip *gc, unsigned gpio, int val)
 {
 	struct nsp_gpio *chip = gpiochip_get_data(gc);
@@ -641,6 +654,7 @@ static int nsp_gpio_probe(struct platform_device *pdev)
 	gc->free = gpiochip_generic_free;
 	gc->direction_input = nsp_gpio_direction_input;
 	gc->direction_output = nsp_gpio_direction_output;
+	gc->get_direction = nsp_gpio_get_direction;
 	gc->set = nsp_gpio_set;
 	gc->get = nsp_gpio_get;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
