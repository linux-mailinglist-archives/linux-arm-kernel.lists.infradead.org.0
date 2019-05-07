Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6448916CBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 22:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YeFfZZp+ucJDT03F/08nKvO5RMh99gCR/5kABXVHcSM=; b=Jots1/qTfWWvSU
	/0NXfTOF8dhwj+JGa6S2WkhzRi66hKk5q+heZadsE5mqTFo79l+RFty/YklEnc/z4Z2PdgCTywhAO
	3riqe3dDMffF5MMPJgMBjrGpKGOPQEsbtOsRzrkQ2k1+IsfFdnWCOhu5gG6vffS54Ox57AQYg0GSF
	tNgFHPNhQimtLlDU3NsMFNS8aNEdWlTKHMRHC9z8Xharj2RBk3sDnQ2e17FW+9XESY58kl+0+WT+U
	ESBzDv957zzrA9nu7AZevbdFaH6mGJN3qYzhjITpb+bVzKWYOurIKj7gq0NtX+Q1I7a8DjvcX3drb
	JE5t6N/bOzZrBf6Te4Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO7A6-0003fN-GL; Tue, 07 May 2019 20:58:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO79y-0003eK-Bp
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 20:57:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id ck18so8780006plb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 13:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TzIDRvnZo9wzh0xH3koUcb27TGvZ58GI6x5LKLeUe9I=;
 b=OaB/4ACU/IWVZycUh57X29GmMnkaQrLyMkJ3KidBs2HBMnVPyuS8/OBUtIfMxShvCn
 WgUQF4rEGtZONQ4PmLZ2gf/8xYixQd+1MwAMSvyy+W7G2Jrrw7gY9Hiqu/RRw8+PtJqE
 X2bMJd2tWgRU7o3C1/rJU8nhc5o8adgsUhM0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TzIDRvnZo9wzh0xH3koUcb27TGvZ58GI6x5LKLeUe9I=;
 b=IKeEKVrSky/SZ7g6//sYvhR2KMBcXM54wAG8mW5Ymp0a3lnA7wlJlg+M0WUN7dv5tL
 /7mKl1M2oBaH9GJx8YpjTA3AY/yOO2BZdTsgjZA1hc3tgFjQgMmQT0LzOUCvLnCiQswW
 1SoO5/8yjjMGuXEbwkS0ByTe/8qYtD+POyX65Y2MSaAySWokN4wmZaGYQ4Y6SQGGg85p
 tJSD1p2k0EhOUT7HRpDor85A4ImF67haCP8CzlaDh57R5o+qZgrp4rwXb+Drms0LBuR2
 VuPpjdn5BgAX7+/LFvHtXb1Mgp1CQV7bMtFYmTm0BIefJsGQm0c0n1PotvR6ygsBCUNn
 qT7A==
X-Gm-Message-State: APjAAAXF4l8bD7ddj08ykWVYkvOHSMktSPBGGjWI3ER1tOwj6wSUspcI
 v/FuS0Xla3KHTuYe8IFvafBXYyIpVQU=
X-Google-Smtp-Source: APXvYqzYlHZ7coikKWCS9HQ5qQvpgCjiuR9K5Lq4yfRHG4UsIqkyhrUN0ehUlirvQ6B8bDiFku6CcQ==
X-Received: by 2002:a17:902:8f88:: with SMTP id
 z8mr42103644plo.54.1557262677391; 
 Tue, 07 May 2019 13:57:57 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id m6sm16482035pgq.0.2019.05.07.13.57.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 13:57:56 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: Slightly more accurate math in
 rockchip_mmc_get_phase()
Date: Tue,  7 May 2019 13:57:42 -0700
Message-Id: <20190507205742.50835-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_135758_425167_C0C56730 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: hal@halemmerich.com, amstan@chromium.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's a bit of math in rockchip_mmc_get_phase() to calculate the
"fine delay".  This math boils down to:

 PSECS_PER_SEC = 1000000000000.
 ROCKCHIP_MMC_DELAY_ELEMENT_PSEC = 60
 card_clk * ROCKCHIP_MMC_DELAY_ELEMENT_PSEC * 360 * x / PSECS_PER_SEC

...but we do it in pieces to avoid overflowing 32-bits.  Right now we
overdo it a little bit, though, and end up getting less accurate math
than we could.  Right now we do:

 DIV_ROUND_CLOSEST((card_clk / 1000000) *
                   (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
                   (360 / 10) *
		   delay_num,
		   PSECS_PER_SEC / 1000000 / 10 / 10)

This is non-ideal because:
A) The pins on Rockchip SoCs are rated to go at most 150 MHz, so the
   max card clock is 150 MHz.  Even ignoring this the maximum SD card
   clock (for SDR104) would be 208 MHz.  This means you can decrease
   your division by 100x and still not overflow:
     hex(208000000 / 10000 * 6 * 36 * 0xff) == 0x44497200
B) On many Rockchip SoCs we end up with a card clock that is actually
   148500000 because we parent off the 297 MHz PLL.  That means the
   math we're actually doing today is less than ideal.  Specifically:
   148500000 / 1000000 = 148

Let's fix the math to be slightly more accurate.

NOTE: no known problems are fixed by this.  It was found simply by
code inspection.  If you want to see the difference between the old
and the new on a 148.5 MHz clock, this python can help:

  old = [x for x in
         (int(round(148 * 6 * 36 * x / 10000.)) for x in range(256))
	 if x < 90]
  new = [x for x in
         (int(round(1485 * 6 * 36 * x / 100000.)) for x in range(256))
	 if x < 90]

The only differences are:
  delay_num=17 54=>55
  delay_num=22 70=>71
  delay_num=27 86=>87

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-mmc-phase.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 026a26bb702d..9b2f4c094adf 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -71,13 +71,13 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 	degrees = (raw_value & ROCKCHIP_MMC_DEGREE_MASK) * 90;
 
 	if (raw_value & ROCKCHIP_MMC_DELAY_SEL) {
-		/* degrees/delaynum * 10000 */
+		/* degrees/delaynum * 1000000 */
 		unsigned long factor = (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
-					36 * (rate / 1000000);
+					36 * (rate / 10000);
 
 		delay_num = (raw_value & ROCKCHIP_MMC_DELAYNUM_MASK);
 		delay_num >>= ROCKCHIP_MMC_DELAYNUM_OFFSET;
-		degrees += DIV_ROUND_CLOSEST(delay_num * factor, 10000);
+		degrees += DIV_ROUND_CLOSEST(delay_num * factor, 1000000);
 	}
 
 	return degrees % 360;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
