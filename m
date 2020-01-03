Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B0212F4E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 08:19:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t2+x7hd+ATDorNTW/y3kNOeGXVYl4r1sAur3G/ZPEHY=; b=YEd38kZXUqPfvT
	225n5gBGn5Ij6q4b1kBrwJY8jPZhiaCixba5uTjBKf78nRWaUrc69FMZFbfJKTMO3kpJN/dIW27g+
	1Y3pt55vt/qplQigQ6KGVNfTcVbmE5F2uHgIfQNqbXsomU8DrtzF3Wbfh7ZaXtvF5k+W8adbHp1yB
	cRQF3UWdcopQvBtFkJA16tGDpRDoD7crAtYmjoo+G7CPzl6v8/efyqi2RqEH/hKxAOM1+lH0R1j0N
	SGwP83h2eb589nUtiUdUSoTAa36D5QMsSlZLJ227mxYoBbDn0ACMbKkhxX5EXLn+J0qVRVq5M0oZo
	uRpBAIWs5TJQfAp918Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inHEV-0001a5-VQ; Fri, 03 Jan 2020 07:18:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inHEQ-0001ZV-Vj
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 07:18:52 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72899222C3;
 Fri,  3 Jan 2020 07:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578035930;
 bh=FV053rnnc3Ysq//ItKxgra7oEosNJ8yKfv9gjd3Akao=;
 h=From:To:Cc:Subject:Date:From;
 b=jzgTO2MqtxBwsNZQ8PN9KIeVu9nevlCM/egS/oKHH34BfyhH+O3qwNe/11pHQE+2c
 qJJnU1488/tJXT56WynIKr0FXlxgcqMFhs6cEEkYZ2X/fd7MZ2aOhnQw6wSIb/Y8bK
 QCxSt9n1aOpQLsKv6BcOS/lZhjk72rYAgLUsrZpY=
Received: by wens.tw (Postfix, from userid 1000)
 id BCD7E5FC7C; Fri,  3 Jan 2020 15:18:48 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] clk: sunxi-ng: r40: Export MBUS clock
Date: Fri,  3 Jan 2020 15:18:48 +0800
Message-Id: <20200103071848.3977-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_231851_036990_500C6021 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The MBUS clock needs to be referenced in the MBUS device node.
Export it.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-r40.h      | 4 ----
 include/dt-bindings/clock/sun8i-r40-ccu.h | 2 +-
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r40.h b/drivers/clk/sunxi-ng/ccu-sun8i-r40.h
index a69637b6b0c1..6f7071df8e1c 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r40.h
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r40.h
@@ -55,10 +55,6 @@
 
 /* Some more module clocks are exported */
 
-#define CLK_MBUS		155
-
-/* Another bunch of module clocks are exported */
-
 #define CLK_NUMBER		(CLK_OUTB + 1)
 
 #endif /* _CCU_SUN8I_R40_H_ */
diff --git a/include/dt-bindings/clock/sun8i-r40-ccu.h b/include/dt-bindings/clock/sun8i-r40-ccu.h
index f9e15a235626..d7337b55a4ef 100644
--- a/include/dt-bindings/clock/sun8i-r40-ccu.h
+++ b/include/dt-bindings/clock/sun8i-r40-ccu.h
@@ -176,7 +176,7 @@
 #define CLK_AVS			152
 #define CLK_HDMI		153
 #define CLK_HDMI_SLOW		154
-
+#define CLK_MBUS		155
 #define CLK_DSI_DPHY		156
 #define CLK_TVE0		157
 #define CLK_TVE1		158
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
