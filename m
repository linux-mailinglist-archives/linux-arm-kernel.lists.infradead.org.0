Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FD118DBA8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 00:19:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3xxBobW/YBUbBAYO1b8LpKpbBBClw/EaCkI5CNptnkE=; b=d0JMNvlnHvp6Nb
	rY5F6iQdYOxCk314FRbBApJ2GMG3WR5Z38X+LK0htP5FWb0aHTs0x9CETQz0QM9IablihZtL4rKIN
	H+PyO7ZyqC7b3nFXPCYoE6y2lfq80WteePTsafpVRx+lsOr1/Yn2XWDicgIv2iBRxqme0yF2GIBWL
	bY/9pybPOuoc+LqpiSwBRTiL9yViDe00A2E/D5CexRs2Oi6QlGxZxocqtVSyIjJSAsdmGZ08lOYFo
	KVX6LCAdSUzAAfWtscyAIbSZw2UdJmJ7inKy3JkdztNacq4W8+346Wj++MloTF1FjCq8AKT9I/WZ/
	aXfk9hFNd6A7fi6VhmLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQvN-0005xX-0s; Fri, 20 Mar 2020 23:19:33 +0000
Received: from gateway31.websitewelcome.com ([192.185.144.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQvC-0005vy-SR
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 23:19:25 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 752BB4C856
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 18:19:09 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id FQuzjmpLYXVkQFQuzj3kBz; Fri, 20 Mar 2020 18:19:09 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g8F4Yg5lyXhydDRq+jW8mvxrRBmfQgXV2fFC64D2XoE=; b=y3wzMEkBTeT3aERvfqGsWHsSn4
 x4ksozk/l+6xu7AWLtpqh3RjpnU0eC5+ieh0qi8VdE8Ommf1Bzs7W3j9WH75YxsIGG8vPnIPGgRhS
 7ZSfIl2AeCE39WJz8b1Exvn+gNaY3ndayjtYDLD4YTH8XKqAVKTgpNXZ2Sbo2fQvpdU7d2Ub0/tWh
 SzKWWJzyCwTq2Em8Ly9WYSmpiE92C0yXoDJ+pUl8jTIH2bdqwmGHg1nFhAzZJTiclgiarcuryp28z
 6JNX7QJKhVDH1q8J9Db4AJy8xarLjO/gI9jL55kNPIUv93pPraSmX4eljrSfaN1C2zF5aZ3G3C9hG
 rHBiGYJA==;
Received: from cablelink-189-218-116-241.hosts.intercable.net
 ([189.218.116.241]:53586 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jFQux-001JYO-SG; Fri, 20 Mar 2020 18:19:07 -0500
Date: Fri, 20 Mar 2020 18:19:07 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH][next] soc: ti: knav_qmss.h: Replace zero-length array with
 flexible-array member
Message-ID: <20200320231907.GA22135@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.218.116.241
X-Source-L: No
X-Exim-ID: 1jFQux-001JYO-SG
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink-189-218-116-241.hosts.intercable.net (embeddedor)
 [189.218.116.241]:53586
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 21
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_161923_012209_B6B6A108 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.144.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/soc/ti/knav_qmss.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/ti/knav_qmss.h b/drivers/soc/ti/knav_qmss.h
index 038aec352df7..a01eda720bf6 100644
--- a/drivers/soc/ti/knav_qmss.h
+++ b/drivers/soc/ti/knav_qmss.h
@@ -67,7 +67,7 @@ struct knav_reg_config {
 	u32		link_ram_size0;
 	u32		link_ram_base1;
 	u32		__pad2[2];
-	u32		starvation[0];
+	u32		starvation[];
 };
 
 struct knav_reg_region {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
