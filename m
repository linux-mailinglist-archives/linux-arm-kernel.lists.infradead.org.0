Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D7A160B48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:57:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCD1dQsM1HYZ8wo9vVGZ8qAVOQm8kaSn5GbnQ+Vdkh0=; b=RplKu7Kse2ulpX
	HAXWKjSndqCOtKIjm7lQhhVWrM2qQ4kLMm2AlD5F/SR6b5zCvhJ0C7U5doYsaOJHih9cgX6MCYBe3
	ahFrOCUMZzXp06waY2Ps6/mjWwVoP3JO1+KcuE/rmPMPCQOfsNVeVOOjgh4VZAdTBoR+Cq1o1SGsU
	36qJudv4YUraotrB4rYAFg3QI1wP7yiiDsEsmLgK23jII1R85bpcl9JvnbipvT7FKQSYfUP386yjO
	gT7fTYbQxRfX7AuEHvCa8P/VzwuAroEt8fYQYOIM0oGTU/yW7y/m1aSzSj3OZ48ADPR1UkPBlvQe5
	GN6gCXnQ5tEtRSEVEPGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aL2-0000rC-3j; Mon, 17 Feb 2020 06:57:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3aKj-0000o1-Oz; Mon, 17 Feb 2020 06:56:48 +0000
X-UUID: 7e2e2bc758744afaa7a84318a6aa662a-20200216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=hxYCCL3/k4cibEcsvPHtckq0NXx5A2Fj9khz3ehuN+o=; 
 b=XXl4x+6iLcNzxq1U8TP1Rv8w3caeoVGEuwSfNFhQtALODHwTQ8lTB9j3b6LVYZRoImZs5h0Sx2CPnnKL5ldBFsebs+rEQF4gUpa1RiKHy5TwIRmdPdwMnu/zg2RvWWgqjEoUelPViMFm7kj/bYwe/jHDCD2XME4Utga0Ob18Yf4=;
X-UUID: 7e2e2bc758744afaa7a84318a6aa662a-20200216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 597281584; Sun, 16 Feb 2020 22:56:44 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 22:57:02 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 14:55:46 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 14:54:43 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pan Bian <bianpan2016@163.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "Mathieu Malaterre" <malat@debian.org>, Stanley Chu
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>
Subject: [PATCH v3 2/4] mmc: mediatek: refine msdc timeout api
Date: Mon, 17 Feb 2020 14:56:02 +0800
Message-ID: <1581922564-24914-3-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_225645_841756_5A6C63DA 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Chun-Hung Wu <chun-hung.wu@mediatek.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extract msdc timeout api common part to have
better code architecture and avoid redundent
code.

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
---
 drivers/mmc/host/mtk-sd.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index 189e426..127b0cf 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -698,21 +698,21 @@ static void msdc_unprepare_data(struct msdc_host *host, struct mmc_request *mrq)
 	}
 }
 
-/* clock control primitives */
-static void msdc_set_timeout(struct msdc_host *host, u32 ns, u32 clks)
+static u64 msdc_timeout_cal(struct msdc_host *host, u64 ns, u64 clks)
 {
-	u32 timeout, clk_ns;
+	u64 timeout, clk_ns;
 	u32 mode = 0;
 
-	host->timeout_ns = ns;
-	host->timeout_clks = clks;
 	if (host->mmc->actual_clock == 0) {
 		timeout = 0;
 	} else {
-		clk_ns  = 1000000000UL / host->mmc->actual_clock;
-		timeout = (ns + clk_ns - 1) / clk_ns + clks;
+		clk_ns  = 1000000000ULL;
+		do_div(clk_ns, host->mmc->actual_clock);
+		timeout = ns + clk_ns - 1;
+		do_div(timeout, clk_ns);
+		timeout += clks;
 		/* in 1048576 sclk cycle unit */
-		timeout = (timeout + (0x1 << 20) - 1) >> 20;
+		timeout = DIV_ROUND_UP(timeout, (0x1 << 20));
 		if (host->dev_comp->clk_div_bits == 8)
 			sdr_get_field(host->base + MSDC_CFG,
 				      MSDC_CFG_CKMOD, &mode);
@@ -722,9 +722,21 @@ static void msdc_set_timeout(struct msdc_host *host, u32 ns, u32 clks)
 		/*DDR mode will double the clk cycles for data timeout */
 		timeout = mode >= 2 ? timeout * 2 : timeout;
 		timeout = timeout > 1 ? timeout - 1 : 0;
-		timeout = timeout > 255 ? 255 : timeout;
 	}
-	sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, timeout);
+	return timeout;
+}
+
+/* clock control primitives */
+static void msdc_set_timeout(struct msdc_host *host, u64 ns, u64 clks)
+{
+	u64 timeout;
+
+	host->timeout_ns = ns;
+	host->timeout_clks = clks;
+
+	timeout = msdc_timeout_cal(host, ns, clks);
+	sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC,
+		      (u32)(timeout > 255 ? 255 : timeout));
 }
 
 static void msdc_gate_clock(struct msdc_host *host)
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
