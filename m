Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0081FE80E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xauFeyqlGBU8cledy1D83ODj5YtuCT0Kc+XHcJm4SaE=; b=rWpSTzMhZNRy+m8LyHh9I6tPWh
	GD7OORFIf94+RlpaqO4R9esvNNenxnCcinil2rhYc1jbKcvrqnbZD/Ku5Es7Ebd8MRrqoIzLRHxmH
	cuyz8Q/j+BvqZZBvgGPtWyMs85HfNXQw/efz0gOM8ugbUmQtkboOo6eHbXOkQO+Ks29W/iZzX0dnj
	mu4UzV4igj9nj8YA1DNzhjnPePS+sODHRMBW5cykpgtM1GH5jB6XAvH/WCiRh4PCu5/ztdN6hPcNu
	2uHXijNTDM2sK5iywh+RERfe2Vi6MVoicdYOBWjrwtyi1cvSIX6OY/3vaEFu8/oXgq0myZezELWKO
	gri0RD2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkCu-0001uc-Ka; Fri, 15 Nov 2019 22:36:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAH-0007AW-Rg
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id h4so6617159pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XjmHZ2r/4EcW1pjM4Rd69/tyPSpvDzWdjKn2vf5w1qY=;
 b=a5q+0xMs8tIeJh8UJ8TVx8rZWUYZ16E5HxEnB0bRUqdlVxfqcyrfWViLr9Pn7dJisY
 VqRFpH8/EN3p18o/KhB6P43Ky8JCimROhKeXLcPYbCV9IN4oJ2CVylJtMtP7qfwro7o7
 SxdF13uvII4gAOlurEJrm50rCXFufEWhRyX+jcjvLDDHPbDNOBjiwTeiV6mHv4gY2lCf
 v6zbwJPxmKb/vDqIU9Wohh6rRB9E8a5QwUHIEM0ATxuwA7uLwKPIO6cIdiBE5ysfdmSV
 afv+gI97KSg+6usaoQb/OTeraFQQt+e/l1ahp52XQnTElIh1w5nC/Zk54P7lMFFDyeem
 GE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XjmHZ2r/4EcW1pjM4Rd69/tyPSpvDzWdjKn2vf5w1qY=;
 b=elWBAomW+eeJd/FioTFnkYA4cODnALijHKcBch6AdUydpDuQSHmXSptCn/EDW8GG+Y
 S4mhI3FdPxzrFQgqvAJnCKrxYyf/BJYcB5A42YUJjSmHJriRfh+4LCnq8l42vyCTu8ov
 30uooU8dxzvjkTxU+Fe9Q/W1Fg68ewfcCQZAmx3UfH47MZ9Fhj/MIg95r8iCGZ0qTjWi
 PLKK5jGLTxd++Atckglol0WmFMzMxmdNbgHXZ4byo4MGvO6qmy++jPThSRT/pBLGvx01
 0hvcYF3FkYsU/VHSxLTzE/56u34wdxVPvKPiy43iFme1Cp2rL0S9sSSgNLMD6m4+7mZS
 oUHA==
X-Gm-Message-State: APjAAAXE2WGAGoJGSgy629Sg3NE7e7ysJa3Qbul1gBpF7Z3elh6VBCED
 jk5O3xc4rmKZREst8jLvtOZx6w==
X-Google-Smtp-Source: APXvYqx5QjFoyTLodbBskheBnK+zVxbguR/K9b4TV6wtQaQaNjBS6bpq3F/W36BhzlJQbuO0lG4qiQ==
X-Received: by 2002:a63:181f:: with SMTP id y31mr18239880pgl.186.1573857245156; 
 Fri, 15 Nov 2019 14:34:05 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:04 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 09/20] clk: stm32mp1: fix HSI divider flag
Date: Fri, 15 Nov 2019 15:33:45 -0700
Message-Id: <20191115223356.27675-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143405_995175_FE95267B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

commit d3f2e33c875de5052e032a9eefa64c897a930ed1 upstream

The divider of HSI (clk-hsi-div) is power of two divider.

Fixes: 9bee94e7b7da ("clk: stm32mp1: Introduce STM32MP1 clock driver")
Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
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
