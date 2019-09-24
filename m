Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7293BD48C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esyw2AyFUEs/qoZA7WCaqq1beqJZRSgrsQb010fZQgs=; b=PDREbgzu/Nzrqf
	L7ASmd/xCSihCr0d3YOiz39N9lG6l+JobWWeBHlGvraDonl6gCdZdhpY4aUV5wamFNEMWOr5OWVwJ
	pmSqbwO2bqHPI0DVXfcP1L+PpXTJgZcWeRQODeutiu5LNMDfxjiUxqlbQqqLOkqH0h5Mrf3p5JYKp
	EhcWJAyBMIFVI6Fwx3dl7i6FX/Sfxs4Ns1C1IHwdtxvHFzDOqP9T6SJUBDo8natCo4yxC5etRYoBh
	9gmFKFchMJbeSqKEAgmhPZmaqw7pu5nB9iBvM5yU8foxuPRroFvPUTPAYHXdgBzoiRgqBfuxzpGTj
	bGOkuyWGnX3MpvPkmfHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsf7-00063I-Rf; Tue, 24 Sep 2019 21:47:58 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsdn-0005Po-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 21:46:36 +0000
Received: by mail-oi1-f194.google.com with SMTP id x3so3072699oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 14:46:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=//h/OxzQrbFvZbG2t2Yg6Jg8Wa0hSEoVjKepOuIzhVo=;
 b=kBtuFAiRrW6AfYqJS37j5OIuoKsFxKQsAz/yZ8P/2onA86jC2Rtj328AjXqErkhKOV
 FQUYIOvO1SbiN22LxZGlTtibz4FHE3NoolqBNX6k4lXUTNfs8SYDa/HAtMDbR2Vi6hmP
 mAkABj45HJw9slE41Mebq0tyEP9W7tfSo+zetAOpNoAKzfnhJtS6SoaR3bSADIaRB8zv
 sNm1ZfBsDiZr1WMXlGClohsxsilvUy6DCjLEeblzgtruXDN/vQbb7nEvMfqEUQMqeJpR
 /dkFAelNuq5mbyA3+pYS11wCN+JYtwqtZ68cpjZAL4w0mj7fPLy3FrcWVjc+2LLyS+IK
 0IJg==
X-Gm-Message-State: APjAAAX9w5f2LoKda/V6OaV8jX3b23/mHxSBq2rHcDGzLi4IAxPY2ZXW
 YOLk024TrFNI1XZ0WjMEYw==
X-Google-Smtp-Source: APXvYqxl9MzHk9KICSl5mCZBeGMuFnuTeQOIA/uFntXG9yZg7dp6GjNzV/dG2YNqwJRwgtOUA/zTQQ==
X-Received: by 2002:a54:4105:: with SMTP id l5mr2014401oic.2.1569361594676;
 Tue, 24 Sep 2019 14:46:34 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s66sm976787otb.65.2019.09.24.14.46.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:33 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 02/11] PCI: altera: Use pci_parse_request_of_pci_ranges()
Date: Tue, 24 Sep 2019 16:46:21 -0500
Message-Id: <20190924214630.12817-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_144635_413145_943AF25E 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ley Foon Tan <lftan@altera.com>, rfi@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert altera host bridge to use the common
pci_parse_request_of_pci_ranges().

Cc: Ley Foon Tan <lftan@altera.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: rfi@lists.rocketboards.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-altera.c | 38 ++--------------------------
 1 file changed, 2 insertions(+), 36 deletions(-)

diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index d2497ca43828..2ed00babff5a 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -670,39 +670,6 @@ static void altera_pcie_isr(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
-static int altera_pcie_parse_request_of_pci_ranges(struct altera_pcie *pcie)
-{
-	int err, res_valid = 0;
-	struct device *dev = &pcie->pdev->dev;
-	struct resource_entry *win;
-
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &pcie->resources, NULL);
-	if (err)
-		return err;
-
-	err = devm_request_pci_bus_resources(dev, &pcie->resources);
-	if (err)
-		goto out_release_res;
-
-	resource_list_for_each_entry(win, &pcie->resources) {
-		struct resource *res = win->res;
-
-		if (resource_type(res) == IORESOURCE_MEM)
-			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
-	}
-
-	if (res_valid)
-		return 0;
-
-	dev_err(dev, "non-prefetchable memory resource required\n");
-	err = -EINVAL;
-
-out_release_res:
-	pci_free_resource_list(&pcie->resources);
-	return err;
-}
-
 static int altera_pcie_init_irq_domain(struct altera_pcie *pcie)
 {
 	struct device *dev = &pcie->pdev->dev;
@@ -833,9 +800,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	INIT_LIST_HEAD(&pcie->resources);
-
-	ret = altera_pcie_parse_request_of_pci_ranges(pcie);
+	ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
+					      NULL);
 	if (ret) {
 		dev_err(dev, "Failed add resources\n");
 		return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
