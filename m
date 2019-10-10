Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D7DD1D42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPdjvO4547UxIawGdwDrwtGxXUCbMqt2NBrCoPkWEkQ=; b=lidS4Amhh+vLOv
	oxhh7o9Pa93P33/C/5vF0nj5oaMMeYSicEV0FGln/8deoi4VgikwV+u2ODAx5jOg0SuJcttF8nKYs
	tskLXxDjqyYPoeZWiyN9KK5BPwjtCMvLPVKcJVN1TZenvyMJtHOj9MR2+wZwyiOWTmd9lBLqGOEaL
	pOo+KCm6ezaWsFXCO0E/XCOhyFgsKKl4WXvTHlp07YhxNvc6GCajfs0ZhaRKii1uKArlQE3SgtD4M
	5Cp11VSLZjeCMwPH8cLQdI25UugGmUEl5iUn1eryVbY5FotlvxMcCO9dT/eFWWIpvnhU7aP2B2pWB
	FS+fKlQChwJkas7V4ijw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIM5E-0007so-Gj; Thu, 10 Oct 2019 00:13:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIM4F-0007CB-ET
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:12:33 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E935781D5;
 Thu, 10 Oct 2019 00:13:04 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 3/8] ARM: OMAP2+: Remove bogus warnings for machines without
 twl PMIC
Date: Wed,  9 Oct 2019 17:12:19 -0700
Message-Id: <20191010001224.41826-4-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010001224.41826-1-tony@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_171231_519825_03AD2555 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org, Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In general we want to see a quiet dmesg output with no errors or warnings
unless something is really wrong and needs attention. We currently see
these bogus warnings on boot:

twl: not initialized
twl6030_uv_to_vsel:OUT OF RANGE! non mapped vsel for 1375000 Vs max 1316660
twl6030_uv_to_vsel:OUT OF RANGE! non mapped vsel for 1375000 Vs max 1316660
twl6030_uv_to_vsel:OUT OF RANGE! non mapped vsel for 1375000 Vs max 1316660
twl6030_uv_to_vsel:OUT OF RANGE! non mapped vsel for 1375000 Vs max 1316660
...

Let's avoid these by checking if a device tree node for cpcap PMIC exists.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/omap_twl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/omap_twl.c b/arch/arm/mach-omap2/omap_twl.c
--- a/arch/arm/mach-omap2/omap_twl.c
+++ b/arch/arm/mach-omap2/omap_twl.c
@@ -219,7 +219,8 @@ int __init omap4_twl_init(void)
 {
 	struct voltagedomain *voltdm;
 
-	if (!cpu_is_omap44xx())
+	if (!cpu_is_omap44xx() ||
+	    of_find_compatible_node(NULL, NULL, "motorola,cpcap"))
 		return -ENODEV;
 
 	voltdm = voltdm_lookup("mpu");
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
