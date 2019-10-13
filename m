Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE94D5541
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 10:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8SjJWYSyPPOt5i9oWQK6IhLJV5xpPoxtcpG0p5eySM=; b=pL5FCI4uLLOst8
	G9TUOvHXgMbzXOPy9OU5G+3d/aYElZtUHwiueaJsy405e+JT6isKjz1G7EtdKONWL8TWuTQU9l7wc
	gdK18NPMEa7OdWGN/Ezcxdj9FD0A3vruDAHnwkcSYfCKSuf1t+ta+/kG6F+l+OGxVTGhe39loSb+C
	GHEZVfDw5f87DwfIA7xVe/hfk/Kq1iwR/oSRqbeqgjo8h/+ItcDNClkb96lXPIZ6PtYTMX7u+g5/M
	+HwqMNT0KkIx51OrSSpXcoA8cB2Vl4EV+/BFheASGZf8l2rVbrSwwdf3hBhFNSstG5XBsDfRWa7Z5
	r/YVmNY2zzNGRjrvX9kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJYwP-0000np-Ic; Sun, 13 Oct 2019 08:09:25 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJYvI-0008Ig-GD
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 08:08:20 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 20CFA3F23F;
 Sun, 13 Oct 2019 08:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1570954092;
 bh=RFVcO9gNV5m28sPqWhNYJuMIlJLrDv2gh/shvbSVCKM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eAWPAgXhu/zLzu/tIO9VKC21LDCT1yLHYXIU2BBh3mm5Bj60waonRBKKpK+YpjaKT
 iL0LRToFu87l/7LLYHFqgQLzBSkhyH+ODJDhNeNMqIqB6moDQLXnaUmwAoEHnR+unz
 FO2GvpasrZqWSfegYO5Q2ZfR3kJjOzZf1s1foEsw=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH 3/5] ARM: qcom_defconfig: add anx78xx HDMI bridge support
Date: Sun, 13 Oct 2019 04:08:02 -0400
Message-Id: <20191013080804.10231-4-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191013080804.10231-1-masneyb@onstation.org>
References: <20191013080804.10231-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_010816_605730_4BFF445D 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Analogix anx78xx driver so that the external display over HDMI
can be used on Nexus 5 phones.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 arch/arm/configs/qcom_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 32fc8a24e5c7..f95cc49a1ddb 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -149,6 +149,7 @@ CONFIG_MEDIA_SUPPORT=y
 CONFIG_DRM=y
 CONFIG_DRM_MSM=m
 CONFIG_DRM_PANEL_SIMPLE=y
+CONFIG_DRM_ANALOGIX_ANX78XX=m
 CONFIG_FB=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 # CONFIG_LCD_CLASS_DEVICE is not set
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
