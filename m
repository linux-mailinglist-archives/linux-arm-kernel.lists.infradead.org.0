Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7521A106C95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkfch6setsm2131nCJeDIO549rXnATviSMs05hdhIhU=; b=jwuGttd4dlP12Q
	JUAgBOEPT81quXV/TC/+s0d9l9vyFRKz/nckbxNkFgNKDz1vw0uuAUcx81WcsLlv9JVvBDtVhNOXv
	4smR94BW/+GoYMrvV79XS6f/L961b+fxOO+KEKcz9k6sA9OSp48bP5QpVsVnBjtFNODlWJQb/bHDL
	IvRKit3hED/Dv/IzEmFgO5JrN9GJwbcI6HY/j1d8Mnia6ZgSFbFUtqXMZtTkPCzwQAYYy8h/wHNzx
	q035Cwn6LB6KCeJ+dNbMyNg1mANrPQkLRyRjXHAtfBVIZn44etu/TCwOs4kzMgiDGTz2zvu9ECyHB
	WNVrOMkc8U0SJDfM5CEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6Zj-0007g4-NA; Fri, 22 Nov 2019 10:54:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wc-00050a-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:50:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id z7so4622102wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GnM7tdmIuTsFG/gPDSUiRJmc1F37mgdxvtHO3FtFylE=;
 b=Bn+Nr/ytUk5YMVm1sQH/UVWhb/mMA2dE72H0//SsVqGsJ9g8ztbjNMl03n+vqtDgX1
 BVKT3vkBXC/ScqOu1f0iF7XkX6lsqaoR5LUZxq0mZatIZOz7WNO1g8raGl67VngxgyW9
 Zn2kqX9vdxYlDvCmxLBCm2xmeGhSiwiljE+9lmgXsFsgUPRpHuMCsvvuNYY6NigcTHtB
 6RIo/Qb2nm8M3urPlnZCBvaTaniwiuU4Ty9DcH8MlFxUi10bX7AZqP19/YZ8ro/tJBja
 iDFhce9IQReQ91LQ4rr7HwA94Ofb7+RxgCw7sMyVwzrXEjrM0k5Wqz6UJ8AMXLdvEArk
 /QLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GnM7tdmIuTsFG/gPDSUiRJmc1F37mgdxvtHO3FtFylE=;
 b=DIFZDdEkJavdlsa30POQaTZ+HnDyJSDV7vLYDVjNv0BUgpCIePR6M1A35cSos/Kh2j
 tw9dqyZO47+UJpbAtz8IeWZ3F12RIxnjPxkmhELoOeBO4ewUeQyuWHKgqCs1PpqHheMn
 eFoivwa4AxkJWl3fDWQhzjto+Ar9aZKT5XTb/tiCFXF6vlO66eA2eAdmuP0CprI+qSd5
 kxzIyAI+NinuNEI6VzdjUgDHqvOpFHI6qBjbazbNIQjHuxlXhWigqayABkfEU1URpUVx
 FQeJqh1lVk/Vg/ZnVPb3b+0VE5tJ/qlayX2TRZ3AzU+CAJLx+0U+fWwkkyb6pL3bbLzC
 2W4A==
X-Gm-Message-State: APjAAAUvG+IeL7jekvL5TeN89TUVEAoiNLeCpqT2vvQqhXCqDSmXO105
 LCwvbhI9FZn8uwmq2FKPIzXrIS1ZsGw=
X-Google-Smtp-Source: APXvYqwkrBA1P0X6qMijtc1m/IkH374uodkpj4sCzTHsq7FVgmjD/iynOAUZy7h3h+1OHmfVUN05+Q==
X-Received: by 2002:adf:c611:: with SMTP id n17mr17357418wrg.317.1574419852465; 
 Fri, 22 Nov 2019 02:50:52 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.50.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:50:52 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 01/13] ACPI/IORT: Move IORT to the ACPI folder
Date: Fri, 22 Nov 2019 11:49:48 +0100
Message-Id: <20191122105000.800410-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025054_613410_1A375A00 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IORT can be used (by QEMU) to describe a virtual topology containing an
architecture-agnostic paravirtualized device.

In order to build IORT for x86 systems, the driver has to be moved outside
of arm64/. Since there is nothing specific to arm64 in the driver, it
simply requires moving Makefile and Kconfig entries.

Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
---
 MAINTAINERS                     | 9 +++++++++
 drivers/acpi/Kconfig            | 3 +++
 drivers/acpi/Makefile           | 1 +
 drivers/acpi/arm64/Kconfig      | 3 ---
 drivers/acpi/arm64/Makefile     | 1 -
 drivers/acpi/{arm64 => }/iort.c | 0
 6 files changed, 13 insertions(+), 4 deletions(-)
 rename drivers/acpi/{arm64 => }/iort.c (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index eb19fad370d7..9153d278f67e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -377,6 +377,15 @@ L:	platform-driver-x86@vger.kernel.org
 S:	Maintained
 F:	drivers/platform/x86/i2c-multi-instantiate.c
 
+ACPI IORT DRIVER
+M:	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
+M:	Hanjun Guo <guohanjun@huawei.com>
+M:	Sudeep Holla <sudeep.holla@arm.com>
+L:	linux-acpi@vger.kernel.org
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	drivers/acpi/iort.c
+
 ACPI PMIC DRIVERS
 M:	"Rafael J. Wysocki" <rjw@rjwysocki.net>
 M:	Len Brown <lenb@kernel.org>
diff --git a/drivers/acpi/Kconfig b/drivers/acpi/Kconfig
index ebe1e9e5fd81..548976c8b2b0 100644
--- a/drivers/acpi/Kconfig
+++ b/drivers/acpi/Kconfig
@@ -576,6 +576,9 @@ config TPS68470_PMIC_OPREGION
 	  region, which must be available before any of the devices
 	  using this, are probed.
 
+config ACPI_IORT
+	bool
+
 endif	# ACPI
 
 config X86_PM_TIMER
diff --git a/drivers/acpi/Makefile b/drivers/acpi/Makefile
index 5d361e4e3405..9d1792165713 100644
--- a/drivers/acpi/Makefile
+++ b/drivers/acpi/Makefile
@@ -123,3 +123,4 @@ video-objs			+= acpi_video.o video_detect.o
 obj-y				+= dptf/
 
 obj-$(CONFIG_ARM64)		+= arm64/
+obj-$(CONFIG_ACPI_IORT) 	+= iort.o
diff --git a/drivers/acpi/arm64/Kconfig b/drivers/acpi/arm64/Kconfig
index 6dba187f4f2e..d0902c85d46e 100644
--- a/drivers/acpi/arm64/Kconfig
+++ b/drivers/acpi/arm64/Kconfig
@@ -3,8 +3,5 @@
 # ACPI Configuration for ARM64
 #
 
-config ACPI_IORT
-	bool
-
 config ACPI_GTDT
 	bool
diff --git a/drivers/acpi/arm64/Makefile b/drivers/acpi/arm64/Makefile
index 6ff50f4ed947..38771a816caf 100644
--- a/drivers/acpi/arm64/Makefile
+++ b/drivers/acpi/arm64/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_ACPI_IORT) 	+= iort.o
 obj-$(CONFIG_ACPI_GTDT) 	+= gtdt.o
diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/iort.c
similarity index 100%
rename from drivers/acpi/arm64/iort.c
rename to drivers/acpi/iort.c
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
