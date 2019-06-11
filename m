Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7D03C8BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epGkS/mW3TSeoNTjp6iNpUgF6u5impJHOyFSDxXlnvM=; b=u1VBMwd8/KGQ+X
	f0UG5goKjDTVHwpxgTiUNMNE2KxcCkehXXYnLzWA+ZS7WoqrVDXpuE0CBU8ptgsnQx2XC2gQzhUke
	q0sWHz69npXm9ALMMGSrszCSFDkNXJGOJ8e3ZByouB2w5NDVbFfkT70ZhTj+gJwnymR/sljUldk4f
	EXV18PT9i0wNfyhCQXbfGoHw1AL2XL8rmHDCasRP4P28l3R0ni6eNmEKXLJPoQW9uZ/aCBuaHesu8
	HRNwQjfkrIky1LVN6zhTTMyOeSvKT7twxjaRenZdgf4suyQ6Q3iXdrYRVxlxf7msTSaMZfrPhTsAz
	yhLiR6LIgSBUVGp9mLjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadu8-0006Az-VD; Tue, 11 Jun 2019 10:21:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqG-0001Z2-KT
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:27 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C2C321743;
 Tue, 11 Jun 2019 10:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248243;
 bh=9pP3OKj38O5IkaCOSE4CREy2A/7c7sgJ1J4PosN60ag=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I3WfUcUXiekWEAT+fNA59IZv43uoQI5NzkILbpcZcSRa1AvEEitV9A8yetlJIF8bJ
 X9nxNOXD66Xf4uSGP+UYZ2sFBPyFj5pe4tYyiA+AXftwlUZyi4UTxp2lph4Wx5mibv
 IWQ4neS/eqfTKhGPb2sm67ULS8LtIivQ8oFhUE9s=
Received: by wens.tw (Postfix, from userid 1000)
 id 35F6F602B7; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 06/25] clk: fixed-factor: Add CLK_FIXED_FACTOR_HWS which
 takes list of struct clk_hw *
Date: Tue, 11 Jun 2019 18:16:39 +0800
Message-Id: <20190611101658.23855-7-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031724_720006_863CA5D8 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With the new clk parenting code, clk_init_data was expanded to include
.parent_hws, for clk drivers to directly reference parents by clk_hw.

Add a new macro, CLK_FIXED_FACTOR_HWS, that can take an array of pointers
to struct clk_hw, instead of a string, as its parent. Taking an array
instead of a direct pointer allows the reuse of the array for multiple
clks, rather than having one compound literal with the same contents
allocated for each clk declaration.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 include/linux/clk-provider.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index c85e9f3809f2..146a6859969e 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -996,6 +996,21 @@ extern struct of_device_id __clk_of_table;
 						 _flags),		\
 	}
 
+/*
+ * This macro allows the driver to reuse the _parent array for multiple
+ * fixed factor clk declarations.
+ */
+#define CLK_FIXED_FACTOR_HWS(_struct, _name, _parent,			\
+			     _div, _mult, _flags)			\
+	struct clk_fixed_factor _struct = {				\
+		.div		= _div,					\
+		.mult		= _mult,				\
+		.hw.init	= CLK_HW_INIT_HWS(_name,		\
+						  _parent,		\
+						  &clk_fixed_factor_ops, \
+						  _flags),	\
+	}
+
 #ifdef CONFIG_OF
 int of_clk_add_provider(struct device_node *np,
 			struct clk *(*clk_src_get)(struct of_phandle_args *args,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
