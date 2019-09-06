Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2162CAB172
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 05:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gqbw610YbqwaEPW7Xo4uGX/HDdcLKuOJunMMnq83noY=; b=MNc
	6buBrQ+fhGnIiXsMuDqt3bT9KqRlyyI3SF3Yn2A0t5d1tauDUxonwQeD/YmiRDKmz0xGajcZREWIY
	gsgZ0baJlBCI+RTl4uUgKbuWvzJwMpP+STQjOzQMLPSgjYgWvZMAopFoOVZM/IbPIvR/BnW26ZrP+
	Gz5C523q5DX7Gww8LB+3gI4jQrOGatxe/ac4X5WBTgHqBz2SxgcBOMsr1JhA2SuQdUiA4UTL5R270
	iiI5A1R6OX1z2ajeO11xNgxOOBKm6UXGMEhW/M4UruAGl02+xgxUUIE5c+pbTD9Wl27Ve6wpAY5Rm
	Ku2wjh2JEv2CjrWnuWJ1guohxTlaYHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i65ON-0001L4-7m; Fri, 06 Sep 2019 03:58:35 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i65OG-0001K2-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 03:58:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id f19so2447180plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 20:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ZNViCP0N32DHFiUhZ1GT+X+dOsTn4cyOWa7lJoIVdEI=;
 b=AXfYOfO0nGdxTFvFA7g0aGzz0arsdR5meyAvEGBw6nC3K67QP0Ra7Uk5EVbjWL3/8z
 bWLSvw9aR6b/xweX585dT3l7yJ/s9nlYMCd/Z8U42n0mGBzCI5yusHShTAoCbh+wRly8
 eP2Ik++ors6kq2CxzobNcYIckfffB4q9lI4u8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZNViCP0N32DHFiUhZ1GT+X+dOsTn4cyOWa7lJoIVdEI=;
 b=gHzjj41+KD4/R8WRPNmkmu692p0sTCRNdWoXPNAXoFYCcuarfexW57Z8bEzeZJnyhX
 N1cpHawjseNzjBg1mLZqogZj7F5kPXf2yrWeDiPIBaTdTZ14BVl/wM3IF0uLoE8SzzW8
 R0bAEdM+CdjDnMh8/+BegFRSRMERZBgQOJyk44C7XDb4AuJYng2jPX/app/HBbGTH9yY
 JL3CGpCWorWIgrvLQ5Hj0kx0mczeh+POXvAP9Kz2u85hdjvs/Dn7YdYQ8gZVleD+OfjU
 ub2ABfaW51yvqcnEkftki+9bVjsOBgIxCnr+SBauWmpbm/ja64YHexu7GEE8Si+TEnlI
 xIZA==
X-Gm-Message-State: APjAAAUsJW5HHtLodB6woQl/Svops7vCFpPJUCjm1Uj6qCT4ir8YUM6m
 hapCbrPWxeHGprEcRk6GT2k4zw==
X-Google-Smtp-Source: APXvYqy3UPGT19hWhmdlkeWD30hDNsKTu1kGQ8bZGVywyq175psYPAMutrsptQzkk73s2qaqbfANzg==
X-Received: by 2002:a17:902:8e8b:: with SMTP id
 bg11mr7049132plb.93.1567742307277; 
 Thu, 05 Sep 2019 20:58:27 -0700 (PDT)
Received: from ashah1-OptiPlex-7010.ibn.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id b5sm6748512pfp.38.2019.09.05.20.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 20:58:26 -0700 (PDT)
From: Abhishek Shah <abhishek.shah@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
Date: Fri,  6 Sep 2019 09:28:13 +0530
Message-Id: <20190906035813.24046-1-abhishek.shah@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_205828_950653_BC438EF8 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pci@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abhishek Shah <abhishek.shah@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Invalidate PAXB inbound/outbound address mapping each time before
programming it. This is helpful for the cases where we need to
reprogram inbound/outbound address mapping without resetting PAXB.
kexec kernel is one such example.

Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
Reviewed-by: Ray Jui <ray.jui@broadcom.com>
Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>
---
 drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index e3ca46497470..99a9521ba7ab 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
 	return ret;
 }
 
+static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
+{
+	struct iproc_pcie_ib *ib = &pcie->ib;
+	struct iproc_pcie_ob *ob = &pcie->ob;
+	int idx;
+
+	if (pcie->ep_is_internal)
+		return;
+
+	if (pcie->need_ob_cfg) {
+		/* iterate through all OARR mapping regions */
+		for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
+			iproc_pcie_write_reg(pcie,
+					     MAP_REG(IPROC_PCIE_OARR0, idx), 0);
+		}
+	}
+
+	if (pcie->need_ib_cfg) {
+		/* iterate through all IARR mapping regions */
+		for (idx = 0; idx < ib->nr_regions; idx++) {
+			iproc_pcie_write_reg(pcie,
+					     MAP_REG(IPROC_PCIE_IARR0, idx), 0);
+		}
+	}
+}
+
 static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
 			       struct device_node *msi_node,
 			       u64 *msi_addr)
@@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
 	iproc_pcie_perst_ctrl(pcie, true);
 	iproc_pcie_perst_ctrl(pcie, false);
 
+	iproc_pcie_invalidate_mapping(pcie);
+
 	if (pcie->need_ob_cfg) {
 		ret = iproc_pcie_map_ranges(pcie, res);
 		if (ret) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
