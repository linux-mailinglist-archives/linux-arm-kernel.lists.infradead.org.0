Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA5846D37
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 02:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T4iEYzJK3MzPBDs4Ej1rjuF27rjAiRzdiuCjWXSaB4c=; b=GyljkACYjHD0kVpoOIf930Qp4P
	d1mS11vTwBYMz+yoWUUkZV9at6bjd9rRikdLBYmr2XTsmoUFQ32HxJhE5ocToQXS8jhSJ0Hp/I59k
	FA4mlSknhmiZ83eiAa7eNofJoANH1bOPj2kq+iAT4LU3hBb1WB2t8XFyh4IpxHtiMAlWsmYFmSYak
	EcQ4joyZTu+g3JaV00mUMGtV96FQKcRzagm67jB0WvBCc0Zus7Z7PD7TmZ6N94aYJwC1JbNcf49wL
	+HF7OoLO2ZgHGNvrEpYP/uFu/H58HpYPJ9SFAYncd9tidXjV4R1vLQTrHmSAtfDPDTTZt3Yh6Dn9j
	lB4J3Fww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbwaZ-0001HD-33; Sat, 15 Jun 2019 00:30:35 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbwa1-0008HK-0M
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 00:30:02 +0000
Received: from ufdda393ec48b57.ant.amazon.com (localhost.localdomain
 [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5F0TfFS010961;
 Fri, 14 Jun 2019 19:29:50 -0500
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-pci@vger.kernel.org
Subject: [PATCH 3/4] pci: Do not auto-enable PCI reallocation when _DSM #5
 returns 0
Date: Sat, 15 Jun 2019 10:23:58 +1000
Message-Id: <20190615002359.29577-3-benh@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190615002359.29577-1-benh@kernel.crashing.org>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_173001_196504_37AC4E7C 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Sinan Kaya <okaya@kernel.org>, Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Ali Saidi <alisaidi@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This prevents auto-enabling of bridges reallocation when the FW tells
us that the initial configuration must be preserved for a given host
bridge.

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
 drivers/pci/setup-bus.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/setup-bus.c b/drivers/pci/setup-bus.c
index 0cdd5ff389de..049a5602b942 100644
--- a/drivers/pci/setup-bus.c
+++ b/drivers/pci/setup-bus.c
@@ -1684,10 +1684,16 @@ static enum enable_type pci_realloc_detect(struct pci_bus *bus,
 					   enum enable_type enable_local)
 {
 	bool unassigned = false;
+	struct pci_host_bridge *hb;
 
 	if (enable_local != undefined)
 		return enable_local;
 
+	/* Don't realloc if ACPI tells us not to */
+	hb = pci_find_host_bridge(bus);
+	if (hb->preserve_config)
+		return auto_disabled;
+
 	pci_walk_bus(bus, iov_resources_unassigned, &unassigned);
 	if (unassigned)
 		return auto_enabled;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
