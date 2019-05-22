Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88382624D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=it0UcNj3DUXRVCMOlQi0OmkYspVdnH32vgYi5QfYFsw=; b=ZBY+L/wiqY9Wxu+GADm8k/fo2H
	LfKJdSLpXB1OotEp+rTQdbzXT183yi1CAnm6y7FO6onrI+QVw6qYapxHf7HxQ5lu6gEbRZZU0aanD
	n7YILidCJoj+hkyS5C5Y8IMOD7tf4HZL9BW7H9IZI3X7cz315L5whD8HoeD7L6zIJYIX1duHga3ay
	6i6SULjR91bFxwVuFNxrambQjCWdo0sWWAkbAJ0x4ckBOvzJa5yk9SroYruPAmvfsC8XC5zjL4R8V
	BPZuApthnRwTS0KskdnkHJ5gg8oCtCpqUaJH2irYCZJyDKJSogTu0WmT/lNuHxCDQ+qfUkWMEGeOM
	9XRNvoOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOqb-0000Uh-93; Wed, 22 May 2019 10:51:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOqQ-0008SQ-Hs
 for linux-arm-kernel@bombadil.infradead.org; Wed, 22 May 2019 10:51:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VYrdyVdXitr0IukJNDx1qYS4TusT1Vc6l7Tt7/OvRJU=; b=n2PVu3uDul7OxhKDJ5j4lmMI6
 xLQsFtLP7G+q9bRASRluOCjJav4lHfdnGdYiZdl+eTZB9ThhpOT/9/dW6c/w/ro6dx0UFKkPn6vma
 vFpK3G3T5TYFSUo9blBnQZRICtJFQa1sgvPqFObKeP8/MVcdNeXGPaD9Yce5ntR84WZlDUc7yPXtX
 +WaefjU501cKaBmC157AUJmw9gEpLdzijJjKGUbnAMCaA5yk+GbpGGvTIgDc8Ir/mkfT/eXWiJLKd
 KfkYayR0wgWDnJSvpcNX2sJOBArXEqVFf85xc4kmxX/+KeWoeQeDjzcsQM7pbxC0BeCoMv26OQ/bO
 n4vz//sRA==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTObH-0006Uy-KZ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:36:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FD651993;
 Wed, 22 May 2019 03:35:59 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 502003F575; Wed, 22 May 2019 03:35:58 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [TEST PATCH 31/30][EDK2] edk2-platform: juno: Update ACPI CoreSight
 Bindings
Date: Wed, 22 May 2019 11:35:04 +0100
Message-Id: <1558521304-27469-32-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_113600_094509_58C5FE1B 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI bindings for CoreSight components on the Juno-r0 board.
Please note that the bindings apply only for the juno-r0.
The layout on r1 and r2 are slightly different and will need
dynamic ACPI table support to be able to use a single UEFI
image.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 Platform/ARM/JunoPkg/AcpiTables/Dsdt.asl | 241 +++++++++++++++++++++++++++++++
 1 file changed, 241 insertions(+)

diff --git a/Platform/ARM/JunoPkg/AcpiTables/Dsdt.asl b/Platform/ARM/JunoPkg/AcpiTables/Dsdt.asl
index 702b057..c70e8ac 100644
--- a/Platform/ARM/JunoPkg/AcpiTables/Dsdt.asl
+++ b/Platform/ARM/JunoPkg/AcpiTables/Dsdt.asl
@@ -14,6 +14,51 @@
 
 #include "ArmPlatform.h"
 
