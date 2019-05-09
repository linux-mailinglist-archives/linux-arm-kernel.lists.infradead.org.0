Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5C8188B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w8ZHjPee7mRBkn4WXoDZk+Ya5o5tkRJ3BA55dQWr5VE=; b=ZDI4lRRUny82DTJdcGNv3TbsyW
	zPSy3G05FJM+QkC56yNyA+6PcEouJO9AcQFf76jnMJSThhkVJ3mQJSLLb65CarHVmWj5SRIn4kqKq
	LhI+Uz0xq8ryPKq3Y3RJNUc3tp45c99Z+IotsD9YXucqbO0NpBXrPpHv6gCbn/gCi9eybXdqqdwgL
	1OcpPl82U3YT737c/borM+009Rh1d103YpIVfpjAVcBVA5NA8ZeZG/9QXZjq7CCDSELmUw72ucLT3
	GQ+fLpW5hwb7MO8T7oVsvVXr9d+lVphhIrVl8SpQjX6oS1sOIFfly3x8bEUTS61p0Bs7+MuTHT/Gp
	K2ZYTGIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgxh-0008EP-3W; Thu, 09 May 2019 11:11:41 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgxY-0008Cz-V9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:11:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id o4so2474065wra.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 04:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=btyjrIBgvEiFaw+UeR2po3KmpV02gWF8Za6NMh5yZW4=;
 b=PWBiTlppp3qNKNSeeS/VbeyXHbeoNzIgZOkqg0QoiRFGQ/PoyWUhxKj3BLPDmz8W6Y
 JzXPTH5kOri0av4o3+l7pnSkszbh2LqCnIXf4oU7wWhWtha3iWEYL7mQP6CFGfFbTFGr
 KOuc7K4lgMulVZGUEawzuC5yZkFF4RwYXvm9sF2F08eXrBZgq9NOsUh0frqjNdNgmn9X
 OYWoNik+J4XJ2wimnmZN/CyFgZHo3ggmQHf9szz/AttkvE0AwkumSzIT5DMZ9lacacVu
 AGRDb0WGfRrkeIcK07euzHhF1/GjcTl/yHabhuTGJRx+PkjlxWuUAdoFN7KiZeFFph6z
 W3CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=btyjrIBgvEiFaw+UeR2po3KmpV02gWF8Za6NMh5yZW4=;
 b=kqQM85R+SSmmDKQ0CSW2MXRANuK7+X0g/t1dpwHwD5+cX7YkQXVMWZdKNS5HkbG2Oz
 WVGUOryEepZwrCOqdPfIKB6jjnNs0XpzOKr0kdhHpC2oXsR+qpZFRcJm92aJ+XkzZrkf
 yQNtmlwVCjkICM5zXloh+6o4QiOcTmD3LTMOl8Sf8ntJyyg/MtTz/Rct71oKcUGCgHC7
 8vKwjLvJkdZRU+mVF827wCE2jTiFkhYBNG2x3/Rb8VYYdQ5gJPxXDq8w/InxHH+LwcUm
 7oBPDC2OZ2PkwbjyJMDtR4xtvr/iDVwOEvX4QiScoRFh/G2bBNGfT7HgO6NS4tI7mPY2
 +dSw==
X-Gm-Message-State: APjAAAXeSLoNqVmDf0Gw4qITiI40M0Slohhab3EimWaxcpzqQv8P/Zq/
 PjivqqCtwZ6cGZCiDS4E8GKG1A==
X-Google-Smtp-Source: APXvYqyRoSHdg558NkElF8rFinE7d1sCeJBjX1VLvJ9rN5APIFf6z35khSWZyITgkN0ZahCshSIy6g==
X-Received: by 2002:a5d:4648:: with SMTP id j8mr2745726wrs.53.1557400287888;
 Thu, 09 May 2019 04:11:27 -0700 (PDT)
Received: from mai.irit.fr ([141.115.39.235])
 by smtp.gmail.com with ESMTPSA id z7sm2299778wme.26.2019.05.09.04.11.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:11:26 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 01/15] clocksource/drivers/sun4i: Add a compatible for suniv
Date: Thu,  9 May 2019 13:10:34 +0200
Message-Id: <20190509111048.11151-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_041133_066933_8FA13EB0 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mesih Kilinc <mesihkilinc@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mesih Kilinc <mesihkilinc@gmail.com>

The suniv (new F-series) chip has a timer with less functionality than
the A10 timer, e.g. it has only 3 channels.

Add a new compatible for it. As we didn't use the extra channels on A10
either now, the code needn't to be changed.

The suniv chip is based on ARM926EJ-S CPU, thus it has no architecture timer.

Register sun4i_timer as sched_clock on it.

Signed-off-by: Mesih Kilinc <mesihkilinc@gmail.com>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/timer-sun4i.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-sun4i.c b/drivers/clocksource/timer-sun4i.c
index 6e0180aaf784..65f38f6ca714 100644
--- a/drivers/clocksource/timer-sun4i.c
+++ b/drivers/clocksource/timer-sun4i.c
@@ -186,7 +186,8 @@ static int __init sun4i_timer_init(struct device_node *node)
 	 */
 	if (of_machine_is_compatible("allwinner,sun4i-a10") ||
 	    of_machine_is_compatible("allwinner,sun5i-a13") ||
-	    of_machine_is_compatible("allwinner,sun5i-a10s"))
+	    of_machine_is_compatible("allwinner,sun5i-a10s") ||
+	    of_machine_is_compatible("allwinner,suniv-f1c100s"))
 		sched_clock_register(sun4i_timer_sched_read, 32,
 				     timer_of_rate(&to));
 
@@ -218,3 +219,5 @@ static int __init sun4i_timer_init(struct device_node *node)
 }
 TIMER_OF_DECLARE(sun4i, "allwinner,sun4i-a10-timer",
 		       sun4i_timer_init);
+TIMER_OF_DECLARE(suniv, "allwinner,suniv-f1c100s-timer",
+		       sun4i_timer_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
