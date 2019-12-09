Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CE3116FEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 16:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjDPyrC0JN4EXcGbOkubvTNV8kzh4BpYaf/ysXAlYfA=; b=WWXbi1pmVeWd3l
	XPGQOXENJOghyZ72RIPvSKJCu0YhqA46VzIyqm7glkGbHMPLCtcJ4nMbZsUVD3bowYtP4W5LPfvjb
	/3h2KKOQIzYkPNXzWzw9PtfZHjPTlHySCPA1m9VEs8PVO4nX52aMdXA/AezC9mWZl6Oc3yz4r1W3x
	q8rzM22Ckgrggl7OHF/TMBx4eGmHkiiWdDAQH5VALPQwsVoJQQF/k9o4TdbzhiYF5ukg5fxDOJRKG
	+ioTNudBCkAUIdAWWVSTBEaHShbklKImSjccn77EC3W6uVL3wUtUW+zFpfYF2afIPXEv88pxcMBiy
	XQHxWMws6hmJ8+mA/LkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKeI-0007H0-H2; Mon, 09 Dec 2019 15:08:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKdk-00076X-D1
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 15:08:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id s14so15306637wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 07:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SCh0DvmuPvNnvwyZrUn1Yxeo2DKZuHbBZB63XGCCkS0=;
 b=RCFZsnYA0ah3RgaH4YcQ8lshQjU7h/V8oku0vGmhP4oE9Wtew3Cf9yl2hieQG5wrK6
 Ix2xPTip9Dd4NRjiWUdsWMp61s5znz2sevxNPEMTWQxZyd3pq8l77DoTAHRRhmp85Uy+
 iZCodqQIhd+4nvvloniqdKNiV+iuR0PKJabToorhlsWVZi9BzSg1EqvtudbeqB0RAwja
 T+sdZ2DJRdFhDap4NVifzs3S4ANB8VN1e32SPvQ5xJj7Wza5fCalFMyYIlsvBm6aleBN
 L0hAyV5gu3bi8DdTiU+RSIPy+Yb1Z7X3/j54c4/9x3aMMtnsjxLc3qt5MBZq+IenwAia
 7VKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SCh0DvmuPvNnvwyZrUn1Yxeo2DKZuHbBZB63XGCCkS0=;
 b=GV9F/mDm09UsrXO3jPD9BvZxb/pKkPN6/FpN7H9ZdNsxNl3ndXRvkIEt528jCEALVZ
 p7m94I2CEDeVdPtq/YusRS8xtPCvp+LDbwZu0ALm5XZJ4jfDVlOkv/6BcVW4FsGGBC/0
 Ir2F4ekdoNEKXbk6UrYedSEz4vpiQNpevTSXET7vBF7x9MVzaiMJAT2cCkT1OrqmuT44
 CjZV0fjaxALkwS8cySaBDbsWjev/+7aZLzFXStvqnsY4xGcJjI/miuw4JpOSCJ1Al4/7
 xj7zgDDrnsLushVUquuybVV4nEEFDMWG1cyhzYxwMUn2nQU87fe2RzCycWAO1A7gEenB
 NzCw==
X-Gm-Message-State: APjAAAVzWURihPIMNzcbIvn2dSXYl88WhQlMejJRz6AkwbnguezUEMPf
 NObjPzuRlLEqkCN1+DeQq7AvL+8R
X-Google-Smtp-Source: APXvYqxl2jgGeV/nQbJT4WcN79CWmM1WA8NXKH9i0hXyR/42inKaAVju+sJOobjHc7cEOfabhQZ6KA==
X-Received: by 2002:a1c:c90e:: with SMTP id f14mr25155761wmb.47.1575904079019; 
 Mon, 09 Dec 2019 07:07:59 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id 4sm41628wmg.22.2019.12.09.07.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 07:07:58 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [RFC 1/2] iommu: arm-smmu: Extract arm_smmu_of_parse()
Date: Mon,  9 Dec 2019 16:07:47 +0100
Message-Id: <20191209150748.2471814-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209150748.2471814-1-thierry.reding@gmail.com>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_070804_352969_7AA46C4D 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

This function will be subsequently used to extract stream ID information
early, before a struct device is available.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/arm-smmu.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index d1aef07bb784..5c5cf942077e 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1545,18 +1545,28 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
 	return ret;
 }
 
-static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static u32 arm_smmu_of_parse(struct device_node *np, const u32 *args,
+			     unsigned int count)
 {
-	u32 mask, fwid = 0;
+	u32 fwid = 0, mask;
 
-	if (args->args_count > 0)
-		fwid |= FIELD_PREP(SMR_ID, args->args[0]);
+	if (count > 0)
+		fwid |= FIELD_PREP(SMR_ID, args[0]);
 
-	if (args->args_count > 1)
-		fwid |= FIELD_PREP(SMR_MASK, args->args[1]);
-	else if (!of_property_read_u32(args->np, "stream-match-mask", &mask))
+	if (count > 1)
+		fwid |= FIELD_PREP(SMR_MASK, args[1]);
+	else if (!of_property_read_u32(np, "stream-match-mask", &mask))
 		fwid |= FIELD_PREP(SMR_MASK, mask);
 
+	return fwid;
+}
+
+static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
+{
+	u32 fwid;
+
+	fwid = arm_smmu_of_parse(args->np, args->args, args->args_count);
+
 	return iommu_fwspec_add_ids(dev, &fwid, 1);
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
