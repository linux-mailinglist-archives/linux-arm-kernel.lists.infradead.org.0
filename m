Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0843A11E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 20:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkFX7YaeCFDSCY/IDEwMMcolg1E86F5eYr2F/IYvEig=; b=PIZFxKLBDrbovV
	0BgeH1voZUzGvfPvBGzIAnWVlKmcp+txWiAyEloNzxNHoygxaoA5/71YjBHtEgIbg9BWP9qlt+lx8
	MbHuNn5Jg30CT47bN3o2zsyUb0WRRUwpuJCTp4tcHsdp/aJ4OA4ZoZkxJIDwqk+eTgGH73aIntVFE
	ZRg+WkEQi3C7HhaXgd3bKwBN3VDsGjUzgNKc239ZmNZyqvV1WABGnDqEovNN+3ff7wFpQ5FnDMWdw
	AnszZ5jKMvDqPJaGdEQi9EOjE4qVTHFi7ryFFTr94v3hV5M5biDOPwVhUQdIvGt+XZPHkQFOmT7Ae
	VmE9LA0fzhIsT/SsqhwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfl8-0001su-VM; Sat, 08 Jun 2019 18:08:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfji-0000l1-EG; Sat, 08 Jun 2019 18:06:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id f9so5193966wre.12;
 Sat, 08 Jun 2019 11:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OwMt4DN+k+wf0lkZogt5PADN1rzK1u4y6aP41xI0QnE=;
 b=Ai7/QxvXeXJfCjaGIQtUgT0iNOxXJwKg0n0kBlr3qjXO5upyFeXiPfrcnxSDErQlqt
 z3CcgSiDYliWk8qfwFQfdIGenTNvz7W3LmWvsgjivpjVimSrOT9/iTq29lttJxYWO3in
 TpBorSmDyJ58Ey4jcxg/5EGToYDZRxFctSUgdmjxLPkNHZohT/Pi5zEuz7KJ07xmnqqq
 FyPbfsiE7l0h+XwUplRemSXg57k3ZTNpsVu9wiurZXxg7FvIqpiYpJKePoCK5iZmPX2/
 sVVunTRAz/+8AtGYFz60gaSG1xWcbhYBZL0/VbTP7KjG5E84GG3PsY1iXemJjHV76kef
 hl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OwMt4DN+k+wf0lkZogt5PADN1rzK1u4y6aP41xI0QnE=;
 b=sXs2wQlpWp9gbeDc4xZyeivOomkP+hwQAWs9y8eafwhL2rzfjpw3v2+Up5k9Klg05m
 +39bXYuSGLDUMEdZdfUtEl6W0czffZ/3RXoauTzmwvWDvyTisrMTd3c95HEXlZru3r0r
 nafEcIfpZps02qfNZnL9+hbddyyAm+pq58ElfHjTwYSH/9uc36szf6HMoBxMcEtGQpb1
 tab9jQ7wqAZI55ucQgMVJi6plqNZx620036/XjIy7m2CEZXRHl5rvXyo75Of3XKuUTG5
 ER0zBChV17MMYWKCQQx247eEZIQwchQN+X828ekgenGpH3DeF+JkbYETDNq2otrbjEH6
 BW4Q==
X-Gm-Message-State: APjAAAWyV2GChlllA4gwhKcGERuKHTo0w9yGjjiETLncJjtPssBXxvHC
 zrHamfsiFYpCq7GbyVm8eK/x5Des
X-Google-Smtp-Source: APXvYqw7+qy9TgcaIMEP5Xeg6k3+WyCNQC4Ctm4DlNXGe2zSe+3cQwnCPGb4yd8IR61g60M4nm9H7Q==
X-Received: by 2002:a5d:4cc3:: with SMTP id c3mr11748878wrt.259.1560017196918; 
 Sat, 08 Jun 2019 11:06:36 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id c7sm5143345wrp.57.2019.06.08.11.06.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 11:06:36 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v2 03/14] pwm: meson: use GENMASK and FIELD_PREP for the lo
 and hi values
Date: Sat,  8 Jun 2019 20:06:15 +0200
Message-Id: <20190608180626.30589-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110638_478321_CEB44A0D 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

meson_pwm_calc() ensures that "lo" is always less than 16 bits wide
(otherwise it would overflow into the "hi" part of the REG_PWM_{A,B}
register).
Use GENMASK and FIELD_PREP for the lo and hi values to make it easier to
spot how wide these are internally. Additionally this is a preparation
step for the .get_state() implementation where the GENMASK() for lo and
hi becomes handy because it can be used with FIELD_GET() to extract the
values from the register REG_PWM_{A,B} register.

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pwm/pwm-meson.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 35b38c7201c3..c62a3ac924d0 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -5,6 +5,8 @@
  * Copyright (C) 2014 Amlogic, Inc.
  */
 
+#include <linux/bitfield.h>
+#include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/err.h>
@@ -20,7 +22,8 @@
 
 #define REG_PWM_A		0x0
 #define REG_PWM_B		0x4
-#define PWM_HIGH_SHIFT		16
+#define PWM_LOW_MASK		GENMASK(15, 0)
+#define PWM_HIGH_MASK		GENMASK(31, 16)
 
 #define REG_MISC_AB		0x8
 #define MISC_B_CLK_EN		BIT(23)
@@ -217,7 +220,8 @@ static void meson_pwm_enable(struct meson_pwm *meson, struct pwm_device *pwm)
 	value |= clk_enable;
 	writel(value, meson->base + REG_MISC_AB);
 
-	value = (channel->hi << PWM_HIGH_SHIFT) | channel->lo;
+	value = FIELD_PREP(PWM_HIGH_MASK, channel->hi) |
+		FIELD_PREP(PWM_LOW_MASK, channel->lo);
 	writel(value, meson->base + offset);
 
 	value = readl(meson->base + REG_MISC_AB);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
