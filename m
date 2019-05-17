Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438DF21DCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aW6EBXnv20CvJDQhwAMwoUX1fprQb/FU08nC1cqF8kE=; b=jiKIjdXr9tN6GB0FsnDUoExkju
	EWcoNEDKd4v9E3BGyq8JAI8+fcE++jNgQEZkEbUFHIpv1o64YTWCu1lKLncKx930PuOGspRSbk1xv
	1t6xy2q+0nXcw0igLrLy0gAWtPy5mbEc0t19oxylFq4MlZGm8hG9OAdtnNNVrtVNPhdU3aoJTEQky
	80RSNGo28wD8xA1/dkwKoGbVlCdqiYYG49iAEdeCCfItcQWMSQjqFbRdwQeptlq5bRGuz8jvqbAyn
	+2AfWzGUnlyLlaD1ivMyHrM2Wk3r1fXgrXqc/CotnABZrZcfXW2xqUW7FfTJ/PtG1uF0Qf7yUKnBo
	XBsUKh8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhuh-0006zf-Ru; Fri, 17 May 2019 18:49:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhu7-0006bt-R7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:48:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7E97F61948; Fri, 17 May 2019 18:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118907;
 bh=P/hWDoOqVaRAA//LwTH4zMFxt0mPSjrmyOPmLTB6goc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ocDpl5KhXGymw6oaz33t0PTeZCVnaYa9Gmx4sQLW/eAfeUFp9RVott6lFTjGT2MDw
 cZqeoYdBzIbhAbpAyAs5y0kyrNOXuugwo8hMhre70gUvkeDXVQQJjlNKA24Li1X1zv
 Mo4kcnsuZyI6PLlxcQZ4bcNr3XMJKicieL8vqP7Q=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from isaacm-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: isaacm@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4D048618EF;
 Fri, 17 May 2019 18:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118901;
 bh=P/hWDoOqVaRAA//LwTH4zMFxt0mPSjrmyOPmLTB6goc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QfpDLnxeIPU6NUIdpUd/TjJOc/ag7MqQuKJcyux/eHC9sh5ZQi5AzegZRawPdGYu3
 HfEfHMlFkdkx8diUL2rUMcZDn1zSdN2eYynIbfgQJhNC3fbo3o0uXw2qTMpTaBxMaD
 iJ/XKPEcjJnh0B6mm4gAH9V965/21KEPbCCkhHsA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4D048618EF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=isaacm@codeaurora.org
From: "Isaac J. Manjarres" <isaacm@codeaurora.org>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC/PATCH 2/4] PCI: Export PCI ACS and DMA searching functions to
 modules
Date: Fri, 17 May 2019 11:47:35 -0700
Message-Id: <1558118857-16912-3-git-send-email-isaacm@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
References: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114828_017635_880C06FA 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Isaac J. Manjarres" <isaacm@codeaurora.org>, kernel-team@android.com,
 robin.murphy@arm.com, joro@8bytes.org, will.deacon@arm.com,
 lmark@codeaurora.org, robh+dt@kernel.org, bhelgaas@google.com,
 frowand.list@gmail.com, pratikp@codeaurora.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IOMMU drivers that can be compiled as modules may
want to use pci_for_each_dma_alias() and pci_request_acs(),
so export those functions.

Signed-off-by: Isaac J. Manjarres <isaacm@codeaurora.org>
---
 drivers/pci/pci.c    | 1 +
 drivers/pci/search.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 766f577..3f354c1 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -3124,6 +3124,7 @@ void pci_request_acs(void)
 {
 	pci_acs_enable = 1;
 }
+EXPORT_SYMBOL_GPL(pci_request_acs);
 
 static const char *disable_acs_redir_param;
 
diff --git a/drivers/pci/search.c b/drivers/pci/search.c
index 2b5f720..cf9ede9 100644
--- a/drivers/pci/search.c
+++ b/drivers/pci/search.c
@@ -111,6 +111,7 @@ int pci_for_each_dma_alias(struct pci_dev *pdev,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(pci_for_each_dma_alias);
 
 static struct pci_bus *pci_do_find_bus(struct pci_bus *bus, unsigned char busnr)
 {
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
