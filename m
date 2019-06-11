Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87BA3C871
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okEzCtAU+wpnqorbEQZXuwATMSSEaUI6gzQdayePeWY=; b=YvCa3UmetGsDHa
	eWSUOTb0EFQh3A+FHy6Onc0KgWhf/OzA2hSepnlVqXVGREZRfAgKT8Excp0WHj11QHIG/PyBBfDMw
	RWFIRcMADpLErow+nnAPF8z/HGv7HiZkIq/7FLOiPiMu8GlMP2PwdhkVnokBbOvMngU7C0Eva/BPq
	1EBMyXvOSn5VTP6bT+DnzEoCDfA5xfjZbvKO55BQHBKAvjJC8PqLrQ14UcEFdKv3CMiyU3Tjap863
	0c3/iJoT6sgC6ZxME+GYf6turWu27Ks/H56P5ue9AdWhH1JmqroPIpzsuAFQdOMS9pS9/AA2LInAi
	nuch7S8Arjctn00S1Uxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadqZ-0001Yq-0y; Tue, 11 Jun 2019 10:17:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqD-0001WD-HZ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:22 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 071F52089E;
 Tue, 11 Jun 2019 10:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248241;
 bh=KouIinatvemgGOpgiZa1tRYYMGvRXsqhx6dScroA1Vs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CFB2YHMnvMkfpUyAFeJiyjHkB4CQZ6FHv6lpmcoKZfnpJyfbCudWCGLgpRvh8ORLO
 OVzJW+8UiLiFiA9nyq3s/PnIJyJJJZAuZxlMuKF92saI7HPoZzPRRKMnOi66OCJFm7
 g5TzEQ7GoTld8RtLC8HzWPDKi2kMtJ4bnIlbpvag=
Received: by wens.tw (Postfix, from userid 1000)
 id 2A0675FE53; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 04/25] clk: Add CLK_HW_INIT_PARENT_DATA macro using
 .parent_data
Date: Tue, 11 Jun 2019 18:16:37 +0800
Message-Id: <20190611101658.23855-5-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031721_620053_987B0DD8 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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

With the new clk parenting code, struct clk_init_data was expanded to
include .parent_data, for clk drivers that have parents referenced using
a combination of device tree clock-names, clock indices, and/or struct
clk_hw pointers.

Add a new macro that can take a list of struct clk_parent_data for
drivers to use.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 include/linux/clk-provider.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index b19063512a29..0fd14c4874d6 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -956,6 +956,15 @@ extern struct of_device_id __clk_of_table;
 		.ops		= _ops,				\
 	})
 
+#define CLK_HW_INIT_PARENTS_DATA(_name, _parents, _ops, _flags)	\
+	(&(struct clk_init_data) {				\
+		.flags		= _flags,			\
+		.name		= _name,			\
+		.parent_data	= _parents,			\
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
