Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67ED11F97B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pg7ikK247f++xGNELbe25ubIORWk1PIpr6hpozQRFuw=; b=ISO8NcEwJjRbDS
	4AXps9y5jXpsutUP2tH0AnQpYkYXtYbYpV64FbkJHx0XQiSqQ0mNPORjKb487qJqlcpGccWGPyu/X
	7q/jQhUhC6HrewqQHfBo1ShW8us3Zk8tgOSouyi5+fBINV3JdERQKkPvf9wTQn2rGcdEO+jr/Ad5P
	XWBEUFrnJ70rKDtfp4VVVEPmxEnZZqHSGX41OSBf1JDO3gEfFWpkVhbpjJUTec/rjXsBONhZ+VCSU
	QAP5jJZz7SGMFoKilEg1jTY1IWYGU7bXP5A5iWXd05JGha+ReOueGbPX0XQonvDmm0210b0IhuT9X
	fC1+920yANeu9YT7bntA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXHr-0000vQ-NP; Sun, 15 Dec 2019 17:02:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF3-0005mo-I9
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:40 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94BFE24683;
 Sun, 15 Dec 2019 16:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429171;
 bh=8CLQxknPeOFqXl41pV/zS4RQXl281ma26CPeXsgnCkg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Sh/yRkOaLi7Hl99lWQWsLX+sVerx9QiKoDpuTqPft6SXGg0dwfU1RFkzpWP4KPuM0
 AtlsLE75cQSx0FxaqPQ9mmLWbrMTLftYtacDqN2hP2I5BxPnG3ssgHirxnLa7gIMMT
 vqJAg6m5IljnasaSLQLXUGzrM9vSadZz+EFxb/2U=
Received: by wens.tw (Postfix, from userid 1000)
 id 7BEFF5FEF8; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 10/14] dt-bindings: bus: sunxi: Add R40 MBUS compatible
Date: Mon, 16 Dec 2019 00:59:20 +0800
Message-Id: <20191215165924.28314-11-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085937_649474_3C5E2DDB 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Allwinner R40 SoC also contains MBUS controller.

Add compatible for it.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt b/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
index 2005bb486705..1d725fa03706 100644
--- a/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
+++ b/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
@@ -9,6 +9,7 @@ Required properties:
  - compatible: Must be one of:
 	- allwinner,sun5i-a13-mbus
 	- allwinner,sun8i-h3-mbus
+	- allwinner,sun8i-r40-mbus
  - reg: Offset and length of the register set for the controller
  - clocks: phandle to the clock driving the controller
  - dma-ranges: See section 2.3.9 of the DeviceTree Specification
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
