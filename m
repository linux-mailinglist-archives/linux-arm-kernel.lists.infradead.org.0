Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7627215B778
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FtE1Lw+rnz2Jt3DhscpaexAqiBANQyaHwTeIP5OSi4=; b=oMEKEwOVnaSEKy
	IR8mPuWleIJZASEhb2+Kdp+JFpjCrRjRGlHEplAJtnpzFj6eMJVkmh0lDuO7o+YVZt5Ej3WSiWjIf
	9783b9588rv1BmYLv6KTt9mkYQYAKtnP4W+GiMNq+tCqTu9w3R0D4qYN8s0s3mqzJsQ9yKX0w3eMj
	4PMMs5j7e5ISBMp4hURHAFf/hiZ+tV8xRn3WJ1ng7sCw8qwJrXaFUwBxkPHnEtpkoZf4k+viIFqC7
	aJl1LSmIwRrQNq//0tLp39JPMA4UXlX4Gq9Fp/3O+W3KRxuGpYE6l9dAp38gsXh+r8XSQT5/LTTEd
	PBKEBJYj2LIebM88bx7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24kH-0004Hj-L2; Thu, 13 Feb 2020 03:00:53 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24jM-0002SW-3m
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:59:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so2241753pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 18:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FWL9gVxhHfG18kJOeUk3fD6tEj/BEQbVcbiFy71a6G8=;
 b=IIL6NVQFhgBPqd3xzyM73Ymzd0NxREmAFRHpKjqtuIsN+B3xEFuWU29pDGvgdkkn2P
 ZQ9nCD+p+ESw1phZlEumdMSDlfvOhTQmmDk+cX0eCgOMaNBrD6seyJgOXIZNZ3VNPGfn
 0cBJCkQL2IQVJaNNXFoOVjtPWmnn3/jqhZaWDLU6ty5TuvZTI9DGaSV/k6UdMtbYMtjL
 kw1AEQDUhCqmzw2uMz15tqbjhKceYNZPp++NIShvseX4oogtd8wsa+FAkG4C1t0XYL+O
 JbeL96iAUTbkrt+Y10SBG1bnq5uEVWpW49E5qgwrPDhmNYAGYCFiMFO6I1UUuzYoqZXb
 lkYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FWL9gVxhHfG18kJOeUk3fD6tEj/BEQbVcbiFy71a6G8=;
 b=cs2j/UrRl19qI1zQPFhdjiAQbfmoHA/ztj0sbh9mhqs4U3y+HjgCyWc+xzY+HlLkZS
 jKU0EVU3xQNm5g4UysY7gnFJldFNJWFOpCmA+CVJ9lQV55GvrxHOp5MXyvnlS2I/TAaP
 PXjIemQDiu6iGpLdn2ZDUG4NEjcNSMVLTPZA9Mc1R8iVT2Vb/mn2k4SdfNwZ/bmRvKos
 XTPNrG8rzbE/u4/RwZahBjGVpVR7vf/IyD8Xxqbfz6rin7z+8KeE5t36vl43Y4wwZ93u
 ma8S9khe/Ypxqb1iwqac1llXDU9OpOm9k6EDio/C33EImUBdkuzR1G2qKQWP2tzvH+JI
 kpyQ==
X-Gm-Message-State: APjAAAVaYsiYZSQovnO6+QLOmgQyJG1zie4Y+v/hjnTGiN1BYm+SNn2W
 vgiacxxsxGJoOyk1s5BOF1A=
X-Google-Smtp-Source: APXvYqwbqDHzihlVsSPDvVdo8SS90JnUF1N9IWw5udOtAYmfqHcjP5jqpmnQj6HQ7G3RHvmnhJ39kA==
X-Received: by 2002:aa7:9e0b:: with SMTP id y11mr12203202pfq.182.1581562795547; 
 Wed, 12 Feb 2020 18:59:55 -0800 (PST)
Received: from localhost.localdomain ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id 64sm602643pfd.48.2020.02.12.18.59.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 18:59:55 -0800 (PST)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 3/3] PCI: brcmstb: Drop clk_put when probe fails and remove
Date: Thu, 13 Feb 2020 11:59:30 +0900
Message-Id: <20200213025930.27943-4-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <20200213025930.27943-1-jaedon.shin@gmail.com>
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_185956_175911_01E4C342 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 0e0ca39a680b..3e48d9e238bb 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -972,7 +972,6 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 	brcm_pcie_turn_off(pcie);
 	brcm_pcie_regulator_disable(pcie);
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
