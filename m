Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFDA30401
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 23:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYTSmaNKrg4OcpFZ9LXOmS6hZrv5EAiz7tSyWcjKPf8=; b=FKkl/yZCmCWiYW
	fR44JyIoKA///5e/htt1zW6wkEsGe25ELgBH+X0Qbh+GrcXjvVZn/CRzbkOZMlzdftaPpBI6JYe7Q
	iJ8SlvkC6b9DF+7zFc2n9mkZc/vAQkhEpqst1JJ5gB2UyyvRMpAb6GSUNFoskZRlp8oipiErS3ihR
	HOMjncCZ5SiY5xlRfVGDsr/S36wNtyQ2z/OgfUk/h+epIyH0bIxZXb2RD+2VgmqpOD26HA4nK1jqB
	e1Jgfsxv3YYQTgVsRQVzzIeh33mJr/3V5lpeNP0SlgqQsMhNL/fsCKmhOd7p2zI1BZPnlLcBBKPMH
	4bggs8fJz7xLfk6Hl0Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSPM-0000iH-72; Thu, 30 May 2019 21:16:20 +0000
Received: from mailoutvs23.siol.net ([185.57.226.214] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSOh-0008Uv-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 21:15:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DEC8E52287A;
 Thu, 30 May 2019 23:15:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id SKLhHVptzaCe; Thu, 30 May 2019 23:15:35 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8A25A522869;
 Thu, 30 May 2019 23:15:35 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id E82C452287A;
 Thu, 30 May 2019 23:15:32 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 2/7] media: cedrus: Fix H264 default reference index count
Date: Thu, 30 May 2019 23:15:11 +0200
Message-Id: <20190530211516.1891-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_141539_994388_0BB524B4 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.214 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca, wens@csie.org,
 boris.brezillon@collabora.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reference index count in VE_H264_PPS reg should come from PPS control.
However, this is not really important because reference index count is
in our case always overridden by that from slice header.

Cc: nicolas@ndufresne.ca
Cc: boris.brezillon@collabora.com
Cc: jonas@kwiboo.se

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
We have to decide if we drop pps->num_ref_idx_l0_default_active_minus1
and pps->num_ref_idx_l1_default_active_minus1 fields or add
num_ref_idx_l0_active_override_flag and num_ref_idx_l0_active_override_flag
to slice control.

Current control doesn't have those two flags, so in Cedrus override flag is
always set and we rely on userspace to set slice->num_ref_idx_l0_active_minus1
and slice->num_ref_idx_l1_active_minus1 to correct values. This means that
values stored in PPS are not needed and always ignored by VPU.

If I understand correctly, algorithm is very simple:

ref_count = PPS->ref_count
if (override_flag)
	ref_count = slice->ref_count

It seems that VAAPI provides only final value. In my opinion we should do the
same - get rid of PPS default ref index count fields.

 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index a30bb283f69f..cc8d17f211a1 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -340,12 +340,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 
 	// picture parameters
 	reg = 0;
-	/*
-	 * FIXME: the kernel headers are allowing the default value to
-	 * be passed, but the libva doesn't give us that.
-	 */
-	reg |= (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
-	reg |= (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
+	reg |= (pps->num_ref_idx_l0_default_active_minus1 & 0x1f) << 10;
+	reg |= (pps->num_ref_idx_l1_default_active_minus1 & 0x1f) << 5;
 	reg |= (pps->weighted_bipred_idc & 0x3) << 2;
 	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
 		reg |= VE_H264_PPS_ENTROPY_CODING_MODE;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
