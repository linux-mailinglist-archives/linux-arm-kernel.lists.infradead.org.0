Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5007F17C982
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xpdP4+1rrD4kk1uS+8qKCIUgL4b2OjhZoAMPHOReEts=; b=VYt
	CbIZDUhQilqt45ScTfJjHmzL+y1cxOiEY8TnZCqpd74oxKRGPM6UADtyoME584z2ftxN7vWtnmbPt
	ALmlb2940Ahdcy+v6xorbgORPCj2AqOuwG16u1UWfHyolsXwe1O223LmuNRd68scjg6FXWmgTWWHi
	ZzDmgj6IQnzS3PGvCal45h128elVc3t9KwqxZ3mn9ocXIBYWEDdQ5GwcnJVWajyM658WEdOHZqR5n
	9DgT/LPtDu60zgSwp2MfFcCSPPapOTUBqlh73JYBUjLOmmLZ/N361qHMXS6Ypqeh1Mr2z3EEt2G4G
	ARua/oCDax0C4m6wACn4aP6AU7Zw8QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAN6d-0004fA-Sp; Sat, 07 Mar 2020 00:14:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAN6W-0004eM-S4
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 00:14:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id f5so1876850pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 16:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hDYVA9f/L/3nXUZdsuoFqZfc8mAyfA73aRbFdpVcGqc=;
 b=XB0ph0r+2HgvDAqyqb2/Cr6wxaivqkVjhN/an0c4Z18SEDlj3j+4OZbRp++gaoiWE1
 CHoKLbUWDokwbzHNDpAof3rST5/dNaCwTPUN1RHGDgYwfQDDqnv7ckUHmxjMHYPTQIuU
 VTJFP+ADKPDezmK3OZMypVinGO0XVPrEDwQsj2Gtxs7L678WJsknfqVF80FdMom3svQ0
 e2ehbodObuJMWROKY+bLKrttZou1tX2nFH6Hn+NJZpoiH+xqlnnly2BANkp6O0HLcAyn
 zZciGMmvs2lBzbUW1e6FiSNmMoPmOwKfc91+XwVAm8c1cDjWAijCNWF+90lQW9mnPKoI
 +8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hDYVA9f/L/3nXUZdsuoFqZfc8mAyfA73aRbFdpVcGqc=;
 b=Z/d8uUKbzLONNrF9apukBKSx/txbnWoUO63sUPRZ+ZAWLFtuBNAnlfqpGQChcYIcxk
 ZyE4ZHD8y/kEzgdVsT35dQUnWPXAGVNQh5Slh2DS7OTu2sdixXNvTueZ/irIJoIjwPMb
 NrPF2eZ/zV08FhxTml+JdOMFrikn1Do53gVM03EBTMfXTP7bKRm/si2jyWUCFRBBZADh
 rIH5wFvBjqtWppQJIWYljUGD98+X6dWwQKSCu9iTrBIgsdIer8iMUWUi51OQKY4JUGF1
 EdpJ2s++ITqGsOZb4fabsk+XIyI0la9wi2pu+hMRAgEz2DNGX7KH8xlRr7yv+pYUbzsa
 3JEw==
X-Gm-Message-State: ANhLgQ1yjqfv6orkbyI6hvYrb/p0k0BFKgrjO0eTyEXQWEb0LvYZD9gk
 0lVRKaQCou4Pd2ZOw/588zk=
X-Google-Smtp-Source: ADFU+vu081bHBamqDSIur/Av+nz1dI+BeMe/H/ym0Ex6y1uepe0Hnbawqf3vUFGAn/2q6whw0bk7tQ==
X-Received: by 2002:a62:17c8:: with SMTP id 191mr6287295pfx.105.1583540046576; 
 Fri, 06 Mar 2020 16:14:06 -0800 (PST)
Received: from stbirv-lnx-3.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h65sm14568846pfg.12.2020.03.06.16.14.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Mar 2020 16:14:06 -0800 (PST)
From: Doug Berger <opendmb@gmail.com>
To: Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH] gpio: brcmstb: support gpio-line-names property
Date: Fri,  6 Mar 2020 16:13:06 -0800
Message-Id: <1583539986-573-1-git-send-email-opendmb@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_161408_908713_587381C9 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [opendmb[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Doug Berger <opendmb@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The default handling of the gpio-line-names property by the
gpiolib-of implementation does not work with the multiple
gpiochip banks per device structure used by the gpio-brcmstb
driver.

This commit adds driver level support for the device tree
property so that GPIO lines can be assigned friendly names.

Signed-off-by: Doug Berger <opendmb@gmail.com>
---
 drivers/gpio/gpio-brcmstb.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/gpio/gpio-brcmstb.c b/drivers/gpio/gpio-brcmstb.c
index 05e3f99ae59c..e9ab246e2d42 100644
--- a/drivers/gpio/gpio-brcmstb.c
+++ b/drivers/gpio/gpio-brcmstb.c
@@ -603,6 +603,49 @@ static const struct dev_pm_ops brcmstb_gpio_pm_ops = {
 	.resume_noirq = brcmstb_gpio_resume,
 };
 
+static void brcmstb_gpio_set_names(struct device *dev,
+				   struct brcmstb_gpio_bank *bank)
+{
+	struct device_node *np = dev->of_node;
+	const char **names;
+	int nstrings, base;
+	unsigned int i;
+
+	base = bank->id * MAX_GPIO_PER_BANK;
+
+	nstrings = of_property_count_strings(np, "gpio-line-names");
+	if (nstrings <= base)
+		/* Line names not present */
+		return;
+
+	names = devm_kcalloc(dev, MAX_GPIO_PER_BANK, sizeof(char *),
+			     GFP_KERNEL);
+	if (!names)
+		return;
+
+	/*
+	 * Make sure to not index beyond the end of the number of descriptors
+	 * of the GPIO device.
+	 */
+	for (i = 0; i < bank->width; i++) {
+		const char *name;
+		int ret;
+
+		ret = of_property_read_string_index(np, "gpio-line-names",
+						    base + i, &name);
+		if (ret) {
+			if (ret != -ENODATA)
+				dev_err(dev, "unable to name line %d: %d\n",
+					i, ret);
+			break;
+		}
+		if (*name)
+			names[i] = name;
+	}
+
+	bank->gc.names = names;
+}
+
 static int brcmstb_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -726,6 +769,7 @@ static int brcmstb_gpio_probe(struct platform_device *pdev)
 		need_wakeup_event |= !!__brcmstb_gpio_get_active_irqs(bank);
 		gc->write_reg(reg_base + GIO_MASK(bank->id), 0);
 
+		brcmstb_gpio_set_names(dev, bank);
 		err = gpiochip_add_data(gc, bank);
 		if (err) {
 			dev_err(dev, "Could not add gpiochip for bank %d\n",
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
