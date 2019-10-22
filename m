Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A6DE09BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KL0EB010MFc+0ip+XFLtrkOSQUxJ4i065pf4tpYJ5yw=; b=gwD10WhQn1um2J
	hFEDGSx2iC7EByt1OOqhyFuwlTZHoCoEo4XvdU481dqXvDwXpcbvIEgeHkAypjGmwCudlOESCHe05
	Azux9JGSuKygXHCZS+HJZkIB+f3nZ5XILrl3Rqh8rSbsWxbp/aNFZdXC3FmFE1JCOF3a/FVTtBbw/
	X7KzmBLQA6DbH5yoseImz/6PJBlo/LezqWim6rrP/8cWJMAL00dl8HyUoV5nDQ/2+sWC83Yvxi+e3
	etgsBCQWVudYQc68E3Nx3/MreuFBlK7On9xI/CGBFe+o3kDAmTUZeedDAsWCiyJtCEddrIbADC8AM
	jdS9idpGEOKkb/NocVUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxOm-0005nE-Fi; Tue, 22 Oct 2019 16:52:44 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxOU-0005hz-E6
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:52:28 +0000
Received: by mail-oi1-x243.google.com with SMTP id i185so14771654oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 09:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vxt2BZlQ+53rWMwmVviD+TwDtnO3WTo/KugRQtRT0Hk=;
 b=hp8pOtAjAB1FU2Ve7em50M7AMTnbgeZogItfSSnQgZluLX+t786AlYjCy12P6wad0W
 b/Ngt8oyL1mSgvqzAdXaWhY6sBwMCzsi3O+rkDJUoBsvu+iZ53HwhtW+WZBlRxR1by4+
 k97hSaDRPIlK+yv9BYltD4IXMipDICnw2+IKK1fHbdXrfTWTJIo+HwBW7CeqVloQEXPZ
 ABOeYi5v7RpPmIT94FR3v3M3iG+yVoBehtcQu2UuaunJtIjgfJdN6dQ42ejD573sBZay
 qMMgk6aNO9wFEncAB67R1vtk/U3gVmIx3Bsve9Kcs6b6N2gwG6UmyJvPkLe4q59bdazA
 EQCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vxt2BZlQ+53rWMwmVviD+TwDtnO3WTo/KugRQtRT0Hk=;
 b=G/w2kceQYFHW4wkvSYPuYPksYhtLg2e6fr268gSsqCqf/wdAHDRDPZnkcjbIoC3mmK
 jN9f5lWGJmyHeJX9q3EtbsmBYLaOAo4YdX+NFuVdp4HFJOHkic0rhbbetKQZCELwtxuB
 ujSfkY5mwdAUYQx5trOG7dV+5SxcVbShhzYaF6M3J3sqYs7wkOyZeu8MGU7/+e2EYMUM
 129R+IwSJJo8gG/iFs3lGDHvXIz526K4gk7iS7Ua3GMTkwajWfee1EQ8bXmvVV/R6qVZ
 S7kyfEGCbY0QaNXUst9Ykvuzyv9btaXW0oKJ4XT1/CbAVdLs0ziMh+uXlvrAl3DgToen
 HnUA==
X-Gm-Message-State: APjAAAXSyKz+jOkdVkg/wuxRoCh2HK+D6uuXw7CFDoPZdUTjCouuQQOT
 HZOkUNa1qB/nAYjRZ+uN12I=
X-Google-Smtp-Source: APXvYqz/bBY7HDB1zRkrDNQyzP753kDbijKRJnKXe7SQX/AeICng2K8PMN6kR1y/bEt1IyvKmqKyVg==
X-Received: by 2002:aca:f005:: with SMTP id o5mr3744584oih.36.1571763144136;
 Tue, 22 Oct 2019 09:52:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id z24sm613884oib.21.2019.10.22.09.52.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 09:52:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: sunxi: Fix operator precedence in sunxi_divs_clk_setup
Date: Tue, 22 Oct 2019 09:50:54 -0700
Message-Id: <20191022165054.48302-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_095226_653421_217E478A 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?Emilio=20L=C3=B3pez?= <emilio@elopez.com.ar>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 clang-built-linux@googlegroups.com, Chen-Yu Tsai <wens@csie.org>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

r375326 in Clang exposes an issue with operator precedence in
sunxi_div_clk_setup:

drivers/clk/sunxi/clk-sunxi.c:1083:30: warning: operator '?:' has lower
precedence than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]
                                                 data->div[i].critical ?
                                                 ~~~~~~~~~~~~~~~~~~~~~ ^
drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
the '|' expression to silence this warning
                                                 data->div[i].critical ?
                                                                       ^
                                                                      )
drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
the '?:' expression to evaluate it first
                                                 data->div[i].critical ?
                                                                       ^
                                                 (
1 warning generated.

It appears that the intention was for ?: to be evaluated first so that
CLK_IS_CRITICAL could be added to clkflags if the critical boolean was
set; right now, | is being evaluated first. Add parentheses around the
?: block to have it be evaluated first.

Fixes: 9919d44ff297 ("clk: sunxi: Use CLK_IS_CRITICAL flag for critical clks")
Link: https://github.com/ClangBuiltLinux/linux/issues/745
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/sunxi/clk-sunxi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/sunxi/clk-sunxi.c b/drivers/clk/sunxi/clk-sunxi.c
index d3a43381a792..27201fd26e44 100644
--- a/drivers/clk/sunxi/clk-sunxi.c
+++ b/drivers/clk/sunxi/clk-sunxi.c
@@ -1080,8 +1080,8 @@ static struct clk ** __init sunxi_divs_clk_setup(struct device_node *node,
 						 rate_hw, rate_ops,
 						 gate_hw, &clk_gate_ops,
 						 clkflags |
-						 data->div[i].critical ?
-							CLK_IS_CRITICAL : 0);
+						 (data->div[i].critical ?
+							CLK_IS_CRITICAL : 0));
 
 		WARN_ON(IS_ERR(clk_data->clks[i]));
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
