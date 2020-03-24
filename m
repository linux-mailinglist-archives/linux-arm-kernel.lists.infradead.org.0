Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5751190B73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bar76gbWE+Y6gTvvZ1cOJVwpTKvpzg3hwLg5MBmfxpM=; b=UWb5pHi3E5WXgy
	2zS3Mq6xLcPuQVQue74+yoQ0o8L4Rtp+j5BaS8VeucWCIhljF4ytW660LLgVLbY9KKDMrL7KDdx4Q
	dpQ0Mv2Jktgv8zlEsLGh7eBRgI62DKPP9K89je9S3SXTctBIQzDQc51lrWxFQcnrgPGWhFadoiOsl
	1k1ZrU56/MyevcncRDu9ca6ZCbaP6yCyJAAqK+BCGLCihM/tho92XXTae3VS2FP1rHrxxXPjv8D47
	7f14dJq9Kbn10NmBTtUvIX6Hzttl4CEil26heh4lSKIPqaB//y2kz2r/BFzBMQEmOTewtqSaihfJO
	h6pfGNw+AE2dd0vEexSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGh9k-00033T-6q; Tue, 24 Mar 2020 10:51:36 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGh99-0002fT-QM
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1585047060; x=1616583060;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Y18lRdpyXiwYObjGQvYRFfjRCEL3pvNNrmgKJkofLnA=;
 b=IQiXYJ5a7FAr8TU6Jzsv5BUv5T/j1mD/Ht8XcQ5axS8UW3e91gap4qia
 qOvfTlBZBhb0l7L1EfOkf3pcPf7pSO0HA2UvO+XIK4H7l8VawzbnXLYd3
 Hum2zQNn9qYMnpvTk7vWHUiei0WWSz0zLfdLg5EQVQavKHciIw1JzHOTk Q=;
IronPort-SDR: KjY3uMSRqMHqKFqArxO5t/ALr1yAHqSTJj4M1Sa22RJI6L03+EhAZ+TNLccNPx9uNROTHmQ2Sr
 ioBMRn8HfnCg==
X-IronPort-AV: E=Sophos;i="5.72,300,1580774400"; d="scan'208";a="22649787"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2c-1968f9fa.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 24 Mar 2020 10:50:45 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-1968f9fa.us-west-2.amazon.com (Postfix) with ESMTPS
 id 8FCEAA1984; Tue, 24 Mar 2020 10:50:43 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Tue, 24 Mar 2020 10:50:43 +0000
Received: from u8a88181e7b2355.ant.amazon.com (10.43.162.241) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 24 Mar 2020 10:50:33 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <andriy.shevchenko@linux.intel.com>, <tglx@linutronix.de>
Subject: [PATCH v5 2/6] arm64: dts: amazon: rename al folder to be amazon
Date: Tue, 24 Mar 2020 12:49:14 +0200
Message-ID: <20200324104918.29578-3-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324104918.29578-1-hhhawa@amazon.com>
References: <20200324104918.29578-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.241]
X-ClientProxiedBy: EX13D36UWA001.ant.amazon.com (10.43.160.71) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_035100_053752_1B812842 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [72.21.198.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, benh@amazon.com, linux-kernel@vger.kernel.org,
 hanochu@amazon.com, dwmw@amazon.co.uk, jonnyc@amazon.com, ronenk@amazon.com,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As preparation to add device tree binding for Amazon's Annapurna Labs
Alpine v3 support. Rename al device tree folder to be amazon.

Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
---
 MAINTAINERS                                          | 2 +-
 arch/arm64/boot/dts/Makefile                         | 2 +-
 arch/arm64/boot/dts/{al => amazon}/Makefile          | 0
 arch/arm64/boot/dts/{al => amazon}/alpine-v2-evp.dts | 0
 arch/arm64/boot/dts/{al => amazon}/alpine-v2.dtsi    | 0
 5 files changed, 2 insertions(+), 2 deletions(-)
 rename arch/arm64/boot/dts/{al => amazon}/Makefile (100%)
 rename arch/arm64/boot/dts/{al => amazon}/alpine-v2-evp.dts (100%)
 rename arch/arm64/boot/dts/{al => amazon}/alpine-v2.dtsi (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index a0d86490c2c6..2ddb1b9d3a8f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1553,7 +1553,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm/mach-alpine/
 F:	arch/arm/boot/dts/alpine*
-F:	arch/arm64/boot/dts/al/
+F:	arch/arm64/boot/dts/amazon/*
 F:	drivers/*/*alpine*
 
 ARM/ARTPEC MACHINE SUPPORT
diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
index f19b762c008d..6f3e1556ce42 100644
--- a/arch/arm64/boot/dts/Makefile
+++ b/arch/arm64/boot/dts/Makefile
@@ -1,8 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 subdir-y += actions
-subdir-y += al
 subdir-y += allwinner
 subdir-y += altera
+subdir-y += amazon
 subdir-y += amd
 subdir-y += amlogic
 subdir-y += apm
diff --git a/arch/arm64/boot/dts/al/Makefile b/arch/arm64/boot/dts/amazon/Makefile
similarity index 100%
rename from arch/arm64/boot/dts/al/Makefile
rename to arch/arm64/boot/dts/amazon/Makefile
diff --git a/arch/arm64/boot/dts/al/alpine-v2-evp.dts b/arch/arm64/boot/dts/amazon/alpine-v2-evp.dts
similarity index 100%
rename from arch/arm64/boot/dts/al/alpine-v2-evp.dts
rename to arch/arm64/boot/dts/amazon/alpine-v2-evp.dts
diff --git a/arch/arm64/boot/dts/al/alpine-v2.dtsi b/arch/arm64/boot/dts/amazon/alpine-v2.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/al/alpine-v2.dtsi
rename to arch/arm64/boot/dts/amazon/alpine-v2.dtsi
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
