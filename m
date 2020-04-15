Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8E21A9E26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=awwXHXxyzbNDtuzWo4aSrihOLGL5C3VQUfGhe6mHOMY=; b=tufNelD/TbNlM0
	mi005kdhAESzvcm5D5ZzEvRTq64NLAeCtyijqRdcwp2QoBx2hG1tNtV9LmYy2mS0xyPG1R9+Qfh90
	jRlKH2NuQPzOplP80ReVwEubnQPM88Vscfin1ZaywDADf0pM3VkFTirQqsH/EKaE/rpZFuMZCcBQr
	WnRxCpjmduzdjvwAX2+D0FnE+neBCkmshVLgPUwpjVojnsLB6WmgZS7B4HlK7FgA2WG88Lvp/OhLN
	qEr4xzOHgT2x7SUP8JWGZ74D8Da+m2rl4DLbx0kLoXpwT2RIzjy+vhA3ry++PW2ql5oXp3azucEgX
	PUFvWJm20PIjl3l55LJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgb5-0004ip-Qm; Wed, 15 Apr 2020 11:52:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgWe-0006sj-F2
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:48:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B5F1214D8;
 Wed, 15 Apr 2020 11:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951296;
 bh=Ohz8aThqvX1NBM5Mz0A+jU9WKKsOhrId6ATYf0piSOA=;
 h=From:To:Cc:Subject:Date:From;
 b=qtnurdzGQikUV13C3LUyrXzCK6Mf2hta0D+hUXSwC6fSHqP6M5BQccBZW4HcOwiG7
 lk2nTr93KDjwqjtLWI4w3dt74Z2sOXoIaYdBymbcoJpsAQQ/2WM9qJF7va5CDaxoMl
 GVc/AIy0aXvc6cLcnaOqjbw+X8A7qqIAVUr+WKBI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 01/14] clk: at91: usb: continue if
 clk_hw_round_rate() return zero
Date: Wed, 15 Apr 2020 07:48:01 -0400
Message-Id: <20200415114814.15954-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044816_530546_F6C0B9C2 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, Sasha Levin <sashal@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

[ Upstream commit b0ecf1c6c6e82da4847900fad0272abfd014666d ]

clk_hw_round_rate() may call round rate function of its parents. In case
of SAM9X60 two of USB parrents are PLLA and UPLL. These clocks are
controlled by clk-sam9x60-pll.c driver. The round rate function for this
driver is sam9x60_pll_round_rate() which call in turn
sam9x60_pll_get_best_div_mul(). In case the requested rate is not in the
proper range (rate < characteristics->output[0].min &&
rate > characteristics->output[0].max) the sam9x60_pll_round_rate() will
return a negative number to its caller (called by
clk_core_round_rate_nolock()). clk_hw_round_rate() will return zero in
case a negative number is returned by clk_core_round_rate_nolock(). With
this, the USB clock will continue its rate computation even caller of
clk_hw_round_rate() returned an error. With this, the USB clock on SAM9X60
may not chose the best parent. I detected this after a suspend/resume
cycle on SAM9X60.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Link: https://lkml.kernel.org/r/1579261009-4573-2-git-send-email-claudiu.beznea@microchip.com
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/at91/clk-usb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 8ab8502778a28..55e09641b491b 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -79,6 +79,9 @@ static int at91sam9x5_clk_usb_determine_rate(struct clk_hw *hw,
 			tmp_parent_rate = req->rate * div;
 			tmp_parent_rate = clk_hw_round_rate(parent,
 							   tmp_parent_rate);
+			if (!tmp_parent_rate)
+				continue;
+
 			tmp_rate = DIV_ROUND_CLOSEST(tmp_parent_rate, div);
 			if (tmp_rate < req->rate)
 				tmp_diff = req->rate - tmp_rate;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
