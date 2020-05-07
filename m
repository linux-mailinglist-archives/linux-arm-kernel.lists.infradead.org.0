Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83771C9BFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nIJpmCyqwcpXe3dr1XNZfyVYl1XRFUy5idQKgYI/Y0Y=; b=tpRBsHuugSS8dczn5rUqN2iWT9
	NpIJ4IT8MrZJ/KOrr0b4CrSoUKCjutgsEdEFy4U7QsebpEHk9VFza0o855bda74zs6JZ+myDbVKgv
	3Yyvo/OtVnHWZyOC6mwLQUQeWxrkhPjmZUireBiPkRFQHIBf16m8DpkNAvTIJ+59i2iA6oTf7A36a
	PpAlfMSG8RRcvArgj28FlXbsF7edT7OPfN3OHSCqYO5zKEdTI7mvzDYoXPWv+VGGDP3NPoJGV2w8Z
	ZdrPG3u9W45CoAZalru/qvRNGNi7jLDKiUT3lBVdbRZeawe94rGzjKeM5lOQUVGd4v3nNV/pSYUkQ
	ar42g/mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmwY-00089F-CW; Thu, 07 May 2020 20:16:30 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmw6-0007ru-Op; Thu, 07 May 2020 20:16:04 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 8F84230C034;
 Thu,  7 May 2020 13:15:20 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 8F84230C034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1588882520;
 bh=npjqBEkqyKXmQajtJumnktVRzekVxfAFiYz9GloJQsA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A7RFaEN5PFTJA4ZtTC29VGFguzgRrwdD2Y2wQHvbGIVuO00FrJVYMNVGK5kr0v6p6
 UXaV9b4BQjS4RFIa8fsKTVT0hSGZhajOy6qOx4nr83raNplhMHQBrsFC5wyj+8Hh0/
 jLN7XkbeDpDFfBCRQXuUCWjC6HANvDJpZH9u9QOM=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id A115B140069;
 Thu,  7 May 2020 13:15:54 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com
Subject: [PATCH v3 1/4] PCI: brcmstb: Don't clk_put() a managed clock
Date: Thu,  7 May 2020 16:15:40 -0400
Message-Id: <20200507201544.43432-2-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507201544.43432-1-james.quinlan@broadcom.com>
References: <20200507201544.43432-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_131602_853073_5861CEC4 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

clk_put() was being invoked on a clock obtained by
devm_clk_get_optional().

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/pci/controller/pcie-brcmstb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 6d79d14527a6..454917ee9241 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -899,7 +899,6 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 	brcm_msi_remove(pcie);
 	brcm_pcie_turn_off(pcie);
 	clk_disable_unprepare(pcie->clk);
-	clk_put(pcie->clk);
 }
 
 static int brcm_pcie_remove(struct platform_device *pdev)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
