Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62704166DD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 04:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osaoZf4RLEHgiJO5p+aqUO5GF8na+RnJLzgBRpLxTL4=; b=Hx6FUilIyFhzzp
	jKKc3TTcMiRghdqS57KWyDUQUGc2lK6y8Eq9hZbu/Z+p6892DWE6YEHmCsVlNxRqJ834rqdve7pCU
	khL4afj056sc07zNfsKDV1pHbZU1SOqS5BtN3sK1Q3DffLA/IvfRAKoyr7GWqdfxEdCgJaqf56ED6
	hEWnaZsE7UHsH0qDrCPI45KbKHB4l1wwC+EaBWGDeONPz/ZA76Re58HzAfQqmMd9hhvD6yLCYeYpM
	hPvaZ32Nui3I2JpCrabzbpoPBNxatAXtyDoBB4+NPcAy86fksWYY5XJnjI7BfOKjXwPNtjKRqSmoR
	PMECmOvSexpKGoKKArwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4z89-0000cs-FQ; Fri, 21 Feb 2020 03:37:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4z7f-0000JI-1a
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 03:37:04 +0000
Received: by mail-pl1-x642.google.com with SMTP id d9so265442plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MQI6dN+4PBzk1/anoQEUjOXCECLTTq4y88gpWsBl5rw=;
 b=WeHM7b1NSXrCkGyfOu5li5dmhsi+Y/ROL1MK21RIJYJuu2i4jXqwQYNj0n2kJuX2FZ
 gH8wNpV+1bbKjwA5j5C8IXC1E9/Ze0q6JoPMDjkdv74l5hzLeoMJgvtAa8kiZX7dCkZL
 D1XfhSASo03xavGFUO35gZehvuUmBpvapLXqTN6MSOuGpdtwqQbvyqnbYVhjB46DXbWD
 oqcPovL1HZJvs6cB1YmfcEQr695WDFhSc1yt7lPvTuGbRN1b7ykFTn7fhCkQFmCFJNiA
 gVYrWQBpqmWUx8M0diyxEpfhqnVwXa4O3bgGmTSc8XKs2JqNA/NZzDljcxUc53j+jmXc
 2/Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MQI6dN+4PBzk1/anoQEUjOXCECLTTq4y88gpWsBl5rw=;
 b=WnTOE6VeDnSfJVhySeg/J8QrBlvqS+Y/PmUU4ohgr+nfnHofH0l2srsWWyHixsNL3/
 ZfOiWxog+5OxVjgeGMV1DH50Tc8of0MY/Es3X6JgXLmQt9b/vGGdkBclyUrx4MkElKSZ
 OQkpGcxVh/2E3P4I9N3FCMiwBy2HA7lJCwisJl8h/nfA4EsU/pXHSgjUbFh0WgziaHAo
 Zw3uFOHg+brl80Eam605ijU6GTjKFAGVzw1RRCfvZpq8NCH7LQeH2Va78+WqU4cQAOhy
 HjxOAG6uXi0cMFVWlkpF7QlpmT8KM0hb7QgfS05uDbbj7BUZcUZSkTeAogaBhrAXm2VL
 udYg==
X-Gm-Message-State: APjAAAVFE5OzzgtwtgIuYw2+6g9TCv4sgSPQN5lbUJL36wXyxtGxhjLK
 dAemAFMy8OJiqAqd1StpSVM=
X-Google-Smtp-Source: APXvYqykvUoLlW7NO8euEPeHez45sGEO4baJDRrs1oZO/OYTsr1gvou/USM/aUTtuuyFqcaqzHZrSA==
X-Received: by 2002:a17:90a:d804:: with SMTP id a4mr533465pjv.11.1582256222369; 
 Thu, 20 Feb 2020 19:37:02 -0800 (PST)
Received: from localhost.localdomain ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id d4sm781340pjz.12.2020.02.20.19.36.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 19:37:02 -0800 (PST)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 2/2] PCI: brcmstb: Drop clk_put when probe fails and remove
Date: Fri, 21 Feb 2020 12:36:40 +0900
Message-Id: <20200221033640.55163-3-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <20200221033640.55163-1-jaedon.shin@gmail.com>
References: <20200221033640.55163-1-jaedon.shin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_193703_096561_58BF3226 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_clk_get* APIs are device managed and get freed automatically when
the device detaches. so there is no reason to explicitly call clk_put()
in probe or remove functions.

Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host
controller driver")
Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/pci/controller/pcie-brcmstb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 8968ef7fa55d..cbb587eb8d39 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -903,7 +903,6 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 	brcm_pcie_turn_off(pcie);
 	regulator_bulk_disable(pcie->num_vregs, pcie->vreg_bulk);
 	clk_disable_unprepare(pcie->clk);
-	clk_put(pcie->clk);
 }
 
 static int brcm_pcie_remove(struct platform_device *pdev)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
