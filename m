Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A0B370AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+X+l3pzoMMMn57BLrgco3X3HxvwwTBL/bvKLrAjrxsI=; b=jYTAq+6HxC6jIk
	XBuFyfKCkNmwP8nZspV8nHx5l8G3oAy6iqEiPyAfGaKzgL3fRHwKOVHxIJpSff/GQLZM1awVNM/1D
	bUFolWbqx1XX3AJYPsioIftM8w+1dmdaxBbmWaATgkLBqqzSttlgi7pzUtsZR2grJFQE1q+ZJO2WB
	AsEKkUdRZrssJe7DzFiSW7XsJXjw2PLWH8V+YAxaxDQitkLjkiZkIxU0eH2xGLXKe0UC/xi9MzXKG
	zz4IV1BSI6ES+kHis179T/kIseEZl09YzoYTNwtr7NyXWO+fvbr4zMJ0yq4sM6HhTx5aKW2CvqnKa
	uZRZNOwx15KHd2NrfXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp00-0006oD-E7; Thu, 06 Jun 2019 09:47:56 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozY-00069r-JL
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:47:43 +0000
Received: by mail-lf1-x142.google.com with SMTP id a25so1080206lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7nW3mZt+9ZnxuAFL1+ZAaurMAqAqlQaogmKT12Q9bkc=;
 b=CzwkPpSR7JxGv5fTN1QNy7x2oHDM4EE8O4QEeZBUh+hN0z2w54ETNmPLmP8r76XLto
 0t2kV0IsL0DtZ2SDzJ+pWYFnxocbxNTPMpf8NM/nEingkJX16quxgrdNYsaygv8MPFeP
 T6YjtAE91PsFnmwPSI61gDl+JP5ex5/7e2lk/zMJqwzzT+zn5JfQptytp+gdMp0WbXK2
 +Tb9akU37mhth+Ae11wWtu1UJB/ifvxQuDvtpN55ghdIfW1yoDCZimq1r3mopfO2mRuk
 GwgyTcqRHiAxJJdsqlYjM4kjEgnzoKo5ZFhnQqZ6s1WgSTyFViIFBRK7V3Lo4Vr9wIRD
 F/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7nW3mZt+9ZnxuAFL1+ZAaurMAqAqlQaogmKT12Q9bkc=;
 b=FZ7inuIhOsfhPNnKZ5Oitd/12ENPGGlyqkMb0/nffvwXBDqwI9OYAz/tPEJ02yhEzU
 Od6YLTiXejE3ve2q4W95HGVOZraU2Ze1yCXczgJiin5RnrgmOKaIN2uHF8SxbSutQsYg
 ve+oSLUftJOo6wfDr53OuQsC/eBtxdZE821cgMSSSzY1hwBlswgZqFLESHTJKRcJE0hV
 AzOaeYhyDJrrvmER2cOZhgC2FzN6YGn8TovuH191iz1uagovHwECqbHctZkvKR1yDl9O
 nxxLklkA0p9IRpGes5ZSLHplZ9LvH1sw/+PCNFcOqVk+fBP0g1csupcDJ93D1htR9Bg+
 iNlQ==
X-Gm-Message-State: APjAAAUTWA5K7wcVMaR3RVK2vYKXfaKPpaRUYZzyocWI42dCv3n83Ron
 gNhtkex2RY16BeSRYbOFJMjJvQ==
X-Google-Smtp-Source: APXvYqx/DDTeaN+7wcBnH7SJY8W7bd3Q5Vdb+xcU4CnRCqt72c8lJvk4A3phFKwb3KZM6axwL3tiRQ==
X-Received: by 2002:ac2:5938:: with SMTP id v24mr12708910lfi.161.1559814446768; 
 Thu, 06 Jun 2019 02:47:26 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id k7sm250518ljc.92.2019.06.06.02.47.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:25 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: mchehab@kernel.org,
	p.zabel@pengutronix.de
Subject: [PATCH 5/8] drivers: media: coda: fix warning same module names
Date: Thu,  6 Jun 2019 11:47:22 +0200
Message-Id: <20190606094722.23816-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024729_238580_826F3ED2 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, airlied@linux.ie,
 stefan@agner.ch, linux-kernel@vger.kernel.org, a.hajda@samsung.com,
 lee.jones@linaro.org, marex@denx.de, f.fainelli@gmail.com,
 Anders Roxell <anders.roxell@linaro.org>, vivien.didelot@gmail.com,
 linux-media@vger.kernel.org, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 broonie@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 lgirdwood@gmail.com, daniel@ffwll.ch, shawnguo@kernel.org, davem@davemloft.net,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with CONFIG_VIDEO_CODA and CONFIG_CODA_FS enabled as
loadable modules, we see the following warning:

warning: same module names found:
  fs/coda/coda.ko
  drivers/media/platform/coda/coda.ko

Rework so media coda matches the config fragment. Leaving CODA_FS as is
since thats a well known module.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/media/platform/coda/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/coda/Makefile b/drivers/media/platform/coda/Makefile
index 54e9a73a92ab..588e6bf7c190 100644
--- a/drivers/media/platform/coda/Makefile
+++ b/drivers/media/platform/coda/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
+video-coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
 
-obj-$(CONFIG_VIDEO_CODA) += coda.o
+obj-$(CONFIG_VIDEO_CODA) += video-coda.o
 obj-$(CONFIG_VIDEO_IMX_VDOA) += imx-vdoa.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
