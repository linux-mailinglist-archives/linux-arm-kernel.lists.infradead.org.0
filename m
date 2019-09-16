Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBBAB422A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 22:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+t/SfPIvjen5yUFDdook7ByWhWdwZXW0OiINvcFYfc=; b=iOX6cLsRdAc50c
	HCwAYd8QUPtv2Ed8i1CgiPFojbo3xd3CstKEDsT7Z8v0CgvpvvblCXM4bhjpBdw2ePDutmiYQaVvk
	hMm883zTIcAlnF1+xPuS4rQ7mdMPe1cm5ejr/ukRoKPoWEh8hDkpNxRBTG3szdYINR9yJNTLrsBU4
	hhdTohPgLSdtxfijiqevnRXbeEdlscg9LhVzM7kdWdJT03kYb1RZrt1e0skDpptU6EvlWSRzwR6+0
	OuJOSywnQJb63b1jgI8oXWnzyzr1enOFJXebT0fJcpB3ksE4plIM9aF8UPNEX7UqZjzLIrUbPeTB8
	Zem5+aKI2d0YG98N3Rog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xro-0004iD-GC; Mon, 16 Sep 2019 20:45:00 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xrb-0004hY-Mo
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 20:44:48 +0000
Received: by mail-wr1-f65.google.com with SMTP id h7so813054wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 13:44:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ASUn9OH0qpdm5tauYuwAj3Acnc10dNAyecbrZXIKD5k=;
 b=I7WskvdvQZNKF99ZgW6t55/moN4J9EG9scbvDx6rCzN6KTQVMfTeR7LVTALZoK97VK
 lkZWakwzg2Tt3kpPs8UwOMK2ONBc3ovjckvd4R5lrVQ9YKO5fAOesO36CfUuqIu/6MSF
 hwC1DN0QQPtUHZ2vtwmmTAzY1ACSkVXcHJBJqEUEcBFfCR8yJ3e8rO0/v16xY6vyPUhh
 f2vBiyps4N6YUN56cTzOUjw/WNDgkSOz6ltZcc02qs3K11+BRoBOXmjB6ZXrDujeSvl2
 vJvsQnE7YW9uxZSPp7cNNQ1HHFLhsZR4P8oBgLd4AGMuKPJHaFb9uC6KGrCUZL1CMdfn
 O7Zw==
X-Gm-Message-State: APjAAAUgU9+giCOfQk+XvWvSlauxq7Ph7Medw1zoxrHemX1BfED4RM2b
 cgUgkU97D0LAhB5XkqfLpp8=
X-Google-Smtp-Source: APXvYqxXKxOmo7vV3YO2KraQNHk6/pPJJCJXdwXVzZXSNDK+4XpNHBrvqCO9fO7iF2NaztvfDbTBIw==
X-Received: by 2002:a5d:4590:: with SMTP id p16mr190844wrq.82.1568666686310;
 Mon, 16 Sep 2019 13:44:46 -0700 (PDT)
Received: from black.home (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id x6sm231437wmf.38.2019.09.16.13.44.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 13:44:45 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v3 10/26] stmmac: pci: Loop using PCI_STD_NUM_BARS
Date: Mon, 16 Sep 2019 23:41:42 +0300
Message-Id: <20190916204158.6889-11-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190916204158.6889-1-efremov@linux.com>
References: <20190916204158.6889-1-efremov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_134447_745607_67C34AEC 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yefremov.denis[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Denis Efremov <efremov@linux.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Refactor loops to use idiomatic C style and avoid the fencepost error
of using "i < PCI_STD_RESOURCE_END" when "i <= PCI_STD_RESOURCE_END"
is required, e.g., commit 2f686f1d9bee ("PCI: Correct PCI_STD_RESOURCE_END
usage").

To iterate through all possible BARs, loop conditions changed to the
*number* of BARs "i < PCI_STD_NUM_BARS", instead of the index of the last
valid BAR "i <= PCI_STD_RESOURCE_END".

Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Signed-off-by: Denis Efremov <efremov@linux.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
index 86f9c07a38cf..cfe496cdd78b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
@@ -258,7 +258,7 @@ static int stmmac_pci_probe(struct pci_dev *pdev,
 	}
 
 	/* Get the base address of device */
-	for (i = 0; i <= PCI_STD_RESOURCE_END; i++) {
+	for (i = 0; i < PCI_STD_NUM_BARS; i++) {
 		if (pci_resource_len(pdev, i) == 0)
 			continue;
 		ret = pcim_iomap_regions(pdev, BIT(i), pci_name(pdev));
@@ -296,7 +296,7 @@ static void stmmac_pci_remove(struct pci_dev *pdev)
 
 	stmmac_dvr_remove(&pdev->dev);
 
-	for (i = 0; i <= PCI_STD_RESOURCE_END; i++) {
+	for (i = 0; i < PCI_STD_NUM_BARS; i++) {
 		if (pci_resource_len(pdev, i) == 0)
 			continue;
 		pcim_iounmap_regions(pdev, BIT(i));
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
