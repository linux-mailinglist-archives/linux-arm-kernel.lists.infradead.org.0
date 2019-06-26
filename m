Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1DE56C8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vEG5YmMnxEZL4znCtur1o2tNS7H1KJh062WfHX0wbPw=; b=K7uoSbNcDRkppJqieTXhbj8U57
	WACTXOAAenOJocqnG0DvaY6xwfdteG5BjfeXcLeMG/EBR3W7rAtMGzidt/Cd42CAJIg2PQJj8IMcS
	kplK66U9XCxmB1Hjts08v68FU56MGbXRBCSmfbP0JJLfpoVpRdna/WsWKd/VtMoTJyZZ3TXu3yuXe
	VTmAtUdnLpAS22eVgsLEVKBn79kCKSutkaFVZD8ofbibllNpwNJcWN0rWOnflVzUQtNNZO3MJS7u5
	q9o81RjFRZ9L7VoJaJVVqBgVmU44DSwX47r1UmWGoqYokL9eqEO0y0KpwfWFbMadXBrjoG+loOaQk
	fRS3ELkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9Cq-00026s-U1; Wed, 26 Jun 2019 14:47:28 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9Cc-000269-3R
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:47:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id c6so2424075wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hAqxSgIO55AtglPI4y9BMkAp6zehdCTsbn3850+kcK0=;
 b=I8is5qvOAbLHl5EvFgLyy6VfBkaCh78I963eZv4LlCwEHuFftdH5VYymmJ56ufEkH7
 Ne5caOrsKs50/vTXTnqXhvRQ8AUKSbinHooiUBjR2biuImVAaklvSvFYlLPkttdKfpv2
 9htGRaVoWfz8COa8Bk4aACr9vxKAAKfEy5m5QPGkbqsmZTPwuO7srXB7vnd63Gm2ZZ5e
 Vi/8EPpMOaQ1sa5w7FrdM7OAsrKDHagF/xIW1pI+SC6Z8N/+2gOX310++nbDMowMXr1C
 fn1OMkHe8nMTwefqtH0RM3BdzsblLHSz1HK2ZzmLY90un4jLlWYuEeiNmbMrK9SLx4hG
 XASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hAqxSgIO55AtglPI4y9BMkAp6zehdCTsbn3850+kcK0=;
 b=gTIwmojATHuAS47w/jSfeSG9nLIFee8D+97lbhpn/Wo1pUmLshaigJcy7HZSjew5eh
 xvwDviEzxYv9Pknzykl+sPpcIH6iyh7OW5TCy3XnnwWrDtSggcj28l+70y6XQ5ol1J5v
 rVwTXqRedO13gUtSorkljArdjr/AWSMAjlP5qWQbOeWPMBHHg/ke+mpfIytgVkDibzVn
 xdO0aMRT6aBzeOjMQvd9XQ6kq9MtXdyqUq2SfT6kyps5lISviNUwemaUMCj8s2GAfbrx
 aSo33Tolyaq8uwSzGIzSwFLfccIbRkSMVljA5liiSDVGHihvaY9WMGi5j7CDWv+zb+Hu
 +rqQ==
X-Gm-Message-State: APjAAAW4RENe8e+GVmuHN/hScWagtTLEQyMD+N8fdczi55ziHU4KWgn1
 Jaq1KDnqCHBvwkDGlBN9XIGbaA==
X-Google-Smtp-Source: APXvYqzFn1J2DobNkC71K50j6OXadDRPvFyrzJW3kirwyhVhH9CJnQFidK8oV7luu39N/S+p3lh2+A==
X-Received: by 2002:a1c:c145:: with SMTP id r66mr2995522wmf.139.1561560432149; 
 Wed, 26 Jun 2019 07:47:12 -0700 (PDT)
Received: from mai.imgcgcw.net (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.gmail.com with ESMTPSA id h84sm2718557wmf.43.2019.06.26.07.47.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 07:47:11 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 01/25] clocksource/drivers/timer-meson6: Update with SPDX
 Licence identifier
Date: Wed, 26 Jun 2019 16:46:27 +0200
Message-Id: <20190626144651.16742-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <adba7d03-e9bd-9542-60bc-0f2d4874a40e@linaro.org>
References: <adba7d03-e9bd-9542-60bc-0f2d4874a40e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074714_213702_2B1CE30E 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, linux-kernel@vger.kernel.org,
 "moderated list:ARM/Amlogic Meson SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Neil Armstrong <narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Neil Armstrong <narmstrong@baylibre.com>

Comply with the licensing rules defined in the documentation.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/timer-meson6.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-meson6.c b/drivers/clocksource/timer-meson6.c
index 84bd9479c3f8..9e8b467c71da 100644
--- a/drivers/clocksource/timer-meson6.c
+++ b/drivers/clocksource/timer-meson6.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic Meson6 SoCs timer handling.
  *
  * Copyright (C) 2014 Carlo Caione <carlo@caione.org>
  *
  * Based on code from Amlogic, Inc
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/bitfield.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
