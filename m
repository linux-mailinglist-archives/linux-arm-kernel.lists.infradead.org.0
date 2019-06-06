Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56295370B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z2kv4ndsCkZz2fmob9QxYctSFyr/QKaSQfbzpHBlSF8=; b=AOEijmWyNh/sOK
	HDqHoiCSTqGfIqMsdagaV/bAMPFoOOwxIe0tao/OV5e64YiUp9mhZfFVxo/5i1JAmVSWv+dverAOK
	OLtk48xQEeo7SLCcROxP+dyHeOhPgnLR1hM5LkfKtaDtGtoFB5p/Il2Ma+w9nxwtW+Y3OvEa3ikjK
	ug2jzHBpCePjcsHlBvlKOsjNGFlCj9wwAcq7y2sgQOUHFIGN1xtGzKgFYuKPyTkCVE+JTzj32b+Sh
	rr9/EyH98948hxVHhNFZiw30kuqmKw6WwkC3krroUxUNPVPq8cPcH9w2RuaTisnlPUDdRVP3qVFVt
	l2cpu9nb7mYb+/dz/RcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp0O-000770-6c; Thu, 06 Jun 2019 09:48:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozh-0006NG-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:48:01 +0000
Received: by mail-lf1-x143.google.com with SMTP id r15so1053480lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tqLAHFWcFPPRWg/WUmIKVQXRfjbKzLHes3un8tM9Gvg=;
 b=vHUW3+ZZeGk/a3xl67ZoRzH2OeuOzTB13K64lPfM8o6ubuED7MfpLkMU42xD3KDTGG
 htbekOtb95OTRxYqsJ57kJ+7eBDSb9YsOUmpEOfAcgfbUH9drA+CYkDRQb87juXm2gDt
 PRFJrv4x5Ttdpe+wr/kbs1XGegjxwq3YM3U0+pItUlRiB/RsC1+ymGjhCv80Qtj5/TQ8
 AqvCFqeTSw5zMAvuBjLvyf9ZiJ4xirXkcbH6DZ2pUywixzEe4js0aoa9r9FrXYnmpn5M
 vZnPIw5AOdPXDPoJIijX0vfgQCekmdrDEIiznGfYyqbX9Z1nQdeDTa0Oszi4RPnzcCdd
 nFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tqLAHFWcFPPRWg/WUmIKVQXRfjbKzLHes3un8tM9Gvg=;
 b=lTcHLrwjKmCC7tuBSDoNFhLM/0mQ/zo4VmqUIMjlLQgqeSvR4g+uVIL/+xihIK9bBy
 gud2DjowshWmonfhSsRTSDEfwpcaU+2QWS2NFgQYHrLZSyQcNcrCmwpDL62c9vIl64Wh
 NBIWRwidgP9yd3i3GFwvdhs8NMNgOMpZ5CtvRn3gc5xFYM3sQPrMtFMQsJ7CVZ2y+DpI
 NQCpCoboO0YUCHyLXxaJajQo2LdNIIVBJ2Fd4/SMAnquDCYi/xhPggsYPKiTVf9AsNnG
 BRMmOsZ1Cpi/hG58l025e1wICQTkmJvW8e9F4zmn44w1hz2EAwP5M1cGZasqqITD2JPV
 S4Qw==
X-Gm-Message-State: APjAAAV9tW93V2slsXL65g3mR+uZZUTryCDJcrHzSE4DWm/UmdGm68mB
 j4Xq48nTmwN1f29ghwr03T0O5g==
X-Google-Smtp-Source: APXvYqzwnsLpfjtk0CIHJjGAd3PHOuMbYbXAW2joQUfJaemcbv8dWKNOhuhIygzLFkH6KdzB5dTdug==
X-Received: by 2002:a19:e05c:: with SMTP id g28mr8736392lfj.167.1559814455812; 
 Thu, 06 Jun 2019 02:47:35 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id u13sm220277lfl.61.2019.06.06.02.47.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:35 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 7/8] drivers: mfd: 88pm800: fix warning same module names
Date: Thu,  6 Jun 2019 11:47:31 +0200
Message-Id: <20190606094731.23918-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024738_618173_3323EC30 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
 marex@denx.de, f.fainelli@gmail.com, Anders Roxell <anders.roxell@linaro.org>,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 lgirdwood@gmail.com, p.zabel@pengutronix.de, shawnguo@kernel.org,
 davem@davemloft.net, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with CONFIG_MFD_88PM800 and CONFIG_REGULATOR_88PM800
enabled as loadable modules, we see the following warning:

warning: same module names found:
  drivers/regulator/88pm800.ko
  drivers/mfd/88pm800.ko

Rework so the names matches the config fragment.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/mfd/Makefile | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 52b1a90ff515..5e870eef6a20 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -5,8 +5,11 @@
 
 88pm860x-objs			:= 88pm860x-core.o 88pm860x-i2c.o
 obj-$(CONFIG_MFD_88PM860X)	+= 88pm860x.o
-obj-$(CONFIG_MFD_88PM800)	+= 88pm800.o 88pm80x.o
-obj-$(CONFIG_MFD_88PM805)	+= 88pm805.o 88pm80x.o
+obj-$(CONFIG_MFD_88PM800)	+= mfd-88pm800.o mfd-88pm80x.o
+mfd-88pm800-objs		:= 88pm800.o
+obj-$(CONFIG_MFD_88PM805)	+= mfd-88pm805.o mfd-88pm80x.o
+mfd-88pm805-objs		:= 88pm805.o
+mfd-88pm80x-objs		:= 88pm80x.o
 obj-$(CONFIG_MFD_ACT8945A)	+= act8945a.o
 obj-$(CONFIG_MFD_SM501)		+= sm501.o
 obj-$(CONFIG_MFD_ASIC3)		+= asic3.o tmio_core.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
