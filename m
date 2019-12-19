Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6C712671A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJtq41487Zpx/4Qm81afoa+2OTa9OqbW6d86IANaVNQ=; b=gto33970nY3AAx
	mvtI/axpukKgfpKayleD0HzzW8cqZc/TVWNpSIJlS+Y6N+pYTIF0kMC46hbpzJKr5m6cG5m837Btg
	6BKaMCmj+MeoN94OHgcUPBTm/D7TWP/xRZBbUekDVHN7xIDAf51Yon4mNks+/jboyLP1tEOevGRok
	Ni7G11TicvjQHyPsT58X3Zle1GU1ICXDK/MZo9VNbwswEcoTK2RTJyl9DcgSVNzbbts89KR1gAWhJ
	FQj0o2RQLHw5MmhKxaUlkk8x7h1ckD/Spo0QYszYgmxIbSf3NWhpdz81cJuFSmgzme2IWnjm8suRV
	i95DXtH/HjwFRW62olBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyik-0000WK-3n; Thu, 19 Dec 2019 16:32:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyhv-0008Pl-Fv
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id q10so6604572wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Rlh4fuYqJBRp2jOU8B0MlV1M4d0Kd3bn04JlNplJUI=;
 b=DZ1mQvkj39du9c3uvhuc1sVcu9Y0A998X/z1CY268T8u5anFgELkbUT49r7j/FRZcz
 +7ksycnZd2+fQJ6zh90kx8v00yqv95+dvo7vFBGyHIpOdKxZ0pBKHP1Ib58Ky7Fth78Z
 VeRsmVP2kmHmNbga3t9PtcFS9+McrPng62snTWftNTaRLMsUnkTCDDJavYidq4WFXSbY
 4AcOnnyLgLkT3p79PmvIDRKzHsoP0jh32/SQlZwafUWUhVdz4WPCLo+VzqantlSmz8QH
 1+1hoBcCfokGxka6d4wDM3UGxmSx/Ms/zaBIQammeFbf2MG87txqfxqlxOs1Ib7Kb6F6
 gRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Rlh4fuYqJBRp2jOU8B0MlV1M4d0Kd3bn04JlNplJUI=;
 b=oIaSgZsF3Iz2/o4rDk9uEGyr9/p4HzPeKM1zNULwJEEVqFBW2v6bTHnar9bJtMDZQt
 gt1cnXV4/m0+UUJt78Op2TbuqirIuSJu+y92mjkeIVy+HxkIkhF9TLcbpsemZHTWGbPa
 f0kGAFuHg3mUlWZKLiEoPexW3YgJ57sAp0xhgpaVE0EN25zoXcoLobykTE4lgtcma9uk
 NRq3m3vch78f8VMQ8rDWcdfgAyzEteHcW2UA2plCrQdlk4sP25JE34V4zBarx6czXTAL
 x9O+vBD2vcWjfGASsi7dZVeomwdnrBhhMZaAF+yXyjZFKWAF7+dLZduPKWmO6IJpo/P2
 PNvQ==
X-Gm-Message-State: APjAAAV+bFmeQK2K/ThtRDK5nAX+FQQMlpwVH5mGRwhPWDXMcUZTRoki
 Co17iyxPN5XK1lshm41H7FIGjQ==
X-Google-Smtp-Source: APXvYqyam1fWJispp04KzWY3PPXWRuIZpC4LpasQ5BFUWvh/VFFpRwbOR/7kgGSzp2MXQTFfM2Wo2Q==
X-Received: by 2002:adf:f5cb:: with SMTP id k11mr9990514wrp.71.1576773081514; 
 Thu, 19 Dec 2019 08:31:21 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:20 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 02/13] dt-bindings: document PASID property for IOMMU
 masters
Date: Thu, 19 Dec 2019 17:30:22 +0100
Message-Id: <20191219163033.2608177-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083123_528979_8355835F 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Arm systems, some platform devices behind an SMMU may support the PASID
feature, which offers multiple address space. Let the firmware tell us
when a device supports PASID.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 Documentation/devicetree/bindings/iommu/iommu.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/iommu.txt b/Documentation/devicetree/bindings/iommu/iommu.txt
index 5a8b4624defc..3c36334e4f94 100644
--- a/Documentation/devicetree/bindings/iommu/iommu.txt
+++ b/Documentation/devicetree/bindings/iommu/iommu.txt
@@ -86,6 +86,12 @@ have a means to turn off translation. But it is invalid in such cases to
 disable the IOMMU's device tree node in the first place because it would
 prevent any driver from properly setting up the translations.
 
+Optional properties:
+--------------------
+- pasid-num-bits: Some masters support multiple address spaces for DMA, by
+  tagging DMA transactions with an address space identifier. By default,
+  this is 0, which means that the device only has one address space.
+
 
 Notes:
 ======
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
