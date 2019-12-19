Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90723125B2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 07:01:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QVoTMcTRmiOtjoUlvSwzPSNNSMcYPI4b8sHnAkqNH8=; b=YHWFfXWq1peUX4
	UcDv2g5FGtD9M0kx3g2tiCevSMFeIcbKUDTL9ZmKrtNJhU/Uf0NH0Z/sPJJsXGzaRpuIgnZdSjVuD
	9RIS44JMI2Rgo/XqwL4/fMe+9UmuPHqsqkrHJW/xRFpUhrT5tdit3pLNO3r+o1+Euin7lc5K1JuK4
	+/y8/ryHpA1vc1GgJEO8pK/jFrEXW3r30toW+I+qzt9RqYPbaH6qa3PlfZW9IHLQjxX3lCqfim5Zc
	gd81q/PAZij/ncyCeNwF1lQfrCeaOWrRCvL0FPZZjRwME3zB1lZOg8tqiMvTiH+ESzoOidLTbjDA+
	Bn76BB/wXM/W0hFoOxQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihos1-0003M7-FB; Thu, 19 Dec 2019 06:01:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihor8-0002pR-P0; Thu, 19 Dec 2019 06:00:19 +0000
X-UUID: eab28f1e09e54a0880ecdcd6d96dc052-20191218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=qSnZZzV2cOI8u2Mnv4hu+OqIaN7CLtLte/wqSPyNyag=; 
 b=hxMSJzWltwJ0FkyjAnjMvfqUNoBMmgBDE1lqZJY0VfWPAiyADGtbpX4iH8kv1JvCZMcfrS9ja9qCLjYwjhC9EX1PBDXa/0b7Vb1IoqZL5HbaD9dfKlmPF9woHzGXcD9aTLkZQh2ulVoVpL9K1ffnBJ5pJvE6xVt3/Guuw6CNiy8=;
X-UUID: eab28f1e09e54a0880ecdcd6d96dc052-20191218
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 86545162; Wed, 18 Dec 2019 22:00:12 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 21:50:28 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 13:50:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 19 Dec 2019 13:50:15 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil-cisco@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [v6, 4/5] media: platform: Add Mediatek ISP P1 image & meta formats
Date: Thu, 19 Dec 2019 13:49:29 +0800
Message-ID: <20191219054930.29513-5-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191219054930.29513-1-jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20191219054930.29513-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 353B4CEDE7D430F04B9EB8853C9A19E031AE9C932D3A74BE122BE6D0C801C68A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_220014_864465_87B13512 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 ddavenport@chromium.org, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add packed/full-g bayer formats with 8/10/12/14 bit
for image output. Add Pass 1 (P1) specific meta formats for
parameter processing and 3A/other statistics.

(The current metadata format used in meta input and partial
meta nodes is only a temporary solution to kick off the driver
development and is not ready to be reviewed yet.)

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
Changes from v6:
 - Remove RGB format definitions in pixfmt-rgb.rst for kernel
   v5.5-rc1 version.
---
 .../media/uapi/v4l/pixfmt-mtisp-sbggr10.rst   |  65 +++++++++++
 .../media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst  |  90 ++++++++++++++
 .../media/uapi/v4l/pixfmt-mtisp-sbggr12.rst   |  61 ++++++++++
 .../media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst  | 110 ++++++++++++++++++
 .../media/uapi/v4l/pixfmt-mtisp-sbggr14.rst   |  73 ++++++++++++
 .../media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst  | 110 ++++++++++++++++++
 .../media/uapi/v4l/pixfmt-mtisp-sbggr8.rst    |  51 ++++++++
 .../media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst   |  78 +++++++++++++
 8 files changed, 638 insertions(+)
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst

diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst
new file mode 100644
index 000000000000..534edb4f0fd4
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst
@@ -0,0 +1,65 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr10:
+.. _v4l2-pix-fmt-mtisp-sgbrg10:
+.. _v4l2-pix-fmt-mtisp-sgrbg10:
+.. _v4l2-pix-fmt-mtisp-srggb10:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR10 ('MBBA'), V4L2_PIX_FMT_MTISP_SGBRG10('MBGA'), V4L2_PIX_FMT_MTISP_SGRBG10('MBgA'), V4L2_PIX_FMT_MTISP_SRGGB10('MBRA')
+*******************************
+
+10-bit Packed Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format, meaning all the data bits for a pixel lying
+next to each other with no padding in memory, with a depth of 10 bits per pixel.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
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
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst
new file mode 100644
index 000000000000..7be527711602
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst
@@ -0,0 +1,90 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr10f:
+.. _v4l2-pix-fmt-mtisp-sgbrg10f:
+.. _v4l2-pix-fmt-mtisp-sgrbg10f:
+.. _v4l2-pix-fmt-mtisp-srggb10f:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR10F ('MFBA'), V4L2_PIX_FMT_MTISP_SGBRG10F('MFGA'), V4L2_PIX_FMT_MTISP_SGRBG10F('MFgA'), V4L2_PIX_FMT_MTISP_SRGGB10F('MFRA')
+*******************************
+
+10-bit Packed Full-G Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format with a depth of 10 bits per sample with every 4 pixels.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
+described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
+RGB byte order BGGR.
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
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst
new file mode 100644
index 000000000000..cc888aac42c2
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst
@@ -0,0 +1,61 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr12:
+.. _v4l2-pix-fmt-mtisp-sgbrg12:
+.. _v4l2-pix-fmt-mtisp-sgrbg12:
+.. _v4l2-pix-fmt-mtisp-srggb12:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR12 ('MBBC'), V4L2_PIX_FMT_MTISP_SGBRG12('MBGC'), V4L2_PIX_FMT_MTISP_SGRBG12('MBgC'), V4L2_PIX_FMT_MTISP_SRGGB12('MBRC')
+*******************************
+
+12-bit Packed Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format, meaning all the data bits for a pixel lying
+next to each other with no padding in memory, with a depth of 12 bits per pixel.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
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
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst
new file mode 100644
index 000000000000..c063de9f9ad8
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst
@@ -0,0 +1,110 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr12f:
+.. _v4l2-pix-fmt-mtisp-sgbrg12f:
+.. _v4l2-pix-fmt-mtisp-sgrbg12f:
+.. _v4l2-pix-fmt-mtisp-srggb12f:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR12F ('MFBC'), V4L2_PIX_FMT_MTISP_SGBRG12F('MFGC'), V4L2_PIX_FMT_MTISP_SGRBG12F('MFgC'), V4L2_PIX_FMT_MTISP_SRGGB12F('MFRC')
+*******************************
+
+12-bit Packed Full-G Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format with a depth of 12 bits per sample with every 4 pixels.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
+described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
+RGB byte order BGGR.
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
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst
new file mode 100644
index 000000000000..39ea9882a792
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst
@@ -0,0 +1,73 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr14:
+.. _v4l2-pix-fmt-mtisp-sgbrg14:
+.. _v4l2-pix-fmt-mtisp-sgrbg14:
+.. _v4l2-pix-fmt-mtisp-srggb14:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR14 ('MBBE'), V4L2_PIX_FMT_MTISP_SGBRG14('MBGE'), V4L2_PIX_FMT_MTISP_SGRBG14('MBgE'), V4L2_PIX_FMT_MTISP_SRGGB14('MBRE')
+*******************************
+
+14-bit Packed Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format, meaning all the data bits for a pixel lying
+next to each other with no padding in memory, with a depth of 14 bits per pixel.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
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
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst
new file mode 100644
index 000000000000..010b1c190c60
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst
@@ -0,0 +1,110 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr14f:
+.. _v4l2-pix-fmt-mtisp-sgbrg14f:
+.. _v4l2-pix-fmt-mtisp-sgrbg14f:
+.. _v4l2-pix-fmt-mtisp-srggb14f:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR14F ('MFBE'), V4L2_PIX_FMT_MTISP_SGBRG14F('MFGE'), V4L2_PIX_FMT_MTISP_SGRBG14F('MFgE'), V4L2_PIX_FMT_MTISP_SRGGB14F('MFRE')
+*******************************
+
+14-bit Packed Full-G Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format with a depth of 14 bits per sample with every 4 pixels.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
+described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
+RGB byte order BGGR.
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
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst
new file mode 100644
index 000000000000..86cadbf38175
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst
@@ -0,0 +1,51 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr8:
+.. _v4l2-pix-fmt-mtisp-sgbrg8:
+.. _v4l2-pix-fmt-mtisp-sgrbg8:
+.. _v4l2-pix-fmt-mtisp-srggb8:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR8 ('MBB8'), V4L2_PIX_FMT_MTISP_SGBRG8('MBG8'), V4L2_PIX_FMT_MTISP_SGRBG8('MBg8'), V4L2_PIX_FMT_MTISP_SRGGB8('MBR8')
+*******************************
+
+8-bit Packed Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format, meaning all the data bits for a pixel lying
+next to each other with no padding in memory, with a depth of 8 bits per pixel.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor.
+They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
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
diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst
new file mode 100644
index 000000000000..ca5151312bca
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst
@@ -0,0 +1,78 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-pix-fmt-mtisp-sbggr8f:
+.. _v4l2-pix-fmt-mtisp-sgbrg8f:
+.. _v4l2-pix-fmt-mtisp-sgrbg8f:
+.. _v4l2-pix-fmt-mtisp-srggb8f:
+
+*******************************
+V4L2_PIX_FMT_MTISP_SBGGR8F ('MFB8'), V4L2_PIX_FMT_MTISP_SGBRG8F('MFG8'), V4L2_PIX_FMT_MTISP_SGRBG8F('MFg8'), V4L2_PIX_FMT_MTISP_SRGGB8F('MFR8')
+*******************************
+
+8-bit Packed Full-G Bayer formats.
+
+Description
+===========
+
+These four pixel formats are used by Mediatek ISP P1.
+This is a packed format with a depth of 8 bits per sample with every 4 pixels.
+Full-G means 1 more pixel for green channel every 2 pixels.
+The least significant byte is stored at lower memory addresses (little-endian).
+The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
+described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
+RGB byte order BGGR.
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
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
