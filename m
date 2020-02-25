Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2E916BFAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 12:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bar76gbWE+Y6gTvvZ1cOJVwpTKvpzg3hwLg5MBmfxpM=; b=CfyLRZu6fWKCfb
	xCTozgxS7dUKZPJ+SOY1oPWzmbU3MU9nfLz/XblT98+X/y/KiXbnYq/nISUBMfA9GdUf9XgDx4c+J
	r0+gvmbT/V8rJusrDeDzP0/eAkZtZjXquOkie5OP0P5kA5lzIGjzi3PO4gIl+vLMYfpBUtVE9Cc/o
	eORoS6LnZZ1HWglGoDNAmWNX01f6yOOKEyNPgAyNZT2a0ekmN/6UlH7IqDgfJNgQQnq2uOSiqKRJ4
	7ciRk1QVr6b1vUw7okoBfYhfDLe3aX1ClQkqD37il4pvx194FGBhnNihpnVhEXFX1Oi56fTc7+l19
	xb7f6PgZWTPo5kygudcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6YQe-0001HE-CJ; Tue, 25 Feb 2020 11:31:08 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6YQ1-0000mE-IE
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 11:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1582630230; x=1614166230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Y18lRdpyXiwYObjGQvYRFfjRCEL3pvNNrmgKJkofLnA=;
 b=Ve2NceKZ1qdIGn39LmCvMP2vkRZuAC5wosnYdWRG54JvqYZ/D8XZXDEt
 OPVRm5SYXj152mMQxaOFG2C7AZKOEY5PFGSUlgWRJOruxCgV7/0MqD2D5
 HdP4RpYi5acFd1qUsM57Zj8rZo7CucThWQN0e4H1GCRZvNskhHkVjL7Be k=;
IronPort-SDR: f2KkIDTUHo+ElgMxhkhQO3mKtxttw/b3GGHKq1YjxHDbYHXAUx5+1jjm3d8DiAH//dcJJ8cVJY
 2oUb6Tys7Dfw==
X-IronPort-AV: E=Sophos;i="5.70,483,1574121600"; d="scan'208";a="18764774"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com) ([10.43.8.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 25 Feb 2020 11:30:17 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com (Postfix) with ESMTPS
 id 21B892854B7; Tue, 25 Feb 2020 11:30:12 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Tue, 25 Feb 2020 11:30:12 +0000
Received: from u8a88181e7b2355.ant.amazon.com (10.43.162.50) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 25 Feb 2020 11:30:02 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>
Subject: [PATCH v4 2/6] arm64: dts: amazon: rename al folder to be amazon
Date: Tue, 25 Feb 2020 13:29:22 +0200
Message-ID: <20200225112926.16518-3-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225112926.16518-1-hhhawa@amazon.com>
References: <20200225112926.16518-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.50]
X-ClientProxiedBy: EX13D02UWB002.ant.amazon.com (10.43.161.160) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_033030_121539_7C2A0D16 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [72.21.196.25 listed in wl.mailspike.net]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 eitan@amazon.com, talel@amazon.com, linux-arm-kernel@lists.infradead.org
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
