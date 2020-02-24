Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332D416AC82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFWN22XjHH67dSPGY45rH4BUcMNEQA1HWYvc1TJMclo=; b=fbALYqHj0UL90Y
	SBCMxdMTnyQic1b/Bc8Ntadeq/i2pnAEAp7NlXp8NEyXnSqc0wytfAeQd0BV98xhbVutvRF0Opk75
	ph4u7D6iQER1Pj6JjUWskiq+wdUxLv7fdf0mD93eTKZZGiNm4wQVhpXbGT39BRwMVHLfolnzTSbxi
	BTkODNpPWGsjzc9LQQSQfJTLTZTZNfwnWVEJCzXgKsYBxwBRoXe6b0L3hdOjomok+PatSqsotk+yS
	aH7S8R9A5jp1Va+oFZhaQjh3GwneCw621q7Ni2YiOta64Ktut4pvRbFTo+dOld5DA3uO4vUlaKooB
	o+w5tqH9C7eGvCdEH27A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H52-0002Se-OI; Mon, 24 Feb 2020 16:59:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H4S-0002FB-FY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:59:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id s10so44550wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ffFCJH69MWS3gu5TdGiWJyiqlV+lu2ttPiLstT+myYY=;
 b=RRx8U11vMPRTlGnIGn4sCB8SnlGdKWqavfSqD6SR8YQbgWxZkfH48PSJ+5CDfsbk5S
 Ze+3wOWEkqnI8YBqOFSDJz5FBNrpacYvYZgTsDkmdA5n4wlRZVjddXIXMc1Swc0FusDG
 ID0exI27uMOdvgwnrKyEkHPZhPAkCE5/JcqFqErWtxLy03ZXcHvBaYquM+8n9pZzbnmf
 JF5yKMQAnnlPwCUdQ417vEY8sBmXYM2Du+VPCiVVgh3ewo9JEWYEU99AdEfFfMi7eRqo
 Nb3D2kPURsTnpbcyeQ1NnVKVHrxjKbWjHpk2O3LengMczoRsjyCdMZXBKdW27vABPch/
 uALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ffFCJH69MWS3gu5TdGiWJyiqlV+lu2ttPiLstT+myYY=;
 b=uKOT/oHRHVQz4y4/tq7moC8z2dREUU2BrZB54AJ7Fus/wV22S4U0TiIGbKYqiVVBRi
 WS9ZuMWv0sXluhWbdtyfZu2f4oQV0XaM+URBeFln5aybqI3EzrhNAEG/J1eAq7gGvaXN
 blgb2i6xuhSzJn9nJeQLi93dw/Gc8EIj+imltzuIc9kgkhdovgu7Awns455l4RQFJIDl
 atU1pXMIr/VIMr4s0mN5A5R4PHsHuWKzOEM2I/q3WGihmkStWP2WFdhdoOmicu04UlSm
 X0XoR4UKD+vh0UZ3/ngmM54AFOZec0H5vVrMu8z259zjS4ZTmZtPEuC5Q/g2uybFPmvz
 vpPw==
X-Gm-Message-State: APjAAAWkG+0HiSgwCDwmrW2c4pUnauUYE2db9mbHEIvGGwXogaBu6azb
 qXJVEPFwLSyPaS78iFQIkagbTg==
X-Google-Smtp-Source: APXvYqzuI5JL7DJSxxC2MA8748RGx58CDQkzuT+eunhF/IfX/BLY+BsUCaKxLYTvlGXreVTEpIeERg==
X-Received: by 2002:a7b:cb86:: with SMTP id m6mr23887005wmi.51.1582563543020; 
 Mon, 24 Feb 2020 08:59:03 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id b10sm19473978wrt.90.2020.02.24.08.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:59:02 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH v2 1/6] PCI/ATS: Export symbols of PASID functions
Date: Mon, 24 Feb 2020 17:58:41 +0100
Message-Id: <20200224165846.345993-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224165846.345993-1-jean-philippe@linaro.org>
References: <20200224165846.345993-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085905_282772_F78B5812 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 robh@kernel.org, jonathan.cameron@huawei.com
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
