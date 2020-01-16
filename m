Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DE413E272
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGGxZVfXTzMOcEBphyluV+y+0cN9axxHrlqMwSt5UJs=; b=qrmLl0BFS9s5Xi
	3zN9cVPhSdYZI9w1knTyFhpB5O2iUmsK5x/h9VMLZkLyCzfw0VXtjKrUZL6ccDvGLd3owpddI9GVW
	O/v2fStGJ77irnwr6xfr+CNNRn9+3cNHSqhpw+XHXD/I7mo5bI7BDcsXHxbdd9Lh/QSTFAbTgQ8NG
	lFxx/jFKyp1Nv5WiHS5nQyyj7DHyxhc9BHtF8FliSL7ykckC+EzKGL5m8OEHyZZ2H8ZCl20t6N16W
	rZc+YsNYkHcGmj/KDn/iWSya5qTL9x6RnTmjy5M5il7m/Ornlkm3KMrgMOAdufJhyB03sM24l7Ung
	1F4JTCrqIvMLkW6KBm4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8RD-0003er-F7; Thu, 16 Jan 2020 16:56:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8OM-0008Lr-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:53:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 824F0214AF;
 Thu, 16 Jan 2020 16:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193590;
 bh=Z+ca/Va9xfC4txSFybMjsDEoHiJWx4ekssX8s8xihU4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rU8d0fScclD6UQj6XCTtulu1s/iAKG03kZGgZIAoo+QVplfvqppIBbt4uBkTy92O+
 YBhALFfFsFwgsZRpwb+rGIAywC+gJdPHmWbKWdQ4ppAvjUJvQvnGl9ggOFkcx1wKyV
 JMy0aVxBStGx9Ovy4AuP9KeQQiLgB5xdluv3AXZg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 130/205] ARM: OMAP2+: Add missing put_device()
 call in omapdss_init_of()
Date: Thu, 16 Jan 2020 11:41:45 -0500
Message-Id: <20200116164300.6705-130-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085311_040822_D2418D8A 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Lindgren <tony@atomide.com>, Sasha Levin <sashal@kernel.org>,
 linux-omap@vger.kernel.org, Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>

[ Upstream commit 0b491904f053e41685162af5c5411b85b18c97a7 ]

A coccicheck run provided information like the following.

arch/arm/mach-omap2/display.c:268:2-8: ERROR: missing put_device;
call of_find_device_by_node on line 258, but without a corresponding
object release within this function.

Generated by: scripts/coccinelle/free/put_device.cocci

Thus add the missed function call to fix the exception handling for
this function implementation.

Fixes: e0c827aca0730b51f38081aa4e8ecf0912aab55f ("drm/omap: Populate DSS children in omapdss driver")
Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-omap2/display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap2/display.c b/arch/arm/mach-omap2/display.c
index 439e143cad7b..46012ca812f4 100644
--- a/arch/arm/mach-omap2/display.c
+++ b/arch/arm/mach-omap2/display.c
@@ -265,6 +265,7 @@ static int __init omapdss_init_of(void)
 	r = of_platform_populate(node, NULL, NULL, &pdev->dev);
 	if (r) {
 		pr_err("Unable to populate DSS submodule devices\n");
+		put_device(&pdev->dev);
 		return r;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
