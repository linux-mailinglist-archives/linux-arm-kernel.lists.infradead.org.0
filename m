Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFD71AB31
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LBDLsv+25ByyjilGUT8M1AZPwbP0B/LKzOl0K2/G9bM=; b=I7IwpvjD5Hx+bS+IEzopZChTPA
	VBH7UyuY4rWK6BAmEflcKTJ5asO4vzna1tOak63QV50+2u5/h1B8C85GE59rd2BzgXy+6E9IgUN3H
	f/jzV7vMUgkZ5uKHY/9v+6bSmJQmzqpcDY76seJYA0OjPwCQtfeKWjQgwT1yPso5eCJK9E9Re1xH5
	d6rNeHs5k+rGtCIsCOW3DN3MhEQkF0MT6+JOawW+9ZnL1J9nOPXlFBgtg/N2WVRCncyUdSbOYfoJE
	iRfMkdIFU+PyZCfxbAJmp0LVe9ymbMgIBIpUSXhxgB/lrJQf07ipHkrX0/ovA8Asl3ILn3eO/bxb1
	uvy+miMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPjoe-000188-V0; Sun, 12 May 2019 08:26:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPjoM-00010i-GA
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:26:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id t87so5520337pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 01:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SrTOiwR/CPBeTBREF635F4hrotYecrCbbaRjesXGtG0=;
 b=cLuOPpJ9Da6NeyQxhpSQyjD9xr3Gyw7I4lJmHc079PDwkPoQBRqYMtRnigdOsR4ESa
 6fxTI+xuv5MuJ2z2oCtGc+9O7ZFir2a7Bsnce3C/4m0ZYV2InRxKx3TG07Au+Y/ZSstW
 xcDnZag2RpsFXIMi2E6xs6+G11t9QJpWjTp58oXDLZSG3PnSGM8f2E/HH5jSVRgsy7Fo
 ryX4r22IiDHPqLnynoA1q+vCndBw8tT/6O4RlkbpU2DuH1HWuuc+I6uj7P0ZhvRgfGZk
 miuLL4ku153mkomHMD/VDRyPvVwFZUSxfdn8aLW4EmhibEFrvPilHQNTKRKzOJ3vG8bv
 XmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SrTOiwR/CPBeTBREF635F4hrotYecrCbbaRjesXGtG0=;
 b=Rh4hNCKor4GOSWuLeasVb67gKe3zuCCdWUqXqn1dqy5BpfPruLoiqTsxCW8P5988Zs
 osQj8Aw7cCcaKU+m4/TkT+BOWkCuyaT4Z2/CrFfncjBqBipQ3PTxFu+PM972dxHMM+/Z
 DtYzlqtEcjH2W67C5ISdq5yndiBP5BNLZkNsCZSbUKkTSroYFCW5KAFC/IWghm7tx6ro
 o4dtsi4tByEeCd+JYGUgKEv8IAZU7PmwyiKcRru+QUxlEGXlLBP3+JjGrRB6RHlF6Er/
 TnI7jpan+pn488qKlxivYqXmRQbdfzsyXMw/D+3VaIsDDbfoQogsWfvq2pCVWL6HcQt+
 9P3w==
X-Gm-Message-State: APjAAAWpi66yGOI3fRFYyiwPdM0hrdzR9TiCX17tITDe87Yc81BBl9sM
 H2TJ22NWzFzpmlcdgBJO692TWJ2tK9o=
X-Google-Smtp-Source: APXvYqzDllbAtzla73pnEa51Op3OwU/7GI89B6k5LpFoWVpxXrDzw8gblAKp9i29cTy8nv5IgMtzyw==
X-Received: by 2002:a62:125c:: with SMTP id a89mr26302860pfj.93.1557649581967; 
 Sun, 12 May 2019 01:26:21 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id o6sm1744062pfa.88.2019.05.12.01.26.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 01:26:21 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: tiny.windzz@gmail.com, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, catalin.marinas@arm.com,
 will.deacon@arm.com, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com, andy.gross@linaro.org,
 olof@lixom.net, bjorn.andersson@linaro.org, jagan@amarulasolutions.com,
 marc.w.gonzalez@free.fr, stefan.wahren@i2se.com,
 enric.balletbo@collabora.com
Subject: [PATCH 1/3] arm64: defconfig: add allwinner sid support
Date: Sun, 12 May 2019 04:26:12 -0400
Message-Id: <20190512082614.9045-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512082614.9045-1-tiny.windzz@gmail.com>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_012622_532333_13ED48BE 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sid contains speedbin information and temperature sensor
calibration information and more, which are important for SOC.

This patch enables CONFIG_NVMEM_SUNXI_SID by default.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2d9c39033c1a..8c23dd60f906 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -736,6 +736,7 @@ CONFIG_PHY_TEGRA_XUSB=y
 CONFIG_HISI_PMU=y
 CONFIG_QCOM_L2_PMU=y
 CONFIG_QCOM_L3_PMU=y
+CONFIG_NVMEM_SUNXI_SID=y
 CONFIG_QCOM_QFPROM=y
 CONFIG_ROCKCHIP_EFUSE=y
 CONFIG_UNIPHIER_EFUSE=y
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
