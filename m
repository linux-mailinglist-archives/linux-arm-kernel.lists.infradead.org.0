Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CAA1D100A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WiK7D4XSR2RDXf/8+ihl/ijuIodNRENYB6KX5YjqSVM=; b=JyY7KsXA1dHI7lATWl2D2A6F1q
	VZaKOGecFykxr55p7JWGA0B5L28JiDCx64Gsc3vPpqsl/B5KL3QJxoJKnF8+s3d1HWRrWVdYW9KiF
	76jR/CHE6gERR6OCywJn6niJLohWI+ReeaWFzFwiYZfrB1MnWjP29dr7Lem9Ojwqa+KBbdXhsCpYw
	jG5rC4O3qvnVuoItsKSzCQf6LBoHPmFV9CezYkZMqHfeceEUqkNZ/ot+zin9FL4ToJdlxGC3pZBl4
	gucZnVGOCWaG/u3PdV/8bT+gl3ndxMBI40XaKJYmWoQ8bvxlSSl27GVQ6sFQSJX1YyRFJzuKbJt/M
	BVV15ZNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYohl-0007i3-82; Wed, 13 May 2020 10:33:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYof8-0005Hl-Cy
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 463EF1FB;
 Wed, 13 May 2020 03:30:54 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CE0A3F305;
 Wed, 13 May 2020 03:30:53 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 18/20] arm64: dts: juno: Fix SCPI shared mem node name
Date: Wed, 13 May 2020 11:30:14 +0100
Message-Id: <20200513103016.130417-19-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033054_512217_063D7F2B 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SRAM DT binding requires child nodes to use a certain node name
scheme.

Change the naming from scp-shmem to scp-sram to comply with that.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 9228d1b60358..f6c55877fbd9 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -521,12 +521,12 @@
 		#size-cells = <1>;
 		ranges = <0 0x0 0x2e000000 0x8000>;
 
-		cpu_scp_lpri: scp-shmem@0 {
+		cpu_scp_lpri: scp-sram@0 {
 			compatible = "arm,juno-scp-shmem";
 			reg = <0x0 0x200>;
 		};
 
-		cpu_scp_hpri: scp-shmem@200 {
+		cpu_scp_hpri: scp-sram@200 {
 			compatible = "arm,juno-scp-shmem";
 			reg = <0x200 0x200>;
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
