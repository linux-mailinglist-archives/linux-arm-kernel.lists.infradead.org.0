Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3DE160524
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 18:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPEUWLoz9TnMVy1oZo0GwTHWIwEXoZmFjHWLh7ZWKIg=; b=XnfcW63cZjOtDF
	X0iRqs/dmEx5HfYqZV1nompTJhN2F5Buj3WXEo89WlBb1e4/AUczMgcCtIm/rEk5d8qJhd4mclGqB
	xwE4h8tB52utbG9CqGMY2nsxdbGMYqkY/8LZ4itzAO5OjFi3KtygzgrmICpyvmzaKbrTOgENnBGh1
	TXytlmyPO3jh749oCOgUDDdtn+OXoWiQwlW1M/Pmw7CWwTaGjLKj7e0yJkZn+FdbUMgSQsbD7tdD7
	KO9gpE0Aa+T+2WGz7OEXnMrVb5TX/FIXL8LlW5o2KWGWQASJlSEfgitrQEvT65Juym27wMS+ZeBA3
	rmBQqDjSFYZv1FeDRLFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Npy-0000p2-9L; Sun, 16 Feb 2020 17:36:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Np7-0000B5-8v; Sun, 16 Feb 2020 17:35:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id d9so5771168plo.11;
 Sun, 16 Feb 2020 09:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BNTtBgVLy/qcKAejtYBYBKwDBWINtwQVadgcq2wXqcc=;
 b=OecFXFWn8mpigldvStNPoHEuXc6i76RtX1CJRWx0neN1mXT3cIGoQY5gMMzf0yW3UU
 6fvBb7QDc9gtMQ9bCgAsiRMRapW9YqBFIRMVg45SSoElJYSnaClN0oziimHxUq0Qrdzo
 KZpX4J3jAnetKAF4uP1Kva9szm/p38k8ivcSjgYcm4HX8ta85lEe+IM1RuIE690JcoKp
 EAsmYnvFpTPeMKSKQJITs06yp8jvq0+0rT14RJTh7jUGRJL/Nlop/xQNfNel13sWHuOw
 drjVawtXzz1I8V46Kz0SIg3NNp/hFh+kr4Yi8lFML3tyUTMt6aDce7MmA50ZSllKjb9N
 19Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BNTtBgVLy/qcKAejtYBYBKwDBWINtwQVadgcq2wXqcc=;
 b=I2+PlNYf8SGE0yOrTzwLMH8ijuRZIfw11pliS0Gnuq70VSHk3qhSSMMm0zjRe7iu/C
 qEcKdW1JxW4F7Lq5f1G0rvxN3V5gqybdSLyaiPnrLs0nmih6FBWpTO/6i+R2rhOCZYsk
 l1YHFa8h2E3/XibNL/omSiIO6RxkXLY1Vc99V+4xEfWpg6/S7HhcV1t+p+5df0Ie29Cy
 MkfwP4p/yjO1SdSZa4CAEARIOEzodVy8NPmofl8As1fI+itS/fKC5p+fTisFdLdaeSu8
 2Nd2CCZBCb8L2+nyV/Lq/Z+1PjtwsSJebHxVpSiaWHAPWjh8pOlbfNqt2Uq+MKFuYCf1
 /9Ew==
X-Gm-Message-State: APjAAAXZAmcqeOOvYj6pJutSh5lYJ6JA8cgkIzQdE1kwHzDrZEqZo5KD
 oSPE4brXEi1jRYLl2pJWpPc=
X-Google-Smtp-Source: APXvYqwqpElMKUvJw6yaThb/Nsi0h1Fel6j7DMtb4gAkPuj7FWaplutLPwGDdfmJ3E9IUhvcpcc2/A==
X-Received: by 2002:a17:902:7b92:: with SMTP id
 w18mr12487443pll.72.1581874515671; 
 Sun, 16 Feb 2020 09:35:15 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.127])
 by smtp.gmail.com with ESMTPSA id a36sm14284724pga.32.2020.02.16.09.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 09:35:15 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCHv1 3/3] clk: meson: g12a: set cpu clock divider flags too
 CLK_IS_CRITICAL
Date: Sun, 16 Feb 2020 17:34:46 +0000
Message-Id: <20200216173446.1823-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200216173446.1823-1-linux.amoon@gmail.com>
References: <20200216173446.1823-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_093517_346503_19123896 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Odroid N2 would fail to boot using microSD unless we set
cpu freq clk divider flags to CLK_IS_CRITICAL to avoid stalling of
cpu when booting, most likely because of PWM module linked to
the CPU for DVFS is getting disabled in between the late_init call,
so gaiting the clock source shuts down the power to the codes.
Setting clk divider flags to CLK_IS_CRITICAL help resolve the issue.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---

Following Neil's suggestion, I have prepared this patch.
https://patchwork.kernel.org/patch/11177441/#22964889
---
 drivers/clk/meson/g12a.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index d2760a021301..accae3695fe5 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -283,6 +283,7 @@ static struct clk_fixed_factor g12a_fclk_div2_div = {
 		.ops = &clk_fixed_factor_ops,
 		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
+		.flags = CLK_IS_CRITICAL,
 	},
 };
 
@@ -681,7 +682,7 @@ static struct clk_regmap g12b_cpub_clk = {
 			&g12a_sys_pll.hw
 		},
 		.num_parents = 2,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
 	},
 };
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
