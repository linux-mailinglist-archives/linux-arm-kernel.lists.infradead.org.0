Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5202A113D57
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bStADdmBzfRSujUbKEkdiITNpi5Gk3lwilcze/aDDXg=; b=a4W4rXQ4G/5xDp
	KnwAUXkfjV7enA6uC/HU/GdlSWQC8AXcynYuAgBhayehR7ZAwFRr5fS254H12Tcz3abxrsU67X2j6
	G7IK0S09nfEbMfIik48658re5qWbGm158H7Tl0O/YhF6v8gTmisH1X1HKP7XzrwsvpI1hT6wfHerQ
	t74Hdywxzof/WB5oTRZt0RADKhG0PmznrePOlaMva7PEzOc6MQTXMtSNX2Bx3Cdb7aADxNpS6ic+o
	0EXi0O/JjPn2Qs1vlMDriWkfYZ+NqKeuKqviGzWSsgh99XGcMUeou9PRshOjqCGBpvwV3jfRmjR9z
	v7h/v3BXyRA8P9tNFPhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmqn-0007wx-O3; Thu, 05 Dec 2019 08:51:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmqg-0007wH-UG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:51:00 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DB4F205ED;
 Thu,  5 Dec 2019 08:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575535858;
 bh=jv3bVtccHNR/eO6WUrlGuplkynPeqmKgBox/+jgglmY=;
 h=From:To:Cc:Subject:Date:From;
 b=zJ2Pgng4JVDyPDNCnaCPVIuU4jWEK7fe+PHC7tvpnKoUvx93g75P4sFbdREl/Zw8p
 /bM6Ao3pHaM1MNS83wq5HStQHqVgS9QC7HkwRQM/Q82q0WsFYYTRjWadNWKsj/FWWK
 2sWWQ1VmT1c9uzt3wrafhsOLLDYXqPNnwbzhpNkI=
Received: by wens.tw (Postfix, from userid 1000)
 id C09F55FA9F; Thu,  5 Dec 2019 16:50:54 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] rtc: sun6i: Add support for RTC clocks on R40
Date: Thu,  5 Dec 2019 16:50:54 +0800
Message-Id: <20191205085054.6049-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_005058_995534_C1A77455 
X-CRM114-Status: GOOD (  16.04  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, stable@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

When support for the R40 in the rtc-sun6i driver was split out for a
separate compatible string, only the RTC half was covered, and not the
clock half. Unfortunately this results in the whole driver not working,
as the RTC half expects the clock half to have been initialized.

Add support for the clock part as well. The clock part is like the H3,
but does not need to export the internal oscillator, nor does it have
a gateable LOSC external output.

This fixes issues with WiFi and Bluetooth not working on the BPI M2U.

Fixes: d6624cc75021 ("rtc: sun6i: Add R40 compatible")
Cc: <stable@vger.kernel.org> # 5.3.x
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

Please merge this for fixes.

---
 drivers/rtc/rtc-sun6i.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
index 5e2bd9f1d01e..fc32be687606 100644
--- a/drivers/rtc/rtc-sun6i.c
+++ b/drivers/rtc/rtc-sun6i.c
@@ -380,6 +380,22 @@ static void __init sun50i_h6_rtc_clk_init(struct device_node *node)
 CLK_OF_DECLARE_DRIVER(sun50i_h6_rtc_clk, "allwinner,sun50i-h6-rtc",
 		      sun50i_h6_rtc_clk_init);
 
+/*
+ * The R40 user manual is self-conflicting on whether the prescaler is
+ * fixed or configurable. The clock diagram shows it as fixed, but there
+ * is also a configurable divider in the RTC block.
+ */
+static const struct sun6i_rtc_clk_data sun8i_r40_rtc_data = {
+	.rc_osc_rate = 16000000,
+	.fixed_prescaler = 512,
+};
+static void __init sun8i_r40_rtc_clk_init(struct device_node *node)
+{
+	sun6i_rtc_clk_init(node, &sun8i_r40_rtc_data);
+}
+CLK_OF_DECLARE_DRIVER(sun8i_r40_rtc_clk, "allwinner,sun8i-r40-rtc",
+		      sun8i_r40_rtc_clk_init);
+
 static const struct sun6i_rtc_clk_data sun8i_v3_rtc_data = {
 	.rc_osc_rate = 32000,
 	.has_out_clk = 1,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
