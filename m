Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D7618C266
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 22:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B2OcpmeKWE4ZkLq0d5xwcdhqVjAC40EKSfd38cFQOTQ=; b=EtGVLH520VHt0a
	r6FRs2rhoyZtr2SNBR3m0BAMvEL4FebY/bUwo/Gbm4J/kgBHn++AOVmrn8YZD+bRkd1+BCJNfxLzL
	72n3Yb97cUKxaIsBGN+2Fzr0Ied0Fjz8rcTxG+TBvXk7750BecNsFbUdiXJ0wI6Gu7wsjFlkYfRkH
	nNudYS31ZFaH6PSSU2mzc5f+bga3gn45eiqdT2AZX1D3xwhJDAaoa6w8bFUMYC9ogIRRJrgCEVAV4
	FAHJ51mBOyXR7SxDAFpcBIYry8JrZvIPGq4AR+2Z0Y6Z9Ytx9BH26rUcbUnfDcwG2aPql9qiUSEJS
	XjzSXFPpRpOyXQGMJ51Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF2tz-0002Bl-So; Thu, 19 Mar 2020 21:40:31 +0000
Received: from gateway33.websitewelcome.com ([192.185.146.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF2ts-00029z-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 21:40:25 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway33.websitewelcome.com (Postfix) with ESMTP id AF4E15EC19
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 16:40:10 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id F2tejjnReAGTXF2tej9jv6; Thu, 19 Mar 2020 16:40:10 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oA/NJzx0KXN+QumtJADitL2cYB/VD8HJ14U8VnEp9zA=; b=JRnvCmww/9bMYZ7+kD7HHrRpyB
 7dyWttXY5Z7XmETXNeoPM/TgZfMh9kdhfJVaOqwtO6SSkCy0FWCN7trwktbppOe5YOow9ubVoFZP8
 H5MjhsO10o/N4CwXVNd1mCbABooStdUjOfZtt8ekPF3Jg/9MTCu1qfnSe2uTMNr6kHsMou6xiaGqt
 zPOatNuxUDVRgh48lxdGpF9M+TnTCtcSDHdo74KI3dpJPRolopCgmfRtVO2e9X1XhPIcOQd32b9cz
 yzkk50vpQl20IZtHA1NwK6q2FUxoZws9qhB+gYEo2HsAFfp0z2euLWZeq592hCu6rAmTJ/0FwV/+I
 ETThXjBQ==;
Received: from cablelink-189-218-116-241.hosts.intercable.net
 ([189.218.116.241]:53372 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jF2tc-001i0U-04; Thu, 19 Mar 2020 16:40:08 -0500
Date: Thu, 19 Mar 2020 16:40:07 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH][next] hwtracing: stm: stm.h: Replace zero-length array with
 flexible-array member
Message-ID: <20200319214007.GA13640@embeddedor.com>
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
X-Exim-ID: 1jF2tc-001i0U-04
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink-189-218-116-241.hosts.intercable.net (embeddedor)
 [189.218.116.241]:53372
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 46
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_144024_493268_FB3D256C 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.146.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
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
 drivers/hwtracing/stm/stm.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/stm/stm.h b/drivers/hwtracing/stm/stm.h
index 3569439d53bb..a9be49fc7a6b 100644
--- a/drivers/hwtracing/stm/stm.h
+++ b/drivers/hwtracing/stm/stm.h
@@ -23,7 +23,7 @@ void *stp_policy_node_priv(struct stp_policy_node *pn);
 
 struct stp_master {
 	unsigned int	nr_free;
-	unsigned long	chan_map[0];
+	unsigned long	chan_map[];
 };
 
 struct stm_device {
@@ -42,7 +42,7 @@ struct stm_device {
 	const struct config_item_type		*pdrv_node_type;
 	/* master allocation */
 	spinlock_t		mc_lock;
-	struct stp_master	*masters[0];
+	struct stp_master	*masters[];
 };
 
 #define to_stm_device(_d)				\
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
