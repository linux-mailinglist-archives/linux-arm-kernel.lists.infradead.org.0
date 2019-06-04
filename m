Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6687634498
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bc3efr7MQNhKXwWCD6pw13HIR+YVeUv+P9Q7U4hcpjA=; b=F75730LreZkv1V3QkH2BHgJ4CD
	lxfrBQToCrTzHp6qtqsUMZioSUn1MqQQJlvtyRToweqyELdppLhpSlD8musFXlNQ2cPyO8f56Q7u2
	Xb6uyYXrpgedtV1KCXuoQa7CRynpicQxOCOstR9RLa0cQmMBAXz+rqacWTaxbN8KwK18VTnZxW2Lj
	CjEoZn9LEcxxHiQTbWXH9K3olyfOhvf56Q/EwSFsQioqCDVELgh105+W1b0TZrPXocies3HsveAbp
	6IHjVerapMoVSsnC56fd2O056SqZcAae00553j/R/FQHJc+f1+LrxnWPmhlDdplUbVTTUAijnpJ06
	Ri+qgLnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6wh-0000vQ-J6; Tue, 04 Jun 2019 10:45:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6wB-0007ok-FJ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:45:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id w13so15238789wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 03:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=A0dgN5hMyM5nxH9+M3vRRIGFYdtXHLmFGt167GY3zJI=;
 b=DHDjY8W7XNwgZLrWs6Tbaf/vx11sNga7Bt6FMHM9T7hwa8GkndNSQBvuVNxuhwVnLC
 CmSYL3dxuhqZfnAng9Fj6BbpLFcDcCeFXCKhWKDEHRJTllPxEK/xFxJLgnTVkupDLvQs
 2+FLplp7gSQ1nlMo8mCnf+3tmok03BTwcuEtLI9n6LgUQ/RQVxhuS6PmOm35rtdI0uLj
 MTJE0qn6O0nQecJCUQgO0dajMXH90s1mNhc9Ax9vsrvbd/7VnruOU44JAk3lClJF2uEY
 XxCS1L4nRHo2Tdd1zgkaMv0onf2ZyNa9nq21lCWcHh/79BqgateHE8PYQwdpXhXWSi6B
 00Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=A0dgN5hMyM5nxH9+M3vRRIGFYdtXHLmFGt167GY3zJI=;
 b=fhMCtjUzpKrAHjBj3eHJLynj44z+cPoviUx1pi6W/+uzu05+SxE/HBUyKE4uxpCOyA
 k6/mF7sj+B+WK+x1BjNAtOIUoV/xyHcs20fzGOC/nnERe5lPBPgc3ikha7MQNbEQfytZ
 RcyEFMG3PXnFRNmvNM69mtNn9Sk8vDpGpHyBPzUzIU2T3TQ/A5nRkwejVtq+ubumvdQb
 S+YvOO1qs+wIkPVWkvosaZb2V/MA593EFVQgLESqN/EXQFLFMg/xArqAfNx84MUO8MXe
 WKUXrqekELy+RKYB2Pxwt9+/XQWiMlG+P19Ia0PE3REgJo5Bp4fSKH6snvNf9w/JEpP8
 5geQ==
X-Gm-Message-State: APjAAAXF9m+41iQy3dSsbpCDO9UN3+dXxQWUFqDbmhMztpb4ykucu8Km
 CJ8dsaFkGRtggFqIapKd7nehBw==
X-Google-Smtp-Source: APXvYqyfSmVLg+r7QIrO4AzYchY6fMxXo5LCqOKirQ0x3FpS7LhFRv57ogismPjwpMqYflYeC8wQFg==
X-Received: by 2002:adf:ff88:: with SMTP id j8mr1508854wrr.317.1559645101648; 
 Tue, 04 Jun 2019 03:45:01 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id t140sm2718623wmt.0.2019.06.04.03.45.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 03:45:01 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, kramasub@codeaurora.org, andy.gross@linaro.org,
 david.brown@linaro.org, wsa+renesas@sang-engineering.com,
 bjorn.andersson@linaro.org, linus.walleij@linaro.org, balbi@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Date: Tue,  4 Jun 2019 11:44:50 +0100
Message-Id: <20190604104455.8877-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604104455.8877-1-lee.jones@linaro.org>
References: <20190604104455.8877-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_034503_568073_A3BFCD9C 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When booting MSM based platforms with Device Tree or some ACPI
implementations, it is possible to provide a list of reserved pins
via the 'gpio-reserved-ranges' and 'gpios' properties respectively.
However some ACPI tables are not populated with this information,
thus it has to come from a knowledgable device driver instead.

Here we provide the MSM common driver with additional support to
parse this informtion and correctly populate the widely used
'valid_mask'.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/pinctrl/qcom/pinctrl-msm.c | 18 ++++++++++++++++++
 drivers/pinctrl/qcom/pinctrl-msm.h |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
index ee8119879c4c..b77f22348907 100644
--- a/drivers/pinctrl/qcom/pinctrl-msm.c
+++ b/drivers/pinctrl/qcom/pinctrl-msm.c
@@ -607,8 +607,23 @@ static int msm_gpio_init_valid_mask(struct gpio_chip *chip)
 	int ret;
 	unsigned int len, i;
 	unsigned int max_gpios = pctrl->soc->ngpios;
+	const int *reserved = pctrl->soc->reserved_gpios;
 	u16 *tmp;
 
+	/* Driver provided reserved list overrides DT and ACPI */
+	if (reserved) {
+		bitmap_fill(chip->valid_mask, max_gpios);
+		for (i = 0; i < max_gpios && reserved[i] >= 0; i++) {
+			if (i >= max_gpios || reserved[i] >= max_gpios) {
+				dev_err(pctrl->dev, "invalid list of reserved GPIOs\n");
+				return -EINVAL;
+			}
+			clear_bit(reserved[i], chip->valid_mask);
+		}
+
+		return 0;
+	}
+
 	/* The number of GPIOs in the ACPI tables */
 	len = ret = device_property_read_u16_array(pctrl->dev, "gpios", NULL,
 						   0);
@@ -964,6 +979,9 @@ static void msm_gpio_irq_handler(struct irq_desc *desc)
 
 static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
 {
+	if (pctrl->soc->reserved_gpios)
+		return true;
+
 	return device_property_read_u16_array(pctrl->dev, "gpios", NULL, 0) > 0;
 }
 
diff --git a/drivers/pinctrl/qcom/pinctrl-msm.h b/drivers/pinctrl/qcom/pinctrl-msm.h
index c12048e54a6f..23b93ae92269 100644
--- a/drivers/pinctrl/qcom/pinctrl-msm.h
+++ b/drivers/pinctrl/qcom/pinctrl-msm.h
@@ -121,6 +121,7 @@ struct msm_pinctrl_soc_data {
 	bool pull_no_keeper;
 	const char *const *tiles;
 	unsigned int ntiles;
+	const int *reserved_gpios;
 };
 
 extern const struct dev_pm_ops msm_pinctrl_dev_pm_ops;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
