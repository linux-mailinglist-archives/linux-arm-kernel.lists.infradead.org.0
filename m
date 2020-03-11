Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFD51818B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:47:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUivg86qAh8A1GuvjNQ6UgazEKDKHYwGXphiFhhfurA=; b=nGcp+u1+XzEIzo
	O3Dm3pA9SNKRYiwt0fxwmZcRLaizNBbblmhE7JwWedlolaXJRXcHS3UjSO3AvAt8KKQZuWvS+Uhrp
	K8KpmR+kmvQlT8fbrVXmDlmx7L+EaVSkFXL7B6dszS+TjN8bFsyFD2uHF6tcWquyAUe4Icn7pBkQD
	PrzgpfR600rb76yD7nPxq5Fl6+KxcvqdyefYatGkSqn+gPdBi894jayOkELXvwVvS3iVihLxA9VSo
	kpk3Q2eJKaWImiteLKOMdqP+seh9c3q4mHTz6icaEkjgsfqREI6LW5xhVlLAxk7pD4nyqureDZ3FN
	QNy4qUpmPJzOwBeNb3ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0lz-0008TH-7S; Wed, 11 Mar 2020 12:47:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lG-00082y-AW
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:46:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so2455128wrg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N4gyYG6pd1qHC2GjZUAc/a5emn2edBGVA7chcRhvAO8=;
 b=R8RuT72WL1I4haJ6qD2A19NADfHGGL4h8E65a5bB32JeKEnVO9JbfE6y04C41FHnLL
 AiH3yxrWmV4b4ouGsgZnYDvH6JyHDntuFb3/9DvYzPs3xRWl9CkmzwGARwuOAyD3ENG8
 ExLs4O2EfRkqOxjujXUUTbIjhiAylBxQ8ybvym8Qyo1jwtRGcka/n1mIYt++nCi7pTJf
 r7VZnDbXLgsvy6IWe8+Hwi6VVKzu0VjNNczUmct/KxpEmMqWQtjtAeb2DhsSv3KYbkPr
 VSYMt4h9O6gpK0lYTWS8aMFDJFwbWDK7v4kkJazCh6yUcurLTvS7ONepD43137VO3oBz
 gmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N4gyYG6pd1qHC2GjZUAc/a5emn2edBGVA7chcRhvAO8=;
 b=bpd4GgH7f/WfsJvmNnET3lJ266ATU1EEtqW62b0RjO2qJmCDV07aAdsugn2tDRKiKp
 Zbz2Jdc2NiOxL55Cfw1V7/7JMOhTO/0JXG0BSlZUXewhWTXS4rHWTADCrsjNyoE/OPoh
 hpYvHmQ6OY9lWftJ71WtkalqQ6A0NUxkytyFCGcxEMHQ0z8flbua6+vgq2SylaFFBkMS
 OfhwtmbgN3Hz7khaFDffqRee8yU2P54fdZw0TH/aUbPsine/h21A57b37eDWqCX4QGZL
 2yLeTx4KK151Pcr2vN5P1mtEItqA+ASUijNPK86WmvARwNjcPtmlrwmRI7/G/b/Xz4W0
 I03Q==
X-Gm-Message-State: ANhLgQ0IOhLHTm6L4/s77Gm9Q+MFMh2h7ZFuBaNMKLGg/ZwMb4DFNHII
 xnp3/JlzWMVxxRGsUmVnlt4lyQ==
X-Google-Smtp-Source: ADFU+vtVplsLJKhJ5k96cjG7bQIJiqMwH6aOvBxLDVX3vK8y4Ou+veGu1hCYgxMQXp8PN1ugVbeDHg==
X-Received: by 2002:adf:a555:: with SMTP id j21mr4427467wrb.409.1583930817062; 
 Wed, 11 Mar 2020 05:46:57 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.46.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:46:56 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 02/11] PCI: Add ats_supported host bridge flag
Date: Wed, 11 Mar 2020 13:44:57 +0100
Message-Id: <20200311124506.208376-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054658_365334_145CFAC6 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each vendor has their own way of describing whether a host bridge
supports ATS.  The Intel and AMD ACPI tables selectively enable or
disable ATS per device or sub-tree, while Arm has a single bit for each
host bridge.  For those that need it, add an ats_supported bit to the
host bridge structure.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v1->v2: try to improve the comment
---
 drivers/pci/probe.c | 8 ++++++++
 include/linux/pci.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 512cb4312ddd..b5e36f06b40a 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -598,6 +598,14 @@ static void pci_init_host_bridge(struct pci_host_bridge *bridge)
 	bridge->native_shpc_hotplug = 1;
 	bridge->native_pme = 1;
 	bridge->native_ltr = 1;
+
+	/*
+	 * Some systems (ACPI IORT, device-tree) declare ATS support at the host
+	 * bridge, and clear this bit when ATS isn't supported. Others (ACPI
+	 * DMAR and IVRS) declare ATS support with a smaller granularity, and
+	 * need this bit set.
+	 */
+	bridge->ats_supported = 1;
 }
 
 struct pci_host_bridge *pci_alloc_host_bridge(size_t priv)
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 3840a541a9de..9fe2e84d74d7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -511,6 +511,7 @@ struct pci_host_bridge {
 	unsigned int	native_pme:1;		/* OS may use PCIe PME */
 	unsigned int	native_ltr:1;		/* OS may use PCIe LTR */
 	unsigned int	preserve_config:1;	/* Preserve FW resource setup */
+	unsigned int	ats_supported:1;
 
 	/* Resource alignment requirements */
 	resource_size_t (*align_resource)(struct pci_dev *dev,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
