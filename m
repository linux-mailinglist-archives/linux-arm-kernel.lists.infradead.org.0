Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C09510CD3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UQkAR0SZr8YD6u1ev3OBxMtPtfkQk5vZ9nKILRsX2RE=; b=nJI+P/t84y+61UAuUPVuw5flON
	FhJLkw7aVfSbFb+OMMml2h/rxaGb8IoGSUGNuBNt1JV0DgZPCxKDfZ27p5wPIDHL0GqF4mCsExvO7
	u7bvaD4naQ7YCqwctGo0GJTIItRlSeE3DlbJvWFD/JbFY3GXbVrxBdWvZOcHwP2Bmjn8MD7BqpNb5
	ZhuUTwFhknFWJbKrwZy55UTebCVjBfGECVbV+jTR3mRy92+MABzT4gREJZFupTkWihbXQnwXZX6JR
	d2e89UGQ4DGM1nO3+qFnDNSBOYmRljypln6igqpAoNDluGrPRNWLtm7/TZvnogZrMuelGt4m9Uz2B
	J7RiXQRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN1B-0005al-9l; Thu, 28 Nov 2019 16:51:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzc-0004YO-Cr
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id y206so4753073pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=as0Dyqn9IW+Ib7FMH96nGeZ/5dUyDxEzw1IqFd6RcLM=;
 b=LWoQEcDUQHLetfKW6rW+t+LDD68rLNVYtb+J/5JvQjwdW2aCkD/yjcH+jbfyVtvH1P
 B+MXWFYRYwnd2grVFtyCK+NLuTWUPp1CmRnK1PxI/7J2Wet8vuP/tJwaPXyOeZfxp7Ji
 ZGgpo5WHMLI1xBw4tmsfd68A6ZnNXU/qJWUVCMaZFYsDsJlKGlnEjQzSGBjQFJac7zMB
 OFMCPKhQ3B6QDBzyULAvAf0RMWkl1CqZZo+beISxzWF4HTJLMQw8m+3FOr8RT6Ho7QIJ
 hu2J9gKiVLmU5Pj2CQO7JTKe/GIPgLr/gGT4FzH6qh6IzCdis72ohSNzRZTtpnVdQOJD
 lTfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=as0Dyqn9IW+Ib7FMH96nGeZ/5dUyDxEzw1IqFd6RcLM=;
 b=IW96v5edu7pqDwRgemXXwfowVCxEUcs9+2xeaY62WLIQbQN/G8XtmQvjr2ml+K+MZl
 YXXJ0BkGuyIoyqyJ+QsdW6puPe+Ut1/uJ6EJDc9eSZDv7o5A+qDmhvl9eq3ATQIdksTe
 JOmxkP+8xbHVOOaCCKTxkK2268UmkfnjNYrJmzsXEXIQFUpn5AleHRw4HXoolmHXgna2
 wBW34ciVrCGMIjr8sUeyrVqcb5ptPL0odVfvznsWeba0VVBK7NtMHSiC5IcwNyMPG8jE
 YS9Xow7vQUhU8FE3x0N3FMOJRpGlzuUroj/pAvFISX0qQoEDOjehuhy5xOGWylUPRDg0
 8Ivw==
X-Gm-Message-State: APjAAAXYK6RWTO1vQ9nj2yykxcWYaFPRPbR8KugRqyIluLoAmXy4Odb9
 ON48qDDCj8iT+lGoHuc27cjbRHsXahg=
X-Google-Smtp-Source: APXvYqwOnLS/7vwFXdBkF6U47M0v/d+v//XHzDBLADouTpgt0wZSZX1ch2wKxZSEtHp3izvH+R2zKw==
X-Received: by 2002:a63:cc05:: with SMTP id x5mr12334748pgf.141.1574959810877; 
 Thu, 28 Nov 2019 08:50:10 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:10 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 07/17] clk: stm32mp1: fix HSI divider flag
Date: Thu, 28 Nov 2019 09:49:52 -0700
Message-Id: <20191128165002.6234-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085012_497220_E07E2E20 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

commit d3f2e33c875de5052e032a9eefa64c897a930ed1 upstream

The divider of HSI (clk-hsi-div) is power of two divider.

Fixes: 9bee94e7b7da ("clk: stm32mp1: Introduce STM32MP1 clock driver")
Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/clk/clk-stm32mp1.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index a907555b2a3d..d602ae72eb81 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -1655,8 +1655,8 @@ static const struct stm32_mux_cfg ker_mux_cfg[M_LAST] = {
 
 static const struct clock_config stm32mp1_clock_cfg[] = {
 	/* Oscillator divider */
-	DIV(NO_ID, "clk-hsi-div", "clk-hsi", 0, RCC_HSICFGR, 0, 2,
-	    CLK_DIVIDER_READ_ONLY),
+	DIV(NO_ID, "clk-hsi-div", "clk-hsi", CLK_DIVIDER_POWER_OF_TWO,
+	    RCC_HSICFGR, 0, 2, CLK_DIVIDER_READ_ONLY),
 
 	/*  External / Internal Oscillators */
 	GATE_MP1(CK_HSE, "ck_hse", "clk-hse", 0, RCC_OCENSETR, 8, 0),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
