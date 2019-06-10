Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD43B0ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aD3tUgfP7LxL0w2Q3d/XzSrVFZvuwOy13RJDcPVnkMM=; b=DL6PT2l26dF9WPBl97Q200ShR3
	Nfx2+mnx3AbAlGFVO9x8NKiOJRLvzQMuIHwre6fsT2HJCU2t4pizGstM/6rDN6K09DXUmANUxdIO+
	JYKCmzmy0seHO30Hh/Gq2+EpVA4xeZGGeHlsUzwcuAWYxJaToYDl64IptP5fopPS8U0x50wYjb6nt
	bXnoMEfcyDPi5TicJpzYFkapuc02/EkZmdAhmutaiossGjBsaXC74gh9UZamVNWIBCKk0ogA8GhIP
	tzzWhN1e4N/wRbnlJpbiOtDiTOf3TxILS5uGtwyEJ+2JmDOuRJXBJfBl/ah7OrC/ENhdj9DldLKy4
	eqTaF8RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFte-0002ld-VU; Mon, 10 Jun 2019 08:43:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFsh-0002C1-VK
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:42:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so5596304wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qYq7mFFCoR+D5QhtdnXfa7L63GrDNr+4aaRo7anMzNg=;
 b=HAQGPWUrBC+m/uOp1ExdylTBwwXMRfgop11L7pNji5XWXcPZW+6ErRLi511mBcytaZ
 W3UqLkpw33YmjBArJFkiHuEHbOEyKduZ+bAn1mEZaUDLiIz0ME6BhyAqU9BZvH7w4t+c
 rfxKHG3Vi1cDONkuWZlhKKSyjl21utH0TeuiZXwU6bY4c5DqQm23B1Ij/Kf+CFiZQdZS
 1IreLq1aIZRV0ksEv4kfk4qGpXympkIsPxtlWW9qyKWS8h1amE5syenHSK7Z1CX4qH63
 7iKFPjYSg8pCpTER+gxm8AcOcrvXC8eg15KcJ/txMHz4kDbhbyfiQ5AM02XS+7GT4M7B
 8oMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qYq7mFFCoR+D5QhtdnXfa7L63GrDNr+4aaRo7anMzNg=;
 b=OOrJYQioRtA+3BW9HWKKqkhwVZkR8otHJY52yABkEqtG/RO+PBJgcj0B57nAwJPjZM
 1UePSbQoLN/h1HTq3GOfwAmZxjuCJRKdIbamD00zQySTxwPrLuhQyDeMOWGqKUMJrVsQ
 1hV4X9MkMvD5rTLVtlwex/FwjqhV1R7gbpB8JnsamlIHykkdYhn3dXC2nFCpmsdSuRy3
 r2ijyw/PfrdOVzEzkmQyqKFjbW07LxZmVy+S1QJK1wtBMgLNSouoNVSOzxFP/eYFoebo
 cviK0AnpvSqbskrjkBXd3Y1be51tegwmDd7tMoZts4HdAVsKFOIDy6MOxI6EzaCBkFUI
 obcA==
X-Gm-Message-State: APjAAAXSDVIVCw2TrPSiNzlytVngTQEVax9eERWDWl+r3VHzQyBmc398
 49NWQ0oqWdphbKp0W/B+6mftuA==
X-Google-Smtp-Source: APXvYqzd94XuV2bw5qRr4c4SqMDr5KX6F6dDBrqoRThTieNRJaWBshe3NLdMg2h1vW6jj1+Btr9Plg==
X-Received: by 2002:adf:ed41:: with SMTP id u1mr28476611wro.162.1560156138478; 
 Mon, 10 Jun 2019 01:42:18 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a125sm9929670wmf.42.2019.06.10.01.42.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 01:42:18 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v3 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Date: Mon, 10 Jun 2019 09:42:08 +0100
Message-Id: <20190610084213.1052-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610084213.1052-1-lee.jones@linaro.org>
References: <20190610084213.1052-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014220_006718_1F1D3FDF 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/pinctrl/qcom/pinctrl-msm.c | 18 ++++++++++++++++++
 drivers/pinctrl/qcom/pinctrl-msm.h |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
index ee8119879c4c..3ac740b36508 100644
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
+		for (i = 0; reserved[i] >= 0; i++) {
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
