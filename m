Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810DD3864D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y5K6OO2EN7Xi9PAT2pN33oxQyhs4h5Bx7ekx7d49GvI=; b=fOuBtGckqYSMtRvJeT9CJvVHcB
	cjuJ2zr01XBuv/YImgAqzfVyjECSr/y2+Ow6GliaubdytQnIf3cBEDvcr6Ero+uWjg5uGDekiOr8j
	mMwVz3Jn1PVTYYP/81ATUgfiEYd0RKK1eBaKSSo8pwhDedWmCEW0PFN879PL5CvqsW74B+6inhAdT
	JgiNz3N8fZJ62IofHwoAsbAR19S3+DYxLZ5zwsnbLOR5eB5E9aXVoJTt6K14CsOXSvpn24auQkM9P
	gCjpP1tOep7IprzxQLVbvyk9m5k6/WMcgOvAJLwKStieUPb0L6PF/uCfACHaG/qsh6bsbWVLEsqTa
	GUj5G1xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAG4-0008OI-J9; Fri, 07 Jun 2019 08:29:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAFG-0007u0-Vm
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:29:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so1230883wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 01:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=slZHnEyI/3MoxuWJDHsmJjpXD82N/IlcEekyL2S9VGE=;
 b=h368Vx+bZLWr0EL6gvHppBTRSD6ciSTtbA08qgE1t4taX1ccezuX+R++aXgYdUyb8y
 xqoTAMMnzsmDvOSRVcoiqE2DFyL7TAalaemw43t6ANajvZ6wL8XrTBPrSPCTaI37JOuC
 C+5L9vX/X5BqHwAWrn/zEo5FE4WFb8KPgNsOOUzOOniHj63Dv+LyXOscl8dFK8OY1u1o
 E/HW76TPKlwVq8tS/VJKvSGDMVvLLxyzlkHBehpsvVoeNsfJs8g8ByEL/eJhJVNJIndQ
 NPfMFhvNB2TjUGWQBnh8Zme9lqz8vUpZd67SuV+J3hkfi1YClwo9647sqAdkVGU2KAHa
 w/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=slZHnEyI/3MoxuWJDHsmJjpXD82N/IlcEekyL2S9VGE=;
 b=NpxxUyeHu5vPLwMzeW/3g7MLnNqghhPas38S6fHJ8Bfkx1wqGS0cNyJRYkJqYjONBb
 djHDM/jBVbPoAWEM8e96uhpppfYrtOjr/cCYmzxi0un8u/TV/6KYYKue/ZAHUOZhuqLS
 KRL6Pb5WlkfBxqcWOj+Kya1ZDilem7j1YBNGpAWko32GILO+XkGOaoHorUGuJMsXofXE
 ITpCuaY4WiVfKJH3z3ps/PHiVEz4bg4FTuw/QAMdhv/rS7q9ipQVziMlEgCFwh4sIZZ/
 whVlyMjfgQ78AmCl2tWIxuKF4cdtglKcSP+7r9tXxP36d9O1rUdnZmhW0kCZQv+Tig33
 PtRg==
X-Gm-Message-State: APjAAAVFIPHgaOZWisHF/QHSsTMvGPR96EsEBXmTgNkT1NcRrs4QiYJt
 /9lVUSk4/l57saoft4M29n5aYw==
X-Google-Smtp-Source: APXvYqxA6VZBIpKaCLm8h8+cRTckg6NGyIemaL7IeDtLMQhELQn4vSQSFHuHPVMnZWXnr8oeR8248g==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr370680wrv.89.1559896145359;
 Fri, 07 Jun 2019 01:29:05 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a3sm1092946wmb.35.2019.06.07.01.29.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 01:29:04 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v2 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Date: Fri,  7 Jun 2019 09:28:56 +0100
Message-Id: <20190607082901.6491-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607082901.6491-1-lee.jones@linaro.org>
References: <20190607082901.6491-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_012907_022568_30BC9B06 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
