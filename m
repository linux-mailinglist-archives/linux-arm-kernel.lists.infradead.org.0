Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687F215BC77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFWN22XjHH67dSPGY45rH4BUcMNEQA1HWYvc1TJMclo=; b=Q9LL3pOptkw+W9
	jmbnyoL2NkL1TodpyL3yGJEVYcrfQtBMQzDVdKUI/MYNQa1UlY/gsk8+B7FofTUwOVzri9AdgPdtH
	xJLUgNVEqKRGRYkc+YU1u2N3TgSL0K5hsxzi8q9Qirppn3uVm9kPqanOo0bbuPUiTQeyQVCz/d8+P
	fK0vTe6dt0+mOyh8Kiaj7ZORK2gQjsQuJCie1DMp1wByjvHjc2fqSlk6CG5fBv6sgOUK2SQ6uTG3u
	cyOmp0WArKa2gacYO3m2SvrnqycqPbXZ8Nk8FZxwrX6t7t1aumW+tPBJ9hQ2PH2lgnIBZm6LnMUam
	FNv3Mu8cmevlEqET4Q7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BWI-0002zz-TT; Thu, 13 Feb 2020 10:14:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BWA-0002ym-Jw
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:14:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so5919689wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ffFCJH69MWS3gu5TdGiWJyiqlV+lu2ttPiLstT+myYY=;
 b=VOc/AgqCKj2uTb+3PxiP+vBussxkp9Xnkbwfwzzx43saT/PGOSRy1wb3R9u4IgsK4H
 QgtZXTOA8HRdd+QcPOE+4QaCBUzelwLymRIyf4YS4nbzZy999MRyw3Gmdb9+lqXo9o+x
 cSvl76aBS1KTII8O9Sjj1wtfsi3eqx84csvK9F4ALVE3r1MwmAJ7UnQYUyo+qXg44Ck7
 Rzm3M0YkppAGyWJDQjiKghiJpi3EopMafcdcxQQf7qBr5Su45pBtfRQMKyfT/Y3eL+ox
 drtFFFENjIz5kvdy+A9naZ5w8nxw6A1hFcgvMhUgOOBUMShrobEgffwcpxdcOXCLIE+l
 rAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ffFCJH69MWS3gu5TdGiWJyiqlV+lu2ttPiLstT+myYY=;
 b=srryhe7ZzmEXz7wkJRO5HtHwkrZJ8fqOfXEZeJHe7xg/2yM2yTuu7Z/qPr1XGpFz9F
 nqHxZQcQoS+fq02jnyyCjEa4g2827s8FOacF6KhvVztW/tNO71Mucvyo5y5Ax0wGju53
 xT+O6XTkIvwBriwoTccntS/NsToeRgqaUzjDHzVEIvNHa9WLqAJG/4IDYNn4bQccAP2q
 rwtPZHWic+WGeQAGCZVfvR4PivG11eGSoiQKJtSnauoyvSuxEcu2HeNmH/aOeYzi18+O
 9Y3MtuAyGQA7BuMyVn5+GvP2gSYSFUOJDxnqGUdxIWbU/jqftbLmmqdwOtAY6VPg7W9z
 1gWw==
X-Gm-Message-State: APjAAAXxVFge2uDZUtwzHGQHCaUzO2ytcjSD8XalzHwUY+vR7mVBvHfs
 9RzXpmJthkjERSDTql0Vk8nW2w==
X-Google-Smtp-Source: APXvYqyGI8je5B1PaESIUTiNN6WwNtME2/884yAwDWfvmieJ+C+jPQfGseYc8+Y0Ju3V7vGv/sHu1Q==
X-Received: by 2002:adf:b193:: with SMTP id q19mr20678957wra.78.1581588885058; 
 Thu, 13 Feb 2020 02:14:45 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y131sm2428059wmc.13.2020.02.13.02.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 02:14:44 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH 1/4] PCI/ATS: Export symbols of PASID functions
Date: Thu, 13 Feb 2020 11:14:32 +0100
Message-Id: <20200213101435.229932-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213101435.229932-1-jean-philippe@linaro.org>
References: <20200213101435.229932-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021446_652112_A2282209 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Arm SMMUv3 driver uses pci_{enable,disable}_pasid() and related
functions.  Export them to allow the driver to be built as a module.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/ats.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index 3ef0bb281e7c..390e92f2d8d1 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -366,6 +366,7 @@ int pci_enable_pasid(struct pci_dev *pdev, int features)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_enable_pasid);
 
 /**
  * pci_disable_pasid - Disable the PASID capability
@@ -390,6 +391,7 @@ void pci_disable_pasid(struct pci_dev *pdev)
 
 	pdev->pasid_enabled = 0;
 }
+EXPORT_SYMBOL_GPL(pci_disable_pasid);
 
 /**
  * pci_restore_pasid_state - Restore PASID capabilities
@@ -441,6 +443,7 @@ int pci_pasid_features(struct pci_dev *pdev)
 
 	return supported;
 }
+EXPORT_SYMBOL_GPL(pci_pasid_features);
 
 #define PASID_NUMBER_SHIFT	8
 #define PASID_NUMBER_MASK	(0x1f << PASID_NUMBER_SHIFT)
@@ -469,4 +472,5 @@ int pci_max_pasids(struct pci_dev *pdev)
 
 	return (1 << supported);
 }
+EXPORT_SYMBOL_GPL(pci_max_pasids);
 #endif /* CONFIG_PCI_PASID */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