+#define ACPI_GRAPH_REV		0
+#define ACPI_GRAPH_UUID		"ab02a46b-74c7-45a2-bd68-f7d344ef2153"
+
+#define CORESIGHT_GRAPH_UUID	"3ecbc8b6-1d0e-4fb3-8107-e627f805c6cd"
+
+#define CS_LINK_MASTER		1
+#define CS_LINK_SLAVE		0
+
+
+#define DSD_CS_GRAPH_BEGIN(_nports)			\
+        Package () {					\
+          1,		// GraphID			\
+          ToUUID(CORESIGHT_GRAPH_UUID),			\
+          _nports,
+
+#define DSD_CS_GRAPH_END				\
+	}
+
+#define DSD_GRAPH_BEGIN(_nports)			\
+     ToUUID(ACPI_GRAPH_UUID),				\
+     Package() {					\
+       ACPI_GRAPH_REV,					\
+       1,						\
+       DSD_CS_GRAPH_BEGIN(_nports)
+
+#define DSD_GRAPH_END					\
+       DSD_CS_GRAPH_END					\
+     }
+
+#define DSD_PORTS_BEGIN(_nports)			\
+   Name (_DSD,  Package () {				\
+     DSD_GRAPH_BEGIN(_nports)
+
+#define DSD_PORTS_END					\
+   DSD_GRAPH_END					\
+  })
+
+#define CS_PORT(_port, _rport, _rphandle, _dir)		\
+    Package () { _port, _rport, _rphandle, _dir}
+
+#define CS_INPUT_PORT(_port, _rport, _rphandle)		\
+    CS_PORT(_port, _rport, _rphandle, CS_LINK_SLAVE)
+#define CS_OUTPUT_PORT(_port, _rport, _rphandle)		\
+    CS_PORT(_port, _rport, _rphandle, CS_LINK_MASTER)
+
 DefinitionBlock("DsdtTable.aml", "DSDT", 1, "ARMLTD", "ARM-JUNO", EFI_ACPI_ARM_OEM_REVISION) {
   Scope(_SB) {
     //
@@ -122,15 +167,56 @@ DefinitionBlock("DsdtTable.aml", "DSDT", 1, "ARMLTD", "ARM-JUNO", EFI_ACPI_ARM_O
         Method (_LPI, 0, NotSerialized) {
           return(PLPI)
         }
+
+        Device(ETM0) { // ETM on Cluster0 CPU0
+          Name (_HID, "ARMHC500")
+          Name (_CID, "ARMHC500")
+          Name (_CRS, ResourceTemplate() {
+            Memory32Fixed(ReadWrite, 0x22040000, 0x1000)
+          })
+
+          DSD_PORTS_BEGIN(1)
+          CS_OUTPUT_PORT(0, 0, \_SB_.CLU0.FUN0)
+          DSD_PORTS_END
+
+        } // ETM0
       }
+
       Device(CPU1) { // A57-1: Cluster 0, Cpu 1
         Name(_HID, "ACPI0007")
         Name(_UID, 5)
         Method (_LPI, 0, NotSerialized) {
           return(PLPI)
         }
+        Device(ETM1) { // ETM on Cluster0 CPU1
+          Name (_HID, "ARMHC500")
+          Name (_CID, "ARMHC500")
+          Name (_CRS, ResourceTemplate() {
+            Memory32Fixed(ReadWrite, 0x22140000, 0x1000)
+          })
+
+          DSD_PORTS_BEGIN(1)
+          CS_OUTPUT_PORT(0, 1, \_SB_.CLU0.FUN0)
+          DSD_PORTS_END
+
+        } // ETM1
       }
+
+      Device(FUN0) {
+        Name(_HID, "ARMHC9FF")
+        Name(_CID, "ARMHC9FF")
+        Name(_CRS, ResourceTemplate() {
+          Memory32Fixed(ReadWrite, 0x220c0000, 0x1000)
+        })
+
+        DSD_PORTS_BEGIN(3)
+        CS_OUTPUT_PORT(0, 0, \_SB_.MFUN),
+        CS_INPUT_PORT(0, 0, \_SB_.CLU0.CPU0.ETM0),
+        CS_INPUT_PORT(1, 0, \_SB_.CLU0.CPU1.ETM1)
+        DSD_PORTS_END
+      } // CL0.FUN0
     }
+
     Device (CLU1) { // Cluster1 state
       Name(_HID, "ACPI0010")
       Name(_UID, 2)
@@ -208,19 +294,45 @@ DefinitionBlock("DsdtTable.aml", "DSDT", 1, "ARMLTD", "ARM-JUNO", EFI_ACPI_ARM_O
           "CorePwrDn"
         },
       })
