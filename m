Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F4E8BBE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OFe0lFbcA0w8qNdmazIk9oSmfxW/WpP/jcPOZt7LcKQ=; b=WQHk4P2QfznCy0Ga2+Yo1eGmY+
	fhtE/Xn7uPXu6ar+Y2QZYvqhyF2lYdjP4Sg+v8BdMYvDSGpmWl1MM14uMTuABy9KRut5a4dLICgzM
	++2flp2KrVEvRRqjfnMBgDOcg3av2l9eEps/Q93vgNUoP5xBtoFZRWCpdYkQVoxxFW/37+q+RI8rD
	uMcAI9f5rM4/OZ0cJp+vVEpXRBRNIwjghtWCaO9Z/hLn1cEjrrZPgp2J8X3v2VD4eYzTDUR00C4xd
	nfQfytEbxq125I+D2QmYmk/aazWDNPH3esZ5bY2WwsQhWJTs0hiedLX04pYBCwt6xBKFyyfh2thbn
	o68YuRYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxY4Y-0000vZ-Jw; Tue, 13 Aug 2019 14:46:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxY4K-0000uV-8D
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:46:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 04C4F60E57; Tue, 13 Aug 2019 14:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565707595;
 bh=2IoyEMqIXK1S5ig0MQsZwXaRBSkNTdyKo/J01X/b8o4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=binOB4RxeVdG9W8RkU+Rh78mamw4a8qfbga6TRKfhjce7ijyBUJcbaUS09IczLst0
 HkoSI7cfoQ7aOb6PIQeykv7dOmZZWYzKw0tj7b81oUA6KRRXspualcDS4QJLpbOnsC
 HSS2oKJCThF6XDQF5YELIFEfS2H6u2cJ+HZNZmYw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DDA83608FF;
 Tue, 13 Aug 2019 14:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565707593;
 bh=2IoyEMqIXK1S5ig0MQsZwXaRBSkNTdyKo/J01X/b8o4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Oj2alQPlJikRq38cn+AQr57B198EMQJbTPoCBATnYp9x6QUiMvPZsxsKmGkDwQUtF
 mDTQC/KCsFYs54Y0Q2ta2pkXSSBUXKKqIkx7Y+br313ufb0NQK5mSrdJyafiQKEsR8
 OU3Fvsthkx8IrWwUQshL554z9DoIEIM5OWgBlqXQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DDA83608FF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v2 2/2] arm: Add DRM_MSM to defconfigs with ARCH_QCOM
Date: Tue, 13 Aug 2019 08:46:25 -0600
Message-Id: <1565707585-5359-2-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565707585-5359-1-git-send-email-jcrouse@codeaurora.org>
References: <1565707585-5359-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_074636_335563_01E01DE9 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Anson Huang <Anson.Huang@nxp.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Andy Gross <agross@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Brian Masney <masneyb@onstation.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Frank Rowand <frank.rowand@sony.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that CONFIG_DRM_MSM is no longer default 'y' add it as a module to all
ARCH_QCOM enabled defconfigs to restore the previous expected build
behavior.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm/configs/qcom_defconfig     | 1 +
 arch/arm64/configs/defconfig        | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index b0a0568..12dfdab 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -635,6 +635,7 @@ CONFIG_DRM_ATMEL_HLCDC=m
 CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_RCAR_LVDS=y
 CONFIG_DRM_SUN4I=m
+CONFIG_DRM_MSM=m
 CONFIG_DRM_FSL_DCU=m
 CONFIG_DRM_TEGRA=y
 CONFIG_DRM_STM=m
diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 34433bf..02f1e7b 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -147,6 +147,7 @@ CONFIG_REGULATOR_QCOM_SMD_RPM=y
 CONFIG_REGULATOR_QCOM_SPMI=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_DRM=y
+CONFIG_DRM_MSM=m
 CONFIG_DRM_PANEL_SIMPLE=y
 CONFIG_FB=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 1cd66cf..4fec7a9 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -531,6 +531,7 @@ CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_SUN4I=m
 CONFIG_DRM_SUN8I_DW_HDMI=m
 CONFIG_DRM_SUN8I_MIXER=m
+CONFIG_DRM_MSM=m
 CONFIG_DRM_TEGRA=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_SII902X=m
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
