Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBA11FB897
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6MZ9noJmobldZ7ZrutBk3RfPbIqkzpnFvEPSIAu23k=; b=o4/TjG0iOzDZzG
	ksdJDo9y+rEENQ43s6zQRJpCv6bB61H1xSyiAbqBTXwoMNWkf2G0Qfo371heVd9VP7SmSrmoJw8rV
	VCJSteyX2SXdMoQIittaO9I3/9RWefNw6sO/ujPOpMavcwePHyhnzZrlgLedEdpgZthntC4XyN5Oo
	+3B2vKQlsACWJoV5M8nUt3kXrj33nmQlL7/BmvopVILqvYHCHMA4hUdeYMwT5UAN+4UzRO473Vt05
	4jEdSMbOzY0wlyuQlWuGLxeu09ynjqLc2DGFt06FphXp3fe/kG3T5ocGdQ+3RHDFFEAnAixpuCaY8
	GYcsI3dXAmpDtJFsvurg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDyB-0002d3-JK; Tue, 16 Jun 2020 15:57:51 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDx5-0001ZP-33
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:56:44 +0000
IronPort-SDR: T+apxyoP0ZwjjnM58OCHld33Ufe0Ht5YPU364WDHR3d/GYlxlE1q/8NdtPASD8haA+o05jUd3Z
 9JxtUOvwwrzQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:42 -0700
IronPort-SDR: Kw9PzyEPkP+zk94aZ9uYowEicv+cJNOr5x7+YvOVapgzRRO1h+JjStJbTNTOunkos7CAqt/ANq
 +DgYsNdL/1Nw==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449888131"
Received: from pperycz-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.213.235.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:39 -0700
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 5/7] MAINTAINERS: Add maintainers for Keem Bay SoC
Date: Tue, 16 Jun 2020 16:56:11 +0100
Message-Id: <20200616155613.121242-6-daniele.alessandrelli@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
References: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085643_182284_C88BB1AB 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Paul Murphy <paul.j.murphy@intel.com>, Will Deacon <will@kernel.org>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniele Alessandrelli <daniele.alessandrelli@intel.com>

Add maintainers for the new Intel Movidius SoC code-named Keem Bay.

Reviewed-by: Dinh Nguyen <dinguyen@kernel.org>
Signed-off-by: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4887e004cd26..3b919aa8b1bd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1954,6 +1954,14 @@ F:	drivers/irqchip/irq-ixp4xx.c
 F:	include/linux/irqchip/irq-ixp4xx.h
 F:	include/linux/platform_data/timer-ixp4xx.h
 
+ARM/INTEL KEEMBAY ARCHITECTURE
+M:	Paul J. Murphy <paul.j.murphy@intel.com>
+M:	Daniele Alessandrelli <daniele.alessandrelli@intel.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/arm/keembay.yaml
+F:	include/dt-bindings/clock/keembay-clocks.h
+F:	include/dt-bindings/power/keembay-power.h
+
 ARM/INTEL RESEARCH IMOTE/STARGATE 2 MACHINE SUPPORT
 M:	Jonathan Cameron <jic23@cam.ac.uk>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
