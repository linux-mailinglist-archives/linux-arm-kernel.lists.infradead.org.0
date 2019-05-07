Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C590D16C9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 22:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FYoXldEU9be5jPrltS9DXW2Oh84G5SPbj2yQV4aFzjg=; b=eojXwlvBsAoIuq
	5mrJ3Jk8ekIVmX+NKsNRQKpvSKd9bc9TlnYqdn5CESY3xBhIJ7JZuf6IpMO3THsoYdzRaEZxQehQY
	rhezi910UgjFfyD7Z8jmPbrG8gWra/IXtN0DvvI+D8OspHJ8+P3q0QtdFTnj25l52jgjktf6Z9H7u
	ZV8J2izZil75JI7gFUs11znoxU0W5cmHD5WGwdFdXFmugNuN91so4atqaDg9q6ftpm9WdSnmH2Heb
	6s3eexlDKmvD/6s5UJKGKpzyA4MmW9+af9V9pW/aF9x02rdlcJvPZwPBjDqjFSWwa9pF9SM0GrMXw
	117QOn9KIfyiGh97nl/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO72T-00060w-1w; Tue, 07 May 2019 20:50:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO72E-0005zc-N1
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 20:49:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id z26so9267804pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 13:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=16ni+8UEniYJYlMiaLm9MTZL5f4uI05QVZvXY8kGkyE=;
 b=GtBJBi17Nvcq1G7rVZ9uJaeHxN4bn4kXoaDa6iTX8XSeUFAicrKXpkEgXGf3y81kvf
 5mT8XP9qGfozJM+DJlH2PiPHjL8scDu/V6aO++md4LgoYQ6eaGaD41a2YFFVxDS16Hzj
 AfaZDXtfrRnyP36FduMmBoEotVSb6OqRnajcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=16ni+8UEniYJYlMiaLm9MTZL5f4uI05QVZvXY8kGkyE=;
 b=IciiGpqqX12TjqvvswCvYnybmkN8LiAd729ad3ULODqXdBwdGfvmawyKdB+XOmN3xV
 4QgCcwl43mf6PSIBJzZlTEOog1SYxTnZW7/HvJwkw5ICXxnuqqhDC+uk6+fZGKP5zjCm
 +j+cfoCdSAP+GtKHxFmJVslnPgTIlhauAPTE+sgz0pVHlnh246nxW/Jco7Lyr5d2dlh5
 wzHXhMtz9yvKTR4SKLu8K2KUYR36us+a1gqP1Dpsb9tSCq+HqFhNL679BSEchVZsaJkE
 NGYNzMLUF7u53y/8dvkBrJcpuDCdnl/qXwiyKResqJXkQ+fbcnDMawISb9cb317z02Mt
 XAQQ==
X-Gm-Message-State: APjAAAV8T6Rr7y/bl/OPEFvr880/fQ6TuDSYMKPE5/wH1h/iM2CoGeOW
 z9dPzV7wCe4Nff0ausm8PwL3Xg==
X-Google-Smtp-Source: APXvYqzq46xNr1WmdaRR59uTuZVU09D1ZwcWwdDjivzpxshj1SH+qs20Hl2kkBUMpFYjGgNqsTbWWA==
X-Received: by 2002:a63:9d8d:: with SMTP id
 i135mr25594688pgd.245.1557262197357; 
 Tue, 07 May 2019 13:49:57 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id x19sm8312796pga.4.2019.05.07.13.49.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 13:49:56 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: Use clk_hw_get_rate() in MMC phase calculation
Date: Tue,  7 May 2019 13:49:35 -0700
Message-Id: <20190507204935.256982-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_134958_747064_9E737D0D 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: hal@halemmerich.com, Michael Turquette <mturquette@baylibre.com>,
 linux-clk@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calculating the MMC phase we can just use clk_hw_get_rate()
instead of clk_get_rate().  This avoids recalculating the rate.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-mmc-phase.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 026a26bb702d..07526f64dbfd 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -55,7 +55,7 @@ static unsigned long rockchip_mmc_recalc(struct clk_hw *hw,
 static int rockchip_mmc_get_phase(struct clk_hw *hw)
 {
 	struct rockchip_mmc_clock *mmc_clock = to_mmc_clock(hw);
-	unsigned long rate = clk_get_rate(hw->clk);
+	unsigned long rate = clk_hw_get_rate(hw);
 	u32 raw_value;
 	u16 degrees;
 	u32 delay_num = 0;
@@ -86,7 +86,7 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 static int rockchip_mmc_set_phase(struct clk_hw *hw, int degrees)
 {
 	struct rockchip_mmc_clock *mmc_clock = to_mmc_clock(hw);
-	unsigned long rate = clk_get_rate(hw->clk);
+	unsigned long rate = clk_hw_get_rate(hw);
 	u8 nineties, remainder;
 	u8 delay_num;
 	u32 raw_value;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
