Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C079F17E7BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ztS6HlyMoQXsddIYSg+Zfpuhdi+fzSQserMSUoz9U/4=; b=V+s
	Uqw5sIcsj54R2pJKT4NRH97ZPF5c73L0yN3SRgRdBFjlgMDiDtdmKHmjDpYcVx+4WDFfoe3WSY8cn
	4/rQWpMGGnttFihrd8pcms7ChzVPr3vZu1ot9zi1/uGSESAOgrhPyqMS0zlEl2ir1Je9dOolYddTo
	RdwZxRs4+cfO6fPpfCxRobgY6dTOdwdXTpiJk2orKbYWxoJbfcVrQBBBUmyl/lE/Mr/AD66axymuA
	bjS5HS3VZMU/mymPUesi5OVr3eksZ/FS7U82ZEvMbZrjvnHy5N0k7IBcX5fd4J9As7bxSENlvIUrB
	vZZtZp9CooAiHrxK01B1CoS6HTe009w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNfe-0005rR-DM; Mon, 09 Mar 2020 19:02:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNfW-0005qv-EA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:02:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so5147048pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 12:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LqjgG/BRzXge1SRKmRz2Izg1e1FT7fpH0mgiegLZaD8=;
 b=f2+PRJpfuQtEeh3NodtIE9kNC/TOuTePSMQH5x7j3+liuDNeLVvUwcTT7z0D7ArA+P
 rxhFd9xEJh/cNudISU7Bzq1TAwrc3XdcK47YvYteWi6BEirAHUDbpUfzcIp3QpRJtd0/
 4RoW15JweTZaJHwrwi4U52yYTaYSHhMYiTWQu1CWXL2sJN+3og3dsW83rrOyqgTS+vPY
 jaeh6wLEHe7VtlkpIi0cSm4LC2+yfXzhxpNhlJ8Z+IUFHY+4vdBbGTDypLoCbnmsghCh
 CalEHE4ASU0O+un8fvGd6kgysDKeJlpGHUmtF4/7+l9M6TmN1L3XvhVUQsbLRvaUhX1A
 HZkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LqjgG/BRzXge1SRKmRz2Izg1e1FT7fpH0mgiegLZaD8=;
 b=Vx1xKC8CZGNkQx0cnSyhWFbe0fBBJI2IN8e6LPro0+kVl+XsjYVVVnEPXDR3f5Au99
 m52+l7YJIJpAFmxSY5nMA1WLkW5wkx2kO+U/sxOoAliDVLGh6pckGOZoIUK3sHWmNjF+
 9TYJPdCRliZm2eYZykwoof/Gs/dunzpYXThRiKgoZGY+H7qh0Xn9xlGoikRWJzh7FmNp
 eX1ZILoaf9q1mluuKPmH/8pjvFDLpfcZsXtvIwlsqw5Gtf0cYqJyxoe8qGZyGfyOCKJv
 RLE7umsm+BKxtQRe9II+NFfM65aHXUXWnpL3h/WFmAvTATZ83poG1iuZ8f7/2dUoj9V/
 numw==
X-Gm-Message-State: ANhLgQ1JXaiLgIDKB0niAUDPQULeobG1OXXZEdZvWUY8LtM+gvfo+65d
 nqtnc204ldNlSqYa785SMI0=
X-Google-Smtp-Source: ADFU+vsr6TmwDmzuNPLlgUI9yBuj0NFXy8B4HJffvWJ+MQY1DRFUMkUWr980hOOF+1FU799k+AJmig==
X-Received: by 2002:a62:6842:: with SMTP id d63mr18012944pfc.113.1583780545890; 
 Mon, 09 Mar 2020 12:02:25 -0700 (PDT)
Received: from stbirv-lnx-3.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v8sm289616pjr.10.2020.03.09.12.02.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Mar 2020 12:02:25 -0700 (PDT)
From: Doug Berger <opendmb@gmail.com>
To: Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH V2] gpio: brcmstb: support gpio-line-names property
Date: Mon,  9 Mar 2020 12:02:01 -0700
Message-Id: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_120226_503674_0E824ECB 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [opendmb[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 05e3f99ae59c..fcfc1a1f1a5c 100644
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
+	names = devm_kcalloc(dev, MAX_GPIO_PER_BANK, sizeof(*names),
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
+					base + i, ret);
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
