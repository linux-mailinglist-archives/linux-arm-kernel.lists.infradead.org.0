Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A841ADDBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5yLom1UwqtHK8jVbHbFri1NHIrf79fDpW9gHwNnx+Y=; b=mdkADysKHmq2MY
	1LwWDJW4PJGlkbFqnk+hcmtly/fGUCKux1qIyQCRVjw4KOB8bZa+Z9WeQUQ9I5rEF16aTW8lRahtP
	UjdKRH4HET43sQYqp0htjQwu6zu+qox8D0L1FWdU28ZB7NmrYmJjz+b1sHF55arFZRkfccdx47c/J
	5g+Wc1Fl0820Co1o6e3L1UCe7STfMYODtcCBpOudr4cdeLU7TDCbJh3Rsz5p+hGHoLn1kXIfeNIrn
	i5yPgyYuw98k0thtqJ9NSFC7k+ZFGGdw4GH7UtFQfMC8+oZHBLr2PvJweikRbE1Ul+SQ+Uf77LW/M
	Wqn5sQmgfgWEBDR3n5CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQaz-00039L-OK; Fri, 17 Apr 2020 12:59:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQZp-0002If-0H
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:58:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03HCwJAa051532;
 Fri, 17 Apr 2020 07:58:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587128299;
 bh=MKV79ofiysqnjU4+7T9T2gezrhTObALnfWPqqZdKvpo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=YK4NxbUl2dQoEsrUkMK8tL96hclRE5dqyc2wEnc+0eiUip6V5PXhZxb0dSrNf2xcW
 /mvvQl384RBJieQsols7fnR/DhmqWKvn3uM4gle/VSRe3zfHVA2h5b7MSFGhgVvL1Y
 a/gjjY9p6TVsGqhJzjcQ8VtelmfFUoco07M0kJ60=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03HCwJU5109131
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 17 Apr 2020 07:58:19 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 17
 Apr 2020 07:58:19 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 17 Apr 2020 07:58:19 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03HCvsDB031089;
 Fri, 17 Apr 2020 07:58:16 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: [PATCH v3 06/14] PCI: cadence: Allow pci_host_bridge to have custom
 pci_ops
Date: Fri, 17 Apr 2020 18:27:45 +0530
Message-ID: <20200417125753.13021-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417125753.13021-1-kishon@ti.com>
References: <20200417125753.13021-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_055837_178476_F0FC2C59 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Certain platforms like TI's J721E allows only 32-bit configuration
space access. In such cases pci_generic_config_read and
pci_generic_config_write cannot be used. Add support in Cadence core
to let pci_host_bridge have custom pci_ops.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/cadence/pcie-cadence-host.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index a60b9627cfbf..6c84520318a7 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -291,7 +291,8 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 	list_splice_init(&resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->busnr = pcie->bus;
-	bridge->ops = &cdns_pcie_host_ops;
+	if (!bridge->ops)
+		bridge->ops = &cdns_pcie_host_ops;
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
