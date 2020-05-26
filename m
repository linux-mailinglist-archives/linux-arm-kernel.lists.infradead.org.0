Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6AB1E32CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5E52cGlmh0lbJCwM/UYssZmCnWmxcTICvnJ5AqClJ2A=; b=kf7IvMD37NyJGa
	VMKyau9r3gJPw8+wdv7sB19axkff0mPR6dYZmYisd2Ktb16kczN6ys+7Ud3mGlmBLHIfz1AlYtmRs
	n1mxRJq7UVGhSVhcpvpWqUd25/9/jDBkVAjxOGKTqwbNQusrO9cIqU7YZkH+3lYoOiYg/sDxLH5IJ
	S1PgtRrOmVOpgh8BAuBXJqL29Ehpbq45yBXRVTbSPmuZaOqXepvrYZYW4Wk5cCdZfBZ3A0jeQaw0M
	cBra93EJeQYKHmX3+C55ndjk9Ei+pShtQ9psqXVAw1JaWf5vwa3nXRRbirhJMeupb1pYcVNswnGVr
	LbErF/DiPga7r7otKDDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiGL-0005ly-CP; Tue, 26 May 2020 22:41:33 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiGA-0005ku-4A
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:41:23 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jdiG4-0002VP-Iz; Tue, 26 May 2020 22:41:16 +0000
From: Colin King <colin.king@canonical.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH] clk: versatile: remove redundant assignment to pointer clk
Date: Tue, 26 May 2020 23:41:16 +0100
Message-Id: <20200526224116.63549-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_154122_306439_3CC952B0 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The pointer clk is being initialized with a value that is never read
and is being updated with a new value later on. The initialization
is redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/clk/versatile/clk-versatile.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/versatile/clk-versatile.c b/drivers/clk/versatile/clk-versatile.c
index fd54d5c0251c..8ed7a179f651 100644
--- a/drivers/clk/versatile/clk-versatile.c
+++ b/drivers/clk/versatile/clk-versatile.c
@@ -56,7 +56,7 @@ static const struct clk_icst_desc versatile_auxosc_desc __initconst = {
 static void __init cm_osc_setup(struct device_node *np,
 				const struct clk_icst_desc *desc)
 {
-	struct clk *clk = ERR_PTR(-EINVAL);
+	struct clk *clk;
 	const char *clk_name = np->name;
 	const char *parent_name;
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
