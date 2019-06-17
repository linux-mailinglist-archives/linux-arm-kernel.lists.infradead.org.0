Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6AA494A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 23:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjULZiKaZmTmwbgbB9jEr/Mt17agbPjFXVLDY3GywzI=; b=MXeSIPLSUPqPyY
	wBgInHxVmwAG0KAFddTukvYfMgrz/z5bxEuy04yQCFCemwDX5a30/42OvxH/sd8xA7eMPXTJMMtg+
	LH/bS8D7JZhmhIXgXcrg/+EAM5yqDnml9OZaW0Y3UNjq//+BqZ5zZlnRqdgql7ewdTfie5ZHgDQyh
	yPg50CznfEZGku/Hzw0tRfZDwOgb3WapfXOcl8N7aFtLi8wkbo7oS6qukBHFxehEoge/CRTRnXYQz
	rwT1M1mEBNHxL86RxFRd9ZcSPPXh9Zwfnd/GNfnyKzJM+aAtFLa9ho9LhAVk0OgmNsU+5ljPf/jgM
	E25GvSFe5XCvTBo6rfGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczbk-0003Pj-GH; Mon, 17 Jun 2019 21:56:08 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczaj-0001gI-OJ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 21:55:09 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 28505891AB;
 Tue, 18 Jun 2019 09:55:02 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560808502;
 bh=nh85/mqF5oVPh1u17FhJ2OvMabD77rFTIg7S/aSyvVc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=N5HZqZDRcVNniNgRDmZkrd97Vk/RUsShv/VICHu6NpwYs/XJQI8zbxUrQUZANXTcD
 5Lb8PvtCg4YgYSOxB4TRwEvNVbSOmtt/Om+fPkcD/1AB+QfnSx+JKP8xH+lBU2HK6l
 CDiLhLaXsQXbsYCkToIDmb3cN6/tky4VhjixuDlf1crUxbwvLGKwKfgmRxbCBzc55J
 rDYqWqEi1IY2AxaYXCnlRwnYg8Oi52gib0I3MLmqisooG+fi2wGeKtLH1mewTZGY0u
 gAalEj/dtAGTJUG8nDy8RI0JY6smLJF5hasDt276RDQ4lp96OtXGpoO+kV0PQJ1JZ6
 yywgchw1fIW3A==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d080c350000>; Tue, 18 Jun 2019 09:55:01 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id A89CA13EEEE;
 Tue, 18 Jun 2019 09:55:01 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 80E641E04F0; Tue, 18 Jun 2019 09:55:00 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, jason@lakedaemon.net,
 andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] clk: kirkwood: Add support for MV98DX1135
Date: Tue, 18 Jun 2019 09:54:58 +1200
Message-Id: <20190617215458.32688-5-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
References: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_145506_184761_A25F8CBC 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 98DX1135 is a switch chip with an integrated CPU. This is similar to
the 98DX4122 except that the core clock speed is fixed to 166Mhz.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/clk/mvebu/kirkwood.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/clk/mvebu/kirkwood.c b/drivers/clk/mvebu/kirkwood.c
index 35af3aa18f1c..47680237d0be 100644
--- a/drivers/clk/mvebu/kirkwood.c
+++ b/drivers/clk/mvebu/kirkwood.c
@@ -185,6 +185,11 @@ static void __init mv88f6180_get_clk_ratio(
 	}
 }
 
+static u32 __init mv98dx1135_get_tclk_freq(void __iomem *sar)
+{
+	return 166666667;
+}
+
 static const struct coreclk_soc_desc kirkwood_coreclks = {
 	.get_tclk_freq = kirkwood_get_tclk_freq,
 	.get_cpu_freq = kirkwood_get_cpu_freq,
@@ -201,6 +206,14 @@ static const struct coreclk_soc_desc mv88f6180_coreclks = {
 	.num_ratios = ARRAY_SIZE(kirkwood_coreclk_ratios),
 };
 
+static const struct coreclk_soc_desc mv98dx1135_coreclks = {
+	.get_tclk_freq = mv98dx1135_get_tclk_freq,
+	.get_cpu_freq = kirkwood_get_cpu_freq,
+	.get_clk_ratio = kirkwood_get_clk_ratio,
+	.ratios = kirkwood_coreclk_ratios,
+	.num_ratios = ARRAY_SIZE(kirkwood_coreclk_ratios),
+};
+
 /*
  * Clock Gating Control
  */
@@ -325,6 +338,8 @@ static void __init kirkwood_clk_init(struct device_node *np)
 
 	if (of_device_is_compatible(np, "marvell,mv88f6180-core-clock"))
 		mvebu_coreclk_setup(np, &mv88f6180_coreclks);
+	else if (of_device_is_compatible(np, "marvell,mv98dx1135-core-clock"))
+		mvebu_coreclk_setup(np, &mv98dx1135_coreclks);
 	else
 		mvebu_coreclk_setup(np, &kirkwood_coreclks);
 
@@ -339,3 +354,5 @@ CLK_OF_DECLARE(kirkwood_clk, "marvell,kirkwood-core-clock",
 	       kirkwood_clk_init);
 CLK_OF_DECLARE(mv88f6180_clk, "marvell,mv88f6180-core-clock",
 	       kirkwood_clk_init);
+CLK_OF_DECLARE(98dx1135_clk, "marvell,mv98dx1135-core-clock",
+	       kirkwood_clk_init);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
