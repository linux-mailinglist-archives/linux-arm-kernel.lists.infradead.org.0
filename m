Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E6E49779
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 04:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IpXkW+QW1X+71AQDofXRw+z+BK0hs696AiR4k6Y6UvQ=; b=H7dEAdoNyFfmiO
	AH88KFbuQfHfdwYaHkOLhyMtZoazPFYwY3P95qkDN3r7O5EtzRDPxyncxaQkM3ePQOd5vySo1fz/l
	jE9licIQd/zknyE4GreljbI7NKfrqtMku46Evegssxmglw4qX7kTDVadO/atWKiQtWgg/8wLKtBH0
	5rYiFBewdLzZua/Ak7AGPsphPTtTGl32Cwb6p5pZPnGo1Ax7xZQx1HvLJXTMklROOlgqWz70WlUYE
	usEGtkjKpD7R3ExCrsAJ5n3dAWLw12HPaq1YWHu3luorA2j3GYc9oKE1Oabk7Dm7BzmXFq+KeZNip
	7MXv3RgYB92mC/Tzu+iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd3nQ-0004sq-8Z; Tue, 18 Jun 2019 02:24:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd3nE-0004sO-CK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 02:24:17 +0000
Received: by mail-ed1-x544.google.com with SMTP id w13so19189264eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 19:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lx4lm8ezQLxxXg3cFWwVWTQoCE1WyQJtp8daTAQGnAE=;
 b=jlP6OPiaGGXIC88z3BmvU0tzqiZKK0Fu03WqTR4mlUBJ/9Nmrf/bztr+YMPrHFEBHN
 4OtXRSalf315AkYk2Sb1ZJdvxbF44nnow/W6T1VH2B8HhOuKTGpwkgUMhbZu7M3QVsFx
 Oyjvg9uVF8a8Fk1L4nrrrcvx18cZBd2qVHUbm6L98nGWzAMzF64ITvsxzoAszFnup8Z2
 yEs21DUkTKQnCQb0O3e5ALSd04ciENiZXpwkxUDLlOJpwaLt8mApuZCgOtMT8d9YRs2r
 BXNUKJsBTLS0Eo0Q0JV+MrWV+m49QQjl9opBWlRhHtHEg+1f/JEdQFssE0rqa6WZh5Vl
 CUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lx4lm8ezQLxxXg3cFWwVWTQoCE1WyQJtp8daTAQGnAE=;
 b=NAN5yuBb0oXf7aAvUaEihxp/0r5amAgGfmO5xEIFyPbUQoduARcWjh/D+Jkg94Jxoo
 e04ikxFTV2xSWHGl8AdWPgqo53K+twimJZA3/+QS9oQkOOvOU6PcPS2yxfsnxvwaEPB8
 MsX6J9uDVgbb6ZqUbj0cqyKEVnoe3ekZuEuejWWD0rp/PMJhQB1oblEB+PkfYBL72J2P
 Eepk7MWV3WEx74mvW/AEYRiNDYAQUP055D3M2ldd+VNZVYV/WIyFigdVJab9PhBtlN/Y
 Di9zyM39SX4r1pNoUT4nDLrkhxbk9zi//+60u57OOw48VqfgxZQE9MfqeAxBS04j9gnl
 /8Fg==
X-Gm-Message-State: APjAAAUPaHkdY+kQOEStiUfskUloQ8Apgnl6TZetrTlwP38HLZs/Adof
 WWyLbMpJQU/WXNN5OAm8184=
X-Google-Smtp-Source: APXvYqyG3IJ3H2I8Zal9OtLEww9Kb70iUkIe3c10nl8TyAfukGGZgdUW4a9aSQn2zNroQWQqhwolKg==
X-Received: by 2002:aa7:c99a:: with SMTP id c26mr28682275edt.118.1560824654244; 
 Mon, 17 Jun 2019 19:24:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id m3sm4064055edi.33.2019.06.17.19.24.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 19:24:13 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Abel Vesa <abel.vesa@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] clk: imx6q: Annotate imx6q_obtain_fixed_clk_hw with __init
Date: Mon, 17 Jun 2019 19:24:05 -0700
Message-Id: <20190618022405.27952-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_192416_426055_A225DFCC 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with clang, the following modpost warning occurs:

WARNING: vmlinux.o(.text+0x974dbc): Section mismatch in reference from
the function imx6q_obtain_fixed_clk_hw() to the function
.init.text:imx_obtain_fixed_clock_hw()
The function imx6q_obtain_fixed_clk_hw() references
the function __init imx_obtain_fixed_clock_hw().
This is often because imx6q_obtain_fixed_clk_hw lacks a __init
annotation or the annotation of imx_obtain_fixed_clock_hw is wrong.

imx6q_obtain_fixed_clk_hw is only used in imx6q_clocks_init, which is
marked __init so do that to imx6q_obtain_fixed_clk_hw to avoid this
warning.

Fixes: 992b703b5b38 ("clk: imx6q: Switch to clk_hw based API")
Link: https://github.com/ClangBuiltLinux/linux/issues/541
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/imx/clk-imx6q.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6q.c b/drivers/clk/imx/clk-imx6q.c
index 2caa71e91119..18914e0a1850 100644
--- a/drivers/clk/imx/clk-imx6q.c
+++ b/drivers/clk/imx/clk-imx6q.c
@@ -418,8 +418,9 @@ static void disable_anatop_clocks(void __iomem *anatop_base)
 	writel_relaxed(reg, anatop_base + CCM_ANALOG_PLL_VIDEO);
 }
 
-static struct clk_hw *imx6q_obtain_fixed_clk_hw(struct device_node *np,
-						const char *name, unsigned long rate)
+static struct clk_hw __init *imx6q_obtain_fixed_clk_hw(struct device_node *np,
+							const char *name,
+							unsigned long rate)
 {
 	struct clk *clk = of_clk_get_by_name(np, name);
 	struct clk_hw *hw;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
