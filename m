Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAF3FE810
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:37:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DA9xp8nJaqN32b1xIN9rLjyC2xS0xg7nd4mVWiPhplE=; b=GbFWz/LLJK5sLUzXu0qMcf6gEW
	WTkf+uVZ44fJz2qKDaVynzGKe/Tuxi1rsRzpc9DC98shaIOEaheuAVnA8txuZEIsNN9RCCl6NeqS7
	1iv5o23oPV4XTKtVlWEZfkcL5HsPfnLZUzCDFcn+qXVIII4hvjLLmJ28cTkReQgGiBMBpfEgh8lxq
	WIIVN1c7g6ZX54KlaCkE5y9KUFgoihFvMbv3UcEGgRXutSXoTgqGlqB6zRa7qcy3+WZKj7aSYr/16
	x2iu0coTAr4AMfoL8Yr+UrpGjcGwvZ4048a6x2v6KyQzI6Y9Gt4izoFLHlwDcNb5HJqw45sx/tR63
	+KoM68Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkDD-0002AF-8D; Fri, 15 Nov 2019 22:37:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAJ-0007Bb-3Q
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id h4so6617173pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JeAIVfldLUVTvSXCSoIJcdwhrHS7EelSGWycmLvcpHo=;
 b=tD6THbMUpRjMLKRy7mjdFZRPWf6FlQ9n8BkmlAuG3KvMrw6+4glewlNU998SaSVKF8
 K1uXfh+VqFX7pN5G1dMZ+PDt3sdSRJUjziV9sIlmfI6iD8wG/dc3DBFAZQvyjct+zTae
 JDTIYU6eMfFwrytgreUfC0TJi6nwhYOUbr1NUKRqk7A/JJCsETttQq2N/aTbs7oVKz/B
 5ePF67K4RWaW231sXOBynfpzKnZ6ZoDkZIG30ycvhJ8hI5uGb0Ulrf+yNIWs61bJjyiw
 PC/6KEg/oqocsQ5/U1x6oZnJpoTwp0Y67DPWOBkJQ5DYuPj8gJIctO4Awi8svthRg6rH
 TAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JeAIVfldLUVTvSXCSoIJcdwhrHS7EelSGWycmLvcpHo=;
 b=U341wPbwaHjP5Rk8ZLig5dWMzdFB80+Iff24DA0pGgpPZaRduYUIkJpGLdUaqps+RJ
 PmIiXASFOlFs0jMdaQ1WSybCFLpLzBNVGyjdy6+aMYW2zDr7oIhlFI3BMi8Rc75A4xgp
 n9OwbSSaXr8Ru6l+dTCly3EMkiD3JsBLlysf7EkKgISbIFRGL6ZZ19xSyzU7oN5gjmVx
 GNi97XuRvpuotIOMez+9R+DeF/ZFn0Ykfv2G7YZSN2qaSXBsfGPDtKKDYsh4MS4URnoq
 yN8bd+iLwZxvoDFisJdqcyU/V0anQB4KdjUSqrs6rr5tpuecPCQLkTTaRgRwEa8DFzjZ
 warw==
X-Gm-Message-State: APjAAAWiTB9/MNFqy1u6ROZkPLbI9raKxIHmB+W81YJK+GckYy6py6ib
 telTR9T0dZmW+jOZ7OFT2iIN9Q==
X-Google-Smtp-Source: APXvYqxEuvWJPe5IPrGR1qUJFfqVEooRRTzfUt59swIGQbMJtrGOpHkD3l0yKEsEFfb7ErCC6auxCQ==
X-Received: by 2002:a63:6c4:: with SMTP id 187mr19457722pgg.421.1573857246083; 
 Fri, 15 Nov 2019 14:34:06 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:05 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 10/20] clk: stm32mp1: fix mcu divider table
Date: Fri, 15 Nov 2019 15:33:46 -0700
Message-Id: <20191115223356.27675-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143407_158085_F521253F 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

commit 140fc4e406fac420b978a0ef2ee1fe3c641a6ae4 upstream

index 8: ck_mcu is divided by 256 (not 512)

Fixes: e51d297e9a92 ("clk: stm32mp1: add Sub System clocks")
Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/clk/clk-stm32mp1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index d602ae72eb81..851fb4e9ac44 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -269,7 +269,7 @@ static const struct clk_div_table axi_div_table[] = {
 static const struct clk_div_table mcu_div_table[] = {
 	{ 0, 1 }, { 1, 2 }, { 2, 4 }, { 3, 8 },
 	{ 4, 16 }, { 5, 32 }, { 6, 64 }, { 7, 128 },
-	{ 8, 512 }, { 9, 512 }, { 10, 512}, { 11, 512 },
+	{ 8, 256 }, { 9, 512 }, { 10, 512}, { 11, 512 },
 	{ 12, 512 }, { 13, 512 }, { 14, 512}, { 15, 512 },
 	{ 0 },
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
