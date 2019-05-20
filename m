Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C4922DB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqynH2w/04086QT1zNZsa92GGZcLWb5gUvyRw32A9hU=; b=OlM27HhlLVvMRj
	duEiDVGqZ85WgXR4N53O+s2rTHcvW/UfoG+NjnHdcCp+BUBDmc18pfQYovGU7y1ebshWJ0qjuweOO
	gn9p7h7jv+03VcmToE1Lnqa8wknE4lBefp3ySa04F5EZQLbkT9iDCTcKKisD3G0/RJbn/+1hFNhCo
	HbYPDCO6Ujq2rrc3kXcITlKejqJzeco+0WyCk3pu70uCxtQBKys3hfga97rDLxVn7GRAy/ygyYOAR
	J6q5v+V5Oa7C3p2PkAlsCQUxKE1WQn39M6rd4HENFdO134rMsScrGvCQmBAgY4gwwWQ9yf1UyG1BR
	f5DB3OiHAihfeNaoRXDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdJS-00024x-GI; Mon, 20 May 2019 08:06:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdId-0001GK-HF
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:38 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD2A320862;
 Mon, 20 May 2019 08:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339534;
 bh=vDLQsD2B5mKgg/9AQ94YonY87MdfYhRV3o85LNhdwaI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HJuDNJ69iFBxjhRIg6uFFFy37jUgmClEn9Bsh6rx5GBRiCi8dFoIsntl5w2gysoac
 tsFAJ2b7dRlAwkFZefoyRVWM2RV6Fdxi6+NZQ+cz8NJpBswUVPo1J9oNofZ8Ni84Mg
 Rk5CsVk6X+Ze4QnKROEdeHLTcSAErvNKvLssEGyk=
Received: by wens.tw (Postfix, from userid 1000)
 id 413565FD5D; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 02/25] clk: Add CLK_HW_INIT_* macros using .parent_hws
Date: Mon, 20 May 2019 16:03:58 +0800
Message-Id: <20190520080421.12575-3-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010535_592573_6532C050 
X-CRM114-Status: GOOD (  10.09  )
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

With the new clk parenting code, struct clk_init_data was expanded to
include .parent_hws, for clk drivers to directly list parents by
pointing to their respective struct clk_hw's.

Add macros that can take either one single struct clk_hw *, or an array
of them, for drivers to use.

A special CLK_HW_INIT_HWS macro is included, which takes an array of
struct clk_hw *, but sets .num_parents to 1. This variant is to allow
the reuse of the array, instead of having a compound literal allocated
for each clk sharing the same parent.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 include/linux/clk-provider.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index bb6118f79784..0c241b43a802 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -904,6 +904,24 @@ extern struct of_device_id __clk_of_table;
 		.ops		= _ops,				\
 	})
 
+#define CLK_HW_INIT_HW(_name, _parent, _ops, _flags)			\
+	(&(struct clk_init_data) {					\
+		.flags		= _flags,				\
+		.name		= _name,				\
+		.parent_hws	= (const struct clk_hw*[]) { _parent },	\
+		.num_parents	= 1,					\
+		.ops		= _ops,					\
+	})
+
+#define CLK_HW_INIT_HWS(_name, _parent, _ops, _flags)			\
+	(&(struct clk_init_data) {					\
+		.flags		= _flags,				\
+		.name		= _name,				\
+		.parent_hws	= _parent,				\
+		.num_parents	= 1,					\
+		.ops		= _ops,					\
+	})
+
 #define CLK_HW_INIT_PARENTS(_name, _parents, _ops, _flags)	\
 	(&(struct clk_init_data) {				\
 		.flags		= _flags,			\
@@ -913,6 +931,15 @@ extern struct of_device_id __clk_of_table;
 		.ops		= _ops,				\
 	})
 
+#define CLK_HW_INIT_PARENTS_HW(_name, _parents, _ops, _flags)	\
+	(&(struct clk_init_data) {				\
+		.flags		= _flags,			\
+		.name		= _name,			\
+		.parent_hws	= _parents,			\
+		.num_parents	= ARRAY_SIZE(_parents),		\
+		.ops		= _ops,				\
+	})
+
 #define CLK_HW_INIT_NO_PARENT(_name, _ops, _flags)	\
 	(&(struct clk_init_data) {			\
 		.flags          = _flags,		\
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
