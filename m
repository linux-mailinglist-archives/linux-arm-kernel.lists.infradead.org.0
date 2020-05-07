Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02FD1C974C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AhdYQP3qMBdz0YQwREvMvm1dyQaMPLZGJm0MTUB4tBE=; b=nL5bruD6XWv/er
	goSt9Q/USECRziOofRBut39nL8JthxZCt/ahnf8AjFoP6DFc1ToJgT8K/Xm9+RKm2iFjN/Ec7W7Rk
	+EyeBK9KB1QRINsnd6HW9mmqK3lxsY0RWYd2d6rCU37b/I2npn/6Uq8nmWEUVufhyFettDtf/6wiY
	bj56E8h72KSs24BmaE7rV1e/8uYENuCFPILhm09ayeOttBV9AphH3PBqSrfwA+QctG0pT41D5zOR9
	Q6FzNFSXGkCtppXX9KhbzN9UUp57ZSZuKe3b5S+97I7ps2x9FbhAuJ0bh15ITnUBu8pv0iWdwpQzr
	aZTKBDmBie+OVGo54b3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkCc-0001HR-E0; Thu, 07 May 2020 17:20:54 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkCW-0001GB-7I; Thu, 07 May 2020 17:20:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1EA45AD93;
 Thu,  7 May 2020 17:20:45 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Jim Quinlan <james.quinlan@broadcom.com>
Subject: [PATCH] PCI: brcmstb: Assert fundamental reset on initialization
Date: Thu,  7 May 2020 19:20:20 +0200
Message-Id: <20200507172020.18000-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102048_406879_FEBE06FD 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: tim.gover@raspberrypi.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 s.nawrocki@samsung.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While preparing the driver for upstream this detail was missed.

If not asserted during the initialization process, devices connected on
the bus will not be made aware of the internal reset happening. This,
potentially resulting in unexpected behavior.

Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host controller driver")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/pci/controller/pcie-brcmstb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 0b97b94c4a9a..795a03be4150 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -699,6 +699,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
 
 	/* Reset the bridge */
 	brcm_pcie_bridge_sw_init_set(pcie, 1);
+	brcm_pcie_perst_set(pcie, 1);
 
 	usleep_range(100, 200);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
