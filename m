Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C464F180F6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 06:08:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUXoP1dmIylor5085A+mt9i15yPKEoyFvNCBGbbbFI8=; b=t3zl4ZFxf1QwO0
	r2j+jhyJLxj9G9ZpvKz5Tx+KSLhF0vFK0KrblUNTW1Q0E5zz9obpMXbJlFEbsUd3B7qLv+zIK7GTE
	rPlwSRZN60IeGOz2awJy6nechsbzJ17vAWywx91yJ6wr7nMI2C2vZqgka60luJtt8YtLdoYcupYfh
	zpjonShg+Xl2KbEAfXPpIXwjaRQDLfjdWW+ct8R0boXCriz4B6FGeDblbYpuX0SZbAaK9WSqmaq8v
	sAdV28tF1MXi1CcRM1MI4S6dBto6ccb0JqizXthq8WRssnieSPUQmDSsrkClqR2hwr4IbsVxbVVDR
	OrPkpNIEjPR54twJ+4bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtbu-0000Hb-62; Wed, 11 Mar 2020 05:08:50 +0000
Received: from smtprelay0091.hostedemail.com ([216.40.44.91]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBta9-0007DA-Sg
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 05:07:03 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 9D5DF837F24C;
 Wed, 11 Mar 2020 05:07:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:800:960:967:973:982:988:989:1260:1311:1314:1345:1359:1437:1515:1534:1541:1711:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2693:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3865:3866:3867:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6261:9025:9592:10004:10848:11026:11658:11914:12043:12048:12296:12297:12438:12555:12679:12895:12986:13069:13311:13357:13894:13972:14096:14181:14384:14394:14721:21080:21433:21627:21811:21939:30045:30054:30070:30083,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: shake20_1fd8a6d1c3425
X-Filterd-Recvd-Size: 2655
Received: from joe-laptop.perches.com (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 11 Mar 2020 05:06:58 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH -next 010/491] ARM/SAMSUNG EXYNOS ARM ARCHITECTURES: Use
 fallthrough; 
Date: Tue, 10 Mar 2020 21:51:24 -0700
Message-Id: <1d569e023b6cb7b8d0da8d1bcccd92e97fe436c8.1583896348.git.joe@perches.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1583896344.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_220701_997034_76D34809 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.91 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.91 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the various uses of fallthrough comments to fallthrough;

Done via script
Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/clk/samsung/clk-s3c2443.c | 2 +-
 drivers/i2c/busses/i2c-s3c2410.c  | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/samsung/clk-s3c2443.c b/drivers/clk/samsung/clk-s3c2443.c
index 5f30fe7..c7aba1e 100644
--- a/drivers/clk/samsung/clk-s3c2443.c
+++ b/drivers/clk/samsung/clk-s3c2443.c
@@ -387,7 +387,7 @@ void __init s3c2443_common_clk_init(struct device_node *np, unsigned long xti_f,
 				ARRAY_SIZE(s3c2450_gates));
 		samsung_clk_register_alias(ctx, s3c2450_aliases,
 				ARRAY_SIZE(s3c2450_aliases));
-		/* fall through - as s3c2450 extends the s3c2416 clocks */
+		fallthrough;	/* as s3c2450 extends the s3c2416 clocks */
 	case S3C2416:
 		samsung_clk_register_div(ctx, s3c2416_dividers,
 				ARRAY_SIZE(s3c2416_dividers));
diff --git a/drivers/i2c/busses/i2c-s3c2410.c b/drivers/i2c/busses/i2c-s3c2410.c
index c98ef4c..dd1264 100644
--- a/drivers/i2c/busses/i2c-s3c2410.c
+++ b/drivers/i2c/busses/i2c-s3c2410.c
@@ -435,8 +435,7 @@ static int i2c_s3c_irq_nextbyte(struct s3c24xx_i2c *i2c, unsigned long iicstat)
 		 * fall through to the write state, as we will need to
 		 * send a byte as well
 		 */
-		/* Fall through */
-
+		fallthrough;
 	case STATE_WRITE:
 		/*
 		 * we are writing data to the device... check for the
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
