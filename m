Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F2CDA925
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fHqCuc+Uql+mXUcgP0+4VDOQIGXXVX+5a+F+vgSnDOw=; b=IO4iK3rb5uc06M
	nHJSNTl5jBf1u7F7S3zaMn3XZXYdYZW1DsfYASczks8GhloxWLs2NZY6Zep/ofWD2ILPqnSsiDaMR
	fZ/80/mvPbylDBXIhRjQKr+TsdEZeqoz6+hLO7A22JPops7xz7o+L9BVMHXMl1SO5AJHZLGHxRIHe
	DG0DdYBS+68tmTRU8FndVfWhPAqAYPcryifyM/+qpJKdzE+0og6ST5RAKZQIq3r8BtYk3TrOID7LF
	J4zg1+A6K3qjy3VaxhLBm2PqkAnI+3L6qMx9K1n6M2UfJqTxWxEhOvfz8vh/mtRW9N9rkx67lp43K
	/HLqs4mjttv6ODZ7vX7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2PK-0006Gr-Ae; Thu, 17 Oct 2019 09:49:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2OX-0005ji-IK
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:48:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id j18so1547634wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 02:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ycCmZDffE4SSe1RIfJEgO6drqf4qkUDKv8PrM8jzmGs=;
 b=Q5lA972D7OIIkFBlV5IpEVNZrb3KvRhz42JwEx9gFIFhMJIEh7PRi51gHsbX+wVRxD
 PZdmgX4rNQCIkN/h9XwxrMRc5ZAdx0B38BM9AGTBua1KG2hpq0tfxa+ou7YncWQ5eQD8
 ByFlhwF5PxIEgeShlB+E4flH+rb5F54YoLfjJSbRtf9T+dvI5PjcV+LPVXKxm+SPrapo
 FSxLHrw/dLIteXR99i8EOR6s0EDwU7VPXxUVkvKBi+p3lMLg6ChAWalbPShydhGdVTTo
 c2V9aTiYgVRHJyee9Is2v0Jor6zmPb6TEq/YV68iBVZB21b0vLXVaHPLbsMKnoEKQ9Wx
 JqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ycCmZDffE4SSe1RIfJEgO6drqf4qkUDKv8PrM8jzmGs=;
 b=HQbBGvF5qGy/ky+uPjEDDca4SFARmVw7770thsaAWWJfdgoE6ijwn/H5wTgrOp3UsS
 vrFQBG1RAzr/GF4ET1FrAgUDgBiDcPITOYe5j/KblcTdsTOIOa8RbIlj68vw3T/hfc7F
 qE7dqTdeQR0kH8rBrZ0rpCTp09I2e4ocEWyWFPJVkinJAv18Yjg/m/Eu8YwHLqDzDMXP
 qyVo19z/NWn8xV6ANCtMZ/6edg+ZgPgRSX6GhqY/06KJMB902DYH4xfAS5o4tQ4A8Nl3
 k+S5Gbi0+2xzYdcyfq94llO2w+K10q3cH1yuYPEaSmxjYhAX2fa3/MZ1dJtyBUi2g0rk
 94IQ==
X-Gm-Message-State: APjAAAUNaJsW5gNolM7HKKfv9NvWagMoJhQJOifCKhL8mve8W1/Rtaj+
 lONcePc4iFGrTdGXr0hYFUyxRw==
X-Google-Smtp-Source: APXvYqz7lZeF4JPmS/79/W03GEEs4vSLOmEToTSvkJdKYaxmzoCNaHLXPQWRtoZxQiaqzU8AiTTmsQ==
X-Received: by 2002:adf:92e7:: with SMTP id 94mr2311076wrn.199.1571305711121; 
 Thu, 17 Oct 2019 02:48:31 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t83sm2764506wmt.18.2019.10.17.02.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 02:48:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm/meson: implement RDMA for AFBC reset on vsync
Date: Thu, 17 Oct 2019 11:48:23 +0200
Message-Id: <20191017094826.21552-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024833_871899_80257184 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VPU embeds a "Register DMA" that can write a sequence of registers
on the VPU AHB bus, either manually or triggered by an internal IRQ
event like VSYNC or a line input counter.

The initial implementation handles a single channel (over 8), triggered
by the VSYNC irq and does not handle the RDMA irq.

The RDMA will be usefull to reset and program the AFBC decoder unit
on each vsync without involving the interrupt handler that can
be masked for a long period of time, producing display glitches.

For this we use the meson_rdma_writel_sync() which adds the register
write tuple (VPU register offset and register value) to the RDMA buffer
and write the value to the HW.

When enabled, the RDMA is enabled to rewritte the same sequence at the
next VSYNC event, until a new buffer is committed to the OSD plane.

The the Amlogic G12A is switched to RDMA, the Amlogic GXM Decoder
doesn't need a reset/reprogram at each vsync.

Changes since v1 at [1]:
- Fixed a regression when AFBC was not used, adding a reset() call for the afbc module
- Added a define for the RDMA descriptor size
- Fixed overflow detection

[1] https://patchwork.freedesktop.org/series/68021/#rev1

Neil Armstrong (3):
  drm/meson: add RDMA register bits defines
  drm/meson: add RDMA module driver
  drm/meson: use RDMA to reconfigure AFBC on vsync

 drivers/gpu/drm/meson/Makefile          |   2 +-
 drivers/gpu/drm/meson/meson_crtc.c      |  27 ++---
 drivers/gpu/drm/meson/meson_drv.c       |  14 ++-
 drivers/gpu/drm/meson/meson_drv.h       |   6 ++
 drivers/gpu/drm/meson/meson_osd_afbcd.c | 100 ++++++++++--------
 drivers/gpu/drm/meson/meson_rdma.c      | 132 ++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_rdma.h      |  21 ++++
 drivers/gpu/drm/meson/meson_registers.h |  48 +++++++++
 8 files changed, 283 insertions(+), 67 deletions(-)
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.c
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
