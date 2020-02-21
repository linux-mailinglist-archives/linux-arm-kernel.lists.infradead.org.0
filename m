Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973AA168A47
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 00:12:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BCWROugdUCNo459m8lyi2grB5ShYeuzmBo8BcfPzpLY=; b=MNjvcfSCZ01Mvo
	X1YA5TPxi5UlYXFHkk16JWES57NJFdM9a3a0WdBhEA/3eJtrn1pa7czQlIrMYzqg16h/iR3BDoaUJ
	AHUwYeqMPZ5SfCvTalqublqOTxRIiY+7ktCbMjih3YAHOf8MEk5PVBUTHqQFjm4FsuIPV4TwdXW1e
	+gaGMwl1p4XImkdWfB6YXCOny5M/3MzU39N48sBPng6yKkZ8GeYhpV9+jzgCLu9NeU06HByM4kBAE
	cWmI9y5cSbDKEDVf4xTT02sRcfDshUaOykvakvUw7liQkaey8o00v+gv8ABVMHeLCxpxJ0tdet5rF
	DDOh4rvZdoGA0o/dxrrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5HSi-0007He-6L; Fri, 21 Feb 2020 23:12:00 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5HSZ-0007H6-1S
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 23:11:52 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1j5HSR-0004zi-UK; Fri, 21 Feb 2020 23:11:44 +0000
From: Colin King <colin.king@canonical.com>
To: Roy Pledge <Roy.Pledge@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Youri Querry <youri.querry_1@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH][next] soc: fsl: dpio: fix dereference of pointer p before
 null check
Date: Fri, 21 Feb 2020 23:11:43 +0000
Message-Id: <20200221231143.30131-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_151151_217453_E16A8CDA 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
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

Pointer p is currently being dereferenced before it is null
checked on a memory allocation failure check. Fix this by
checking if p is null before dereferencing it.

Addresses-Coverity: ("Dereference before null check")
Fixes: 3b2abda7d28c ("soc: fsl: dpio: Replace QMAN array mode with ring mode enqueue")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/soc/fsl/dpio/qbman-portal.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
index 740ee0d19582..d1f49caa5b13 100644
--- a/drivers/soc/fsl/dpio/qbman-portal.c
+++ b/drivers/soc/fsl/dpio/qbman-portal.c
@@ -249,10 +249,11 @@ struct qbman_swp *qbman_swp_init(const struct qbman_swp_desc *d)
 	u32 mask_size;
 	u32 eqcr_pi;
 
-	spin_lock_init(&p->access_spinlock);
-
 	if (!p)
 		return NULL;
+
+	spin_lock_init(&p->access_spinlock);
+
 	p->desc = d;
 	p->mc.valid_bit = QB_VALID_BIT;
 	p->sdq = 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
