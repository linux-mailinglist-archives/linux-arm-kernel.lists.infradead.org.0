Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AD337097
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4qrex/bTczBFmidTa0mya42fag7pdsmU9LayDkPIeNI=; b=HUfOR94MzRLreb
	lpUe0zA8y6/5+lOtEnUVGxRwyXyQL1xtYD47N+QjGd1UnzGugEMUAB6yi679bFtaqh7e/fxRSN6P3
	w8eAMRGP4MxEwd4Uic2Yg/ZpRzaHTH15QTLcVtow7QATeZD2UNpuZI6M0CSCzV5E4BDTFj6jh30pm
	IPNFnjowlxVrxcaCzEsWeissA5w8P5OwyzvYe0wxjXmiVBHsLCp4ovF//JB8D30k3Kb/iz6In/Izm
	e/qqdDnhgQS3Me9Q9L4o9jgDQw8VNPBr7L+SpslidA8CzUZK6CHtWsXLqKwdV7KIie2C9z+yEOUDB
	59ml4ltjwNLFsYAXHy4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYozj-0006CO-2V; Thu, 06 Jun 2019 09:47:39 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozP-0005vo-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:47:22 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so1366255ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dQfbJoiQ5WTWGjUJ1PADkmMlX7UTg1NHq4Oh3Ljtrbo=;
 b=v0l1t7motrGGJZjUZw7mZhdXu71rcqkX14qgcfNJsj0pBDkflH+Yc72Rh58UO+K/ma
 NkcmwaO4ZRwUGSEf8FDCBIG9d5FZ14s3/Wu+e7uRpuc3N+NwdVmPkgZ3ASVth/T3MdYP
 zkyIoXbtLNxGxDWBwLZLLWP5BgK4Cj1MAjGGDwMPETEClXrqSkfGB+ui3a6x4JzT1JRI
 G7GVtXsWqf6Jrl0j4cKaP5Z91IJPDBMDrMDcVB3HTk4V95x6QgEjoib0TMkiQWzWtb0X
 Fwk6a3D+h0Vdr8Ji3cBC+l5ZJv9LqytaxcbMrFHRJKAG/dbb4ZLq/iU1m+2Kc78Nhxrd
 PHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dQfbJoiQ5WTWGjUJ1PADkmMlX7UTg1NHq4Oh3Ljtrbo=;
 b=FzJOHYmBJ5Z3ApjVUf7W7iZMCxkor1kajL4JzH6K2YkJoS2ybhlPVbzHK3qV4ff9Mg
 nxWpazq62OE+DFqYeBWMpyvlkp0RJOsLFpxCFMhupMoeUIeg61swJ841D8HzCIWrYHqq
 /ZB1YNK0Bvn7CEWLnF418Exe3ktL0MZOUWLmbrRLwKaVLkPZYVyOfGuvb3zFqStmwd8v
 cQkszkVpMTF5w4mCH3x8OyW9+/+j3omqwuSaHZIkSh7g3ujN2UuWy08aWNvz3TaYs1a+
 Mo3YfAq8cWvJ2a8D+Fz2B+haq+beusZdry1tECLh4vwB0KeoKRj/0znqJ/OzghN/Do2x
 uJtA==
X-Gm-Message-State: APjAAAVUR5KK6bA2lK84Sbcrt6HoafK5belEuQRRg/XkhOvFDVta7D0p
 TAKwBapRD09DBUVTmpiS1G1Znw==
X-Google-Smtp-Source: APXvYqynVELsYqcqQ3WkOuXVc21SB/kMXSnXwhm4rJjbGqpBW3X6B+fXTZsFIXnZIxLxYIvULF3Ugg==
X-Received: by 2002:a2e:9cc3:: with SMTP id g3mr9015135ljj.117.1559814437482; 
 Thu, 06 Jun 2019 02:47:17 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id s20sm214365lfb.95.2019.06.06.02.47.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:16 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: marex@denx.de, stefan@agner.ch, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, b.zolnierkie@samsung.com
Subject: [PATCH 3/8] drivers: (video|gpu): fix warning same module names
Date: Thu,  6 Jun 2019 11:47:12 +0200
Message-Id: <20190606094712.23715-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024719_799647_0BD16EC0 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, f.fainelli@gmail.com,
 Anders Roxell <anders.roxell@linaro.org>, linux-media@vger.kernel.org,
 netdev@vger.kernel.org, lgirdwood@gmail.com, dri-devel@lists.freedesktop.org,
 davem@davemloft.net, a.hajda@samsung.com, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, p.zabel@pengutronix.de,
 mchehab@kernel.org, lee.jones@linaro.org, vivien.didelot@gmail.com,
 linux-kernel@vger.kernel.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with CONFIG_DRM_MXSFB and CONFIG_FB_MXS enabled as
loadable modules, we see the following warning:

warning: same module names found:
  drivers/video/fbdev/mxsfb.ko
  drivers/gpu/drm/mxsfb/mxsfb.ko

Rework so the names matches the config fragment.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/gpu/drm/mxsfb/Makefile | 4 ++--
 drivers/video/fbdev/Makefile   | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/Makefile b/drivers/gpu/drm/mxsfb/Makefile
index ff6e358088fa..5d49d7548e66 100644
--- a/drivers/gpu/drm/mxsfb/Makefile
+++ b/drivers/gpu/drm/mxsfb/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-mxsfb-y := mxsfb_drv.o mxsfb_crtc.o mxsfb_out.o
-obj-$(CONFIG_DRM_MXSFB)	+= mxsfb.o
+drm-mxsfb-y := mxsfb_drv.o mxsfb_crtc.o mxsfb_out.o
+obj-$(CONFIG_DRM_MXSFB)	+= drm-mxsfb.o
diff --git a/drivers/video/fbdev/Makefile b/drivers/video/fbdev/Makefile
index 655f2537cac1..7ee967525af2 100644
--- a/drivers/video/fbdev/Makefile
+++ b/drivers/video/fbdev/Makefile
@@ -131,7 +131,8 @@ obj-$(CONFIG_FB_VGA16)            += vga16fb.o
 obj-$(CONFIG_FB_OF)               += offb.o
 obj-$(CONFIG_FB_MX3)		  += mx3fb.o
 obj-$(CONFIG_FB_DA8XX)		  += da8xx-fb.o
-obj-$(CONFIG_FB_MXS)		  += mxsfb.o
+obj-$(CONFIG_FB_MXS)		  += fb-mxs.o
+fb-mxs-objs			  := mxsfb.o
 obj-$(CONFIG_FB_SSD1307)	  += ssd1307fb.o
 obj-$(CONFIG_FB_SIMPLE)           += simplefb.o
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
