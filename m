Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ECADE7B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FX+Ga0pGjeC2v+eSy0N2UywUyz4Xus/QGCtOGtPbq4g=; b=mV6Z/Fx7nF7SRo
	CZDdit+WeBrtaRAKYF+vvzdh4n50cHWXoVVx0+yUdWwWKGggoaqPwqjwtoYuOYLtlQvgVPEMhic3d
	iQ0xKgrVjtsvmv/tKfMXIctm2NTR01ealPT2/xHRVQVUyxnOTnO/7rv74rT6DoKGL1jbgbnsJ9/2/
	75ZhaD9qKtvmvf2e4lqKYTiBxbr14Y2m/x+O16bFQkL6fi59LP8Xspn4eOVOUK77TgaNc8sSrZ/Nn
	pLRiHYShN4HcBEkhFA5B77h6uzBbxwLRpkrBXU4f2BibAuPvvO7gxa2RiDvTv3h+2GfxYfJ8y1Qjz
	fcYKX1ly7pBDx4BXkQBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTmn-0002k1-AW; Mon, 21 Oct 2019 09:15:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmT-0002fF-ME
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so7760527wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5i+d8XQjZiZEL6JpWOwXWmcInBfxIrWrqVDxqfnvGO4=;
 b=AptZEBU3u1ow6XOGj8rmLaRLExp4NeljhpjSBNaYri5G7VkbMYSI00c/JiBG8W1jf8
 2Tz7FblocfbuB7sBaE86bA6gWGQPk7sOPoGfSOynk6/IJOFPvXTh3xY7vCGvstNNYB8w
 A1+wSAMT11zquVEWSWvXy37KRGLjpxYbzca3gEKFn+d5qqXlUDvBj88DfEdhtgBY3w5e
 oFbX4Z3B3nyp0SuAWzIAF63903X9aYFQ22bG1SMXTtplHkcwpWOyms2+8f+dAdjJZZ+m
 3s89Bef3C2vrD5DyIM6H12SVB5oa8Wph3zie+0Fog+Nmak29XUb0PEJGsGMhkqH6oIv4
 TguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5i+d8XQjZiZEL6JpWOwXWmcInBfxIrWrqVDxqfnvGO4=;
 b=DYf00yEXSPsDjb7jfg58EZG4f21i/97PdV2qt0IGlWZiKBcRK1oL6ytg/bE1ddW5+R
 edWthPYEqdgr8DGy+tbH3ZnXIRjfI3oToQCX23SLKxIqDkTE7346uI7wChbiGGJqcYJs
 w47a4hX3TtydXo9Dh4Ix2hbosl5IIKqFy6iLOp7piNY/RQFOOm0z5gUSrH4oFmMi8uHq
 t1p8AMNcG2mcZbglJob7dcvflkkStCzblCfSTqGqizFqSov/H5dudIXkm2HnuDp9UFfT
 mIbp5O6q1CYsCu/8MtSCVV1zAX1zYtaluNd4/hvrzzgJERuw3YH1oWguYK3wAt8AV6u1
 K2Dg==
X-Gm-Message-State: APjAAAUKVNgydLIeQwrToZ7MFHcpq10JkZripXvz63jg9I9cWCMKyI1P
 bhmGNoYSeblldEu139kdMQG+uQ==
X-Google-Smtp-Source: APXvYqyLnz8ek+M/9B68LfvYIpWtN0RIpnfgorW4aqhNqkj4LVQIQcV6iQbJhYYvoEmtwPlwSCAwNA==
X-Received: by 2002:adf:f84f:: with SMTP id d15mr318651wrq.112.1571649312025; 
 Mon, 21 Oct 2019 02:15:12 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/9] drm/meson: add AFBC support
Date: Mon, 21 Oct 2019 11:15:00 +0200
Message-Id: <20191021091509.3864-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021513_754362_8EC8DEA8 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 ayan.halder@arm.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the ARM Framebuffer Compression decoders found
in the Amlogic GXM and G12A SoCs.

This patchset is a merge of v2 "drm/meson: add AFBC support" at [3] and v2
"drm/meson: implement RDMA for AFBC reset on vsync" at [4].

The VPU embeds a "Register DMA" that can write a sequence of registers
on the VPU AHB bus, either manually or triggered by an internal IRQ
event like VSYNC or a line input counter.

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

The initial RDMA implementation handles a single channel (over 8), triggered
by the VSYNC irq and does not handle the RDMA irq.

The RDMA will be usefull to reset and program the AFBC decoder unit
on each vsync without involving the interrupt handler that can
be masked for a long period of time, producing display glitches.

For this we use the meson_rdma_writel_sync() which adds the register
write tuple (VPU register offset and register value) to the RDMA buffer
and write the value to the HW.

When enabled, the RDMA is enabled to rewritte the same sequence at the
next VSYNC event, until a new buffer is committed to the OSD plane.

For testing, the only available AFBC buffer generation is the Android
Yukawa Dvalin Android Mali blobs found at [1].

Both SoCs has been tested using buffers generated under AOSP, but only
G12A was tested using a runtime stream of AFBC buffers, GXM was only
tested using static buffers loaded from files.

Changes since v2 of [3] and [4]:
- Merge of RDMA patchset
- Fix suspend/resume when AFBC is enabled
- Re-enabled vsync_force otherwise RDMA is also stopped

Changes since v1 at [2]:
- Discards XRGB modes with YTR, only allow XBGR with YTR
- Add non-YTR modifiers for G12A
- Disable completely XRGB modes for GXM, until we find how to disable YTR
- Add proper argb remap for XRGB modes
- Enable OSD_STAT sync signal

[1] https://android.googlesource.com/device/amlogic/yukawa/+/refs/heads/master/gpu/
[2] https://patchwork.freedesktop.org/series/67832/#rev1
[3] https://patchwork.freedesktop.org/series/67832/#rev2
[4] https://patchwork.freedesktop.org/series/68021/#rev2

Neil Armstrong (9):
  drm/meson: add AFBC decoder registers for GXM and G12A
  drm/meson: add RDMA register bits defines
  drm/meson: store the framebuffer width for plane commit
  drm/meson: add RDMA module driver
  drm/meson: Add AFBCD module driver
  drm/meson: plane: add support for AFBC mode for OSD1 plane
  drm/meson: viu: add AFBC modules routing functions
  drm/meson: hold 32 lines after vsync to give time for AFBC start
  drm/meson: crtc: add OSD1 plane AFBC commit

 drivers/gpu/drm/meson/Makefile          |   1 +
 drivers/gpu/drm/meson/meson_crtc.c      |  79 ++++-
 drivers/gpu/drm/meson/meson_drv.c       |  50 ++-
 drivers/gpu/drm/meson/meson_drv.h       |  23 ++
 drivers/gpu/drm/meson/meson_osd_afbcd.c | 389 ++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_osd_afbcd.h |  28 ++
 drivers/gpu/drm/meson/meson_plane.c     | 229 ++++++++++++--
 drivers/gpu/drm/meson/meson_rdma.c      | 135 ++++++++
 drivers/gpu/drm/meson/meson_rdma.h      |  21 ++
 drivers/gpu/drm/meson/meson_registers.h | 110 +++++++
 drivers/gpu/drm/meson/meson_viu.c       |  83 ++++-
 drivers/gpu/drm/meson/meson_viu.h       |  19 ++
 12 files changed, 1123 insertions(+), 44 deletions(-)
 create mode 100644 drivers/gpu/drm/meson/meson_osd_afbcd.c
 create mode 100644 drivers/gpu/drm/meson/meson_osd_afbcd.h
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.c
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
