Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A548E1B62F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3YdDOS/xK5tPVtfKV4LtXhbiabDYG57DcCAiMIWRxU=; b=DX47egjO9Sjfuh
	1hvHeQVHRhaZjiY2wlVRaCA3hw6inxDVeVHtD1JBV+3zSZBL4rjPLLt5ZqaXBu1lid5mHE+i3LXIX
	Cj8ZZn9cSiFh3rY0ZNxWKMbyjD0QIYgxQ+NXpYYHt9LgVuCkIQIh8+YTxd7VueB0XyMx0Vzujivhs
	deG7gN9JAbki0fHetCcbY/b874a3k3VsUqMBtMDQykO4v7cQ9V6VDd4FzUR0bXR2hB7/tOHLdd3BB
	7mh4IrzDNGFz9pTpJaP2nJ3J7MDHN+AwVcuuhVB2aUDVzJkSGoewb9HBOUA3NPV0Bcn0wyjMvoa9B
	COTeOYYUfwZiLxl4DWNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgFc-00040a-Kp; Thu, 23 Apr 2020 18:07:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgEk-0003SN-2c
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 18:06:12 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03NI65in005826;
 Thu, 23 Apr 2020 13:06:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587665165;
 bh=Kwy0dcW3MJxuHI8JGhD0GVu8dadJkA3R87aPNEJSfoM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=uN98XlX5Q2zEL2ss2EJJMiNZk+/kH+UAPDc+hYIEl+7/+NOWJMTDc50E/0kS/AAEk
 Erj52h36RnVv0LJyinmhfSRu9JEdjWJLSVn/iNaYEd+GWRPBeh3GaCYxByAQS7+hbG
 BzJs4WCM6wGeA+RfeJUtoOEq9lUJINgpfwXLuAG4=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03NI65f2091770;
 Thu, 23 Apr 2020 13:06:05 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 23
 Apr 2020 13:06:04 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 23 Apr 2020 13:06:04 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03NI63FN116909;
 Thu, 23 Apr 2020 13:06:04 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Dave Gerlach <d-gerlach@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, 
 Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 3/5] arm64: arch_k3: enable chipid driver
Date: Thu, 23 Apr 2020 21:05:43 +0300
Message-ID: <20200423180545.13707-4-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200423180545.13707-1-grygorii.strashko@ti.com>
References: <20200423180545.13707-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_110610_200850_42648463 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Select TI chip id driver for TI's SoCs based on K3 architecture to provide
this information to user space and Kernel as it is required by other
drivers to determine SoC revision to function properly.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 55d70cfe0f9e..174dd4fc6cf2 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -98,6 +98,7 @@ config ARCH_K3
 	select TI_SCI_PROTOCOL
 	select TI_SCI_INTR_IRQCHIP
 	select TI_SCI_INTA_IRQCHIP
+	select TI_K3_SOCINFO
 	help
 	  This enables support for Texas Instruments' K3 multicore SoC
 	  architecture.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
