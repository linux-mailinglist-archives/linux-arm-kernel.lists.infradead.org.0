Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5782C22DFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IuQEjodNcTK4jASQ9Ora4am2+pdJYrjQ0lCajF3Kmk=; b=Q6Oxu5NssHzdlL
	xTEYDpBkw0tx1KjiIocyF7Vpx4DKvx2v5yEGofaIp41DXU63shuPxvmvG5CZgvb5ThIKHgTDQxSqc
	TKMLpoQJKouRrrusA3j+2d2FhOmiMY7KfT5aFn45aX3AVrJtyTa08x11jZJx7l2zwS7LEAl+srrr4
	/9U1U5jU0zcWYJ/s6woAovLZlSIi7Og8WTZ2W0nTnwk1p1UBD64Gp4bDWplHt0hE3NEdPvsbp286p
	yj0XymKHeVM3Eay8MUO24wgEwGMLXAd4zesLX7B6jSFuqrDrQpg0NI4r+rismsQB/UYJipJFDZpck
	QlCdYZGBkKBuEWur8lDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdLp-000572-08; Mon, 20 May 2019 08:08:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdIj-0001NA-1t
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:55 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DBE9217D9;
 Mon, 20 May 2019 08:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339539;
 bh=O1PSJqy9ZjBIZws6j7DikPYDsvlqRAUsogIIdf7Xxzg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nFuDlToLmiYHpZc+zXoiLmsjGWLF7yCR3iHu8I58J6iI0CkQ83EXBCWjz21U34UjC
 jymBc4bo9Y2UWPBP6fsTx59UQVA4bLMH2jQ6w79OAqUHJLX8MQpry5Cn4r77wQDnS7
 XLS5j5yinACXhquSg0uUYTzXND6P5hguaF8mToe8=
Received: by wens.tw (Postfix, from userid 1000)
 id D993365857; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 23/25] clk: sunxi-ng: gate: Add macros for referencing local
 clock parents
Date: Mon, 20 May 2019 16:04:19 +0800
Message-Id: <20190520080421.12575-24-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010541_538151_1E26EA98 
X-CRM114-Status: GOOD (  13.09  )
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
.parent_hws, for clk drivers to directly reference parents by clk_hw,
and .parent_data, for clk drivers to specify parents using a combination
of device tree clock-names, pointers to struct clk_hw, device tree clocks,
and/or fallback global clock names.

Add four new macros:

  - SUNXI_CCU_GATE_HW, that can take a struct clk_hw pointer, instead
    of a string, as its parent.

  - SUNXI_CCU_GATE_FW that takes a string to match a clock-names entry
    in the device tree to specify the clock parent.

  - SUNXI_CCU_GATE_HWS that takes an array of struct clk_hw * as its
    parent. This allows the array to be shared with other clk
    declarations.

  - SUNXI_CCU_GATE_DATA that takes an array of struct clk_parent_data *
    as its parent. This allows the array to be shared with other clk
    declarations.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu_gate.h | 53 +++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/clk/sunxi-ng/ccu_gate.h b/drivers/clk/sunxi-ng/ccu_gate.h
index 4466169bd2d7..613ddd03629e 100644
--- a/drivers/clk/sunxi-ng/ccu_gate.h
+++ b/drivers/clk/sunxi-ng/ccu_gate.h
@@ -36,6 +36,59 @@ struct ccu_gate {
 		}							\
 	}
 
+#define SUNXI_CCU_GATE_HW(_struct, _name, _parent, _reg, _gate, _flags)	\
+	struct ccu_gate _struct = {					\
+		.enable	= _gate,					\
+		.common	= {						\
+			.reg		= _reg,				\
+			.hw.init	= CLK_HW_INIT_HW(_name,		\
+							 _parent,	\
+							 &ccu_gate_ops,	\
+							 _flags),	\
+		}							\
+	}
+
+#define SUNXI_CCU_GATE_FW(_struct, _name, _parent, _reg, _gate, _flags)	\
+	struct ccu_gate _struct = {					\
+		.enable	= _gate,					\
+		.common	= {						\
+			.reg		= _reg,				\
+			.hw.init	= CLK_HW_INIT_FW_NAME(_name,	\
+							      _parent,	\
+							      &ccu_gate_ops, \
+							      _flags),	\
+		}							\
+	}
+
+/*
+ * The following two macros allow the re-use of the data structure
+ * holding the parent info.
+ */
+#define SUNXI_CCU_GATE_HWS(_struct, _name, _parent, _reg, _gate, _flags) \
+	struct ccu_gate _struct = {					\
+		.enable	= _gate,					\
+		.common	= {						\
+			.reg		= _reg,				\
+			.hw.init	= CLK_HW_INIT_HWS(_name,	\
+							  _parent,	\
+							  &ccu_gate_ops, \
+							  _flags),	\
+		}							\
+	}
+
+#define SUNXI_CCU_GATE_DATA(_struct, _name, _data, _reg, _gate, _flags)	\
+	struct ccu_gate _struct = {					\
+		.enable	= _gate,					\
+		.common	= {						\
+			.reg		= _reg,				\
+			.hw.init	=				\
+				CLK_HW_INIT_PARENTS_DATA(_name,		\
+							 _data,		\
+							 &ccu_gate_ops,	\
+							 _flags),	\
+		}							\
+	}
+
 static inline struct ccu_gate *hw_to_ccu_gate(struct clk_hw *hw)
 {
 	struct ccu_common *common = hw_to_ccu_common(hw);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
