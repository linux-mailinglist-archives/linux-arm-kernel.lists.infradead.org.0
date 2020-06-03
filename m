Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC651ED6D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 21:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H6DiAABrqZSM4uWcAFUw60Z7r/KOf9798eXQ/DARfYU=; b=OxG0WQ75HF2RBi2WHhU8N67FgE
	Mv6PcJHekPfM/Y3+qkFlKh2OagW47yPRNQlBYPj7DkZuMA6ShaiYMwnpHz+HRCW0RwrjYK8Q2IjUh
	4iVqvRr8uCDUlWwfxFXORx4cvSeGWXYS1m0QqR1x2r3B7p2n3OYWyfLRu65s0z/4q4xAmEsrvJOb7
	l3YIMZElPAtJXB7VbWcoTluHUgXemHkyRcGUPpuyiPQodD+IpKDoV+jdjBJQysloKtQn10tz1v7U2
	gMc5cNnqQ6ajWd4WX/cFQRA6E4MwdgZFVmHZGb5Qv+mTSxZ3gI0vSuQnwQdcOkGYjIiZ12ZfahTYW
	ZmjySwiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYzU-0001AZ-VF; Wed, 03 Jun 2020 19:23:56 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYxV-0007to-8l; Wed, 03 Jun 2020 19:21:55 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 8AEC230DD9E;
 Wed,  3 Jun 2020 12:21:51 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 8AEC230DD9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1591212111;
 bh=TD+pvEeaAmIZ4gEFvHmv/B24eOz6zs85BaHEGnwgiAs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RQV5tdrvcUBpnyjuoGF+lntfzqZTtbU2l2Hq2uEmF/D9XGnGEd7lBX+FSQmVpSVBH
 SGCZEE8SpCy3Nj83zQ67yJrdKMRzKzSwjOO7YUi6bZgxf0S+1R6/GUaHYR4MPQ2Hh8
 zQ3PqJOFpvnpY1EibZlC+fcLYXLfES5Yt9hR1SBM=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 006C614008B;
 Wed,  3 Jun 2020 12:21:49 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v3 13/13] PCI: brcmstb: Add bcm7211, bcm7216, bcm7445,
 bcm7278 to match list
Date: Wed,  3 Jun 2020 15:20:45 -0400
Message-Id: <20200603192058.35296-14-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200603192058.35296-1-james.quinlan@broadcom.com>
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_122153_502502_B9EB4AAB 
X-CRM114-Status: UNSURE (   6.96  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the support is in place with previous commits, we add several
chips that use the BrcmSTB driver.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 131cf0a51398..22dbecb5403c 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -1189,6 +1189,10 @@ static int brcm_pcie_remove(struct platform_device *pdev)
 
 static const struct of_device_id brcm_pcie_match[] = {
 	{ .compatible = "brcm,bcm2711-pcie", .data = &bcm2711_cfg },
+	{ .compatible = "brcm,bcm7211-pcie", .data = &generic_cfg },
+	{ .compatible = "brcm,bcm7278-pcie", .data = &bcm7278_cfg },
+	{ .compatible = "brcm,bcm7216-pcie", .data = &bcm7278_cfg },
+	{ .compatible = "brcm,bcm7445-pcie", .data = &generic_cfg },
 	{},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
