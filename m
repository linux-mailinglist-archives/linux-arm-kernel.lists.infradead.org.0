Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A24DFE81A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:37:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4utlUvjESTbom57ZQNSlQTT2lIxUo1HS68Hgv5zVVXU=; b=NDaisPuLsAhCIbUx1NQtLRZ+Kl
	OyPOASKky3RYS7EEv51/q3Zbj7eFZ0YaMnmEC1SYhqQo+L+RS8KgM3y8fa9ELJtaIv85F93d+SbIe
	BUguPJRCRqrkF7QosKusMionbUBJjfbUfMc83dlIK6qvTJN7GuCz4df8GBgvySGHXMqj2X3WrGJ4u
	pYh0g59Dg1NR3aFjAiBFQBICw2mxJl9T7vto2U4aiz64CIbLy6/RpzwspGixNXxaapuQ9QWgMtXEv
	6RCmUxHLIs3OPjPgyOLcxLZNVvw2GP9VPkW3wg5GKJo+FQb/6gBf4+RamrszHaAL9a/Fw9qlpysMF
	g7bbGqxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkDf-0002dY-6m; Fri, 15 Nov 2019 22:37:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAK-0007Dv-Sx
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so5613682plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SMtnKN7Gs980aMHU7BQIQVC2axVHuGxWT+FltL2atao=;
 b=wCXxmzT0A12PK75MA7nI5jP3tzVW7exsIlZfw+O4eheNL+D7AfmnLUW8+DHy3zzCoT
 imMdV2IXvTuA9H87PHWJW7BZ1JaN+ZUEYeS1ckOpd7oZ3DKkU8RpBCqa2RgFFtzBhNZU
 ubWEC8OF8SNb4i33w0ag7PZ9+KXkkiLBpSiR8p8JVqGpc8do+Et/ECFqhKV6FcfSU3Nh
 BWJl4PpK/32Mi9tIt4EMVAKhaOdIDWTuc68utfJ+H1UFMvl17WpD2yq4hpv84JrGpbIR
 eT68K8VM6j8kNRxR3gmZWlZI61FuWTkCKyr4/74coj9MYpZ8Iqm7O94Yr4jv9UntJTk8
 OazQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SMtnKN7Gs980aMHU7BQIQVC2axVHuGxWT+FltL2atao=;
 b=N4HSyZ7sV1gDlquyivR+GuTnR4t+3YbLHcjI08a1dILvsILh9WbJSt1vTxR34SDlpn
 fWQg491tpbSCeIphNpx9idnr3tKnExtGpy4IquTQEmSclLuwts+vgqoBvmgSmYwcPkRd
 H7TrIafJb0Z/tM+tYMq+Mf0Mqykp9N4PlNHPF7LodZbJ4Yb75TtGbsJ62rdRH13tMTLy
 xVwWkl0cSh1Zdk0TpisuwpQnEo2C3Lxp5Dz4UybAKT2xviIj9jkbdTV7dlir02FvwKKX
 bCyp7p+RMO0xlRDIS1k6MhnqnSK4WVGFjNObhq2sxbn0wXJs2Fcp0i5gjnyjz/OP5y63
 Zmug==
X-Gm-Message-State: APjAAAW2yw9QHCfRwnk9/3nLEoSh5ZLgYf2wRIo/evCMGmkQsxfBDpYD
 Z5X507Uc8kACo37tObKWqP7pNZqMT3M=
X-Google-Smtp-Source: APXvYqwuKwX6BDI8XlSYaGLwJcivbUjXwRHYUP9kUFXgyIgUSmPpiWVI8b+3JiRmUg2D6EAa5Wg8iA==
X-Received: by 2002:a17:90a:7781:: with SMTP id
 v1mr22961176pjk.93.1573857247779; 
 Fri, 15 Nov 2019 14:34:07 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:07 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 12/20] clk: stm32mp1: parent clocks update
Date: Fri, 15 Nov 2019 15:33:48 -0700
Message-Id: <20191115223356.27675-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143409_003944_273F2C87 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

commit 749c9e553e1f063eb132a78d80225532cbfedb80 upstream

Fixes parent clock for axi, fdcan, sai and adc12 clocks.

Fixes: e51d297e9a92 ("clk: stm32mp1: add Sub System clocks")
Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
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
