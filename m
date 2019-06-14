Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A8E464BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0hUL2vSk+392wrdgZRgpItajLMVjTWsotWhTzk2tKM=; b=RFT1bFVaFRppJo
	SQScI4ZFZcPXCks8ZoHdWiysqg7v6pepOYtMPgQedD1073QyArgJMKWtCp01KEhUOU2dQHzAOIIl1
	XB1jDJfKY480Uyz/opRNYY/pKQcRQqOe3RCS68+xSHL7xoJggseW9QiDloQBHjWqyNzEpwgkiRIWx
	sJOfsr+QX6rWefQMnbj0MFdFtbloMMic0Xq+GwFAp8G1UUrTxQfHcThDvZc3E7b2TwP4xMEM0gEhZ
	Sau29lBA8pylh0rGHTAzqPwTyfq0M3iMhPNdgeqPrpz05bDCOUEhIro0fIhA+pKkrEjr/Ng5HG3Pm
	Xq4wSey8fiHTcMKV9VyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpKS-0002OI-Q3; Fri, 14 Jun 2019 16:45:28 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpJ2-0007Kl-04
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:44:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id e5so1226461pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nMcHhUCCSqrQ8w5r0SBOHVWgQpyokTTOxyC10sE/a4o=;
 b=J8Xp1Wt+5I1Gk1+MvTX47WWZdXOHu/eA8HUtP8XrZIbLeH3QH5ChGzKZ/+Lk0j7X+F
 V8guvVzYksa4ijBm/m24OaE53k64yUpEFhyMxUSWfN/OX9yhzdD/HrIUIkdztBzUyZor
 tVj5UEVaiSYmpYHiQulYUu+OfiruHFD1rF2Lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nMcHhUCCSqrQ8w5r0SBOHVWgQpyokTTOxyC10sE/a4o=;
 b=M1JyQLReXvilLEvjKNmPTb6RQ7huGmsPa69HnkHq4QDWF1dASX2kby5SmauQqU0eCk
 s1w78aKRIIf2VxzOmDH4U3he4i1WMtGtDBQo+YGhVaaq3LSmLunYeOtbNK5zxZwxQNH8
 F/PoxSly2cqoR1FJxRNQZ1sC5TpNMch31qqL9tOf5cH1DtUeIKzBjnbPhgPMTx1G6YXZ
 ZsQB2uh9cvi6Rrsl60oOyrvP3fe6BepwkIQNQ23yOk/xHmF9ZWPjVedcHKdFPaBSTnJ7
 Dc7GpyLJaU2bOm4NKIyYXqhmVxSJdxsH0KhZQN3G9DRyqsXuh34IVTYrJJF1bNjGx754
 2C/w==
X-Gm-Message-State: APjAAAUhCPKY4DCEPMAZGoI9o5xCjX7VWfRRXLLJ8D3aOQnKbt0fyPa3
 xOYGjuoOlT0z0Lg2jDJF7MtrMA==
X-Google-Smtp-Source: APXvYqyFy8nCAnBwgIJRSJDDpBab+N09/m7BqSCnT6KVMvRVAN91roqAIbiRAuIW+l+mzB70c4EWpQ==
X-Received: by 2002:a17:902:fa2:: with SMTP id
 31mr70064172plz.38.1560530637426; 
 Fri, 14 Jun 2019 09:43:57 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:43:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 4/9] drm/sun4i: tcon_top: Use clock name index macros
Date: Fri, 14 Jun 2019 22:13:19 +0530
Message-Id: <20190614164324.9427-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094400_063843_B6CE5392 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TCON TOP mux blocks in R40 are registering clock using
tcon top clock index numbers.

Right now the code is using, real numbers start with 0, but
we have proper macros that defined these name index numbers.

Use the existing macros, instead of real numbers for more
code readability.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 3267d0f9b9b2..465e9b0cdfee 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -194,19 +194,22 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	clk_data->hws[CLK_TCON_TOP_TV0] =
 		sun8i_tcon_top_register_gate(dev, "tcon-tv0", regs,
 					     &tcon_top->reg_lock,
-					     TCON_TOP_TCON_TV0_GATE, 0);
+					     TCON_TOP_TCON_TV0_GATE,
+					     CLK_TCON_TOP_TV0);
 
 	if (quirks->has_tcon_tv1)
 		clk_data->hws[CLK_TCON_TOP_TV1] =
 			sun8i_tcon_top_register_gate(dev, "tcon-tv1", regs,
 						     &tcon_top->reg_lock,
-						     TCON_TOP_TCON_TV1_GATE, 1);
+						     TCON_TOP_TCON_TV1_GATE,
+						     CLK_TCON_TOP_TV1);
 
 	if (quirks->has_dsi)
 		clk_data->hws[CLK_TCON_TOP_DSI] =
 			sun8i_tcon_top_register_gate(dev, "dsi", regs,
 						     &tcon_top->reg_lock,
-						     TCON_TOP_TCON_DSI_GATE, 2);
+						     TCON_TOP_TCON_DSI_GATE,
+						     CLK_TCON_TOP_DSI);
 
 	for (i = 0; i < CLK_NUM; i++)
 		if (IS_ERR(clk_data->hws[i])) {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
