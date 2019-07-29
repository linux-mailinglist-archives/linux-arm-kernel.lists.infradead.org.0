Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616BE78C8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DayDfH7Jcvfa/nEwHqxqSJb9uB0C0RfiPnxHzjddYU0=; b=sNqdDCf83Qi7mZ
	SQTUQ6l8tsaob+h/vCSU2qgqr7V1MaFew3a/QXRpPy8TMpB4WqvFp5tKxG0Aafg8lTxZx3avPT7fV
	a5/Z7FbKcpPKCcpr0ESgtOQLTbCTDGJZP55WiCl898coJWzM7QUQUHuqtdTRQq8PeK8KcUMUXXxd3
	s6GSNtSLo9oNw4ZYZ+HI8IHROCIrSGatTZDXXnaHH/4QC/1UMjEVPjwxiFdf/V/vUzxK1ieT73+Ie
	Ex2pWHV3fFBHPTBXwDiDhAPUBUwD/wpfbCRddfbrfLETuX/X8DRxEfGc0cpzIUNYDEtQEKxE4PcfQ
	XpiNd4Jw39UJgEGiU/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5WZ-0006K9-DE; Mon, 29 Jul 2019 13:17:11 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5WO-0006HN-RD
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:17:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so53423912wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oynpEq+Rva8XBfHeYWHdmuSsXuLqJ4yySPhy6VhqL9A=;
 b=va/m4r4dkyOP1H7msYfzDxN4+0vxPlSoe+oUQ4l/rirf0OhntUYksvZZwImE3yEz0T
 oBaLe8s00sw6YpMAmKbDDfMJ3mCl28yLI59Ef6CiNZUUKGfhFf+NDo5mic6oiM20KxKR
 8e2iXUVWGg/5SBAy23v8YvJvjir1BgTnUhFoiSVojDGfS2Uv0NQw5UX04REnvkVV5RsO
 0/xJ5HncMOscX99UEea1qAz6NyeqODccTnEm/p0TXkddx0FI8A9rkhv5U4Sx3hcD6Mpn
 SkQhDKIsiBKPMOhr/4Bm1s4lGW8Pr24oT4yPFoPKpTRnPfszLYYMnc4VIcdgJtC2qpZJ
 K8tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oynpEq+Rva8XBfHeYWHdmuSsXuLqJ4yySPhy6VhqL9A=;
 b=E6gG0DrCGP0kdaPkn3qL8jd0ACy1lB57BUt9U24G6BkgoVwnjtQEcKBsuJep0Lvj2F
 6HCEcEF0V/fiuevN7CI4aL+qY/GBTJV8DuoN7v0V57XlORxrKxuYLfEkiY18rxtEHNRq
 csJG6Zh1n6JfklNM5Ky3u/w64toAjTqBC6CZ075bhPj+hdJ6b8yUaVEZgcNSrDLmbydC
 o4DUAOttOReyMZ6FD9JYM/G5zYAiE4KDTnFmJPR8c1WTZMHTo1IDW1FGCzNPwYpzYqhG
 yJHvI6DRrsx/bC3QrEwdWlBAQ5jJqjrKVBGv/a3wzMZz4Wuffh0JSVrGbz8m3sRoj1CS
 2MgA==
X-Gm-Message-State: APjAAAXv/vgZCPdYCmJh42PqunsmP0MPqqpwrfJR53Bv503GNXa1tP6w
 7RAiX4YG45UvubcO7TPvZNUDUqA5jZo=
X-Google-Smtp-Source: APXvYqytSS4CaOtshhSxLAUA/SqcXHfZnGVeXdez8xfDM0v0eOvC2DS2WChVjk847i77QN6BlJ/9OA==
X-Received: by 2002:a7b:c954:: with SMTP id i20mr18655712wml.169.1564406219328; 
 Mon, 29 Jul 2019 06:16:59 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b5sm52520490wru.69.2019.07.29.06.16.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 06:16:58 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: sboyd@kernel.org,
	jbrunet@baylibre.com
Subject: [PATCH 0/4] clk: meson: g12a: add support for DVFS
Date: Mon, 29 Jul 2019 15:16:52 +0200
Message-Id: <20190729131656.7308-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_061700_883445_BC525862 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The G12A/G12B Socs embeds a specific clock tree for each CPU cluster :
cpu_clk / cpub_clk
|   \- cpu_clk_dyn
|      |  \- cpu_clk_premux0
|      |        |- cpu_clk_postmux0
|      |        |    |- cpu_clk_dyn0_div
|      |        |    \- xtal/fclk_div2/fclk_div3
|      |        \- xtal/fclk_div2/fclk_div3
|      \- cpu_clk_premux1
|            |- cpu_clk_postmux1
|            |    |- cpu_clk_dyn1_div
|            |    \- xtal/fclk_div2/fclk_div3
|            \- xtal/fclk_div2/fclk_div3
\ sys_pll / sys1_pll

This patchset adds notifiers on cpu_clk / cpub_clk, cpu_clk_dyn,
cpu_clk_premux0 and sys_pll / sys1_pll to permit change frequency of
the CPU clock in a safe way as recommended by the vendor Documentation
and reference code.

This patchset :
- introduces needed core and meson clk changes
- adds the clock notifiers

Dependencies:
- None

This patchset is split from the v3 RFC/RFC patchset at [3]

Changes from RFT/RFC v3 at [3]:
- Rebased on clk-meson v5.4/drivers tree with Alexandre's patches
- Removed the eeclk setup() callback, moved to a toplevel g12a-data struct

Changes since RFT/RFC v2 at [2]:
- Rebased on clk-meson v5.3/drivers trees
- added Kevin's review tags

Changes since RFT/RFC v1 at [1]:
- Added EXPORT_SYMBOL_GPL() to clk_hw_set_parent
- Added missing static to g12b_cpub_clk_mux0_div_ops and g12a_cpu_clk_mux_nb
- Simplified g12a_cpu_clk_mux_notifier_cb() without switch/case
- Fixed typo in "this the current path" in g12a.c
- Fixed various checkpatch errors

[1] https://patchwork.kernel.org/cover/11006929/
[2] https://patchwork.kernel.org/cover/11017273/
[3] https://patchwork.kernel.org/cover/11025309/

Neil Armstrong (4):
  clk: core: introduce clk_hw_set_parent()
  clk: meson: regmap: export regmap_div ops functions
  clk: meson: g12a: add notifiers to handle cpu clock change
  clk: meson: g12a: expose CPUB clock ID for G12B

 drivers/clk/clk.c                     |   6 +
 drivers/clk/meson/clk-regmap.c        |  10 +-
 drivers/clk/meson/clk-regmap.h        |   5 +
 drivers/clk/meson/g12a.c              | 567 +++++++++++++++++++++++---
 include/dt-bindings/clock/g12a-clkc.h |   1 +
 include/linux/clk-provider.h          |   1 +
 6 files changed, 540 insertions(+), 50 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
