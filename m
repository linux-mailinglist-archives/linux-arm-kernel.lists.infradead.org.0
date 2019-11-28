Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A946710CD47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i1idGPO+yEoB8NmuZc9YdlnE/p9oXMPvEYZmVY9k5cY=; b=twlS7pb+doCynVTk3wBGsQGZEL
	i7wjIa2Uhu6VMyoHaojUedbEHPrDD4Ky43wSJk21mbhU1lI6L5y693LQIr0FSwETs4c7Ug26dtw9n
	S8FKBCxWrRXzD7I2UMIyD6OpITyTaISXwrNe8DP1r7xK8tvVhaSUa2+WwYKVESTRs9XWblZlxg6zf
	dI95yx1XaWwXSOF1EM9xGLrtHR5gyp34R3zRNrEXXUrJFPbgNeZdrwk+RhswL9plhG06GeNrF1GLC
	anfHa6WRlP2m+806t+2ITTkeZPno5yvtz4p+9ecAfk6+exqRkwQBEHsCmSoLha/XE5afYK+wXU7xf
	n/8ZeQAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN2W-0006m4-86; Thu, 28 Nov 2019 16:53:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzd-0004ci-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id y206so4753103pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WWGEc85+KcM+sGpnyTytKb3X6CvK3FAE9bn+Wq10lGo=;
 b=bb++BL38yQuo7KNIuQMOdkHafzxGcwnlx5bZPHOIdY6ABklHc3dFnGxtGBwC02EwY2
 +vEMBkw/f3ymqZG5gg+5F4x+feO8IGCmzyBWtZ10BLuGTI3Lcid68VnHZpjz3tpappoU
 nus2CQyYFsvCqXzxXQ8z5hHfp/lQ+6G0VKKca/7ULAMmCZJclI97Vd9c9ZVg2TjZVVGH
 Pwpr1YsxzFlPUgjFuFE7KgYGWLLESq4ceWMXNOnKPO1h9G9QK38u1pVmAHIDV+IQYC7H
 IvMQDLqlQfbw4QrD0nGQZWsYZ8UJC+/7kNv0JEHAf/WtrnwcWL6Pye1Xsz/x+JrptJyz
 DqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WWGEc85+KcM+sGpnyTytKb3X6CvK3FAE9bn+Wq10lGo=;
 b=aLkgp/32RuxxdS1hI1HVPfFhCf4umJDAuFSiEXSbmfuq6R5UQJ4AVgLfNpyr8AmEw3
 nZec6rDfQsEef7HeqtqKVUZNqwqo5fp48T1Tz7Zo+ndLsutUO7f3V4p462FmbqQzMcPM
 Mpd96eE9+Gn+SDz2tek674tCeAOrxSSFyHUkTDDnfm3lkFjPNWTxrC1fhvhJw+8RjLsY
 SkG9P57UsZGOmYGmpSZNOd1vtmOjZR9VBiADNbFfRuuV7YNHm6lKWSBmfw1aH1zaiHoo
 2/2WLZ4MqA/8LPBQ3EKCRhi8xUKa35nIfsK60zT16MfuXywLrxnJAGVcDB730nnbXiy9
 TWqw==
X-Gm-Message-State: APjAAAXQldnQiY870RSahLCCSd3s9l/RqU56IhkDRdXTyFeyIEpg0gRu
 luO98tKKDbYe6/HijOLH3JxOgw==
X-Google-Smtp-Source: APXvYqzMkKzDz3Dog5p8KaalqQ3tG0sJuebo50vTJTT3XtXtN5R8NONYkk4ffIqqAFEDwHtpP0hc5w==
X-Received: by 2002:a62:ae17:: with SMTP id q23mr54443120pff.2.1574959812598; 
 Thu, 28 Nov 2019 08:50:12 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:12 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 09/17] clk: stm32mp1: add
 CLK_SET_RATE_NO_REPARENT to Kernel clocks
Date: Thu, 28 Nov 2019 09:49:54 -0700
Message-Id: <20191128165002.6234-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085013_895675_37C7BA0C 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

commit 72cfd1ad1057f16fc614861b3c271597995e57ba upstream

STM32MP1 clock IP offers lots of Kernel clocks that are shared
by multiple IP's at the same time.
Then boot loader applies a clock tree that allows to use all IP's
at same time and with the maximum of performance.
Not change parents on a change rate on kernel clocks ensures
the integrity of the system.

Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
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
