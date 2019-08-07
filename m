Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E05D85388
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 21:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yiuw6WFDCzLhF6JEC+LvtDVmzkByb2hags6xZmUWVeY=; b=ez68RbUOdxvt22
	bfi7081CShlV658d41csyA0mFafrxb0MYywgiYrCivfXPgU7C0+qeWT/pm4YhvXZwWtQmd6ygBPOh
	YMtcoDXxjkSvLzusT7qhNI6LMtRR8eI3gg9hJ1W8wTQnuhCHbsXVdXfNSL6es2DbsWOiABb8K9ppi
	wi9qvhXTST8RZHRUKeBx2dpaYywkdeF/Ay7zvfX63sAznSf5cR1nHyCvI9S9iWxorT3nFJR4tD5tS
	Ka3O+gTTj6dCn2hEDDSf3Lkaj0jOsL0D0JBKLcreyDaBlaSMyQ/gKbDS5IQBGk68bqhysrgOVfvRx
	4ZKS3JCjXCLyuGEHpsxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRXO-00052t-KI; Wed, 07 Aug 2019 19:23:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRXD-00052S-Ad; Wed, 07 Aug 2019 19:23:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so11957wms.2;
 Wed, 07 Aug 2019 12:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZKsoxc607/oVG4FUuBA6pIcOKMffd677oTtTK5nzkwQ=;
 b=hAbyL2kbAFr/v1igXbo/LxpM6rdjv8gVdpmorEKD5FUrB1ZYcimF1qaQyLZMb6TYhW
 QzjkRAErG1RegaWbCDdgGVUKwymrAJ/l+pGyRNvoPbXDKXge8tgQSb/geI+cOWjnRCmF
 7S+MdI3tJIe3MxAgCLb1JPFwc7Iw0cXhq+bepW2li//lnMzfGH0Xze2qLht+6u85znTJ
 b9RL7RNC9Ed/4MNuYeQ6PkUu8BWDc32Q97oGYvVmVAdzCrr6ofUU9a39FOw7h1OGyn1n
 +sByh2bvE5LGEsst6gBAnGXTGpX7uyB2s6FVWLRXQJYOabz+3oz+SyUV5D9QlPrf8+2j
 A9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZKsoxc607/oVG4FUuBA6pIcOKMffd677oTtTK5nzkwQ=;
 b=sDtFcinfUjmNmXqj5xrnm8AFTOg77P1Up6Qzv4YYjChuCT1ZaVdrWczVniuu3MutPy
 dV0nLojcLJGgAeadf0H1wsC9Y3fbBcZv8nUapy6luOlfqZ1oXgSFmFWcXBvXZyz/64Ra
 M7RAtrD7lI5xnGdKrcTe84xgImXuC6KTSnNkt1HVFrKktlUfwkeb408UorBYJLb98DTm
 3nJHeZzur0MAB9co9TzusMi5NFPl6AveHZ/2/1CJgQsV8vJiH2xj+4Q3W+Z9sbCNh/gN
 2uGgV2PYH5jSPeMOYAJxGcD0lAJJKQJG7aO2s8pfHY7ec/w/7iae5nNaAbZ2ArXwYXlT
 rKZg==
X-Gm-Message-State: APjAAAVgUA3JYHrit8VmH1yY7NzZufbCuVRxg1sJ7F9gs/rHUcr2uKvM
 ftuW5lMEWM7TpEy8t8HgrhI=
X-Google-Smtp-Source: APXvYqzrB/Ac6gK6PxwJ5f0X0aWnErXK6rJNnENn30REBvhx246EotYXNh2vR//dxdH43icmi3BPGw==
X-Received: by 2002:a1c:f415:: with SMTP id z21mr21203wma.34.1565205821315;
 Wed, 07 Aug 2019 12:23:41 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id t13sm109820555wrr.0.2019.08.07.12.23.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 12:23:40 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] phy-rockchip-inno-hdmi: Fix
 RK3328_TERM_RESISTOR_CALIB_SPEED_7_0's third value
Date: Wed,  7 Aug 2019 12:23:05 -0700
Message-Id: <20190807192305.6604-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_122343_395696_22ED8173 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kernelci . org bot" <bot@kernelci.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit "linux/bits.h: Add compile time sanity check of GENMASK
inputs" [1], arm64 defconfig builds started failing:

In file included from ../include/linux/bits.h:22,
                 from ../include/linux/bitops.h:5,
                 from ../include/linux/kernel.h:12,
                 from ../include/linux/clk.h:13,
                 from ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:9:
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c: In function 'inno_hdmi_phy_rk3328_power_on':
../include/linux/build_bug.h:16:45: error: negative width in bit-field '<anonymous>'
   16 | #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))
      |                                             ^
../include/linux/bits.h:24:18: note: in expansion of macro 'BUILD_BUG_ON_ZERO'
   24 |  ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
      |                  ^~~~~~~~~~~~~~~~~
../include/linux/bits.h:39:3: note: in expansion of macro 'GENMASK_INPUT_CHECK'
   39 |  (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
      |   ^~~~~~~~~~~~~~~~~~~
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: in expansion of macro 'GENMASK'
   24 | #define UPDATE(x, h, l)  (((x) << (l)) & GENMASK((h), (l)))
      |                                          ^~~~~~~
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note: in expansion of macro 'UPDATE'
  201 | #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)  UPDATE(x, 7, 9)
      |                                                  ^~~~~~
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: note: in expansion of macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
 1046 |   inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
      |                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As pointed out by Robin and Guenter, inno_write's val argument is an
8-bit value so having a mask larger than that doesn't make sense. This
also matches the rest of the *_7_0 macros in this driver.

[1]: https://lore.kernel.org/lkml/20190801230358.4193-2-rikard.falkeborn@gmail.com/

Reported-by: Andrzej Hajda <a.hajda@samsung.com>
Reported-by: Guenter Roeck <linux@roeck-us.net>
Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Suggested-by: Guenter Roeck <linux@roeck-us.net>
Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index b10a84cab4a7..2b97fb1185a0 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -198,7 +198,7 @@
 #define RK3328_BYPASS_TERM_RESISTOR_CALIB		BIT(7)
 #define RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(x)	UPDATE((x) >> 8, 6, 0)
 /* REG:0xc6 */
-#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 9)
+#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 0)
 /* REG:0xc7 */
 #define RK3328_TERM_RESISTOR_50				UPDATE(0, 2, 1)
 #define RK3328_TERM_RESISTOR_62_5			UPDATE(1, 2, 1)
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
