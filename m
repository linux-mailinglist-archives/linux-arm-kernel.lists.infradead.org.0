Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038BE5AB47
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsP6SP6JBgB3XuBirm7Z8wqN5+jJhTIgRc5aT6GOy58=; b=UHW1ay0JOd+j9J
	phUS9GCa/xFH4SDoBvDWoCFxzo7rZb6WIldCclEw2B4japvjTCSp+LbykTMEnxDtiiGTKyL1Ryh70
	UXq4hFavxYiVjAOvK3rpiT8NEvuiJEwyq9jwRRu+o+HUbaXc58vONYRypmyLNmPJUnoML1LI0/FeY
	5aGlLCJlHhUD887QKR9k3kAKAgqkKgSriABZcdTWi3YBDR59JjMG1+x+WQeEkZirmQ3AiVES84wkT
	ljqGY/bSXWj9/AUy78h6dskBSETIO+XRdMGyyzqYAY5jlSn5XBPbDLpa2QCxgx8wKdvhYY1IiO3v5
	WCDltfBd9E6HLyh1fnjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhD0P-0005KK-UR; Sat, 29 Jun 2019 13:03:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCzT-0004j5-7u
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:02:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id t28so8594409lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 06:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lniFIm91gCkBVo8OT7Qc6rB8XEZiKvYZhCGqRwQxgRg=;
 b=R/OUJdhNfZGHaJoOsvmC50TZU4KNiySqOFuqTZkhUMlRuF2aiKO7gw52YdVXItSgcn
 yULpt7pmN8Q0FFQWwWXuiz9aPOeB3pvaPkb6xxb4hn467Tb4aGWSL9SCavDLu8IkKmmy
 qrTeh6vZQGGT0xcFf5zz72dp/fegF92Xn8K1lsaMp74Y52ZV+yXlor4P8xA3LvmbAVRg
 tyhC8dkj7Wq74VCB6f5GSAxCnIBTYFRJrgHvcNYjkbMf39LLwokl+2KRAWR7rROFUhJW
 510SqwEGSIvRO7vwvVY/+PCm/RmKugHh6Jbbn1ODQskyPdvHfCTEPIlI0+NbNPr/JqAa
 NqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lniFIm91gCkBVo8OT7Qc6rB8XEZiKvYZhCGqRwQxgRg=;
 b=toKn69zUT1X/OhcFG8hpmLrxXEdrknq4AhS1pVwwO99x/EbTLvVi2hY6lKMakxUIaf
 JNHW1yiKrV7mZRXh1DGE999WWmsasVVOty41TY9CPLFpCHm5oKrgoiM3kG80k0/yU9Qw
 k8TMp/KCUUnfDXrc5SGzysjL4FKXdt6qlPviFsfbSi2QVLgigC/DNzlS6A/9NP5PmYWV
 0XCKuwBllP2cdGzTeZa75aywxgHc6QeNCuWeGp8oKx7sEPyPW+4jsI7tzxuh5AVK4l7T
 pYDUe2Z/rP76j43cH3qKL+EhxqurKGfRcoaL+/SUogRoRcV2ylNS1G4AZAP5yelFnVKU
 nkEg==
X-Gm-Message-State: APjAAAX9GEGLHIPzn+xMtGNXTq9qu10KsBOhqXSGT7DqjhpwtGy0nM3A
 K1ORgRzqKgYbo+ee1p7LHqh3/g==
X-Google-Smtp-Source: APXvYqwVGU+xg50XiekYht3IIxEqFHM099dgUifn3T0K/F2g1KQaP1T9fAtfYeTQ4lNEuy0h1An6cA==
X-Received: by 2002:a2e:8744:: with SMTP id q4mr8768966ljj.77.1561813321447;
 Sat, 29 Jun 2019 06:02:01 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v2sm1354500lfi.52.2019.06.29.06.02.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 06:02:00 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 4/7] gpio: of: Support some legacy Qualcomm HDMI bindings
Date: Sat, 29 Jun 2019 14:59:30 +0200
Message-Id: <20190629125933.679-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190629125933.679-1-linus.walleij@linaro.org>
References: <20190629125933.679-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_060203_312151_691EF3F4 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 freedreno@lists.freedesktop.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Insteaf of the MSM DRM code going around and inspecting the
device tree nodes by itself to find "qcom,misc" GPIO phandles,
we add a quirk to the core so that if "qcom,misc-gpios" and
"qcom,misc-gpio" isn't found, we try to find just
"qcom,misc" as a last resort. Provide an explicit whitelist
for those GPIOs.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Rob/Sean: if the approach is overall OK I will merge this
one patch already for v5.3 so the rest can be queued for
v5.4 later.
---
 drivers/gpio/gpiolib-of.c | 43 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index aec7bd86ae7e..c927eaf6c88f 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -286,6 +286,45 @@ static struct gpio_desc *of_find_regulator_gpio(struct device *dev, const char *
 	return desc;
 }
 
+/*
+ * Some non-standard Qualcomm HDMI GPIOs need to be supported as they exist
+ * in random old device trees out there.
+ */
+static struct gpio_desc *of_find_hdmi_gpio(struct device *dev,
+					   const char *con_id,
+					   enum of_gpio_flags *of_flags)
+{
+	/*
+	 * These are the connection IDs we accept as legacy GPIO phandles.
+	 * If we get here, the same prefix ending with "-gpio" and "-gpios"
+	 * has already been tried so now we finally try with no suffix.
+	 */
+	const char *whitelist[] = {
+		"qcom,hdmi-tx-ddc-clk",
+		"qcom,hdmi-tx-ddc-data",
+		"qcom,hdmi-tx-hpd",
+		"qcom,hdmi-tx-mux-en",
+		"qcom,hdmi-tx-mux-sel",
+		"qcom,hdmi-tx-mux-lpm",
+	};
+	struct device_node *np = dev->of_node;
+	struct gpio_desc *desc;
+	int i;
+
+	if (!IS_ENABLED(CONFIG_DRM_MSM))
+		return ERR_PTR(-ENOENT);
+
+	if (!con_id)
+		return ERR_PTR(-ENOENT);
+
+	i = match_string(whitelist, ARRAY_SIZE(whitelist), con_id);
+	if (i < 0)
+		return ERR_PTR(-ENOENT);
+
+	desc = of_get_named_gpiod_flags(np, con_id, 0, of_flags);
+	return desc;
+}
+
 struct gpio_desc *of_find_gpio(struct device *dev, const char *con_id,
 			       unsigned int idx, unsigned long *flags)
 {
@@ -330,6 +369,10 @@ struct gpio_desc *of_find_gpio(struct device *dev, const char *con_id,
 	if (IS_ERR(desc) && PTR_ERR(desc) != -EPROBE_DEFER)
 		desc = of_find_regulator_gpio(dev, con_id, &of_flags);
 
+	/* Special handling for HDMI GPIOs if used */
+	if (IS_ERR(desc) && PTR_ERR(desc) != -EPROBE_DEFER)
+		desc = of_find_hdmi_gpio(dev, con_id, &of_flags);
+
 	if (IS_ERR(desc))
 		return desc;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
