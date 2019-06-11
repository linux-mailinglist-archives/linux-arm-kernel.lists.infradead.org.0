Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377F93C1BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 05:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZIDQZShWAzrNFSFAtcHLd5HfW3I75ENngGjATWOo14=; b=W/5mhugWRxnItP
	DwiREQmqMcRuPKnK7L9YFqLFNENmo8hq+xJ2gJGhrqzauJr1vECIHONbT9V/iJlot14BflwK65lDl
	zpZyMltpsIhtrHEgtjp+ZWzrRSuHrlugl+He1GjhyBsQiK4pA1Jn6le/b4BFguOo//+v9cXIn8WWk
	i33rKYdvDGE5hkHuQZpwCd84qUU+oFolD3CsFOfGkIWstI9D6rndXAT45D2q7QtVL9C+rgbfeGV8U
	9eqvmya6c1GcFmj/+o7Zk9027a3wQr0hP2rBt7uSvOUQ4rVNgijIPnJiY0EF6jJSFoBZTsK6cR64l
	LnToChiZeaz+NTmNN1Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haXsk-0000wO-HO; Tue, 11 Jun 2019 03:55:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haXrJ-0007JA-Da; Tue, 11 Jun 2019 03:54:11 +0000
X-UUID: e12680ed94fa486a85a804ee247412a3-20190610
X-UUID: e12680ed94fa486a85a804ee247412a3-20190610
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1829212336; Mon, 10 Jun 2019 19:53:56 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:53:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 11:53:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 11 Jun 2019 11:53:53 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,
 v3 4/9] media: platform: Add Mediatek ISP P1 image & meta formats
Date: Tue, 11 Jun 2019 11:53:39 +0800
Message-ID: <20190611035344.29814-5-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190611035344.29814-1-jungo.lin@mediatek.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_205405_548111_C766BC69 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: jungo.lin@mediatek.com
Cc: devicetree@vger.kernel.org, sean.cheng@mediatek.com, rynn.wu@mediatek.com,
 srv_heupstream@mediatek.com, robh@kernel.org, ryan.yu@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, ddavenport@chromium.org,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add packed/full-g bayer formats with 8/10/12/14 bit
for image output. Add Pass 1 (P1) specific meta formats for
parameter processing and 3A/other statistics.

(The current metadata interface used in meta input and partial
meta nodes is only a temporary solution to kick off the driver
development and is not ready to be reviewed yet.)

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 Documentation/media/uapi/v4l/pixfmt-mtb8.rst |  49 +++++++++
 Documentation/media/uapi/v4l/pixfmt-mtba.rst |  62 +++++++++++
 Documentation/media/uapi/v4l/pixfmt-mtbc.rst |  58 ++++++++++
 Documentation/media/uapi/v4l/pixfmt-mtbe.rst |  70 ++++++++++++
 Documentation/media/uapi/v4l/pixfmt-mtf8.rst |  75 +++++++++++++
 Documentation/media/uapi/v4l/pixfmt-mtfa.rst |  87 +++++++++++++++
 Documentation/media/uapi/v4l/pixfmt-mtfc.rst | 107 +++++++++++++++++++
 Documentation/media/uapi/v4l/pixfmt-mtfe.rst | 107 +++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ioctl.c         |  13 +++
 include/uapi/linux/videodev2.h               |  17 +++
 10 files changed, 645 insertions(+)
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtb8.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtba.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtbc.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtbe.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtf8.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtfa.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtfc.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtfe.rst

