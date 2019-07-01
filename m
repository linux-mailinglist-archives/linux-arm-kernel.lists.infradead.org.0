Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F4C22DD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKNwlPva0CEMLd2ex2wKug0k8Y5hz4aJJHAS34/HdKA=; b=A5vBXWJF8luZcy
	aZCcPEKKuhxOIUNHGr6iNNBmudyA3Bo0KaoLgua9XiPmB3Zk3dXqeUBc7Z7/N3S8HjqGjQ37TXEkv
	6zDeF68DgeCLSvf6bnKPVk49JpS8RvTPkUd/3cIR0BRcJc442AwKoN9HvrCAogCJJzxUMgM9YEBgw
	3dKRfpwPnKSn+nwU7E/ghUy9TYv+sbIM5xYrbN41M5VPNcZG3G92nixWdVzrjHNZgRHr2Yirem2Ke
	2W4EjJGMnp1Ndu8mhuKqWuwSGb05vHqYlywrkukHREW5JnyfyxMVk7R3fMRvuElj7Gd+p7eyuo+YH
	XDswKkeKbs2fjg+/MGCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdK1-000376-Fp; Mon, 20 May 2019 08:07:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdIf-0001Ht-BD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:40 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7C9F208CA;
 Mon, 20 May 2019 08:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339537;
 bh=qxbiy7pYv1UyBjII7RZZHCsKy8cgqqufDiwhp9WjbYI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CHSHqk3LxBF7lY/qECJVCOAMj31ubt0jtLLtuUXYv86LQNYkMO69xcocJtYq6eoHC
 k4D4B7m1BFDxf3gGV08lXNsU9V7l1DFb+leN8EU1JcQ9D7FAv7DnKTa081HQVmlFzF
 +wTzTckYuovqrxwdsD8O8D5gOZ11LW5yhNxsSVXw=
Received: by wens.tw (Postfix, from userid 1000)
 id 6CCC462B58; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 07/25] clk: fixed-factor: Add CLK_FIXED_FACTOR_FW_NAME for DT
 clock-names parent
Date: Mon, 20 May 2019 16:04:03 +0800
Message-Id: <20190520080421.12575-8-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010537_500026_A653BC8F 
X-CRM114-Status: GOOD (  12.02  )
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
.parent_data, for clk drivers to specify parents using a combination of
device tree clock-names, pointers to struct clk_hw, device tree clocks,
and/or fallback global clock names.

Add a new macro, CLK_FIXED_FACTOR_FW_NAME, that takes a string to match
a clock-names entry in the device tree to specify the clock parent.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 include/linux/clk-provider.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index ac26aef874d1..a6cd04442eff 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -1006,6 +1006,17 @@ extern struct of_device_id __clk_of_table;
 						  _flags),	\
 	}
 
+#define CLK_FIXED_FACTOR_FW_NAME(_struct, _name, _parent,		\
+				 _div, _mult, _flags)			\
+	struct clk_fixed_factor _struct = {				\
+		.div		= _div,					\
+		.mult		= _mult,				\
+		.hw.init	= CLK_HW_INIT_FW_NAME(_name,		\
+						      _parent,		\
+						      &clk_fixed_factor_ops, \
+						      _flags),		\
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
