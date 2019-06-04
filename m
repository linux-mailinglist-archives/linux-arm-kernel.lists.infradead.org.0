Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A4734C65
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VJqFSZZwhMS5NHEoeYTyEJ0ZuyijR/fMcfMgzqWLEls=; b=mFYEWeV206CSN7
	e5HBvflfqWxMfm+NBmFYi7vW/xVkFbH2w8r5Cg4jjX3LU375rHkN/3l5BLE/N4uz+yZansKlH2hwP
	n3JD8XLDytuQfNcADhs4bmmoAvVbODULTL3YgiluHsvbm6t+tT6mbUW/5LfcifVVVVXMnP+YOhbVG
	rKBN8ng/tz8R58FmSw4cPeEHBxgUC1jgsMtmy82RtoIYre8cJTnMpDtKHZeyWHAFpgVdNOUuVvVTR
	4MEldR60UNrVxVleUPnXNjrhALwMOjHatnkqoKSKXFScHyZ7L18VmCvUp5CIqgW99NaMU5gMC3VUp
	RAWVhEI4+1uwG14ZugEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBYW-0002zH-8X; Tue, 04 Jun 2019 15:40:56 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBYO-0002yg-Uq
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559662847; bh=ixO4OiS3QbgO7fFYohnpcpN7u8/7cH3Nz5L9p88LaWk=;
 h=From:To:Cc:Subject:Date:From;
 b=JdK3vq0qTtY0P1vh2J2iPVNVrt6oX1xCuB9PL2mWwwSoNsb/fzedpXZT8zeiSK5XC
 k6+m8i4vso6+HoTDxtS5OQCxRZqbbJuDIqxRmtlRS47msA6xOSbiU+GszvUCwGnmc1
 lOPJQI7X4rdtx9nWEjSzxZg7BOwHUFABmGzG2SAY=
From: megous@megous.com
To: linux-sunxi@googlegroups.com
Subject: [PATCH v2] clk: sunxi-ng: sun50i-h6-r: Fix incorrect W1 clock gate
 register
Date: Tue,  4 Jun 2019 17:40:36 +0200
Message-Id: <20190604154036.23211-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_084049_162341_1F095CA5 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ondrej Jirman <megous@megous.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

The current code defines W1 clock gate to be at 0x1cc, overlaying it
with the IR gate.

Clock gate for r-apb1-w1 is at 0x1ec. This fixes issues with IR receiver
causing interrupt floods on H6 (because interrupt flags can't be cleared,
due to IR module's bus being disabled).

Signed-off-by: Ondrej Jirman <megous@megous.com>
Fixes: b7c7b05065aa77ae ("clk: sunxi-ng: add support for H6 PRCM CCU")
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
index 27554eaf6929..8d05d4f1f8a1 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
@@ -104,7 +104,7 @@ static SUNXI_CCU_GATE(r_apb2_i2c_clk,	"r-apb2-i2c",	"r-apb2",
 static SUNXI_CCU_GATE(r_apb1_ir_clk,	"r-apb1-ir",	"r-apb1",
 		      0x1cc, BIT(0), 0);
 static SUNXI_CCU_GATE(r_apb1_w1_clk,	"r-apb1-w1",	"r-apb1",
-		      0x1cc, BIT(0), 0);
+		      0x1ec, BIT(0), 0);
 
 /* Information of IR(RX) mod clock is gathered from BSP source code */
 static const char * const r_mod0_default_parents[] = { "osc32k", "osc24M" };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
