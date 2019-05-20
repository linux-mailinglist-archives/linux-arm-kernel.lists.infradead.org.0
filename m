Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44D522DAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2PhCm4/OJx8omY7fZ1QShIeMgGZqnxX/JnYDIG6GMI=; b=ZLSOVsYVF+j+Oo
	apPPvJnAqU2VNRLdGmwnLFDVMjSfXfJrkhN+skRXPaYcaq3se6pabWVhVar6T5ownuCDWcdxN7W2+
	jKxt2FA08rFDswxghSh6xVOM7QhdWoQashWujJNSv+cvW8attMe+ICi7pANCR9e0jSi00mDfsqIjp
	RrFF3jKQiShfd7zVsc+OOAJ2rfq+ej5klz1lewjhOdw+MmHR5AuC31Zum+SvFiJL8KUPz2FPfcIzp
	OlUMnmUIzvueoGJ/z6DHegmw4oAVkh1OdDHeHl3Y1bvRISX96rL9yTxSyUgzZh9AjE7YBQl5oAxil
	Z/8tD7P3oaxja8NWkwoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdIy-0001Vy-QW; Mon, 20 May 2019 08:05:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdId-0001GJ-It
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:36 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A544720856;
 Mon, 20 May 2019 08:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339534;
 bh=bQgehpdwJzg1v6T6W08qkEx1c9bSqawoCkXT0ME7XwA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CbFn0yPghbZ2rjhsPAaW+eVmdn/Luj2YxI/1PbriDe7mAPNSDrOWfUlsSjRD2B5ZU
 O2LJ8UNu7WzmPUirO5KrqsPTT/42mc4VaqN1iLCYcOEHLscADbWhbkCEOSz4T9g7AU
 DKgUbVZJpwMh3CZ+zhLz/IgDfraSuDKBZI4Sm5/o=
Received: by wens.tw (Postfix, from userid 1000)
 id 55EC6602F9; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 04/25] clk: Add CLK_HW_INIT_PARENT_DATA macro using
 .parent_data
Date: Mon, 20 May 2019 16:04:00 +0800
Message-Id: <20190520080421.12575-5-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010535_663262_71008654 
X-CRM114-Status: GOOD (  10.67  )
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
index edad4ad5d897..d0d58c49f3ad 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -951,6 +951,15 @@ extern struct of_device_id __clk_of_table;
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
