Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6510FE816
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zxwgVraOA8LvsoZiJXc5dq9TSRxj/aC3iGRRkT7Nhtw=; b=u03sZfYLKAK2e9spqXswl0yyov
	xjAegryuZyIgSrJq7Sc7Tsbry1mBMHUlVY5wruFvtwPpXwatv3azYlxKCnp8ltfy5un2F30T/FSCQ
	lEcKKJr7MltMa3yh2Y3aSxvMwec2AK59N8clO8igssF/hMmBCuDI7xDFW54VncHoxejDxYOFByUeI
	XQAmxbuBzOD8gVCDE/yC0GevmR+T3SpK2t3Z3Exj7bfEhokq+jZ1n3U1rvDsW3HaUdegMVnrBsWxd
	isSA/SPb9+sXS+y0WGqM3qYewtwOzcEUQlaB+izjyPRVZ0i3+5OtJawrxmX/DZlVWdhJXqZ7QiRt9
	2Mkv9KAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkDU-0002Nv-M9; Fri, 15 Nov 2019 22:37:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAK-0007Ci-1O
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id f19so6611817pgk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/sm9ffuHyQlqHKvL/cAQ/Bj58CBN3LS1S5BSazdWb9s=;
 b=pM8P5t4PtpN4KMbwNUNzh+mn2x2kH6Il5JxeWrKcKQ8kx58doVIPMM4rtWksFJl4Yi
 xpsRjLEis5CKrLOAjaRS2tsUqYI7mBV7IEsmC35MdUVzIJq1+U59yl5C8M/5ckGv0OO2
 WsTXDoKyWjG+RTKzRIP3NmhG82iAuiyJHdHZJlXS2fg0egy7r7NhIwEmTwuwZI/snEuz
 HyEtEYXEheT/4bI8e0D8VFssUGtO3ESnWqkrCqal5Bv0wWXjt+RLeWPfWKS2b2ElEOdH
 b5dok1fcKq2xCkY6DxuuptOWNO3qxCRJOsuscR83yFKy8B3Q3vLeQv1yOg9D+rhmxnPG
 /v0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/sm9ffuHyQlqHKvL/cAQ/Bj58CBN3LS1S5BSazdWb9s=;
 b=LyKfXEbpGSfMIcan5ZZt1C8/r4hS82ji9D/tj32BnM7CfBR63bCsqA2eBdtVF0jwC2
 sX6mC0afOx//N5SOod4T4bIWNoKCOt92tUAGFzoieahzMT7uxOtkcc02rsjvrYmR45Z+
 22GVDKXublIaP5JV7bU7t3OvkCtLjR467FAbbnXbFC9nnmfgUMRWa99w0lSRZQ+5dfPi
 QjZN4UCHXB+p7HV9lD12iZ37a1iseuYn3NQkRkdMiTq50h8/gAhY6suiByAfKlMkpOHd
 NWMy7Xn08cBjfD6/PFAdOHNONeOJUuLmHLT89jjupgkIpj9XL/iokQ0F8nkjQzClvPnN
 G64w==
X-Gm-Message-State: APjAAAWD/9+8CdedtNwsVkkaNBgbySQqQ8iDCAKr3MP9ibOEKttP8OPl
 bvzKYnxTqgpcLSPiJekDSTCP6A==
X-Google-Smtp-Source: APXvYqxhiASeIh6AbbOCOM1G3JW5aTZMnQlTM00qyXfaFHU8biTlEeNgh5n5hJS1PlX3q3qN6XW4ig==
X-Received: by 2002:a63:9247:: with SMTP id s7mr19675322pgn.334.1573857246932; 
 Fri, 15 Nov 2019 14:34:06 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:06 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 11/20] clk: stm32mp1: add
 CLK_SET_RATE_NO_REPARENT to Kernel clocks
Date: Fri, 15 Nov 2019 15:33:47 -0700
Message-Id: <20191115223356.27675-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143408_139181_2CAEF043 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gabriel Fernandez <gabriel.fernandez@st.com>

commit 72cfd1ad1057f16fc614861b3c271597995e57ba upstream

STM32MP1 clock IP offers lots of Kernel clocks that are shared
by multiple IP's at the same time.
Then boot loader applies a clock tree that allows to use all IP's
at same time and with the maximum of performance.
Not change parents on a change rate on kernel clocks ensures
the integrity of the system.

Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/clk/clk-stm32mp1.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 851fb4e9ac44..8e25ed62f67b 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -1286,10 +1286,11 @@ _clk_stm32_register_composite(struct device *dev,
 	MGATE_MP1(_id, _name, _parent, _flags, _mgate)
 
 #define KCLK(_id, _name, _parents, _flags, _mgate, _mmux)\
-	     COMPOSITE(_id, _name, _parents, CLK_OPS_PARENT_ENABLE | _flags,\
-		  _MGATE_MP1(_mgate),\
-		  _MMUX(_mmux),\
-		  _NO_DIV)
+	     COMPOSITE(_id, _name, _parents, CLK_OPS_PARENT_ENABLE |\
+		       CLK_SET_RATE_NO_REPARENT | _flags,\
+		       _MGATE_MP1(_mgate),\
+		       _MMUX(_mmux),\
+		       _NO_DIV)
 
 enum {
 	G_SAI1,
@@ -1952,7 +1953,8 @@ static const struct clock_config stm32mp1_clock_cfg[] = {
 	MGATE_MP1(GPU_K, "gpu_k", "pll2_q", 0, G_GPU),
 	MGATE_MP1(DAC12_K, "dac12_k", "ck_lsi", 0, G_DAC12),
 
-	COMPOSITE(ETHPTP_K, "ethptp_k", eth_src, CLK_OPS_PARENT_ENABLE,
+	COMPOSITE(ETHPTP_K, "ethptp_k", eth_src, CLK_OPS_PARENT_ENABLE |
+		  CLK_SET_RATE_NO_REPARENT,
 		  _NO_GATE,
 		  _MMUX(M_ETHCK),
 		  _DIV(RCC_ETHCKSELR, 4, 4, CLK_DIVIDER_ALLOW_ZERO, NULL)),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
