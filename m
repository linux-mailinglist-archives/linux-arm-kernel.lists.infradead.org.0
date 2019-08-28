Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234E09FDA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PsQO5hLC4HN2yqeFngeSZe7ztnbmnjODii9XnJsCUUk=; b=my0Oo10EJbxn7AbVMEJw0mdTg+
	w2EfirdXLaFvpgV+hz/pNrjCKf72OUm1KnAl2VCsQKBgBAr6C7O5xw4fUTzkluCSK0AQ+mFp6mbj/
	x3V0Rd9YuUbHI09R4vp+CnAXc7xoVVmZF+mQzQWr7NoHi0bZBdvRNcEpl7N0hEA5f3FoGAL2nEBP5
	GdP5OjngwYRip4HOD7S8G8Zj1e7UlbX++43eQVcGRPsmNBdz5N3mlVot9ulj/LQJ4KM6v478I/hKh
	kR23kHqlzTsqV5VZhQxdGRqMbbHABjLWTJR0KTc7aguY1Otc9Ne5ZJcLoBi/iCa1TIzbsw3FJwoRM
	JkqZTGag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tkV-0003GC-AK; Wed, 28 Aug 2019 08:56:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tjX-0002bx-Ai
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:55:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id bj8so923053plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bHvbfgR0puFODQmQ5oUgG4pJ5KLJ8B+neI77o1rOHwA=;
 b=B6cG3EELu++3gVW/iX0sxgs3TTSaJEg2uVopyXE5Q1XAw29RlBxcUQOYl5xB+yFVpf
 7OH6TruTeJv+XckLXbJUffUvN3stwFIl/WNj+LJB0vpQdnTCCDCXxWL2Sgr+nrSnFnoL
 OCXNlCjvTVIT6zHh6y21au0wI304I7nc+94k8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bHvbfgR0puFODQmQ5oUgG4pJ5KLJ8B+neI77o1rOHwA=;
 b=YLo8JPANu11+8zIqtviVIicK8RIcbpX2qcySHcGiuov1Mt9F7iPfXfxDzLQRrPrzuO
 hlaNF1PBA8Rg4zWqXh/ppwBSLKICYVBaPCnem5hhl0S6dxT7taJ8EvRmG5wFlnb7Y42d
 sUeruvRD/1zep7SfTMBgDhR8sjR8xtfgivxgTRngb+dALnOQJ1546N8YWYSccdUEOYAp
 nUH1J/GP+YAnWDwd5EhjoQOWq3KPke56cpOKO4bUooDpvzANfkBDG4nH5L4obrtP1tmQ
 Uxc6bvSrwGncEVhkTwWRGEhibh8dSL7/nthTZDDnOXnuLIsis2EpAV18vsb6avgPR+qi
 v2hg==
X-Gm-Message-State: APjAAAVQbawhuR3Kq7e5/LUpEbD9TTlbjr/ZsfUPkfYif55jaOBHkMKl
 dog3E1zEO3wUL8eXoQdNY/FAiA==
X-Google-Smtp-Source: APXvYqy4RLvpIcLa0QnSesOupyvzYRt8WfODa0jBdGLy/7THR/JXgVAtKRWCSzo4J344VnpKwE7oJw==
X-Received: by 2002:a17:902:4283:: with SMTP id
 h3mr3350534pld.56.1566982514296; 
 Wed, 28 Aug 2019 01:55:14 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id z189sm2431386pfb.137.2019.08.28.01.55.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 01:55:13 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 3/6] arm: dts: Change PCIe INTx mapping for Cygnus
Date: Wed, 28 Aug 2019 14:24:45 +0530
Message-Id: <1566982488-9673-4-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_015515_641964_EE405AC5 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-kernel@vger.kernel.org,
 Ray Jui <ray.jui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ray Jui <ray.jui@broadcom.com>

Change the PCIe INTx mapping to model the 4 INTx interrupts in the
IRQ domain of the iProc PCIe controller itself

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 arch/arm/boot/dts/bcm-cygnus.dtsi | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
index 5f7b465..9d3d9ef 100644
--- a/arch/arm/boot/dts/bcm-cygnus.dtsi
+++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
@@ -264,8 +264,11 @@
 			reg = <0x18012000 0x1000>;
 
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0>;
-			interrupt-map = <0 0 0 0 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie0_intc 1>,
+					<0 0 0 2 &pcie0_intc 2>,
+					<0 0 0 3 &pcie0_intc 3>,
+					<0 0 0 4 &pcie0_intc 4>;
 
 			linux,pci-domain = <0>;
 
@@ -292,6 +295,14 @@
 					     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
 			};
+
+			pcie0_intc: interrupt-controller {
+				compatible = "brcm,iproc-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 
 		pcie1: pcie@18013000 {
@@ -299,8 +310,11 @@
 			reg = <0x18013000 0x1000>;
 
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0>;
-			interrupt-map = <0 0 0 0 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie1_intc 1>,
+					<0 0 0 2 &pcie1_intc 2>,
+					<0 0 0 3 &pcie1_intc 3>,
+					<0 0 0 4 &pcie1_intc 4>;
 
 			linux,pci-domain = <1>;
 
@@ -327,6 +341,14 @@
 					     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
 			};
+
+			pcie1_intc: interrupt-controller {
+				compatible = "brcm,iproc-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 
 		dma0: dma@18018000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
