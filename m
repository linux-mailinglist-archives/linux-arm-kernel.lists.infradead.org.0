Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8DC10CD46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GdVhlCL0AfK4ZNns2+YwoXffHjvNCYm7z0MGsPLfUzk=; b=QlPeArjDNAvob99wZoAp1X8sCc
	Q/scfCIZibY+h0zjS/UxlVHn2BMhpLoH5nlkhsWlt3L3ehjpI4GOc4HPNyV419pd63dGnPngy48y3
	QFs/Ss5RXtk8BCm+sx6JWSNF1ogtULrRV1d88OZ2RYGxgoX+hqNaKHfky/9WAEJ+qzVFRO4ZUkCTd
	5XleJayiRYsBDtgiWJXKb8HYQq1R7iPIAEwqGgAPwgGFmJ3KU2aB+gy0SZfBnEdRhH4b5lmUiiDkn
	hFEet5KCa/LccLcQ+zjuRa/VSNfmLGFxIuhLtYwsiieJkPPoE9D+jqFAj8FKJcN9BO5VBwTQZy7kT
	OG2FeYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN2H-0006WI-2y; Thu, 28 Nov 2019 16:52:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzc-0004bU-D0
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id b137so10825534pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k+cv9/8Sp0jhDfTqkaHbtLM5d5QXQGR0f5kzjPotgaE=;
 b=Yd4WyxjAx8E7rd/IcnhXBtcueXEooIqKr5vao3pVuHgjBkGq4ZaAjKekSK7fI51QyS
 T3Go3A5pmOJD17IMW7rhikGV8N8kij+CEOuUarK5xLKoctOAsj4Rwd5wLAAmr56yeoyD
 zLb+afITrkuBO3hkpfMtWS9ljhFWzf2DmSRynq3/Drb6buIrQvZyLD/qSjBn1wF37Klz
 SUfduIUpjzIj3ZXYWTg5lTfyf4oEsu4X+a+SmVxzVpFdXbFqeexKBTcFf1WGUfXo/+y0
 JZ8/aLdbI5VdH2fl9l6bNZIjyKdw5iC78x5Nk8JVNTcsyaxnMNyL91gSeYPRZBsOvJRf
 q8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k+cv9/8Sp0jhDfTqkaHbtLM5d5QXQGR0f5kzjPotgaE=;
 b=euLO5q72HJqaTPkc7xc2KESqx9rmcBVauq180dvdHzUDQj16MWijKlORCJ98ImSx3m
 UtX6O54Ku7uSFXxVAPGdKufIR24+oXzGM/J8YfV8h0BezqF0K4O9xr39EkdPTkmssZKt
 LTc5UOov730S5nAAXdGIXeAkISdujnNuk/E7DvL7MlkhNNMfZaaXpulXtXr/b9w0atAk
 mG36X/2hj5p/XPbHLESKbZvxl7FdZKD8Fjsb6NH2sLNWfYHWHlglv0+03RX7gRluLoh2
 VmYmoUuELbDIoU10qzqTlBrfUHuWbBiUALYLDH34sFPgunqY3RUCNSZuxHlIvpCOFVLZ
 8CSQ==
X-Gm-Message-State: APjAAAVJoXbjBddlcET01uc/GOH26hqSXlLd/Kj06XZuNK0qF+losKUb
 FD0J5kNzbGRW0+lSYnMwp/Q4w4SL/t8=
X-Google-Smtp-Source: APXvYqxMUMxa1h9uLzPiRHvcVLAXZAzEiAO/Y3bGcLiK5S5NnPVSNJLYsMbhcXpVdJJdVxnfyIP2MA==
X-Received: by 2002:a63:3409:: with SMTP id b9mr12187554pga.320.1574959811725; 
 Thu, 28 Nov 2019 08:50:11 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:11 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 08/17] clk: stm32mp1: fix mcu divider table
Date: Thu, 28 Nov 2019 09:49:53 -0700
Message-Id: <20191128165002.6234-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085012_448550_4C293DC4 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

commit 140fc4e406fac420b978a0ef2ee1fe3c641a6ae4 upstream

index 8: ck_mcu is divided by 256 (not 512)

Fixes: e51d297e9a92 ("clk: stm32mp1: add Sub System clocks")
Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
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
