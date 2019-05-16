Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730C22004E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 09:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kke2Cv0wVSuOT6Qmu8If3DK2zAzsLcs2P+QYriDuIqA=; b=lwZfwHld5E8PqSXjv17Aff5Aov
	0260sVRUz7R9xQg5mBcZ+D8ukoOQ1RCixVcRigq0JiVcTf1pJHLBQvYQ/Ni+lwx6Np/9jjWKs86Ov
	7jBT6E4h2PUBhbonrLDV//n+FDGS+rhNoFfPYbHKnvOyzw3Y6tAC66ov/MgQlpEZGNOTdtNxdvcLn
	QLCG26ORANaRqSthOX//ZZi78DELsw0HCEjCpkSBXkRM8bMtsRSDhzXInk329oLYEkLv8ZaHANx3O
	1awEzxcEGkoIB+/yx8k67Aixcf8XdcWuEyat04IIcaEHqKCK3xRdjbsidYcJVM98MO9idbHV1xU/Q
	MAuiEeTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRApk-0008AM-2r; Thu, 16 May 2019 07:29:44 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRApC-0007Zu-Cs; Thu, 16 May 2019 07:29:12 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.227])
 by regular1.263xmail.com (Postfix) with ESMTP id 14919480;
 Thu, 16 May 2019 15:29:05 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7747T139724561819392S1557991736066321_; 
 Thu, 16 May 2019 15:29:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b6bac51f72b68c8368201b9daa357380>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 3/6] clk: rockchip: add a COMPOSITE_DIV_OFFSET clock-type
Date: Thu, 16 May 2019 15:28:53 +0800
Message-Id: <1557991736-13580-4-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
References: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_002910_742858_BB044060 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Finley Xiao <finley.xiao@rock-chips.com>

The div offset of some clocks are different from their mux offset
and the COMPOSITE clock-type require that div and mux offset are
the same, so add a new COMPOSITE_DIV_OFFSET clock-type to handle that.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk.c |  9 ++++++---
 drivers/clk/rockchip/clk.h | 23 +++++++++++++++++++++++
 2 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 0256a99f06f3..0a8a694a41ab 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -46,7 +46,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		const char *const *parent_names, u8 num_parents,
 		void __iomem *base,
 		int muxdiv_offset, u8 mux_shift, u8 mux_width, u8 mux_flags,
-		u8 div_shift, u8 div_width, u8 div_flags,
+		int div_offset, u8 div_shift, u8 div_width, u8 div_flags,
 		struct clk_div_table *div_table, int gate_offset,
 		u8 gate_shift, u8 gate_flags, unsigned long flags,
 		spinlock_t *lock)
@@ -95,7 +95,10 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		}
 
 		div->flags = div_flags;
-		div->reg = base + muxdiv_offset;
+		if (div_offset)
+			div->reg = base + div_offset;
+		else
+			div->reg = base + muxdiv_offset;
 		div->shift = div_shift;
 		div->width = div_width;
 		div->lock = lock;
@@ -536,7 +539,7 @@ void __init rockchip_clk_register_branches(
 				ctx->reg_base, list->muxdiv_offset,
 				list->mux_shift,
 				list->mux_width, list->mux_flags,
-				list->div_shift, list->div_width,
+				list->div_offset, list->div_shift, list->div_width,
 				list->div_flags, list->div_table,
 				list->gate_offset, list->gate_shift,
 				list->gate_flags, flags, &ctx->lock);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 3c827ec0965c..20200a707611 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -407,6 +407,7 @@ struct rockchip_clk_branch {
 	u8				mux_shift;
 	u8				mux_width;
 	u8				mux_flags;
+	int				div_offset;
 	u8				div_shift;
 	u8				div_width;
 	u8				div_flags;
@@ -439,6 +440,28 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define COMPOSITE_DIV_OFFSET(_id, cname, pnames, f, mo, ms, mw,	\
+			     mf, do, ds, dw, df, go, gs, gf)	\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.div_offset	= do,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
 #define COMPOSITE_NOMUX(_id, cname, pname, f, mo, ds, dw, df,	\
 			go, gs, gf)				\
 	{							\
-- 
1.9.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
