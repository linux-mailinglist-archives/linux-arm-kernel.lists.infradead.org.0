Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7397BBF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rluuTqmJqqZAsDxkDdkIjtts0oH6Hql1h9lj0fS0/Jo=; b=XykQOxoLyKqEQ9
	w+bkXg9/lXUEOGlmwFJSTWpPs5tIV7R6Cv9+U5RJW3rClp7wEI9w9/l3M/2G+r8IrFaloDfqFZnAM
	vcXIAzE4sWy1yijTTmi8Qw00EQ1JZvcuSvw+kn9LWQYaynNWnjOXTnsMTYIU9jMZIEkPGNnyq25Eu
	eNFvvjH5+RMzCFCN1d7++pm+cORXEZiLIAQqfGEFKaroOXXaUXj3cggLmkQvbZVTmtltwdTRCriHV
	oXBJMso8comm4Z1vdK9YisFVaPJsnJkk7xuovuAjHb9JL/FXMDjMG7Cxm31HMnpC68N2MFKtFRt2n
	A4iNoALJ5/iWxRhuZ3wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskA8-00064K-FR; Wed, 31 Jul 2019 08:40:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk9o-00060O-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:40:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so68789613wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ddHyvYdReNbGhKO21uVEIvjorbfyA05g6IvzqrFwjMw=;
 b=jFO4SD/NApA8ipcldRSPtR96lDawCCqLtYXq++TEknbVxxDnZL3JrR85VsU33TrR0Q
 sr6bkOPmj8k3cMMWIHyHo1kEl5r7ZFWAqMXMNfV/lDvgwulIf7nvctpQX9u+9Rb13PY0
 RZPyJ+ytGSRsViVrMFJ0X3Vexgi+QVC/pfzBwlYbXCKrIyOyjqPZko61A3XLprZUWpZB
 TM9sf75PWS3HJhkfPNNDCZP267DP7mKOF9E2vu09UiUP+zhYmUvhIGGDI7AM1bVuj7gk
 PcoSHXA4zEhPTmpxcj/RDgR9Ax7fmDC+fYU93RMl+O+5kIFSyeSDweCKMigFWdo4k82w
 yoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ddHyvYdReNbGhKO21uVEIvjorbfyA05g6IvzqrFwjMw=;
 b=FuuUd3b13RskpfNGN4ku0H2nVm+pdDXH7l38nYivfbN0x9xcHeouar2wT4wr5P2xNW
 MpsW1DCwRcu4AXjaJiCUg/dnA+AExd4xKyhOt11PkzJdS2x+WpfIg2WjKb7bNYIYzT2w
 fzxlUXh+f8HdGlmPS2vj4ZD2vkZ6svkg/h4AwCkQ1y1mdFcRkIkrLNV5heuiYzSPQbc4
 LRjhnON1lz+c6KMBxbcwm9ycQD63OZb223o+LRjg48VqDhEAW+FgQTsNzj2tAyJnlZwJ
 QAwP3oCivJXWZ8dbD7JfjPsrozCGyHUHpgm8DyqD8DNn6e11qt+lvV/NJjOvtSF2QQJj
 YWPQ==
X-Gm-Message-State: APjAAAUm1urvDpdbSpCvVrE33wTOeKWL3+rHXS6J8DhCAWkn+YIXkpVe
 +G8hWlqZCW2SDCUJzRSlY6wogA==
X-Google-Smtp-Source: APXvYqwHQz/DoxpqjB2gG7yElbPFxVQmLqhP/9pw+D/cpuZHA0yH1P4HyL+uxk4zqqNoXxyZE1dsUA==
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr52426973wru.27.1564562422857; 
 Wed, 31 Jul 2019 01:40:22 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 18sm56049308wmg.43.2019.07.31.01.40.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:40:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: sboyd@kernel.org,
	jbrunet@baylibre.com
Subject: [PATCH v2 0/4] clk: meson: g12a: add support for DVFS
Date: Wed, 31 Jul 2019 10:40:15 +0200
Message-Id: <20190731084019.8451-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014024_730658_8D9CDADE 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Changes from v1 at [4]:
- Removed export of regmap_div ops functions
- Added standalone cpu dynamic divider driver
- Uses cpu dynamic divider driver in g12a clkc driver
- Added missing signed-off tags
- Fixed missing removal of CLKID_CPUB_CLK from internal g12a.h

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
[4] https://patchwork.kernel.org/cover/11063803/

Neil Armstrong (4):
  clk: core: introduce clk_hw_set_parent()
  clk: meson: add g12a cpu dynamic divider driver
  clk: meson: g12a: add notifiers to handle cpu clock change
  clk: meson: g12a: expose CPUB clock ID for G12B

 drivers/clk/clk.c                     |   6 +
 drivers/clk/meson/Kconfig             |   5 +
 drivers/clk/meson/Makefile            |   1 +
 drivers/clk/meson/clk-cpu-dyndiv.c    |  73 ++++
 drivers/clk/meson/clk-cpu-dyndiv.h    |  20 +
 drivers/clk/meson/g12a.c              | 535 +++++++++++++++++++++++---
 drivers/clk/meson/g12a.h              |   1 -
 include/dt-bindings/clock/g12a-clkc.h |   1 +
 include/linux/clk-provider.h          |   1 +
 9 files changed, 588 insertions(+), 55 deletions(-)
 create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.c
 create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
