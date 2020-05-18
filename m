Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F371D8A46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 23:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TjJPUba/FDG8k/1KqBQvInmOrcQdeH6W7Qv9V08uv/Q=; b=Ua4G7kIMofmVDP
	WLIDKLTNHHFdH5nSSMnmPJzR90RkNLkIBSh11fg0nB7g457WqmiYn+/k6oGnOdHa3wqhH1160DWdO
	U3vseso0S+R7nJxLEEcHUBKT2yaSpgSnAPlxq8JkyLPNtS6WEhme7INvHr8Xv1XTR4a9jyWIT5SyW
	qV846lL5XeFUuFu9wimfrjf6kwMMeSW8IxjvGL7tGzo8NY5qi8hrPWss9XQPrqzCy7E6gBiDeX6K3
	h7buLwfsvZ6aTmOeB4Mxj29zYk0CzrJDkKddrgy0hcUF4j+aouU2i1ioepKZsRXYh8hNnZWekIkkZ
	zyCnuGlfG3TWGE7rEX5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1janjC-0006Es-60; Mon, 18 May 2020 21:55:18 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1janiv-00055F-9x
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 21:55:05 +0000
Received: by mail-qv1-xf44.google.com with SMTP id x13so5548325qvr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 14:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wMJq7D1TcgA0SXH41T+7SkI8WgfsBEoon2jJRC0M3OQ=;
 b=hakBSGCC/Bxhaghx3THB7aqxE1Vz4DNAXDz690ML/sque4E/hU9AQEkM4zzKbZXAq4
 cD4RsAHHUOkJvJ0tTxalqMICUWs2Wv5el+os4VOQm6gbPx27BJ8ppVGepqpSqMs9qFza
 oFHQViCLSOKBngszHtApFMbwtcIQWl8/Nq0RsN4JzwbjA4ECyMo9B8etKJvC01jJMCgL
 s5SLS0T6FZgxnqYSIFhKC7cJr3/7bihB+fxuGMJ2NCGPY6mJa6c/VN5uYwAFjfTGdxet
 cuy7vYhj8onC2NawDv1PWs7njjxWMEHQ1sTrZ5udQM/ix/X3I+J7kHGo874mk10RscbE
 5sYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wMJq7D1TcgA0SXH41T+7SkI8WgfsBEoon2jJRC0M3OQ=;
 b=Hr3KpfvQZ7sscQReaWM88n1pN8k41P9t5fO6m+fa3zlf2fSLJh0jrLd6fjeD6PmS3b
 AjV8FWlAM8FJOHeG4BdWrnfR3uAHC5rpm5/Ug51YOYcExxOysrwIbwH6LNT289cexvXU
 kUdDkwPiqdKQwdbhMGUQYvbDrZGZVatWvJYVzr06x178GYrracZaXUgVebRPSokCjsYu
 ib5Lej6/jOY6/R7d2EYhe+LRi4vry2T/STAnawobi8EZpS0FjA3oefp0VB5WNJJCjlb3
 jH6q+8b9V+asrRt9gVXVhdBpaUNpnWsyWTyywgBNYgJFzxxCFYz8PJ1zTfwwPYh9pFfY
 hZJA==
X-Gm-Message-State: AOAM531WpfM91gz4c+iAObohpxnpbDfZEGORikKAF9O3UM609qWhEmjy
 bAOTZetjfYdDAb+6eCovifRe9Q==
X-Google-Smtp-Source: ABdhPJwAGdttXy1n6tqCK8mjNtebI6rFiDe/cbeHmK4x4jbwCAfcs0Ef3huYDlF+fs+gBEz9wshcIg==
X-Received: by 2002:ad4:4c4f:: with SMTP id
 cs15mr17209784qvb.117.1589838899553; 
 Mon, 18 May 2020 14:54:59 -0700 (PDT)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id m1sm10490739qtf.72.2020.05.18.14.54.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 14:54:59 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: bjorn.andersson@linaro.org,
	agross@kernel.org
Subject: [PATCH] arm64: defconfig: enable Qualcomm IPA and RMNet modules
Date: Mon, 18 May 2020 16:54:55 -0500
Message-Id: <20200518215455.10095-1-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_145501_350519_5B09BBAC 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 cpratapa@codeaurora.org, subashab@codeaurora.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable building the Qualcomm IPA driver as a kernel module.  To be
useful, the IPA driver also requires RMNet, so enable building that
as a module as well.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 9c6500b71bc6..56261fd7ea8d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -306,6 +306,7 @@ CONFIG_MLX4_EN=m
 CONFIG_MLX5_CORE=m
 CONFIG_MLX5_CORE_EN=y
 CONFIG_QCOM_EMAC=m
+CONFIG_RMNET=m
 CONFIG_RAVB=y
 CONFIG_SMC91X=y
 CONFIG_SMSC911X=y
@@ -313,6 +314,7 @@ CONFIG_SNI_AVE=y
 CONFIG_SNI_NETSEC=y
 CONFIG_STMMAC_ETH=m
 CONFIG_TI_K3_AM65_CPSW_NUSS=y
+CONFIG_QCOM_IPA=m
 CONFIG_MDIO_BUS_MUX_MMIOREG=y
 CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
 CONFIG_AQUANTIA_PHY=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
