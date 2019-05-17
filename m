Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2DE21DCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0BS8HLU2jL5SGd1sn22tcp8EdVtx37RD2+hOLrqd/3M=; b=ArAY+TV1P1fkTdaRi+kn2KN/rd
	Pe1WEHLXkp1D0Zj+eoFrJNOqqp7WTZ+lUkiWjmBSDX8h+rgL96zPBpTJKLY+Nd0DtRBt4mVpNj9S5
	MmavhJIAMyoA/AufG4RWGAS9aIGaBdWu33SECeV5Wk95bpXP6C02GwYurY8d7HTYEKs2uLYjS9POQ
	UrBycOhUmiLvnfVNiM79PeMTf0miaaniECQgsvWJ3MR5mMwRRgI2oJvHkEqYCF6KS/RG7cwhebMeO
	bjhAysWCNPR5dVJs7WsLhxPJz2P3ZS28keABwTp2kj5Fq42fcAd/HXESCM2SK0E3mJaR+xKov5iHW
	RBzn7IRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhus-0007EO-ON; Fri, 17 May 2019 18:49:14 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhuB-0006dI-7e
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:48:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E6286619ED; Fri, 17 May 2019 18:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118910;
 bh=OV/Plnh2chiiFpl1tPau4te8Ie4x49eB+//wLShrquY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WvJgtdvFG5xvdzJ6SeLvHgYIB4+iX2jh4xkHa7GFOXxriVA/nDgYcpgQPNCnqfmWQ
 h+fhJdHHbFljAETDngUoAE0qOIeNRcP18Efbki0Lprr/ZesmnIVpROI9q0GNyPylns
 FCDUBVOFKcnl1TwJoyEOqCSyvitAPo0E60ko9b24=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F01AD619CC;
 Fri, 17 May 2019 18:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118905;
 bh=OV/Plnh2chiiFpl1tPau4te8Ie4x49eB+//wLShrquY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q5qKpN3dzD5EBfg8X33uOuhjvsyIAfJF6baPusIbikdtrA7fSJA4JsOWL4C85cVDC
 6FtobZvYMtIuxiz15DDKOE+LomXOAc/mc8XvGNFwKs80DvTeeluNDTIpqXyNMmQIN8
 HYC2NEdjPmNHGdOTajB64JomRehH+pSN1aUwCpA8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F01AD619CC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=isaacm@codeaurora.org
From: "Isaac J. Manjarres" <isaacm@codeaurora.org>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC/PATCH 4/4] iommu: Add probe deferral support for IOMMU kernel
 modules
Date: Fri, 17 May 2019 11:47:37 -0700
Message-Id: <1558118857-16912-5-git-send-email-isaacm@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
References: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114831_351323_1753B443 
X-CRM114-Status: GOOD (  15.98  )
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

Currently, the IOMMU core assumes that all IOMMU drivers
will be built into the kernel. This makes it so that all
the IOMMU core will stop deferring probes when all of the
builtin kernel drivers have finished probing (i.e. when
initcalls are finished).

This is problematic if an IOMMU driver is generated as a module,
because the registration of the IOMMU driver may happen at an
unknown point in time after all builtin drivers have finished
probing.

Thus, if there exists a chance for the IOMMU driver
to be a module, then allow for clients to wait indefinitely
for the IOMMU driver to be loaded. Otherwise, rely on the
driver core to dictate when clients should stop deferring
their probes.

Signed-off-by: Isaac J. Manjarres <isaacm@codeaurora.org>
---
 drivers/iommu/of_iommu.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index f04a6df..1e7e323 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -116,8 +116,12 @@ static int of_iommu_xlate(struct device *dev,
 	 * IOMMU device we're waiting for, which will be useful if we ever get
 	 * a proper probe-ordering dependency mechanism in future.
 	 */
-	if (!ops)
-		return driver_deferred_probe_check_state(dev);
+	if (!ops) {
+		if (IS_ENABLED(CONFIG_MODULES))
+			return -EPROBE_DEFER;
+		else
+			return driver_deferred_probe_check_state(dev);
+	}
 
 	return ops->of_xlate(dev, iommu_spec);
 }
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
