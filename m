Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4906075767
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 20:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6sKsQ+stYbEaPBD8kEZVSI0o7CMzSa6q6rDgqIGgNk=; b=pBX+k7mPs9jYNX
	3S5uStQg0OiLHIqqTUDNMaM0JXow0LtIaewJKA48lwJi2XHJmKxdSbpWc9FYLb/pWWjKqkwM/agaq
	xTXpTM1rT0V55MntW2eLIRwxQd/LKkFQqn3rNzelhr6q7807UD/x1hAq+a/tSYfuqhbgQGBUTre0b
	JxuVW73qIJEL3anDk8QBdVHjMtKTuFi00UM0Pk5491lv2CdeVUwE+VJwJgD9lXBNmru+wVVtCNJFk
	kAraCxrEhnkRGk3l1aE3Y89Jw8wQVZ2d04Eqt5gkkMLMlLOLRmk2VecXzn7HW4z6Hdt9/9l2Doo4y
	eCqdwT5OJWqujQ1vmqfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqivJ-0006Z0-Sw; Thu, 25 Jul 2019 18:57:06 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqium-0006LO-96
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 18:56:35 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 6C02540004;
 Thu, 25 Jul 2019 18:56:22 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v7 3/4] media: pixfmt: Document the HEVC slice pixel format
Date: Thu, 25 Jul 2019 20:56:01 +0200
Message-Id: <20190725185602.22522-4-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725185602.22522-1-paul.kocialkowski@bootlin.com>
References: <20190725185602.22522-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_115632_470619_5AF8D7D6 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
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

Document the current state of the HEVC slice pixel format.
The format will need to evolve in the future, which is why it is
not part of the public API.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../media/uapi/v4l/pixfmt-compressed.rst      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
index f52a7b67023d..ecbff783918d 100644
--- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
@@ -163,6 +163,27 @@ Compressed Formats
       - ``V4L2_PIX_FMT_HEVC``
       - 'HEVC'
       - HEVC/H.265 video elementary stream.
+    * .. _V4L2-PIX-FMT-HEVC-SLICE:
+
+      - ``V4L2_PIX_FMT_HEVC_SLICE``
+      - 'S265'
+      - HEVC parsed slice data, as extracted from the HEVC bitstream.
+	This format is adapted for stateless video decoders that implement a
+	HEVC pipeline (using the :ref:`mem2mem` and :ref:`media-request-api`).
+	Metadata associated with the frame to decode is required to be passed
+	through the following controls :
+        * ``V4L2_CID_MPEG_VIDEO_HEVC_SPS``
+        * ``V4L2_CID_MPEG_VIDEO_HEVC_PPS``
+        * ``V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS``
+	See the :ref:`associated Codec Control IDs <v4l2-mpeg-hevc>`.
+	Buffers associated with this pixel format must contain the appropriate
+	number of macroblocks to decode a full corresponding frame.
+
+	.. note::
+
+	   This format is not yet part of the public kernel API and it
+	   is expected to change.
+
     * .. _V4L2-PIX-FMT-FWHT:
 
       - ``V4L2_PIX_FMT_FWHT``
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
