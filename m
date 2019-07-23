Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F227167E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7z3cVY4uNh+vsl+BW1MNUZkws2ixo+s/n1VEi4LkWRQ=; b=oed+GOoB61lMxM
	+Zfg/2yPnDrNLS2FlFbR98oMcGhsEtoGd0QYYtRgD6Hrc9JLGzsj9eeGn5QEZLF+SKvmVCoRc5GGt
	Bpohyw6F6lxhYejq43EFXF7Wgq/P8Nfan85ab/5VKRkhPExgMgURnxZxUudnJus7Vx35utOqH5naB
	ZVb5J5jsWSXDytZLfJIKgqHOtNMJvmpc1yHvzaNHswtyEwXtDO7sUkGII4zt4SQxnnuRsxTwBaNPU
	mE3LW+9OyMLpibHUBKskhOkt6TusQ6vHMissMENZbDiOqHxdpJBcKtdJKziULa/kCJIn0D1KpK9nt
	hJHVqdOPp0ged65aVDBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsKY-00018T-D6; Tue, 23 Jul 2019 10:47:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsHw-0006W5-Ox
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:44:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39285337;
 Tue, 23 Jul 2019 03:44:56 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 505F83F71A;
 Tue, 23 Jul 2019 03:44:55 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 8/9] dt-bindings: interrupt-controller: arm,
 gic-v3: Describe EPPI range support
Date: Tue, 23 Jul 2019 11:44:36 +0100
Message-Id: <20190723104437.154403-9-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723104437.154403-1-maz@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_034456_908883_D5124D8C 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the GICv3 binding to allow interrupts in the EPPI range.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index 98a3ecda8e07..1fe147daca4c 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -44,12 +44,13 @@ properties:
       be at least 4.
 
       The 1st cell is the interrupt type; 0 for SPI interrupts, 1 for PPI
-      interrupts, 2 for interrupts in the Extended SPI range. Other values
-      are reserved for future use.
+      interrupts, 2 for interrupts in the Extended SPI range, 3 for the
+      Extended PPI range. Other values are reserved for future use.
 
       The 2nd cell contains the interrupt number for the interrupt type.
       SPI interrupts are in the range [0-987]. PPI interrupts are in the
       range [0-15]. Extented SPI interrupts are in the range [0-1023].
+      Extended PPI interrupts are in the range [0-127].
 
       The 3rd cell is the flags, encoded as follows:
       bits[3:0] trigger type and level flags.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
