Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929513846D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 08:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7bSEzrtj/Y1JY4ROOBgZhC8tDWV2V5Jb+nexaiiDky8=; b=Gmn
	VzWs5WnqiKUpBaJRZqBgWHKNTcr5kTy0uoOM2gZRCtQx8/TAahJuNsOoXeNFtZKCLmTagSl75F+CG
	lgLFIfVLcDW0EXa5orDjFqYD1HLIc/kfNr64QauH0BeDfLj3iN3PncNGifMqTHBfI/LEuIYU+o+Fv
	p1kjq1GFCo3N8M8WdCKnCx62pmln/ii8cZsK8DCXYTnFSAh7sRXPCqhtsQinC7iGR7cwpn/xJLdUD
	WLhq8Blp2OZrD23bC/xSxZH/E23M+x6N9reAUDokveiwdMg06sWC41QFH2o2doYL7wESday5Y1jFj
	UDZD9jGSZzIKktr3j7D0ie2AhxXxWVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ8UQ-0003zH-7F; Fri, 07 Jun 2019 06:36:38 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8UB-0003y2-56
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 06:36:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 23:36:22 -0700
X-ExtLoop1: 1
Received: from pg-eswbuild-angstrom-alpha.altera.com ([10.142.34.148])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2019 23:36:19 -0700
From: "Hean-Loong, Ong" <hean.loong.ong@intel.com>
To: Rob Herring <robh+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCHv15 0/3] Intel FPGA Video and Image Processing Suite
Date: Fri,  7 Jun 2019 22:30:19 +0800
Message-Id: <20190607143022.427-1-hean.loong.ong@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_233623_239668_E2C82266 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, hean.loong.ong@intel.com,
 chin.liang.see@intel.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hean-Loong Ong <hean.loong.ong@intel.com>

The FPGA FrameBuffer Soft IP could be seen  as the GPU and the DRM driver
patch here is allocating memory for information to be streamed from the
ARM/Linux to the display port.

Basically the driver just wraps the information such as the pixels to be
drawn by the Sodt IP FrameBuffer 2.

The piece of hardware in discussion is the SoC FPGA where Linux runs on
the ARM chip and the FGPA is driven by its NIOS soft core with its own
proprietary firmware.

For example the application from the ARM Linux would have to write
information on the /dev/fb0 with the information stored in the
SDRAM to be fetched by the Framebuffer 2 Soft IP and displayed
on the Display Port Monitor.

Reviewed and ACKed need to merge this into drm-misc

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Reviewed-by: Rob Herring <robh@kernel.org>

Ong Hean Loong (1):
  ARM:socfpga-defconfig Intel FPGA Video and Image Processing Suite

Ong, Hean Loong (2):
  ARM:dt-bindings:display Intel FPGA Video and Image Processing Suite
  ARM:drm ivip Intel FPGA Video and Image Processing Suite

 .../bindings/display/altr,vip-fb2.txt         |  63 ++++
 MAINTAINERS                                   |   9 +
 arch/arm/configs/socfpga_defconfig            |   8 +
 drivers/gpu/drm/Kconfig                       |   2 +
 drivers/gpu/drm/Makefile                      |   1 +
 drivers/gpu/drm/ivip/Kconfig                  |  14 +
 drivers/gpu/drm/ivip/Makefile                 |   6 +
 drivers/gpu/drm/ivip/intel_vip_conn.c         |  93 +++++
 drivers/gpu/drm/ivip/intel_vip_drv.c          | 335 ++++++++++++++++++
 drivers/gpu/drm/ivip/intel_vip_drv.h          |  73 ++++
 10 files changed, 604 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/altr,vip-fb2.txt
 create mode 100644 drivers/gpu/drm/ivip/Kconfig
 create mode 100644 drivers/gpu/drm/ivip/Makefile
 create mode 100644 drivers/gpu/drm/ivip/intel_vip_conn.c
 create mode 100644 drivers/gpu/drm/ivip/intel_vip_drv.c
 create mode 100644 drivers/gpu/drm/ivip/intel_vip_drv.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
