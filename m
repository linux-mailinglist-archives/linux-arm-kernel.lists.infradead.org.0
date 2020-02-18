Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB223162C48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Vs7Xoja9KL+xEYtQmUjpHfS0vGtCcO/YM+KkwBG2FI=; b=BUvEgnaRy8bPSK
	mziX3Wq+eu0DmG3Ij6B9Tz5IOImazrR0ESZhefQ3/BV1W2sfpMs99ZyYfHq47jqMKzeRq0X6afheG
	R1raPgaA8DRLXxNpmEBK2KZlKSi92W8Lhm2lOqnO9uGK2d3hX3OivZU31BKspD7eoNnYzJLbc6lIV
	qc2WcFk5K1q4PFwtZCQRAMh9euPp9aDf2bWIdpbbei+R0POEtUkdEOTThhcR/xHspVmRXtNbyTBfO
	ay/8ddTbEEG0znfV27Fcsm0jsTLQ9mBT5gLVnLuiBIfvmYeShL3qTF6c6++z5twvohNJiHw10S0Ji
	xJ3ALexQcULGr1qt77vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46Sv-000422-WE; Tue, 18 Feb 2020 17:15:22 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46RD-0001yf-Vz
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:13:37 +0000
Received: by mail-oi1-f196.google.com with SMTP id l136so20857104oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:13:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kW31qHj/OGRN2L4TXUUKIQPN57zbu2axU6XP0HsWl20=;
 b=NPu8hEUhKszZgB+JLwF0fetQVgLojxM+7f1n+hBToe8nBod1RnQ/FT/t+n2w5OcWIW
 8ppWBbra6fYpbGsGsjFgXoAKNiLZJvRHeumFaSVdtjr8J/JnZ6tL8bUSWx20NRZv9D3l
 O/preBBBuiX9e906XUWDV3hNb1eIGQVdPfRGm+KuvTDC7nxtZNhJ3T1m9olTh6Tx2JqX
 g5iQtaK8NCdcpZBACe2Nbywj3+cKidgzrbe0DLuA1g7oN5faNXqA6EToz7y5MgIPuFJd
 YeeL7PmWR/mLUl3GDUjbP/vRdUEr3odcD04W5fnnSGoKBVvkme+0CHqA/+FrkfCrIvQo
 KnYA==
X-Gm-Message-State: APjAAAV/cTblLG2VAaDtxw1MJmkui4ZBs5TdrO73bDHvrfWOr1ndDaRj
 1DNr7TKH9dgOiidozI+bfdpZ+iI=
X-Google-Smtp-Source: APXvYqzM1O5/oeWQHJ8gT8Z9L53EKPDEEuwksZtS3dmhCEXg8KSK+0rIqhxLhSP9RCgQyZtde069lg==
X-Received: by 2002:a05:6808:9ba:: with SMTP id
 e26mr1936616oig.81.1582046013542; 
 Tue, 18 Feb 2020 09:13:33 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y25sm1545755oto.27.2020.02.18.09.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:13:33 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 soc@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
Subject: [RFC PATCH 06/11] iommu: arm-smmu: Remove Calxeda secure mode quirk
Date: Tue, 18 Feb 2020 11:13:16 -0600
Message-Id: <20200218171321.30990-7-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171321.30990-1-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091336_062164_00C04CFE 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: iommu@lists.linux-foundation.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
Do not apply yet.

 drivers/iommu/arm-smmu-impl.c | 43 -----------------------------------
 1 file changed, 43 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index 74d97a886e93..a3be8712d27f 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -9,45 +9,6 @@

 #include "arm-smmu.h"

-
-static int arm_smmu_gr0_ns(int offset)
-{
-	switch(offset) {
-	case ARM_SMMU_GR0_sCR0:
-	case ARM_SMMU_GR0_sACR:
-	case ARM_SMMU_GR0_sGFSR:
-	case ARM_SMMU_GR0_sGFSYNR0:
-	case ARM_SMMU_GR0_sGFSYNR1:
-	case ARM_SMMU_GR0_sGFSYNR2:
-		return offset + 0x400;
-	default:
-		return offset;
-	}
-}
-
-static u32 arm_smmu_read_ns(struct arm_smmu_device *smmu, int page,
-			    int offset)
-{
-	if (page == ARM_SMMU_GR0)
-		offset = arm_smmu_gr0_ns(offset);
-	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
-}
-
-static void arm_smmu_write_ns(struct arm_smmu_device *smmu, int page,
-			      int offset, u32 val)
-{
-	if (page == ARM_SMMU_GR0)
-		offset = arm_smmu_gr0_ns(offset);
-	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
-}
-
-/* Since we don't care for sGFAR, we can do without 64-bit accessors */
-static const struct arm_smmu_impl calxeda_impl = {
-	.read_reg = arm_smmu_read_ns,
-	.write_reg = arm_smmu_write_ns,
-};
-
-
 struct cavium_smmu {
 	struct arm_smmu_device smmu;
 	u32 id_base;
@@ -166,10 +127,6 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 		break;
 	}

-	if (of_property_read_bool(smmu->dev->of_node,
-				  "calxeda,smmu-secure-config-access"))
-		smmu->impl = &calxeda_impl;
-
 	if (of_device_is_compatible(smmu->dev->of_node, "qcom,sdm845-smmu-500"))
 		return qcom_smmu_impl_init(smmu);

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
