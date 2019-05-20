Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D4522DAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8wp00ja/OTuN4+FHb74BkSAa3gACoOIKQMPk2kxHrA=; b=sGlxItIvK8H76A
	p2ywK1Rf7F24F9bRLywGE4JuCMRwtDHY+4+6B0npJNP07x/0KjqfN0H2J6fFWNBaMactaaI7TB9sq
	1oiJftNI3nb7W7hiFUv2GI5PZswC4Eiq0Uwgqspw1a8wIduNmOIxqQf2vQ8F+L/Gj1sEpXo65ME4J
	NWZQgK8DiLci92AjHLj9DkZ+Q1exWomrq9cdyAgCM5IsvZBftzGcdLH1benryDwFRd6UrzEDJ6Lvi
	y53Rcej6v8GltR+21WOL4lIrm9zXrXFUJNGh5nYS/IUGyX/l4hqLfQqUuNRK3ubo4hSsk6TkJY+Je
	phkjXHaf2AE7Pve32gMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdIn-0001KY-NU; Mon, 20 May 2019 08:05:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdId-0001GL-HG
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:36 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0A7B2085A;
 Mon, 20 May 2019 08:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339534;
 bh=+xkhllsSjVjbpVBqPaXjmCtg9BOWN3ILFlcR4TcmBAk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wjuAv9ojJKEQJ2xZYp00iCUNPsKCbmW2+DoqnKbsDel11gbBR/z+dO9mJlVTz+Ljh
 r7vFtMr7Bl7eDg89WBp8COwvMlx/aRvylbixnks/mehwIoysCv9PWe7HViXETZNRSn
 pIJjV6OdzldaYeWm6WzJcylNdI1WEDzD3GlqbZFw=
Received: by wens.tw (Postfix, from userid 1000)
 id 4FA2C5FF38; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 03/25] clk: Add CLK_HW_INIT_FW_NAME macro using .fw_name in
 .parent_data
Date: Mon, 20 May 2019 16:03:59 +0800
Message-Id: <20190520080421.12575-4-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010535_595244_631C010C 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With the new clk parenting code, clk_init_data was expanded to include
.parent_data, for clk drivers that have parents referenced using a
combination of device tree clock-names, clock indices, and/or clk_hw
pointers.

Add a CLK_HW_INIT macro for specifying a single parent from the device
tree using .fw_name in struct clk_parent_data.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 include/linux/clk-provider.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 0c241b43a802..edad4ad5d897 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -922,6 +922,17 @@ extern struct of_device_id __clk_of_table;
 		.ops		= _ops,					\
 	})
 
+#define CLK_HW_INIT_FW_NAME(_name, _parent, _ops, _flags)		\
+	(&(struct clk_init_data) {					\
+		.flags		= _flags,				\
+		.name		= _name,				\
+		.parent_data	= (const struct clk_parent_data[]) {	\
+					{ .fw_name = _parent },		\
+				  },					\
+		.num_parents	= 1,					\
+		.ops		= _ops,					\
+	})
+
 #define CLK_HW_INIT_PARENTS(_name, _parents, _ops, _flags)	\
 	(&(struct clk_init_data) {				\
 		.flags		= _flags,			\
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
