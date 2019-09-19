Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8281B7611
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ZjYX4Qq/ct1cvU6QU0H+n3dfTJpiJ3EscDvIj05xbM=; b=P5UzbE2U59pW94
	4iQmB/XfBvHPBdAbMibbeKABQ4IejcrcCX0SRIx4fFZNh+cMxu6HP3etIbzlb3Cvz/eU6SBXayyIH
	5XN5TZBCfokzvJ1kEhCdq7jTNzY5cINYKZKsXmL57PlGopGmKodJO2B+4Wwpi/E4pNRYUV/Lrul84
	ENMi0Aa5q3t4SusDD0XB4+87sC0MMOQYu6tn5a+/cwLgqVz9C4566NLhCSWoP46bTi3bwBqHF0D14
	60LOgNcdo3SsRiU8LrJ5qluYnyswoj0anMyK7q/KZo+cHQu1+aTQdQAEN/BVK67T2KAKmm2rXc5Tf
	MJ1hHqsxWoX8kuq7LiHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsZb-0005W9-3f; Thu, 19 Sep 2019 09:17:59 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsZH-0005QL-OT
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:17:41 +0000
Received: by mail-lf1-x143.google.com with SMTP id r134so1773901lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 02:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d5jEgfLonWDOY4gG+bQfNvM3LOy7AfPuT16vQNF0Rko=;
 b=YFWb/OnKgEGSzwhOTk8kfD9okuzk0BzEGCLfTis5hVAJfxOgbf0kFsfDJOY3GC35Mm
 io9DQ9d0PWtExT99gqG2Eh0R31/mvlKOtoNGmK2XUeuFrcUx/aNk4BePlU/97Ikm3n1T
 7muS0OZKkkqB+4A84Pxo3WwqACT6GLrGbMKDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d5jEgfLonWDOY4gG+bQfNvM3LOy7AfPuT16vQNF0Rko=;
 b=TStHPJ95Am7wl0f0Lpz0qbHMO1z3iX+wpXCNX+LT9T3VNbC4x7j6otW/PVVi8NKTTx
 m0+NYDyU5TdbGZQkjDyuvseBMyeyyhDyupmhqIBta60o+mPDcKeU6N62TTVQUMKmBiNA
 EyyEDtiQY1DtKBZOkXWSJtOm/UJvSq3FEd4IS4sHHSvKlwXwNBwux3HgOmjXyL6DoVif
 ABYpOmWZ5S9RHGPHnafcA5tecYWDtZPjswQLLRoIiSTVWqB31+/uDnSbmoGq8/DLwMqB
 mLLToZkf4viOqn5P6PyyQiI+OQJpeymau07qDXpDRrcbbWPi9KJUV+s6huKTPXdK2QmO
 nTgA==
X-Gm-Message-State: APjAAAUCFRn51+sRmclDj6SjcFNHnGNkV7waaMNtXbx7tIJ3ZcY7kZ3b
 kD6A6S8Qm/j/nSd/nuV/WiNcXg==
X-Google-Smtp-Source: APXvYqyR+914Hiw1xUs+Gf6+FLCIiUoW+UOwUI4tZt260/8zlZZWIulKWowmqIvYgV6xS0TfcnyIkA==
X-Received: by 2002:a19:14f:: with SMTP id 76mr4339385lfb.92.1568884657005;
 Thu, 19 Sep 2019 02:17:37 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x3sm1016789ljm.103.2019.09.19.02.17.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 02:17:36 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] pwm: rockchip: simplify rockchip_pwm_get_state()
Date: Thu, 19 Sep 2019 11:17:27 +0200
Message-Id: <20190919091728.24756-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_021739_948752_F15F053E 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 David Wu <david.wu@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The way state->enabled is computed is rather convoluted and hard to
read - both branches of the if() actually do the exact same thing. So
remove the if(), and further simplify "<boolean condition> ? true :
false" to "<boolean condition>".

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
I stumbled on this while trying to understand how the pwm subsystem
works. This patch is a semantic no-op, but it's also possible that,
say, the first branch simply contains a "double negative" so either
the != should be == or the "false : true" should be "true : false".

 drivers/pwm/pwm-rockchip.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 51b96cb7dd25..54c6399e3f00 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -83,12 +83,7 @@ static void rockchip_pwm_get_state(struct pwm_chip *chip,
 	state->duty_cycle =  DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);
 
 	val = readl_relaxed(pc->base + pc->data->regs.ctrl);
-	if (pc->data->supports_polarity)
-		state->enabled = ((val & enable_conf) != enable_conf) ?
-				 false : true;
-	else
-		state->enabled = ((val & enable_conf) == enable_conf) ?
-				 true : false;
+	state->enabled = ((val & enable_conf) == enable_conf);
 
 	if (pc->data->supports_polarity) {
 		if (!(val & PWM_DUTY_POSITIVE))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
