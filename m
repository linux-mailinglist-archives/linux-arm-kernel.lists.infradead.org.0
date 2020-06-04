Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5788E1EEAB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 20:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bn9+E6IKtOyUmZohiqWhbLVkTRBu0lsuigd8vP5RmYc=; b=VuuCwZiueAH1vX
	WFJeKrLPwPzg5SZvlbwSE34d/Ycdq9XJduqmlHU/A8TXtohej22wKhd7K+1VhIBpyMXfhOh1jYPtG
	dIOsAG5Arnoyevi/ZF870+v5XZNQH3WBP/PYqaCi+iKC6u9gQ0Gg4vHSGODKp/v+x0fHwsJTGdo4e
	zPbdaaQbvZX2Lvb881ieA0ND00jt5hcoqT8fOAfFWYFzbBXYZz396d/A8LStS+JWd1vrPM38ihufe
	1+pEPRpxyCfkp3ObCR9B0nj5vIlhCQSg9okQZs8sslFUg9aWCY39g2yADbrLZVFbKliq/r7tqcHqK
	HgCtdLSDbI8gBH6db63w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgv1z-0007nV-QI; Thu, 04 Jun 2020 18:55:59 +0000
Received: from mailoutvs28.siol.net ([185.57.226.219] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgv1P-0007NZ-Fj
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 18:55:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 35193521138;
 Thu,  4 Jun 2020 20:55:18 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id XznPkMjjbkV1; Thu,  4 Jun 2020 20:55:17 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id D034552118B;
 Thu,  4 Jun 2020 20:55:17 +0200 (CEST)
Received: from kista.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 82AC452123C;
 Thu,  4 Jun 2020 20:55:15 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	mripard@kernel.org
Subject: [PATCH 2/3] media: cedrus: h264: Properly configure reference field
Date: Thu,  4 Jun 2020 20:57:44 +0200
Message-Id: <20200604185745.23568-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200604185745.23568-1-jernej.skrabec@siol.net>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_115523_677901_84A32F9D 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.219 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When interlaced H264 content is being decoded, references must indicate
which field is being referenced. Currently this was done by checking
capture buffer flags. However, that is not correct because capture
buffer may hold both fields.

Fix this by checking newly introduced flags in reference lists.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index cce527bbdf86..c87717d17ec5 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -183,7 +183,6 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 	for (i = 0; i < num_ref; i++) {
 		const struct v4l2_h264_dpb_entry *dpb;
 		const struct cedrus_buffer *cedrus_buf;
-		const struct vb2_v4l2_buffer *ref_buf;
 		unsigned int position;
 		int buf_idx;
 		u8 dpb_idx;
@@ -198,12 +197,11 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 		if (buf_idx < 0)
 			continue;
 
-		ref_buf = to_vb2_v4l2_buffer(cap_q->bufs[buf_idx]);
-		cedrus_buf = vb2_v4l2_to_cedrus_buffer(ref_buf);
+		cedrus_buf = vb2_to_cedrus_buffer(cap_q->bufs[buf_idx]);
 		position = cedrus_buf->codec.h264.position;
 
 		sram_array[i] |= position << 1;
-		if (ref_buf->field == V4L2_FIELD_BOTTOM)
+		if (ref_list[i].flags & V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD)
 			sram_array[i] |= BIT(0);
 	}
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
