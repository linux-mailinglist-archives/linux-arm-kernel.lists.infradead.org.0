Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DAD182224
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHVdwnVtw8SLsU6RhIirVDR0IFspVF7nJTFVWazkNg0=; b=VEJDHI4svTMUcc
	GJjVKOqQRJAre9CErU/x0By01QzGseIWAu0RV1W1nksDmUnY9JTcuAGk9B8Wgr1DsNo4oU1gYF7dY
	GcdupMQxkmlF6E4W8bmqZGKQPMf7QDcD3XfV4IdVr0BGJZVj5/CilVWiWSjw8TX1TAtfd9AVQSTnn
	v4pdnH6gyqxLMxRgxg2LpCzXWNmWFbpD+CnQdyrPqT3a6VITYPaZ31i9GUOOUCenCbDaUx1E5zHNG
	SG3hpIWpYXc4r2zErh5Krmq252Hl9ZWpnxvdIkIt1pr9Z5PTo+SBi5ezb9xp1uuVdaPobI1DfPqT9
	QyPGes27U59ZYDKY4Ggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6un-00007N-Hn; Wed, 11 Mar 2020 19:21:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6tK-0006L1-M9; Wed, 11 Mar 2020 19:19:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id u68so1885057pfb.2;
 Wed, 11 Mar 2020 12:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6tx20opC58CZx8EHUzpcUW3v0td0yDhkgy01mmgvT1k=;
 b=CozuzMqFhVkFE6pdK3cIh6s0uXsG2lK7hYQy5IVZtcQmUzBEAvs4Pb139yfhgUcRa9
 N2kLzQ5SjJ4V/dJTw7i+GKo/N1pv+gZxM58WXszNGBoQKI+uMjTkQV8zbt4kF/2vH6H5
 NJvfcNhZFERyJC3It01naJmHSsln6g6kKl1vzNrulqq5LAHF4wgNhbVyandZgnizxIO/
 cJgnDsnDD40sItIySZNC+HviwpK2K4wwHsgCEN7CPG5wC+lgXKwLhWQretoqWOKfhmxk
 PpPlksn5E6jm5/jvgOte7D5wpDz3s+voxXT0SDhgnRs5al+E5xvjKdYFYNU988j+8gtz
 FAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6tx20opC58CZx8EHUzpcUW3v0td0yDhkgy01mmgvT1k=;
 b=h8uazwxLNecGqdOuwbkdBprfKoiS4UmUAOT5Xh9MHdt2nJoW1dicUhrn+W88t2nEw1
 ygd6N4k4Ra9TfRkCFa1lm8WYkgu0ijIiTFB6Q2G6h+EnWjOCNHTJJW2UdjtoMTvF2WH3
 Rf/j/bP3if6QiDg+K2R2pTec3yczNgEHKfwwe3KwMr2oGsQIoOZ9K3MxSDuMMcVielDn
 Vxl0hRAAmCBoLSSKnZFyiMHV03g1GpVwIxH1/htPXnXmFWcQgCGMhCysuqJfQvAnzNrI
 KmWqMeou5f7XZT9MXgF2KG9hnTVQQz9ki3xgXiX4oQT46ox7bafcjZXbdY5HeEyEyYBu
 O6kA==
X-Gm-Message-State: ANhLgQ0INnMmMIuWzWLTYM215//KTdGu9uDeE0gbkL5E5dLB9493OVue
 xv5tVRUg2eHKYrpEoAcKjjA=
X-Google-Smtp-Source: ADFU+vuIATg8TgONqQwj07uaBbQTUtMOLI517xnn/BWXZKYW/0G/Tlqgwm379phb/QVQVuzVzgf6SQ==
X-Received: by 2002:aa7:90cc:: with SMTP id k12mr2456493pfk.94.1583954381475; 
 Wed, 11 Mar 2020 12:19:41 -0700 (PDT)
Received: from localhost.localdomain ([103.46.201.94])
 by smtp.gmail.com with ESMTPSA id z17sm3792673pff.12.2020.03.11.12.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 12:19:41 -0700 (PDT)
From: Aman Sharma <amanharitsh123@gmail.com>
To: 
Subject: [PATCH 5/5] pci: added check for return value of platform_get_irq
Date: Thu, 12 Mar 2020 00:49:06 +0530
Message-Id: <a36999aa5c567c65ddfaf0b54406e8583343a510.1583952276.git.amanharitsh123@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583952275.git.amanharitsh123@gmail.com>
References: <cover.1583952275.git.amanharitsh123@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_121942_748597_48F27260 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amanharitsh123[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amanharitsh123[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, amanharitsh123@gmail.com,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Mans Rullgard <mans@mansr.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Aman Sharma <amanharitsh123@gmail.com>
---
 drivers/pci/controller/pcie-mediatek.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index cb982891b22b..ebfa7d5a4e2d 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -651,6 +651,9 @@ static int mtk_pcie_setup_irq(struct mtk_pcie_port *port,
 	}
 
 	port->irq = platform_get_irq(pdev, port->slot);
+	if (port->irq < 0)
+		return port->irq;
+
 	irq_set_chained_handler_and_data(port->irq,
 					 mtk_pcie_intr_handler, port);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
