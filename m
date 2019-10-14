Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0020ED62BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LUzH7kgN5xniT/FPhvBKuiFt43J3C9FMu7lvp0cuu60=; b=d5tEW+O0i5Zm9I
	x5QCNsBnv6TQ1Z5RUxPmkMR3LlWkx12kQHYT//N0gH2acZiEua5JJQtgB54Y8LDKgWRFbessJCFsS
	AW/3883i9OTn+8RL7/w0OD5c6M6I5J6yGx+EFc0tJPpMuCjgRaymt5e7b9CFQ6ho1lBmqHlqr7Lno
	hYl2zOCKlzWFjXGdtiqulThJQcfE4/GP6VlYB8Y7pOojlBdGa/DbVjriLax/pN5rDc1kTYJwt9xLz
	GIb8OrdmvccF4E+QLh3Ldtt1SHw69V+asZa3nyHeThbbztrFSNaBf3bDSdgnKYq+XWUNJEaBfwjSh
	nhhCZTlAUZaZZeM1NYgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzcn-00088T-SH; Mon, 14 Oct 2019 12:38:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzcP-00082Z-BC
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:38:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id p4so3668812wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qHlgrBNnQvZHdlIhaAIwv1P7BiVcNY7YDyLmFn9uKVI=;
 b=mz58iYxSQEYvYf9X0tiVoBtwk4DpjvkN3/8wfK1vhAFu/n1X/1t+LEo+7+LgmeDQQA
 s4Y98uW35kkjrTLOwvRflsDq+B9qxcprU9J6wEJ0v8XewRroDzR3ihShCkB4zv3sLNl4
 KNwSA1L8XO9OO5fDEB5+xGr97e8TVBI2HLPPCtjHVdYWwHCkNJtvcGZJg154gJEvtxF5
 rrJobAtc/hw4Ath1WvhV1+fZuLMqiK+HSRcaDOu5B4NsOjqu+ff/1liJ/u8A8LiXqoTV
 ybTFITLEt56+xLWFLN3Bt4xjD3MbMS6n+g5o+HLB5HDX5FvNspjFvGPW0NhPhRTrq903
 HJYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qHlgrBNnQvZHdlIhaAIwv1P7BiVcNY7YDyLmFn9uKVI=;
 b=fK4AaYkbmsewX9RiHMWPOTkmQ1ASZohyhoqEbdMXK1MafuMHYvkiSZHZ0e6/tDuek5
 RoaBJTRky9BlRy22F0UWs1NO1K6qdmAn5E8UAhPPFIzzBadUX0CYm2NrOmWc1YejjLhh
 mNOGwfrIZX7G16Lp6RBWQTYJ4cgh+FX6C83bEDa12SZDNr1C45nU8kPdUGPLQPIuB/uS
 0LxJzATXHc/06V6/+rwAoGUz59/jNxTaMo/Qd/pFcnDgpLA28Vs43EvHUDkIzakKHRvD
 53IFTR4DxKhhp2oUwAWq9AehkpFTW19cNLh+SLb5ldy/FUT+p+ho+aHikAuBTm/ejuB5
 moJg==
X-Gm-Message-State: APjAAAUTu8Jps3dwfTd+rYo8InwbVVR02wSBT7zrpM851Mng/OrxWwXa
 jpb9LI35h4XA6aQb4n6SWqJdNNuqCXlWMw==
X-Google-Smtp-Source: APXvYqwMn8mKSsHjusTUrOEZvm5C0ca3mShMRyG8qq1fHYhQEd05XeLBSOf4JIln1DHYZGqjzagwvw==
X-Received: by 2002:a5d:6592:: with SMTP id q18mr27503680wru.382.1571056711338; 
 Mon, 14 Oct 2019 05:38:31 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 3sm19171203wmo.22.2019.10.14.05.38.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:38:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/7] drm/meson: add AFBC support
Date: Mon, 14 Oct 2019 14:38:19 +0200
Message-Id: <20191014123826.27629-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053833_420122_00FB0416 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-amlogic@lists.infradead.org, ayan.halder@arm.com, Brian.Starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the ARM Framebuffer Compression decoders found
in the Amlogic GXM and G12A SoCs.

The Amlogic GXM and G12A AFBC decoder are totally different, the GXM only
handling only the AFBC v1.0 modes and the G12A decoder handling the
AFBC v1.2 modes.

The G12A AFBC decoder is an external IP integrated in the video pipeline,
and the GXM AFBC decoder seems to the an Amlogic custom decoder more
tighly integrated in the video pipeline.

The GXM AFBC decoder can handle only one AFBC plane for 2 available
OSD planes available in HW, and the G12A AFBC decoder can handle up
to 4 AFBC planes for up to 3 OSD planes available in HW.

The Amlogic GXM supports 16x16 SPARSE and 16x16 SPLIT AFBC buffers up
to 4k.

On the other side, for G12A SPLIT is mandatory in 16x16 block mode, but
for 4k modes 32x8+SPLIT AFBC buffers is manadatory for performances reasons.

The Amlogic GXM and G12A AFBC decoders are integrated very differently.

The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.

On the other side, the Amlogic G12A AFBC decoder seems to be an external
IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
feeding the OSD1 VIU pixel input.
This uses a weird "0x1000000" internal HW physical address on both
sides to transfer the pixels.

For Amlogic GXM, the supported pixel formats are the same as the normal
linear OSD1 mode.

On the other side, Amlogic added support for all AFBC v1.2 formats for
the G12A AFBC integration.

For testing, the only available AFBC buffer generation is the Android
Yukawa Dvalin Android Mali blobs found at [1].

Both SoCs has been tested using buffers generated under AOSP, but only
G12A was tested using a runtime stream of AFBC buffers, GXM was only
tested using static buffers loaded from files.

Changes since v1 at [2]:
- Discards XRGB modes with YTR, only allow XBGR with YTR
- Add non-YTR modifiers for G12A
- Disable completely XRGB modes for GXM, until we find how to disable YTR
- Add proper argb remap for XRGB modes
- Enable OSD_STAT sync signal

[1] https://android.googlesource.com/device/amlogic/yukawa/+/refs/heads/master/gpu/
[2] https://patchwork.freedesktop.org/series/67832/#rev1

Neil Armstrong (7):
  drm/meson: add AFBC decoder registers for GXM and G12A
  drm/meson: store the framebuffer width for plane commit
  drm/meson: Add AFBCD module driver
  drm/meson: plane: add support for AFBC mode for OSD1 plane
  drm/meson: viu: add AFBC modules routing functions
  drm/meson: hold 32 lines after vsync to give time for AFBC start
  drm/meson: crtc: add OSD1 plane AFBC commit

 drivers/gpu/drm/meson/Makefile          |   1 +
 drivers/gpu/drm/meson/meson_crtc.c      |  81 ++++-
 drivers/gpu/drm/meson/meson_drv.c       |  38 ++-
 drivers/gpu/drm/meson/meson_drv.h       |  17 ++
 drivers/gpu/drm/meson/meson_osd_afbcd.c | 375 ++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_osd_afbcd.h |  28 ++
 drivers/gpu/drm/meson/meson_plane.c     | 224 ++++++++++++--
 drivers/gpu/drm/meson/meson_registers.h |  62 ++++
 drivers/gpu/drm/meson/meson_viu.c       |  78 ++++-
 drivers/gpu/drm/meson/meson_viu.h       |  19 ++
 10 files changed, 880 insertions(+), 43 deletions(-)
 create mode 100644 drivers/gpu/drm/meson/meson_osd_afbcd.c
 create mode 100644 drivers/gpu/drm/meson/meson_osd_afbcd.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
