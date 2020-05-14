Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B621D3558
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cHj+SLvrWVxT8S1cSzqb1GUaX/XqRiU9jrsFVQAAGGo=; b=e7pQ5bFU622mbO
	bqTucxq1c1LbwvA1smffUzRC+empm2j4j9mnO8Jc3/jf3+mWuvgO3FITRZN8TEKcIOiHgwSv8igEd
	CeWbdTJ3INjMXKc3OKtJ2r9olYxF8+y6eUqeMuXUQNeuIEQK2BcE97eDg8WPYjP76M+1ZspDO5efx
	m8ENghuiPE/uTILEdBoAnUra6ZgBobzY4DyVs/GNVLCclsDB7CgZsVFkC7PjyRmgqwec6B1P/YPDb
	uhcrPVVzhPFN/UB9ObeaTg99j5hOr/ycTyJYVV8NfsmcdfmDc+CeeP98uoVVu+FZpKheg6EWFnIN9
	BXUwOoGehC+p+DNtPH+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFxV-00026p-D1; Thu, 14 May 2020 15:39:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFxD-0001gw-Gd
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:39:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id F13C12A0609
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: 
Subject: [PATCH] media: cedrus: Propagate OUTPUT resolution to CAPTURE
Date: Thu, 14 May 2020 11:39:03 -0400
Message-Id: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_083923_715715_A974470C 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, stable@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per spec, the CAPTURE resolution should be automatically set based on
the OTUPUT resolution. This patch properly propagate width/height to the
capture when the OUTPUT format is set and override the user provided
width/height with configured OUTPUT resolution when the CAPTURE fmt is
updated.

This also prevents userspace from selecting a CAPTURE resolution that is
too small, avoiding unwanted page faults.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 16d82309e7b6..a6d6b15adc2e 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -247,6 +247,8 @@ static int cedrus_try_fmt_vid_cap(struct file *file, void *priv,
 		return -EINVAL;
 
 	pix_fmt->pixelformat = fmt->pixelformat;
+	pix_fmt->width = ctx->src_fmt.width;
+	pix_fmt->height = ctx->src_fmt.height;
 	cedrus_prepare_format(pix_fmt);
 
 	return 0;
@@ -319,11 +321,14 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 		break;
 	}
 
-	/* Propagate colorspace information to capture. */
+	/* Propagate format information to capture. */
 	ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
 	ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
 	ctx->dst_fmt.ycbcr_enc = f->fmt.pix.ycbcr_enc;
 	ctx->dst_fmt.quantization = f->fmt.pix.quantization;
+	ctx->dst_fmt.width = ctx->src_fmt.width;
+	ctx->dst_fmt.height = ctx->src_fmt.height;
+	cedrus_prepare_format(&ctx->dst_fmt);
 
 	return 0;
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