+
       Device(CPU2) { // A53-0: Cluster 1, Cpu 0
         Name(_HID, "ACPI0007")
         Name(_UID, 0)
         Method (_LPI, 0, NotSerialized) {
           return(PLPI)
         }
+        Device(ETM2) { // ETM on Cluster1, CPU0
+          Name (_HID, "ARMHC500")
+          Name (_CID, "ARMHC500")
+          Name (_CRS, ResourceTemplate() {
+            Memory32Fixed(ReadWrite, 0x23040000, 0x1000)
+          })
+
+          DSD_PORTS_BEGIN(1)
+          CS_OUTPUT_PORT(0, 0, \_SB_.CLU1.FUN1)
+          DSD_PORTS_END
+
+        } // ETM2
       }
+
       Device(CPU3) { // A53-1: Cluster 1, Cpu 1
         Name(_HID, "ACPI0007")
         Name(_UID, 1)
         Method (_LPI, 0, NotSerialized) {
           return(PLPI)
         }
+        Device(ETM3) { // ETM on Cluster1, CPU1
+          Name (_HID, "ARMHC500")
+          Name (_CID, "ARMHC500")
+          Name (_CRS, ResourceTemplate() {
+            Memory32Fixed(ReadWrite, 0x23140000, 0x1000)
+          })
+
+          DSD_PORTS_BEGIN(1)
+          CS_OUTPUT_PORT(0, 1, \_SB_.CLU1.FUN1)
+          DSD_PORTS_END
+
+        } // ETM3
       }
       Device(CPU4) { // A53-2: Cluster 1, Cpu 2
         Name(_HID, "ACPI0007")
@@ -228,6 +340,18 @@ DefinitionBlock("DsdtTable.aml", "DSDT", 1, "ARMLTD", "ARM-JUNO", EFI_ACPI_ARM_O
         Method (_LPI, 0, NotSerialized) {
           return(PLPI)
         }
+        Device(ETM4) { // ETM on Cluster1, CPU2
+          Name (_HID, "ARMHC500")	// ETM
+          Name (_CID, "ARMHC500")	// ETM
+          Name (_CRS, ResourceTemplate() {
+            Memory32Fixed(ReadWrite, 0x23240000, 0x1000)
+          })
+
+          DSD_PORTS_BEGIN(1)
+          CS_OUTPUT_PORT(0, 2, \_SB_.CLU1.FUN1)
+          DSD_PORTS_END
+
+        } // ETM4
       }
       Device(CPU5) { // A53-3: Cluster 1, Cpu 3
         Name(_HID, "ACPI0007")
@@ -235,9 +359,126 @@ DefinitionBlock("DsdtTable.aml", "DSDT", 1, "ARMLTD", "ARM-JUNO", EFI_ACPI_ARM_O
         Method (_LPI, 0, NotSerialized) {
           return(PLPI)
         }
+        Device(ETM5) { // ETM on Cluster1, CPU3
+          Name (_HID, "ARMHC500")	// ETM
+          Name (_CID, "ARMHC500")	// ETM
+          Name (_CRS, ResourceTemplate() {
+            Memory32Fixed(ReadWrite, 0x23340000, 0x1000)
+          })
+
+          DSD_PORTS_BEGIN(1)
+          CS_OUTPUT_PORT(0, 3, \_SB_.CLU1.FUN1)
+          DSD_PORTS_END
+        } // ETM5
       }
+      Device(FUN1) {
+        Name(_HID, "ARMHC9FF")
+        Name(_CID, "ARMHC9FF")
+        Name(_CRS, ResourceTemplate() {
+          Memory32Fixed(ReadWrite, 0x230c0000, 0x1000)
+        })
+
+        DSD_PORTS_BEGIN(5)
+        CS_OUTPUT_PORT(0, 1, \_SB_.MFUN),
+        CS_INPUT_PORT(0, 0, \_SB_.CLU1.CPU2.ETM2),
+        CS_INPUT_PORT(1, 0, \_SB_.CLU1.CPU3.ETM3),
+        CS_INPUT_PORT(2, 0, \_SB_.CLU1.CPU4.ETM4),
+        CS_INPUT_PORT(3, 0, \_SB_.CLU1.CPU5.ETM5)
+        DSD_PORTS_END
+      } // CL1.FUN1
     }
 
+    Device(STM0) {
+      Name(_HID, "ARMHC502")	// STM
+      Name(_CID, "ARMHC502")
+      Name(_CRS, ResourceTemplate() {
+        Memory32Fixed(ReadWrite, 0x20100000, 0x1000)
+        Memory32Fixed(ReadWrite, 0x28000000, 0x1000000)
+      })
+      DSD_PORTS_BEGIN(1)
+      CS_OUTPUT_PORT(0, 2, \_SB_.MFUN)
+      DSD_PORTS_END
+    }
+
+    Device(MFUN) {
+      Name(_HID, "ARMHC9FF")	// Funnel
+      Name(_CID, "ARMHC9FF")	// Funnel
+      Name(_CRS, ResourceTemplate() {
+        Memory32Fixed(ReadWrite, 0x20040000, 0x1000)
+      })
+
+      DSD_PORTS_BEGIN(4)
+      CS_OUTPUT_PORT(0, 0, \_SB_.ETF0),
+      CS_INPUT_PORT(0, 0, \_SB_.CLU0.FUN0),
+      CS_INPUT_PORT(1, 0, \_SB_.CLU1.FUN1),
+      CS_INPUT_PORT(2, 0, \_SB_.STM0)
+      DSD_PORTS_END
+
+    } // MFUN-nel
+
+    Device(ETF0) {
+      Name(_HID, "ARMHC97C")	// TMC
+      Name(_CID, "ARMHC97C")	// TMC
+      Name(_CRS, ResourceTemplate() {
+        Memory32Fixed(ReadWrite, 0x20010000, 0x1000)
+      })
+
+      DSD_PORTS_BEGIN(2)
+      CS_OUTPUT_PORT(0, 1, \_SB_.RPL),
+      CS_INPUT_PORT(0, 0, \_SB_.MFUN)
+      DSD_PORTS_END
+
+    } // ETF0
+
+    Device(RPL) {
+      Name(_HID, "ARMHC98D")	// Replicator
+      Name(_CID, "ARMHC98D")	// Replicator
+      Name(_CRS, ResourceTemplate() {
+        Memory32Fixed(ReadWrite, 0x20120000, 0x1000)
+      })
+
+      DSD_PORTS_BEGIN(3)
+      CS_OUTPUT_PORT(0, 0, \_SB_.TPIU),
+      CS_OUTPUT_PORT(1, 0, \_SB_.ETR),
+      CS_INPUT_PORT(0, 0, \_SB_.ETF0)
+      DSD_PORTS_END
+
+    } // RPL
+
+    Device(ETR) {
+      Name(_HID, "ARMHC97C")	// TMC
+      Name(_CID, "ARMHC97C")	// TMC
+      Name(_CCA, 0) // The ETR on this platform is not coherent
+      Name(_CRS, ResourceTemplate() {
+        Memory32Fixed(ReadWrite, 0x20070000, 0x1000)
+      })
+
+      Name(_DSD, Package() {
+         DSD_GRAPH_BEGIN(1)
+         CS_INPUT_PORT(0, 1, \_SB_.RPL)
+         DSD_GRAPH_END,
+
+         ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
+         Package() {
+            Package(2) {"arm,scatter-gather", 1}
+         }
+      })
+
+    } // ETR
+
+    Device(TPIU) {
+      Name(_HID, "ARMHC979")	// TPIU
+      Name(_CID, "ARMHC979")	// TPIU
+      Name(_CRS, ResourceTemplate() {
+        Memory32Fixed(ReadWrite, 0x20030000, 0x1000)
+      })
+
+      DSD_PORTS_BEGIN(1)
+      CS_INPUT_PORT(0, 0, \_SB_.RPL)
+      DSD_PORTS_END
+
+    } // TPIU
+
     //
     // Keyboard and Mouse
     //
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