diff --git a/Documentation/media/uapi/v4l/pixfmt-mtb8.rst b/Documentation/media/uapi/v4l/pixfmt-mtb8.rst
new file mode 100644
index 000000000000..2337ccd66277
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtb8.rst
@@ -0,0 +1,49 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_B8:
+
+*******************************
+V4L2_PIX_FMT_MTISP_B8 ('MTB8')
+*******************************
+
+8-bit Packed Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format, meaning all the data for a pixel lie
+next to each other in memory, with a depth of 8 bits per pixel.
+Each sample is stored in a byte.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Byte Order.**
+Each cell is one byte.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00`
+      - G\ :sub:`01`
+      - B\ :sub:`02`
+      - G\ :sub:`03`
+    * - start + 4:
+      - G\ :sub:`10`
+      - R\ :sub:`11`
+      - G\ :sub:`12`
+      - R\ :sub:`13`
+    * - start + 8:
+      - B\ :sub:`20`
+      - G\ :sub:`21`
+      - B\ :sub:`22`
+      - G\ :sub:`23`
+    * - start + 12:
+      - G\ :sub:`30`
+      - R\ :sub:`31`
+      - G\ :sub:`32`
+      - R\ :sub:`33`
\ No newline at end of file
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtba.rst b/Documentation/media/uapi/v4l/pixfmt-mtba.rst
new file mode 100644
index 000000000000..ade51d5472b0
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtba.rst
@@ -0,0 +1,62 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_B10:
+
+*******************************
+V4L2_PIX_FMT_MTISP_B10 ('MTBA')
+*******************************
+
+10-bit Packed Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format, meaning all the data for a pixel lie
+next to each other with no padding in memory, with a depth of 10 bits per pixel.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Byte Order.**
+Each cell is one byte.
+
+pixels cross the byte boundary and have a ratio of 5 bytes for each 4 pixels.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00low bits 7--0`
+      - G\ :sub:`01low bits 5--0` (bits 7--2) B\ :sub:`00high bits 9--8`\ (bits 1--0)
+    * - start + 2:
+      - B\ :sub:`02low bits 3--0`\ (bits 7--4) G\ :sub:`01high bits 9--6`\ (bits 3--0)
+      - G\ :sub:`03low bits 1--0`\ (bits 7--6) B\ :sub:`02high bits 9--4`\ (bits 5--0)
+    * - start + 4:
+      - G\ :sub:`03high bits 9--2`
+    * - start + 6:
+      - G\ :sub:`10low bits 7--0`
+      - R\ :sub:`11low bits 5--0`\ (bits 7--2) G\ :sub:`10high bits 9--8`\ (bits 1--0)
+    * - start + 8:
+      - G\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 9--6`\ (bits 3--0)
+      - R\ :sub:`13low bits 1--0`\ (bits 7--6) G\ :sub:`12high bits 9--4`\ (bits 5--0)
+    * - start + 10:
+      - R\ :sub:`13high bits 9--2`
+    * - start + 12:
+      - B\ :sub:`20low bits 7--0`
+      - G\ :sub:`21low bits 5--0`\ (bits 7--2) B\ :sub:`20high bits 9--8`\ (bits 1--0)
+    * - start + 14:
+      - B\ :sub:`22low bits 3--0`\ (bits 7--4) G\ :sub:`21high bits 9--6`\ (bits 3--0)
+      - G\ :sub:`23low bits 1--0`\ (bits 7--6) B\ :sub:`22high bits 9--4`\ (bits 5--0)
+    * - start + 16:
+      - G\ :sub:`23high bits 9--2`
+    * - start + 18:
+      - G\ :sub:`30low bits 7--0`
+      - R\ :sub:`31low bits 5--0`\ (bits 7--2) G\ :sub:`30high bits 9--8`\ (bits 1--0)
+    * - start + 20:
+      - G\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 9--6`\ (bits 3--0)
+      - R\ :sub:`33low bits 1--0`\ (bits 7--6) G\ :sub:`32high bits 9--4`\ (bits 5--0)
+    * - start + 22:
+      - R\ :sub:`33high bits 9--2` (bits 7--0)
\ No newline at end of file
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtbc.rst b/Documentation/media/uapi/v4l/pixfmt-mtbc.rst
new file mode 100644
index 000000000000..b122600fddb5
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtbc.rst
@@ -0,0 +1,58 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_B12:
+
+*******************************
+V4L2_PIX_FMT_MTISP_B12 ('MTBC')
+*******************************
+
+12-bit Packed Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format, meaning all the data for a pixel lie
+next to each other with no padding in memory, with a depth of 12 bits per pixel.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Byte Order.**
+Each cell is one byte.
+
+pixels cross the byte boundary and have a ratio of 6 bytes for each 4 pixels.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00lowbits 7--0`
+      - G\ :sub:`01lowbits 3--0`\ (bits 7--4) B\ :sub:`00highbits 11--8`\ (bits 3--0)
+      - G\ :sub:`01highbits 7--0`
+      - B\ :sub:`02lowbits 7--0`
+      - G\ :sub:`03lowbits 3--0`\ (bits 7--4) B\ :sub:`02highbits 11--8`\ (bits 3--0)
+      - G\ :sub:`03highbits 7--0`
+    * - start + 6:
+      - G\ :sub:`10lowbits 7--0`
+      - R\ :sub:`11lowbits 3--0`\ (bits 7--4) G\ :sub:`10highbits 11--8`\ (bits 3--0)
+      - R\ :sub:`11highbits 7--0`
+      - G\ :sub:`12lowbits 7--0`
+      - R\ :sub:`13lowbits 3--0`\ (bits 7--4) G\ :sub:`12highbits 11--8`\ (bits 3--0)
+      - R\ :sub:`13highbits 7--0`
+    * - start + 12:
+      - B\ :sub:`20lowbits 7--0`
+      - G\ :sub:`21lowbits 3--0`\ (bits 7--4) B\ :sub:`20highbits 11--8`\ (bits 3--0)
+      - G\ :sub:`21highbits 7--0`
+      - B\ :sub:`22lowbits 7--0`
+      - G\ :sub:`23lowbits 3--0`\ (bits 7--4) B\ :sub:`22highbits 11--8`\ (bits 3--0)
+      - G\ :sub:`23highbits 7--0`
+    * - start + 18:
+      - G\ :sub:`30lowbits 7--0`
+      - R\ :sub:`31lowbits 3--0`\ (bits 7--4) G\ :sub:`30highbits 11--8`\ (bits 3--0)
+      - R\ :sub:`31highbits 7--0`
+      - G\ :sub:`32lowbits 7--0`
+      - R\ :sub:`33lowbits 3--0`\ (bits 7--4) G\ :sub:`32highbits 11--8`\ (bits 3--0)
+      - R\ :sub:`33highbits 7--0`
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtbe.rst b/Documentation/media/uapi/v4l/pixfmt-mtbe.rst
new file mode 100644
index 000000000000..4b9bc9a62504
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtbe.rst
@@ -0,0 +1,70 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_B14:
+
+*******************************
+V4L2_PIX_FMT_MTISP_B14 ('MTBE')
+*******************************
+
+14-bit Packed Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format, meaning all the data for a pixel lie
+next to each other with no padding in memory, with a depth of 14 bits per pixel.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Byte Order.**
+Each cell is one byte.
+
+pixels cross the byte boundary and have a ratio of 7 bytes for each 4 pixels.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00low bits 7--0`
+      - G\ :sub:`01low bits 1--0`\ (bits 7--6) B\ :sub:`00high bits 13--8`\ (bits 5--0)
+      - G\ :sub:`01low bits 9--2`\
+      - B\ :sub:`02low bits 3--0`\ (bits 7--4) G\ :sub:`01high bits 13--10`\ (bits 3--0)
+    * - start + 4:
+      - B\ :sub:`02low bits 11--4`\
+      - G\ :sub:`03low bits 5--0`\ (bits 7--2) B\ :sub:`02high bits 13--12`\ (bits 1--0)
+      - G\ :sub:`03high bits 13--6`\
+      -
+    * - start + 8:
+      - G\ :sub:`10low bits 7--0`
+      - R\ :sub:`11low bits 1--0`\ (bits 7--6) G\ :sub:`10high bits 13--8`\ (bits 5--0)
+      - R\ :sub:`11low bits 9--2`\
+      - G\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 13--10`\ (bits 3--0)
+    * - start + 12:
+      - G\ :sub:`12low bits 11--4`\
+      - R\ :sub:`13low bits 5--0`\ (bits 7--2) G\ :sub:`12high bits 13--12`\ (bits 1--0)
+      - R\ :sub:`13high bits 13--6`\
+      -
+    * - start + 16:
+      - B\ :sub:`20low bits 7--0`
+      - G\ :sub:`21low bits 1--0`\ (bits 7--6) B\ :sub:`20high bits 13--8`\ (bits 5--0)
+      - G\ :sub:`21low bits 9--2`\
+      - B\ :sub:`22low bits 3--0`\ (bits 7--4) G\ :sub:`21high bits 13--10`\ (bits 3--0)
+    * - start + 20:
+      - B\ :sub:`22low bits 11--4`\
+      - G\ :sub:`23low bits 5--0`\ (bits 7--2) B\ :sub:`22high bits 13--12`\ (bits 1--0)
+      - G\ :sub:`23high bits 13--6`\
+      -
+    * - start + 24:
+      - G\ :sub:`30low bits 7--0`
+      - R\ :sub:`31low bits 1--0`\ (bits 7--6) G\ :sub:`30high bits 13--8`\ (bits 5--0)
+      - R\ :sub:`31low bits 9--2`\
+      - G\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 13--10`\ (bits 3--0)
+    * - start + 28:
+      - G\ :sub:`32low bits 11--4`\
+      - R\ :sub:`33low bits 5--0`\ (bits 7--2) G\ :sub:`32high bits 13--12`\ (bits 1--0)
+      - R\ :sub:`33high bits 13--6`\
+      -
\ No newline at end of file
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtf8.rst b/Documentation/media/uapi/v4l/pixfmt-mtf8.rst
new file mode 100644
index 000000000000..51c9ddc4e20d
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtf8.rst
@@ -0,0 +1,75 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_F8:
+
+*******************************
+V4L2_PIX_FMT_MTISP_F8 ('MTF8')
+*******************************
+
+8-bit Packed Full-G Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format with a depth of 8 bits per pixel.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Bit-packed representation.**
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - B\ :sub:`00`
+      - FG\ :sub:`01`
+      - G\ :sub:`02`
+      - B\ :sub:`03`
+      - FG\ :sub:`04`
+      - G\ :sub:`05`
+    * - G\ :sub:`10`
+      - R\ :sub:`11`
+      - FG\ :sub:`12`
+      - G\ :sub:`13`
+      - R\ :sub:`14`
+      - FG\ :sub:`15`
+
+**Byte Order.**
+Each cell is one byte.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00`
+      - FG\ :sub:`01`
+      - G\ :sub:`02`
+      - B\ :sub:`03`
+      - FG\ :sub:`04`
+      - G\ :sub:`05`
+    * - start + 6:
+      - G\ :sub:`10`
+      - R\ :sub:`11`
+      - FG\ :sub:`12`
+      - G\ :sub:`13`
+      - R\ :sub:`14`
+      - FG\ :sub:`15`
+    * - start + 12:
+      - B\ :sub:`20`
+      - FG\ :sub:`21`
+      - G\ :sub:`22`
+      - B\ :sub:`23`
+      - FG\ :sub:`24`
+      - G\ :sub:`25`
+    * - start + 18:
+      - G\ :sub:`30`
+      - R\ :sub:`31`
+      - FG\ :sub:`32`
+      - G\ :sub:`33`
+      - R\ :sub:`34`
+      - FG\ :sub:`35`
\ No newline at end of file
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtfa.rst b/Documentation/media/uapi/v4l/pixfmt-mtfa.rst
new file mode 100644
index 000000000000..68421c44f5e7
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtfa.rst
@@ -0,0 +1,87 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_F10:
+
+*******************************
+V4L2_PIX_FMT_MTISP_F10 ('MTFA')
+*******************************
+
+10-bit Packed Full-G Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format with a depth of 10 bits per pixel.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Bit-packed representation.**
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - B\ :sub:`00`
+      - FG\ :sub:`01`
+      - G\ :sub:`02`
+      - B\ :sub:`03`
+      - FG\ :sub:`04`
+      - G\ :sub:`05`
+    * - G\ :sub:`10`
+      - R\ :sub:`11`
+      - FG\ :sub:`12`
+      - G\ :sub:`13`
+      - R\ :sub:`14`
+      - FG\ :sub:`15`
+
+**Byte Order.**
+Each cell is one byte.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00low bits 7--0`
+      - FG\ :sub:`01low bits 5--0`\ (bits 7--2) B\ :sub:`00high bits 9--8`\ (bits 1--0)
+      - G\ :sub:`02low bits 3--0`\ (bits 7--4) FG\ :sub:`01high bits 9--6`\ (bits 3--0)
+      - B\ :sub:`03low bits 1--0`\ (bits 7--6) G\ :sub:`02high bits 9--4`\ (bits 5--0)
+    * - start + 4:
+      - B\ :sub:`03high bits 9--2`
+      - FG\ :sub:`04low bits 7--0`
+      - G\ :sub:`05low bits 5--0`\ (bits 7--2) FG\ :sub:`04high bits 9--8`\ (bits 1--0)
+      - G\ :sub:`05high bits 3--0`
+    * - start + 8:
+      - G\ :sub:`10low bits 7--0`
+      - R\ :sub:`11low bits 5--0`\ (bits 7--2) G\ :sub:`10high bits 9--8`\ (bits 1--0)
+      - FG\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 9--6`\ (bits 3--0)
+      - G\ :sub:`13low bits 1--0`\ (bits 7--6) FG\ :sub:`12high bits 9--4`\ (bits 5--0)
+    * - start + 12:
+      - G\ :sub:`13high bits 9--2`
+      - R\ :sub:`14low bits 7--0`
+      - FG\ :sub:`15low bits 5--0`\ (bits 7--2) R\ :sub:`14high bits 9--8`\ (bits 1--0)
+      - FG\ :sub:`15high bits 3--0`
+    * - start + 16:
+      - B\ :sub:`20low bits 7--0`
+      - FG\ :sub:`21low bits 5--0`\ (bits 7--2) B\ :sub:`20high bits 9--8`\ (bits 1--0)
+      - G\ :sub:`22low bits 3--0`\ (bits 7--4) FG\ :sub:`21high bits 9--6`\ (bits 3--0)
+      - B\ :sub:`23low bits 1--0`\ (bits 7--6) G\ :sub:`22high bits 9--4`\ (bits 5--0)
+    * - start + 20:
+      - B\ :sub:`23high bits 9--2`
+      - FG\ :sub:`24low bits 7--0`
+      - G\ :sub:`25low bits 5--0`\ (bits 7--2) FG\ :sub:`24high bits 9--8`\ (bits 1--0)
+      - G\ :sub:`25high bits 3--0`
+    * - start + 24:
+      - G\ :sub:`30low bits 7--0`
+      - R\ :sub:`31low bits 5--0`\ (bits 7--2) G\ :sub:`30high bits 9--8`\ (bits 1--0)
+      - FG\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 9--6`\ (bits 3--0)
+      - G\ :sub:`33low bits 1--0`\ (bits 7--6) FG\ :sub:`32high bits 9--4`\ (bits 5--0)
+    * - start + 28:
+      - G\ :sub:`33high bits 9--2`
+      - R\ :sub:`34low bits 7--0`
+      - FG\ :sub:`35low bits 5--0`\ (bits 7--2) R\ :sub:`34high bits 9--8`\ (bits 1--0)
+      - FG\ :sub:`35high bits 3--0`
\ No newline at end of file
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtfc.rst b/Documentation/media/uapi/v4l/pixfmt-mtfc.rst
new file mode 100644
index 000000000000..a3535f5435fa
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtfc.rst
@@ -0,0 +1,107 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_F12:
+
+*******************************
+V4L2_PIX_FMT_MTISP_F12 ('MTFC')
+*******************************
+
+12-bit Packed Full-G Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format with a depth of 12 bits per pixel.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Bit-packed representation.**
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - B\ :sub:`00`
+      - FG\ :sub:`01`
+      - G\ :sub:`02`
+      - B\ :sub:`03`
+      - FG\ :sub:`04`
+      - G\ :sub:`05`
+    * - G\ :sub:`10`
+      - R\ :sub:`11`
+      - FG\ :sub:`12`
+      - G\ :sub:`13`
+      - R\ :sub:`14`
+      - FG\ :sub:`15`
+
+**Byte Order.**
+Each cell is one byte.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00low bits 7--0`
+      - FG\ :sub:`01low bits 3--0`\ (bits 7--4) B\ :sub:`00high bits 11--8`\ (bits 3--0)
+    * - start + 2:
+      - FG\ :sub:`01high bits 7--0`
+      - G\ :sub:`02low bits 7--0`
+    * - start + 4:
+      - B\ :sub:`03low bits 3--0`\ (bits 7--4) G\ :sub:`02high bits 11--8`\ (bits 3--0)
+      - B\ :sub:`03high bits 7--0`
+    * - start + 6:
+      - FG\ :sub:`04low bits 7--0`
+      - G\ :sub:`05low bits 3--0`\ (bits 7--4) FG\ :sub:`04high bits 11--8`\ (bits 3--0)
+    * - start + 8:
+      - G\ :sub:`05high bits 7--0`
+      -
+    * - start + 10:
+      - G\ :sub:`10low bits 7--0`
+      - R\ :sub:`11low bits 3--0`\ (bits 7--4) G\ :sub:`10high bits 11--8`\ (bits 3--0)
+    * - start + 12:
+      - R\ :sub:`11high bits 7--0`
+      - FG\ :sub:`12low bits 7--0`
+    * - start + 14:
+      - G\ :sub:`13low bits 3--0`\ (bits 7--4) FG\ :sub:`12high bits 11--8`\ (bits 3--0)
+      - G\ :sub:`13high bits 7--0`
+    * - start + 16:
+      - R\ :sub:`14low bits 7--0`
+      - FG\ :sub:`15low bits 3--0`\ (bits 7--4) R\ :sub:`14high bits 11--8`\ (bits 3--0)
+    * - start + 18:
+      - FG\ :sub:`15high bits 7--0`
+      -
+    * - start + 20:
+      - B\ :sub:`20low bits 7--0`
+      - FG\ :sub:`21low bits 3--0`\ (bits 7--4) B\ :sub:`20high bits 11--8`\ (bits 3--0)
+    * - start + 22:
+      - FG\ :sub:`21high bits 7--0`
+      - G\ :sub:`22low bits 7--0`
+    * - start + 24:
+      - B\ :sub:`23low bits 3--0`\ (bits 7--4) G\ :sub:`22high bits 11--8`\ (bits 3--0)
+      - B\ :sub:`23high bits 7--0`
+    * - start + 26:
+      - FG\ :sub:`24low bits 7--0`
+      - G\ :sub:`25low bits 3--0`\ (bits 7--4) FG\ :sub:`24high bits 11--8`\ (bits 3--0)
+    * - start + 28:
+      - G\ :sub:`25high bits 7--0`
+      -
+    * - start + 30:
+      - G\ :sub:`30low bits 7--0`
+      - R\ :sub:`31low bits 3--0`\ (bits 7--4) G\ :sub:`30high bits 11--8`\ (bits 3--0)
+    * - start + 32:
+      - R\ :sub:`31high bits 7--0`
+      - FG\ :sub:`32low bits 7--0`
+    * - start + 34:
+      - G\ :sub:`33low bits 3--0`\ (bits 7--4) FG\ :sub:`32high bits 11--8`\ (bits 3--0)
+      - G\ :sub:`33high bits 7--0`
+    * - start + 36:
+      - R\ :sub:`34low bits 7--0`
+      - FG\ :sub:`35low bits 3--0`\ (bits 7--4) R\ :sub:`34high bits 11--8`\ (bits 3--0)
+    * - start + 38:
+      - FG\ :sub:`35high bits 7--0`
+      -
\ No newline at end of file
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtfe.rst b/Documentation/media/uapi/v4l/pixfmt-mtfe.rst
new file mode 100644
index 000000000000..324a258e897f
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtfe.rst
@@ -0,0 +1,107 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _V4L2-PIX-FMT-MTISP_F14:
+
+*******************************
+V4L2_PIX_FMT_MTISP_F14 ('MTFE')
+*******************************
+
+14-bit Packed Full-G Bayer formats.
+
+
+Description
+===========
+
+The four pixel formats are used by Mediatek ISP.
+This is a packed format with a depth of 14 bits per pixel.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+Below is an example of conventional RGB byte order BGGR.
+
+**Bit-packed representation.**
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - B\ :sub:`00`
+      - FG\ :sub:`01`
+      - G\ :sub:`02`
+      - B\ :sub:`03`
+      - FG\ :sub:`04`
+      - G\ :sub:`05`
+    * - G\ :sub:`10`
+      - R\ :sub:`11`
+      - FG\ :sub:`12`
+      - G\ :sub:`13`
+      - R\ :sub:`14`
+      - FG\ :sub:`15`
+
+**Byte Order.**
+Each cell is one byte.
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+
+    * - start + 0:
+      - B\ :sub:`00low bits 7--0`
+      - FG\ :sub:`01low bits 1--0`\ (bits 7--6) B\ :sub:`00high bits 13--8`\ (bits 5--0)
+      - FG\ :sub:`01low bits 9--2`
+      - G\ :sub:`02low bits 3--0`\ (bits 7--4) FG\ :sub:`01high bits 13--10`\ (bits 3--0)
+    * - start + 4:
+      - G\ :sub:`02low bits 11--4`
+      - B\ :sub:`03low bits 5--0`\ (bits 7--2) G\ :sub:`02high bits 13--12`\ (bits 1--0)
+      - B\ :sub:`03high bits 13--6`
+      - FG\ :sub:`04low bits 7--0`
+    * - start + 8:
+      - G\ :sub:`05low bits 1--0`\ (bits 7--6) FG\ :sub:`04high bits 13--8`\ (bits 5--0)
+      - G\ :sub:`05high bits 9--2`
+      - G\ :sub:`05high bits 13--10`
+      -
+    * - start + 12:
+      - G\ :sub:`10low bits 7--0`
+      - R\ :sub:`11low bits 1--0`\ (bits 7--6) G\ :sub:`10high bits 13--8`\ (bits 5--0)
+      - R\ :sub:`11low bits 9--2`
+      - FG\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 13--10`\ (bits 3--0)
+    * - start + 16:
+      - FG\ :sub:`12low bits 11--4`
+      - G\ :sub:`13low bits 5--0`\ (bits 7--2) FG\ :sub:`12high bits 13--12`\ (bits 1--0)
+      - G\ :sub:`13high bits 13--6`
+      - R\ :sub:`14low bits 7--0`
+    * - start + 20:
+      - FG\ :sub:`15low bits 1--0`\ (bits 7--6) R\ :sub:`14high bits 13--8`\ (bits 5--0)
+      - FG\ :sub:`15high bits 9--2`
+      - FG\ :sub:`15high bits 13--10`
+      -
+    * - start + 24:
+      - B\ :sub:`20low bits 7--0`
+      - FG\ :sub:`21low bits 1--0`\ (bits 7--6) B\ :sub:`20high bits 13--8`\ (bits 5--0)
+      - FG\ :sub:`21low bits 9--2`
+      - G\ :sub:`22low bits 3--0`\ (bits 7--4) FG\ :sub:`21high bits 13--10`\ (bits 3--0)
+    * - start + 28:
+      - G\ :sub:`22low bits 11--4`
+      - B\ :sub:`23low bits 5--0`\ (bits 7--2) G\ :sub:`22high bits 13--12`\ (bits 1--0)
+      - B\ :sub:`23high bits 13--6`
+      - FG\ :sub:`24low bits 7--0`
+    * - start + 32:
+      - G\ :sub:`25low bits 1--0`\ (bits 7--6) FG\ :sub:`24high bits 13--8`\ (bits 5--0)
+      - G\ :sub:`25high bits 9--2`
+      - G\ :sub:`25high bits 13--10`
+      -
+    * - start + 36:
+      - G\ :sub:`30low bits 7--0`
+      - R\ :sub:`31low bits 1--0`\ (bits 7--6) G\ :sub:`30high bits 13--8`\ (bits 5--0)
+      - R\ :sub:`31low bits 9--2`
+      - FG\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 13--10`\ (bits 3--0)
+    * - start + 40:
+      - FG\ :sub:`32low bits 11--4`
+      - G\ :sub:`33low bits 5--0`\ (bits 7--2) FG\ :sub:`32high bits 13--12`\ (bits 1--0)
+      - G\ :sub:`33high bits 13--6`
+      - R\ :sub:`34low bits 7--0`
+    * - start + 44:
+      - FG\ :sub:`35low bits 1--0`\ (bits 7--6) R\ :sub:`34high bits 13--8`\ (bits 5--0)
+      - FG\ :sub:`35high bits 9--2`
+      - FG\ :sub:`35high bits 13--10`
+      -
\ No newline at end of file
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index ac87c3e37280..2f536fedd9c4 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1297,6 +1297,14 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_PIX_FMT_KONICA420:	descr = "GSPCA KONICA420"; break;
 	case V4L2_PIX_FMT_HSV24:	descr = "24-bit HSV 8-8-8"; break;
 	case V4L2_PIX_FMT_HSV32:	descr = "32-bit XHSV 8-8-8-8"; break;
+	case V4L2_PIX_FMT_MTISP_B8:	descr = "8-bit Packed Bayer format"; break;
+	case V4L2_PIX_FMT_MTISP_F8:	descr = "8-bit Packed Full-G Bayer format"; break;
+	case V4L2_PIX_FMT_MTISP_B10:	descr = "10-bit Packed Bayer format"; break;
+	case V4L2_PIX_FMT_MTISP_F10:	descr = "10-bit Packed Full-G Bayer format"; break;
+	case V4L2_PIX_FMT_MTISP_B12:	descr = "12-bit Packed Bayer format"; break;
+	case V4L2_PIX_FMT_MTISP_F12:	descr = "12-bit Packed Full-G Bayer format"; break;
+	case V4L2_PIX_FMT_MTISP_B14:	descr = "14-bit Packed Bayer format"; break;
+	case V4L2_PIX_FMT_MTISP_F14:	descr = "14-bit Packed Full-G Bayer format"; break;
 	case V4L2_SDR_FMT_CU8:		descr = "Complex U8"; break;
 	case V4L2_SDR_FMT_CU16LE:	descr = "Complex U16LE"; break;
 	case V4L2_SDR_FMT_CS8:		descr = "Complex S8"; break;
@@ -1312,6 +1320,11 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_META_FMT_VSP1_HGO:	descr = "R-Car VSP1 1-D Histogram"; break;
 	case V4L2_META_FMT_VSP1_HGT:	descr = "R-Car VSP1 2-D Histogram"; break;
 	case V4L2_META_FMT_UVC:		descr = "UVC payload header metadata"; break;
+	case V4L2_META_FMT_MTISP_3A:	descr = "AE/AWB Histogram"; break;
+	case V4L2_META_FMT_MTISP_AF:	descr = "AF Histogram"; break;
+	case V4L2_META_FMT_MTISP_LCS:	descr = "Local contrast enhanced statistics"; break;
+	case V4L2_META_FMT_MTISP_LMV:	descr = "Local motion vector Histogram"; break;
+	case V4L2_META_FMT_MTISP_PARAMS: descr = "MTK ISP tuning metadata"; break;
 
 	default:
 		/* Compressed formats */
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 1050a75fb7ef..ef51911fcfe4 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -728,6 +728,16 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_IPU3_SGRBG10	v4l2_fourcc('i', 'p', '3', 'G') /* IPU3 packed 10-bit GRBG bayer */
 #define V4L2_PIX_FMT_IPU3_SRGGB10	v4l2_fourcc('i', 'p', '3', 'r') /* IPU3 packed 10-bit RGGB bayer */
 
+/* Vendor specific - Mediatek ISP bayer formats */
+#define V4L2_PIX_FMT_MTISP_B8	v4l2_fourcc('M', 'T', 'B', '8') /* Packed bayer format,  8-bit */
+#define V4L2_PIX_FMT_MTISP_B10	v4l2_fourcc('M', 'T', 'B', 'A') /* Packed bayer format, 10-bit */
+#define V4L2_PIX_FMT_MTISP_B12	v4l2_fourcc('M', 'T', 'B', 'C') /* Packed bayer format, 12-bit */
+#define V4L2_PIX_FMT_MTISP_B14	v4l2_fourcc('M', 'T', 'B', 'E') /* Packed bayer format, 14-bit */
+#define V4L2_PIX_FMT_MTISP_F8	v4l2_fourcc('M', 'T', 'F', '8') /* Full-G bayer format,  8-bit */
+#define V4L2_PIX_FMT_MTISP_F10	v4l2_fourcc('M', 'T', 'F', 'A') /* Full-G bayer format, 10-bit */
+#define V4L2_PIX_FMT_MTISP_F12	v4l2_fourcc('M', 'T', 'F', 'C') /* Full-G bayer format, 12-bit */
+#define V4L2_PIX_FMT_MTISP_F14	v4l2_fourcc('M', 'T', 'F', 'E') /* Full-G bayer format, 14-bit */
+
 /* SDR formats - used only for Software Defined Radio devices */
 #define V4L2_SDR_FMT_CU8          v4l2_fourcc('C', 'U', '0', '8') /* IQ u8 */
 #define V4L2_SDR_FMT_CU16LE       v4l2_fourcc('C', 'U', '1', '6') /* IQ u16le */
@@ -750,6 +760,13 @@ struct v4l2_pix_format {
 #define V4L2_META_FMT_UVC         v4l2_fourcc('U', 'V', 'C', 'H') /* UVC Payload Header metadata */
 #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
 
+/* Vendor specific - Mediatek ISP parameters for firmware */
+#define V4L2_META_FMT_MTISP_PARAMS	v4l2_fourcc('M', 'T', 'f', 'p') /* ISP tuning parameters */
+#define V4L2_META_FMT_MTISP_3A		v4l2_fourcc('M', 'T', 'f', 'a') /* AE/AWB histogram */
+#define V4L2_META_FMT_MTISP_AF		v4l2_fourcc('M', 'T', 'f', 'f') /* AF histogram */
+#define V4L2_META_FMT_MTISP_LCS	v4l2_fourcc('M', 'T', 'f', 'c') /* Local contrast enhanced statistics */
+#define V4L2_META_FMT_MTISP_LMV	v4l2_fourcc('M', 'T', 'f', 'm') /* Local motion vector histogram */
+
 /* priv field value to indicates that subsequent fields are valid. */
 #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
