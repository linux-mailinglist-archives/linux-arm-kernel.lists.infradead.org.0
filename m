Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C1DE99FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sZKhJDs6GOnzkfD+odHT9Q3/XMGLA4anctWmQT6eCqg=; b=KT2PkwSvNV4A1Z
	K+OTPhiaO0GR1a2QBS4gJJwWcFmx1IXNQto3ipPoYAOtDHHkE7CVAc2YZCduHrgFrwTObU6CbJ8V8
	psumFA1V5NN29tPCCusk+EShg14fBi0Z2ZQbsqFtB0xXU8+2Ml6MjC3KQpUd4xG+glhLAq24ouS4G
	+ZfknJZMsx/UYSfuoceOa1cV/jP9+7JQL06cgjqFh/5vfEQpSBHcq3Lcw0t94Sb8h+RvQ4uMwopnZ
	mUgqYzqGMeJ67G2iWnEUaq8VB9ZAp9Y7jDmGdEsS/grYxmLDO9dPRtzHpIz5EaLImNHai6sJGayd6
	UXfIWaEKOUEGE65UYrgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlDK-0000hn-Se; Wed, 30 Oct 2019 10:28:30 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlD8-0000dv-99
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:28:21 +0000
IronPort-SDR: ve5p2pZNlvpDL2krbZnIKB2D9SwTBZKOjF0PY2JWzUWzbkxJYfhyJuAEAhD8N7aY7IwgMrL1Zu
 MbyHMzRC6yElgKfYimu97StkUmT8BAAKziXK1M/R4Zb+ubqt67DIJOCFoNXil2wj7odpBQD3pY
 kPOugSZr7DeRoTvMIM22FuSeKfBf8L/HSQWVYNK5EUjWDQqjdSOka08z4IufXIr873n2TPRgHC
 HJzxrs0l+l5F4Wmy6Z+9x/l15Vee7sRD11o0OMJo9sGKsCZ2f1M+ypV1Ww7zuwOZWVOkBkRdI7
 bDE=
X-IronPort-AV: E=Sophos;i="5.68,247,1569276000"; 
   d="scan'208";a="1996420"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: axboe@kernel.dk
Subject: [PATCH] buffer: Work around I/O errors due to ARM CPU bug
Date: Wed, 30 Oct 2019 11:28:10 +0100
Message-Id: <20191030102810.20744-1-vincent.whitchurch@axis.com>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_032818_656089_7947FA1E 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vincent Whitchurch <rabinv@axis.com>, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On my dual-core ARM Cortex-A9, reading from squashfs (over
dm-verity/ubi/mtd) in a loop for hundreds of hours inevitably results in
a read failure in squashfs_read_data().  The errors occur because the
buffer_uptodate() check fails after wait_on_buffer().  Further debugging
shows that the bh was in fact uptodate and that there is no actual I/O
error in the lower layers.

The problem appears to be caused by the read-after-read hazards in the
ARM Cortex-A9 MPCore (erratum #761319, see [1]).  The new value of the
BH_Lock flag is seen but the new value of BH_Uptodate is not even though
both the bits are read from the same memory location.  Work around it by
adding a DMB between the two reads of bh->flags.

 27c:	9d08      	ldr	r5, [sp, #32]
 27e:	2400      	movs	r4, #0
 280:	e006      	b.n	290 <squashfs_read_data+0x290>
 282:	6803      	ldr	r3, [r0, #0]
 284:	07da      	lsls	r2, r3, #31
 286:	f140 810d 	bpl.w	4a4 <squashfs_read_data+0x4a4>
 28a:	3401      	adds	r4, #1
 28c:	42bc      	cmp	r4, r7
 28e:	da08      	bge.n	2a2 <squashfs_read_data+0x2a2>
 290:	f855 0f04 	ldr.w	r0, [r5, #4]!
 294:	6803      	ldr	r3, [r0, #0]
 296:	0759      	lsls	r1, r3, #29
 298:	d5f3      	bpl.n	282 <squashfs_read_data+0x282>
 29a:	f7ff fffe 	bl	0 <__wait_on_buffer>

With this barrier, no failures have been seen in 2500+ hours of the same
test.

[1] http://infocenter.arm.com/help/topic/com.arm.doc.uan0004a/UAN0004A_a9_read_read.pdf

Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
---
 include/linux/buffer_head.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
index 7b73ef7f902d..4ef909a91f8c 100644
--- a/include/linux/buffer_head.h
+++ b/include/linux/buffer_head.h
@@ -352,6 +352,14 @@ static inline void wait_on_buffer(struct buffer_head *bh)
 	might_sleep();
 	if (buffer_locked(bh))
 		__wait_on_buffer(bh);
+
+#ifdef CONFIG_ARM
+	/*
+	 * Work around ARM Cortex-A9 MPcore Read-after-Read Hazards (erratum
+	 * 761319).
+	 */
+	smp_rmb();
+#endif
 }
 
 static inline int trylock_buffer(struct buffer_head *bh)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
