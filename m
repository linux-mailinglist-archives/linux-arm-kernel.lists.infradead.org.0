Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60ED31048
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bwrsxwvEQ/09QK+X840s3ocaPmXNqyZV2Xr2JDJ3YJ8=; b=lhGQoD9x4NNBI0tT8QjRtDfs6+
	59Go76xxfVMAhKeXrWdiSLd715dLuVpjoCnvD3eGHj8nSZXL8X31+wweJOMFLmijyeKjqxw3RjMa8
	HsWmouPQBQvngbnhyCEg0UdXcELgcq4yQeCbMSs525IGLjjxVREs0zkWcEXSmYk+fHwexTJdb6KhZ
	23SX2NELp0bqUb7qlF50yedFftRg8PgfLCp5O5M9R7ObsDD0X/5FozFfluznJxPvsz+75czBLuu4A
	pUjm75MG+Rp3MIhGZZpfuvT+HRK8TBK+Lm0CJpcvSe7ay6h0YuttUyTTlZ0Ky3txNT2lbX7PY+c7W
	g1cDiPpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWic0-0007o4-SR; Fri, 31 May 2019 14:34:28 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWibG-000737-R9
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:33:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FD911684;
 Fri, 31 May 2019 07:33:42 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9FB433F5AF;
 Fri, 31 May 2019 07:33:40 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 3/6] dt-bindings: mailbox: add bindings to support ARM MHU
 doorbells
Date: Fri, 31 May 2019 15:33:17 +0100
Message-Id: <20190531143320.8895-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531143320.8895-1-sudeep.holla@arm.com>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_073342_916513_57B8E3DD 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Mark Brown <broonie@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ARM MHU has mechanism to assert interrupt signals to facilitate
inter-processor message based communication. It drives the signal using
a 32-bit register, with all 32-bits logically ORed together. It also
enables software to set, clear and check the status of each of the bits
of this register independently. Each bit of the register can be
associated with a type of event that can contribute to raising the
interrupt thereby allowing it to be used as independent doorbells.

Since the first version of this binding can't support doorbells,
this patch extends the existing binding to support them by allowing
"#mbox-cells" to be 2.

Cc: Jassi Brar <jaswinder.singh@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/mailbox/arm-mhu.txt   | 39 ++++++++++++++++++-
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/arm-mhu.txt b/Documentation/devicetree/bindings/mailbox/arm-mhu.txt
index 4971f03f0b33..ba659bcc7109 100644
--- a/Documentation/devicetree/bindings/mailbox/arm-mhu.txt
+++ b/Documentation/devicetree/bindings/mailbox/arm-mhu.txt
@@ -10,6 +10,15 @@ STAT register and the remote clears it after having read the data.
 The last channel is specified to be a 'Secure' resource, hence can't be
 used by Linux running NS.
 
+The MHU drives the interrupt signal using a 32-bit register, with all
+32-bits logically ORed together. It provides a set of registers to
+enable software to set, clear and check the status of each of the bits
+of this register independently. The use of 32 bits per interrupt line
+enables software to provide more information about the source of the
+interrupt. For example, each bit of the register can be associated with
+a type of event that can contribute to raising the interrupt. Each of
+the 32-bits can be used as "doorbell" to alert the remote processor.
+
 Mailbox Device Node:
 ====================
 
@@ -18,13 +27,21 @@ used by Linux running NS.
 - compatible:		Shall be "arm,mhu" & "arm,primecell"
 - reg:			Contains the mailbox register address range (base
 			address and length)
-- #mbox-cells		Shall be 1 - the index of the channel needed.
+- #mbox-cells		Shall be 1 - the index of the channel needed when
+			not used as set of doorbell bits.
+			Shall be 2 - the index of the channel needed, and
+			the index of the doorbell bit within the channel
+			when used in doorbell mode.
 - interrupts:		Contains the interrupt information corresponding to
-			each of the 3 links of MHU.
+			each of the 3 physical channels of MHU namely low
+			priority non-secure, high priority non-secure and
+			secure channels.
 
 Example:
 --------
 
+1. Controller which doesn't support doorbells
+
 	mhu: mailbox@2b1f0000 {
 		#mbox-cells = <1>;
 		compatible = "arm,mhu", "arm,primecell";
@@ -41,3 +58,21 @@ used by Linux running NS.
 		reg = <0 0x2e000000 0x4000>;
 		mboxes = <&mhu 1>; /* HP-NonSecure */
 	};
+
+2. Controller which supports doorbells
+
+	mhu: mailbox@2b1f0000 {
+		#mbox-cells = <2>;
+		compatible = "arm,mhu", "arm,primecell";
+		reg = <0 0x2b1f0000 0x1000>;
+		interrupts = <0 36 4>, /* LP-NonSecure */
+			     <0 35 4>; /* HP-NonSecure */
+		clocks = <&clock 0 2 1>;
+		clock-names = "apb_pclk";
+	};
+
+	mhu_client: scb@2e000000 {
+		compatible = "arm,scpi";
+		reg = <0 0x2e000000 0x200>;
+		mboxes = <&mhu 1 4>; /* HP-NonSecure 5th doorbell bit */
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
