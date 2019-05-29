Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFFA2E87F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 00:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rp/huULY6UtZfmtcAewjHx/riGWkvV6WQgyf26SjV+Y=; b=S6r
	wCfRidoPos5phe4TRd0NqmIdKmmafeOMZhvcchsd/FBVBNcv+U/beHF7hRVpt3bE8La6vGnIZ6ueD
	m9inA4ObNREYxH2mo3GPG9WhCMfq8oZekryfaphhwqKPEFFaMPBAhvJFC6t/J1rZY1uV+4DXk+snF
	8algUjekKRbdNiwirXpt3e2rj+BtJukCrTZKv30yAzupX3yuE/4QGJDOZh5rP4H9x/d950I+3/d3j
	5f7JkzPCDFWW5JLEjBYHyjlpv2sYXcBS+wbyCybkOwlSrDwZiQZCBIa20Kn4d2w8QqQVhYzR4Hipk
	pegQI13qbZCUGvOMpnBvYiNoocn23Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7Nw-0000UG-NO; Wed, 29 May 2019 22:49:28 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7Np-0008Nn-4e
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 22:49:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id A75C71809AD8C;
 Thu, 30 May 2019 00:49:08 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 1/2] crypto: Allow working with key references
Date: Thu, 30 May 2019 00:48:43 +0200
Message-Id: <20190529224844.25203-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154921_340688_262F6857 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: david@sigma-star.at, herbert@gondor.apana.org.au, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Richard Weinberger <richard@nod.at>, festevam@gmail.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some crypto accelerators allow working with secure or hidden keys.
This keys are not exposed to Linux nor main memory. To use them
for a crypto operation they are referenced with a device specific id.

This patch adds a new flag, CRYPTO_TFM_REQ_REF_KEY.
If this flag is set, crypto drivers should tread the key as
specified via setkey as reference and not as regular key.
Since we reuse the key data structure such a reference is limited
by the key size of the chiper and is chip specific.

TODO: If the cipher implementation or the driver does not
support reference keys, we need a way to detect this an fail
upon setkey.
How should the driver indicate that it supports this feature?

Signed-off-by: Richard Weinberger <richard@nod.at>
---
 include/linux/crypto.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/crypto.h b/include/linux/crypto.h
index f2565a103158..737ea00e026b 100644
--- a/include/linux/crypto.h
+++ b/include/linux/crypto.h
@@ -121,6 +121,7 @@
 #define CRYPTO_TFM_REQ_FORBID_WEAK_KEYS	0x00000100
 #define CRYPTO_TFM_REQ_MAY_SLEEP	0x00000200
 #define CRYPTO_TFM_REQ_MAY_BACKLOG	0x00000400
+#define CRYPTO_TFM_REQ_REF_KEY		0x00000800
 #define CRYPTO_TFM_RES_WEAK_KEY		0x00100000
 #define CRYPTO_TFM_RES_BAD_KEY_LEN   	0x00200000
 #define CRYPTO_TFM_RES_BAD_KEY_SCHED 	0x00400000
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
