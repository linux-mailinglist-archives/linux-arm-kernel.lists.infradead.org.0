Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334C6134AE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMmgc3QmvGFaPJxI3O0Fbly2ftxLR8jWGc2ZoOP5zss=; b=fV0kbdpvQ3QDvi
	Gxv04SsEf8EJTs5VPBbsYtTRNKvwniI19vSbpMWxvQ6IwVixexHjIW3aLmwQYPBpuojY/FME/zViO
	zcVRtK+t1RP+wUmIonCUX1zkpyHEprfu6yv9EdV+KgUcX0IubC3lLigabYlWXl5G199nMr8yDc5yb
	NmQljAy1uXiaL6km6ggr9t3x5R+hkS+ThdWxrM2pHX5UJ3NYyzBjx0vS1AkqmQulSa6LhlW9Stjd3
	O4hyOCqRophXmH4c5uEswMARnH09BlAZSu0BArXXsePJzSwIEBWzBKzIDSUsPwuCQUEHmgrMlUQaS
	K4iYo5jCL3e87TFPJ06A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGO0-0002Kp-Ir; Wed, 08 Jan 2020 18:48:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGLp-0000aG-EG; Wed, 08 Jan 2020 18:46:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 94C8A2912F1
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v13 10/11] media: staging: rkisp1: add TODO file for staging
Date: Wed,  8 Jan 2020 15:44:53 -0300
Message-Id: <20200108184454.825725-11-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200108184454.825725-1-helen.koike@collabora.com>
References: <20200108184454.825725-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_104641_636677_34CAD8FE 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add TODO file with requirements to move this driver out of staging.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v13: None
Changes in v12: None
Changes in v11: None
Changes in v10: None
Changes in v9: None
Changes in v8: None
Changes in v7: None

 drivers/staging/media/rkisp1/TODO | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 drivers/staging/media/rkisp1/TODO

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
new file mode 100644
index 000000000000..03cd9a4e70f7
--- /dev/null
+++ b/drivers/staging/media/rkisp1/TODO
@@ -0,0 +1,23 @@
+* Fix serialization on subdev ops.
+* Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
+e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
+cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
+* Fix pad format size for statistics and parameters entities.
+* Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
+* Fix checkpatch errors.
+* Make sure uapi structs have the same size and layout in 32 and 62 bits,
+and that there are no holes in the structures (pahole is a utility that
+can be used to test this).
+* Review and comment every lock
+* Handle quantization
+* Document rkisp1-common.h
+* streaming paths (mainpath and selfpath) check if the other path is streaming
+in several places of the code, review this, specially that it doesn't seem it
+supports streaming from both paths at the same time.
+
+NOTES:
+* All v4l2-compliance test must pass.
+* Stats and params can be tested with libcamera and ChromiumOS stack.
+
+Please CC patches to Linux Media <linux-media@vger.kernel.org> and
+Helen Koike <helen.koike@collabora.com>.
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
