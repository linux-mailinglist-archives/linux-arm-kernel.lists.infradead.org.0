Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD29294E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWfhSd5whqMlj923n0stvvl2Xa2AcUtoG7JCo81Glbk=; b=Vu+lxw/BUdDSnD
	3BkgGL4Z7keA+K/pCWpK3eS0RAYagk2oEstzvuvzGuy3OJBcTF5d1ew7JU5NS66OWMBjUKLJs3nYP
	EN4sKZx0WSXpfsuPU87ht4S/iBpB7pVQiGeEYKyTi2ibulQnSzY7LwaKBt0Ivf+H+v+d5euExjYnN
	2g+qH6ZuFKh+vS7Psx9oDrAAmA3mC5ybUuo+lgJaZitXTBLT8utUJVdDprWlBxTYUB8lB6s3Ms8yr
	OQrg8E/qC6gzLixNs2lC1LSE/KjnJ0UsheYYWnHWj8zmgEzczV0WcYq8ZAKcZo8u73ChZ4jvjYoH8
	F64s0IqRZ5iKWIpH+7Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6dP-0003j4-IU; Fri, 24 May 2019 09:37:07 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6dF-0003gT-Qg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:36:59 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost.localdomain
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E2382FF80B;
 Fri, 24 May 2019 09:36:50 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 2/4] media: pixfmt: Add HEVC slice pixel format
Date: Fri, 24 May 2019 11:36:33 +0200
Message-Id: <20190524093635.1832-3-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
References: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_023658_030142_A4098DAA 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce the V4L2_PIX_FMT_HEVC_SLICE pixel format, which currently
describes an output buffer with enough appended slice data for
producing one decoded frame with a stateless video decoder.

This will need to be reworked (along with the controls and the core) to
allow passing slice data individually, as it is the natural decoding
unit in HEVC.

We also need to figure out the description of the possible source data:
* Compressed slice data only, with slice controls attached;
* Slice data in Annex-B format (with raw slice header), without slice
  controls attached;
* Slice data in Annex-B format (with raw slice header), with slice
  controls attached.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 include/media/hevc-ctrls.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 9ea013c88afc..2de83d9f6d47 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -11,6 +11,9 @@
 #ifndef _HEVC_CTRLS_H_
 #define _HEVC_CTRLS_H_
 
+/* The pixel format isn't stable at the moment and will likely be renamed. */
+#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC parsed slices */
+
 #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_MPEG_BASE + 1008)
 #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_MPEG_BASE + 1009)
 #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_MPEG_BASE + 1010)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
