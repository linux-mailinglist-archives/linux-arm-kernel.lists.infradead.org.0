Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1A110CD4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:54:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rmvlq50+GMkx/PqJcqtUVlRxNrgBt/8ni4/ZlsxuLCs=; b=q1uVBC3PBanRhDjRjVPGij2uix
	etG4U39/Sc7KjUhpWacvMNbd/Ivr22VarqonAfcc0F9y1eUPfNU/3AsPrbBL5ojKi6oth0EePFT1z
	A73R6EYtwMJ0KFGavyleqF+n3UzGuOnPGKwtkSjchr/UqqBaBnZMl//NpnZ/pEhst45y1Zh+Dc8vM
	1SDNJp4YC2ld4r5s6Lyk0jcQgGop7Yc/CE98UsssHeHE4gEOKxJJcEfWt0CG+ntWwvc1ZBnewYLpX
	pph0w4rq7wXPzsY72T5BwAcujffGm6d/AZg7m1UmQFqi7rB8hhqFq1thMnZ4X5Rrt/0D1nGP5l2GX
	aGpB1i+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN3O-0007T3-7s; Thu, 28 Nov 2019 16:54:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMze-0004dH-Tn
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id i187so9204185pfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jY7j7XGeZ35a5OePHaCLSQ6i6f4GRHNTIE3RrACf924=;
 b=rk/TdVgoD1IwdNF/bmyE65/dESdOwICMlgGj86MG4i4pagGw7ktUvMFDE6omLZM7Am
 3FCdQsSAtE6cELEQg8ed+WrvSkgrD6+bLxTv+Ls7ZxJqFZCV5S+F2WaQ1vAjwKHOhXfU
 QiHqCQ3FWcWYfmUxBSzbRWZw5qoiQWEWdkguK0EW4tn3e7FXImtRaWK4QLPBrPLdlYIJ
 BHdEXrOzIenD/PmnpoySm4HkRnCylqayGHDdb+SMImj2Fq6AZKTY9LNSe20vG4PViqxK
 s13sdUzGfh/dhNaR6DIGF4JPCCnC+kozLTDtGz1YTPyhqEzTiDALZ+82RJY4GLlRrNQd
 xsyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jY7j7XGeZ35a5OePHaCLSQ6i6f4GRHNTIE3RrACf924=;
 b=TaHP99slNMmYUAqrNuG8PjOV6DRhluqcLMQd4NjwwHrTRnRkdN0Ybcdu4in7Yb/Qg0
 M1M5tIqglueRdjRnkZDx3EbYY+CZoSCjRj/Cw4+JyXDZRWzqodzHTFW+qQ34VfIg2VnL
 eMNJnYCmdnxWF4t185FaUpKrFb0wfRXnZyy3zBgeqq9sga/ssRP+jj5TEiNHgNBxoFNX
 PYYWpssHEYNOp5kgvROZIVxq1pbuihjMMYi/7Gtwq/iU/J0GySsMqExeYIwFfR+mxsC8
 OkQQuxrQ8qSY8cKa3qoSim36p7TeeTCl6YmYFNaU8hwGHbsMblln/LduXvTTYURuBagy
 tCLA==
X-Gm-Message-State: APjAAAXhWOWYuhxV1jLB0VWqu4czVyrcJTpSUDM6+DUCiiEaEyO2NxBM
 tWc30qFc64AtxVUiY8pZh1RWTg==
X-Google-Smtp-Source: APXvYqweYzi4M9AMfmWN/j96HV08rLj6Z1utHyfK7EpXnpTX4iAGw5js/j8Q7AK1jayA/akmq+Oa7Q==
X-Received: by 2002:a65:4242:: with SMTP id d2mr12151883pgq.166.1574959813448; 
 Thu, 28 Nov 2019 08:50:13 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:13 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 10/17] clk: stm32mp1: parent clocks update
Date: Thu, 28 Nov 2019 09:49:55 -0700
Message-Id: <20191128165002.6234-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085015_168056_9A26E644 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gabriel Fernandez <gabriel.fernandez@st.com>

commit 749c9e553e1f063eb132a78d80225532cbfedb80 upstream

Fixes parent clock for axi, fdcan, sai and adc12 clocks.

Fixes: e51d297e9a92 ("clk: stm32mp1: add Sub System clocks")
Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/clk/clk-stm32mp1.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 8e25ed62f67b..bf3b6a4c78d0 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -121,7 +121,7 @@ static const char * const cpu_src[] = {
 };
 
 static const char * const axi_src[] = {
-	"ck_hsi", "ck_hse", "pll2_p", "pll3_p"
+	"ck_hsi", "ck_hse", "pll2_p"
 };
 
 static const char * const per_src[] = {
@@ -225,19 +225,19 @@ static const char * const usart6_src[] = {
 };
 
 static const char * const fdcan_src[] = {
-	"ck_hse", "pll3_q", "pll4_q"
+	"ck_hse", "pll3_q", "pll4_q", "pll4_r"
 };
 
 static const char * const sai_src[] = {
-	"pll4_q", "pll3_q", "i2s_ckin", "ck_per"
+	"pll4_q", "pll3_q", "i2s_ckin", "ck_per", "pll3_r"
 };
 
 static const char * const sai2_src[] = {
-	"pll4_q", "pll3_q", "i2s_ckin", "ck_per", "spdif_ck_symb"
+	"pll4_q", "pll3_q", "i2s_ckin", "ck_per", "spdif_ck_symb", "pll3_r"
 };
 
 static const char * const adc12_src[] = {
-	"pll4_q", "ck_per"
+	"pll4_r", "ck_per", "pll3_q"
 };
 
 static const char * const dsi_src[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
