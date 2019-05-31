Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A3A30CA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 12:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ha/H4HYWJKpDR7Kw9WVTrdjPMaHrgCsodTIVuWWt8kE=; b=RFQ92lS45DsONj
	6KzoCArwtJ+/eZ1Ib0zmYoWYDv8xvtCcVsL5lAGYO9JZThLuOUYS+4EYuJL14puii0q5XrV8ALzSI
	4oMvb/zA9RRVckTawNRxvtoXLMfcjPJnt4Var2WYQgdN566by797RoWCvnBNR98f8DonTarFcFwXO
	9AOLzAPaxUy/HNVn5KT1nDXvCy/48Yxa7zE9NoFYF00oM9quyNsNNS8cBRHvf1pV6oDVEXAAc+MGW
	Ea8ilE9/5sTar1hpRscpmG2ioUs4QTmu4vT8qMJBeieM4yK0Kt9euwKvArUUDJAbq5hxK31AE5x8Q
	FdAT5mvQXGJk/9MqfNYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeql-000608-CQ; Fri, 31 May 2019 10:33:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeqe-0005zA-42
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 10:33:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id f204so1737598wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 03:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ByfPDgU22Z1U1XSrJRvjO9v2H1XpDQdjYxUHf9uqjyc=;
 b=oqStfDIlIvDhQcvg02CGqjgJ7Ao8oVncyoutW0cZjjWZ58BOJIESPVLfHcy1Z14EMG
 xEAxiq7yhKTu0YlXgoHnS5DqWjOrtmcOjkYtlo8sN85WUB5cpaLMYHaPAmVdBa1gYzl4
 3TdtYf/g2gLQfx4TkB6ZwxU5tAWDa875de3CK44we9z5lnWpAg3qLow3qvGZyw5fqByI
 anpgZCTe1MSQwrLWQN95Aut0KAj+F2NHlcWIwvI8QSqxoyAo6kt0Q7Ea7VZEK7STuA7y
 CaztDXWqWndS69y4O++k2U3ZO0XDlOC8Om/r1jB1ND2Lvb1tpftUFKO5Pgsvb2/KN+K8
 sxvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ByfPDgU22Z1U1XSrJRvjO9v2H1XpDQdjYxUHf9uqjyc=;
 b=FVhOp2VKCI9g9QeCWiHtIpQFfC7yxmX+SK/Pu4a3cVyxARNe6WUAY/0fnqeY/kA/0Y
 x3x+pd5IuBhEaKorJOVCC9JNBj7IjK4qqTTXlFppovO1bJP0oRHqjjhEhkAoOOeU0X87
 yfgCPDcp9OPXj+WIgMuz5UFhZ9EF2XSnArVdLpYsT38qwRy0MjzPeGGzSw8uh63u8mT6
 oEiHQBZhyc9DX/zFUUP30UN4wBYaWypYR9M1Gn6d9rgprLgcczxXBcMnu2SEzWZGnus6
 rrV6X9ZvcLHHto4FS12NRuUwnA/NAyDfW0O3DnSjVYTzfKUaz8O28GRsuGoS6W7GuhQn
 7rpQ==
X-Gm-Message-State: APjAAAUvNWWT8pMA503C3wGiTEAHKlICZA7xI+xGxYj7T+RSxhSP/vJk
 G0ZGm8eVripyuUJvbm4fBwIuMw==
X-Google-Smtp-Source: APXvYqzjri4jLx4G/XNJBs9hd4fjiKEFHxhfjCQjKElQHrV/S/VVwy5aVTcTRF646Me7ACF6VyIlqA==
X-Received: by 2002:a05:600c:22cc:: with SMTP id
 12mr5271222wmg.141.1559298798562; 
 Fri, 31 May 2019 03:33:18 -0700 (PDT)
Received: from bender.home (amarseille-652-1-291-131.w109-208.abo.wanadoo.fr.
 [109.208.94.131])
 by smtp.gmail.com with ESMTPSA id h14sm4038960wro.3.2019.05.31.03.33.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 03:33:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org
Subject: [PATCH] media: platform: ao-cec-g12a: disable regmap fast_io for cec
 bus regmap
Date: Fri, 31 May 2019 12:33:15 +0200
Message-Id: <20190531103315.15166-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_033320_161147_A9DF3C13 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-media@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With fast_io enabled, spinlock_irq is used for read/write operations,
thus leading to :
BUG: sleeping function called from invalid context at [snip]/ao-cec-g12a.c:379
 in_atomic(): 1, irqs_disabled(): 128, pid: 1451, name: irq/14-ff800280
[snip]
Call trace:
 dump_backtrace+0x0/0x180
 show_stack+0x14/0x1c
 dump_stack+0xa8/0xe0
 ___might_sleep+0xf4/0x104
 __might_sleep+0x4c/0x80
 meson_ao_cec_g12a_read+0x7c/0x164
 regmap_read+0x16c/0x1b0
 meson_ao_cec_g12a_irq_thread+0xcc/0x200
 irq_thread_fn+0x2c/0x60
 irq_thread+0x14c/0x1fc
 kthread+0x11c/0x12c
 ret_from_fork+0x10/0x18

Simply remove fast_io to use mutexes instead.

Fixes: b7778c46683c ("media: platform: meson: Add Amlogic Meson G12A AO CEC Controller driver")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/media/platform/meson/ao-cec-g12a.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/meson/ao-cec-g12a.c b/drivers/media/platform/meson/ao-cec-g12a.c
index 3620a1e310f5..ddfd060625da 100644
--- a/drivers/media/platform/meson/ao-cec-g12a.c
+++ b/drivers/media/platform/meson/ao-cec-g12a.c
@@ -415,7 +415,6 @@ static const struct regmap_config meson_ao_cec_g12a_cec_regmap_conf = {
 	.reg_read = meson_ao_cec_g12a_read,
 	.reg_write = meson_ao_cec_g12a_write,
 	.max_register = 0xffff,
-	.fast_io = true,
 };
 
 static inline void
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
