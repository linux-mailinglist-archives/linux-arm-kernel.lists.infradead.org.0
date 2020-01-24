Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D0914798F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 09:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2+QiMPx1qz+Ppb07x8j8bSrLrgPZwUhOND1EYPXB+ec=; b=Tu603v2BaQtXUZ
	dIqsA+2hdA4unfR7NDAZ1TSEMMrTzfZeUKxDZgJuiPY5loOO1R5DMryrBewxCn8gDvrrcADLCU8X/
	FZld/IBshLW5jFy8VkzU49spUe9NddmnUKKls6XmQ7xlH7b7fz9CUqqEiuJ4wLb/XiOWqNHOnOhmn
	Ko8Ax3jwDiQ2+N7c7Lx5j479WziVd1ueQiweVO8FsxcJxnCAZvoHxTgvn54lBwNPlI3nHEOov1Mdo
	5LijxFDERNo0gK6/bmaZGUrwd/K8Nj5EzuN4ONzVarHVhUEV5Ppqfqxk8Onw46Lz1mkmya+VYxMOQ
	EKSPjm8SNXHuuqZRxuPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuuZh-0006JI-4e; Fri, 24 Jan 2020 08:44:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuuZS-0006Im-7A
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 08:44:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id q6so945458wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 00:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tinV4d7dayDQdXjsrVgYkWqqsGnfasFnSwWIE4CmiKU=;
 b=mfhUD5JAemI+ypy5lGJeIq/9k0X9UjbcMCE2F+ZQwxSFd91PeNM/5/7jiiVxv8EoP5
 LKLjCyd/jPfCksTv/u/7Q7bsVcy+hNmfL/xs4bw94nHJcFaUELRuR/4nsL/zAlYWRzc4
 iTUNza8XpUrjLhXme37z7sYfwYnvhGdSuEH8vu7aXlUmLELzi2Q2IKZIaoMOlzE5D6S/
 mZV2saZ1IzC5d/1a5Tv4Wym6ypdopY1TL/Nox/+tRw24ZdkX3IvbdSgLhElIeOBw6UbW
 Ltet24NGNPluCKDJOVFKDJEfWguYLC3iKZZYjshBaETvJt+BenwMYIjfivgBw+6BdyF8
 zaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tinV4d7dayDQdXjsrVgYkWqqsGnfasFnSwWIE4CmiKU=;
 b=rwm9A6+plwiIylUwFrapMrWM/dOySG0yri8BCqZUIK6SZiUCMm5AA11OP0o+aquh0Y
 /JGe1Ya8GpjUDeVXKtIvcqBjmisFeaT97Kk9yPQajmx1RfQ1wcMTLHhpgx8K2vBGJxCI
 qUIZlK91dlfeDluhqQt191WcPKKOq9mu9OcGYpC+4r/GmVgtz27e1qWJos/zVEhsuF0C
 XBLad7i+wqc6Zujbz5E+rqvZgrSrgBsKymPm8j7elZdCtjwOWtTe47XOlnwKuozwSKek
 fiAfwGLTrXNNaO3SfZEzJfFHqb0befckPUyeSa2JR3Hv0ut6RrGVlTW7jMJJ5rfXvOBX
 r17A==
X-Gm-Message-State: APjAAAWYeTwc5OqdELnS3LHfSpdLjhhzStixgCvcrjWXSuTZKyfBkASp
 02IB9ZQVgOEkQaO7hRkPFGkmBRKc9OtEiQ==
X-Google-Smtp-Source: APXvYqwXzHlu3JKiNtpqd9JQ1Zuz75kFzJoW3m71GYzTmM+tbN7kRJeuAkAvTwJosa0b14pzQdyefw==
X-Received: by 2002:adf:fd84:: with SMTP id d4mr2881726wrr.211.1579855444145; 
 Fri, 24 Jan 2020 00:44:04 -0800 (PST)
Received: from localhost.localdomain (62-178-82-229.cable.dynamic.surfer.at.
 [62.178.82.229])
 by smtp.gmail.com with ESMTPSA id s16sm6651583wrn.78.2020.01.24.00.44.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 00:44:03 -0800 (PST)
From: Christian Gmeiner <christian.gmeiner@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
Date: Fri, 24 Jan 2020 09:43:49 +0100
Message-Id: <20200124084359.16817-1-christian.gmeiner@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_004406_285599_931E95BA 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christian.gmeiner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>, Lubomir Rintel <lkundrak@v3.sk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>, Joel Stanley <joel@jms.id.au>,
 Olof Johansson <olof@lixom.net>, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Makes it possible to multi v7 defconfig for stm32 and imx based devices with
full drm support.

Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>
---
 arch/arm/configs/multi_v7_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3f1b96dc7faa..d213a35557ed 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -637,6 +637,7 @@ CONFIG_CEC_PLATFORM_DRIVERS=y
 CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
 CONFIG_VIDEO_ADV7180=m
 CONFIG_VIDEO_ML86V7667=m
+CONFIG_IMX_IPUV3_CORE=m
 CONFIG_DRM=y
 # CONFIG_DRM_I2C_CH7006 is not set
 # CONFIG_DRM_I2C_SIL164 is not set
@@ -652,6 +653,11 @@ CONFIG_ROCKCHIP_ANALOGIX_DP=y
 CONFIG_ROCKCHIP_DW_HDMI=y
 CONFIG_ROCKCHIP_DW_MIPI_DSI=y
 CONFIG_ROCKCHIP_INNO_HDMI=y
+CONFIG_DRM_IMX=m
+CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
+CONFIG_DRM_IMX_TVE=m
+CONFIG_DRM_IMX_LDB=m
+CONFIG_DRM_IMX_HDMI=m
 CONFIG_DRM_ATMEL_HLCDC=m
 CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_RCAR_LVDS=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
