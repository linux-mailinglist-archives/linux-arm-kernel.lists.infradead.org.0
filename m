Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237DFE76BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npyEckXW+HCZBj7dH06PG4fTvjYDM3wOaeRuKBwXBrw=; b=DqVXoboMm5ZqDS
	7q3IldNpaXh7NCb7SLo5+kLeQjE5Vq47mkkvltUj3Dn2l+2tLquS8HU1f5X8Uit5ZuLUklU4QsfEV
	hW73NaJ0i44nGde2aYevQdTgRR8PpHzIuarvIMmNym9enjukTfcPh5Sq5pbdRJaueIw2qY/lgUjnQ
	DyAotbKFogkso4WaRknfhf5il+0tCMw+JU7BUGTSzjfGQL5/hvaIpr5Y8WWvvk/Z0oUzcj2ySIDxM
	9RI610JqzLHxto/0+T9WuyHeKd3I2EQG7+LOUqhjqpO1AVEzTK1sd7UID+N8ZEKgtac18ePKjFG82
	W9ywJe9iJlwUWIXrBBtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP84R-0005nh-PO; Mon, 28 Oct 2019 16:40:43 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xj-0007Nw-5t; Mon, 28 Oct 2019 16:33:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id z6so7189366otb.2;
 Mon, 28 Oct 2019 09:33:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2sCm5472cF93KvMaJ0/jgH3kNxAHKfGtxH8J6nHodQ0=;
 b=Gumm26kWGLCtCgrZ6cMxs9SHQP46XzjtJNv68oK8VMawsNFdamPOM4ctk+3nHBjUtq
 IU3HYOrjZSmb/b/qLRo/5BNfbhvJHzlYRoC3qLMY2giWFDg8k8VS01Sgnxq8fSwoXlFV
 zTM+4ciaFxTmV5JoyJZxv/NFpVTJ8SlhVAy/AimvJECtdrxgEmsiu6yIHQRiK8Dv+kwu
 AaqjPC5f5op3pJeBNGPX0hMmUzNNrSXmbwQADf0VgprEqCIQ80iHioezWCVtxL/DvlzB
 VwPP1l7PiU3G/WK1RYfgRayqRW3L5Pg52+MxFBcgOoiGxy+8NTEbs422AtU6ZSFNi5Ev
 fPPg==
X-Gm-Message-State: APjAAAXA+wk2vlaUcTsbtl4m2uhGAR2qFEnh0mMrtps9JEP8jw9Lh51E
 4qpS045JvpsjFsuIl+I5UQ==
X-Google-Smtp-Source: APXvYqy/Xq0iUAE5skdxW7RQgS/cS0GZT0jx1F5IzTA54s6xqljQwh3to6yMnbySIthX+LfaHcMHpQ==
X-Received: by 2002:a9d:ef0:: with SMTP id 103mr14011546otj.2.1572280425906;
 Mon, 28 Oct 2019 09:33:45 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:44 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 18/25] PCI: versatile: Enable COMPILE_TEST
Date: Mon, 28 Oct 2019 11:32:49 -0500
Message-Id: <20191028163256.8004-19-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093347_364139_1BBEB543 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit a574795bc383 ("PCI: generic,versatile: Remove unused
pci_sys_data structures") the build dependency on ARM is gone, so let's
enable COMPILE_TEST for versatile.

Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 70e078238899..f5de9119e8d3 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -135,7 +135,7 @@ config PCI_V3_SEMI
 
 config PCI_VERSATILE
 	bool "ARM Versatile PB PCI controller"
-	depends on ARCH_VERSATILE
+	depends on ARCH_VERSATILE || COMPILE_TEST
 
 config PCIE_IPROC
 	tristate
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
