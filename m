Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4364867A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QFBQNVG1jlEi99bHMmoIkvoc0JMWqzMWq3moYvH4pyc=; b=h1fszQRXAIUAZO
	aYA3BeKh+zrX71s/8M+miSu1MdssCLUD3r8ew4DAWvlV13auaKqhdFcZa9thBeAH4WfMDh/i6pLHl
	r5EyuzF0xweczE9BM8najEqdsRztR9kA5fcIJABGdf8dibi5tRhG1MOWu89KD291FuCxX7F37knoM
	eQZK5LnUedBXRfyYNusQSby6t/tFHP5iKce9bcua4aJc2BLmNFVBZLzR3DWrciMEEZi7PFf8n8zXq
	xeOh87rxdJWx3Ah6uOvAfh2YDTWZDxa4hFZ13U8wF/aQAnEJf6AOM+1v9Hx77CjNl2Jkyt1rF8Y60
	1D13+9nEkHIV+Vb+rjQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlqt-0002ay-Nn; Thu, 08 Aug 2019 17:05:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlqh-0002Zs-CH; Thu, 08 Aug 2019 17:05:12 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00A702173C;
 Thu,  8 Aug 2019 17:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565283911;
 bh=zjIYazZXYmDz0mSg6jSasyr/sD3v4s4QZ/0wOpd+6V8=;
 h=From:To:Cc:Subject:Date:From;
 b=sf9v9V1IY7ZjpE+il+TEr27iMMY8AwIeJxaSIuk3AFyXfj9I9lylHe0864VX/rUA3
 jfYPJ+rrTNCOOXqaBfawWQdrzso4RbhUsL/oLWbi5H8QmD1wIzJYkLpOMgKPVmpy11
 n59tiTpNjOdlRvuWy/tADw6XytpvZRhERClbZJVk=
From: Kevin Hilman <khilman@kernel.org>
To: linux-amlogic@lists.infradead.org
Subject: [PATCH] arm64: dts: amlogic: g12 CPU timers stop in suspend
Date: Thu,  8 Aug 2019 10:05:10 -0700
Message-Id: <20190808170510.4141-1-khilman@kernel.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_100511_442221_24927E3E 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Hilman <khilman@baylibre.com>

The Arm per-CPU architected timers stop ticking in suspend, when the
SCP powers down the CPUs.  Flag that in the DT.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
Applies on my v5.4/dt64 branch

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 27bb242dc95d..cd3d23d2c6a2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2407,6 +2407,7 @@
 			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 10
 			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>;
+		arm,no-tick-in-suspend;
 	};
 
 	xtal: xtal-clk {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
