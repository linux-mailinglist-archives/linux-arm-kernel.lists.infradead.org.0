Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F901A0C0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFI996LKmBR0jTOYB5MkyMDI2H8lo2IUNboZg45rgB0=; b=ZKTQkLoH/bQD6q
	EQwiel1AWCHGvWWLrF8Y8LOsasQkmBDWL/cjUI3uA/0dRgKplsn/FTmzXN3d25kWpEQmGJ/cJlIKF
	zUfTP8oRrv8cKm8rutgtCWEqtGXPqIvM5bZImZDmlFYbr0+cEd2OiO+2tyWqDcheTxDWpLVgceZhK
	AjKv6g6GfZp44snLdtRDD8QxxkhOEl07s05RnK2AvvoiBhmN+H0/+FVg3Fzar2+rXsxD7sGYQkXk3
	WLuTJpSF+GyENUU20sU4UjoCnQsbKaBBw2TcnHAhUBy0Id5j3kH/UzyKkeLN2Q9Mv5+f1mSuxWWMw
	dMPDKtNtb/ZadJtUEf/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlbR-0006KS-Su; Tue, 07 Apr 2020 10:37:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlb5-0006Bl-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:36:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so3310369wrm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 03:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TPds7mBnkEpkQwy+qSjMo7aN1Cxu/qv8fnAKewhN5TY=;
 b=XgHGDJuhlWB53K7kSOMCeUU+d2LLI13DU6SbFx73xSB3dGcXh3lWrdaVLYHXbhEXam
 UMSIxiBjmvypThjWEw0rPAOpJNKS56qNQURYwXtydsIlJODoqXcLAJkCQFbeUttPdmMT
 nFULO+JQm9nCqPIKCzmfro/NVlCz/2PJtUJuR0Z0pIDfK3A1J5W0UmgGVZg61SlFgl2r
 PvnVHOJthhXcORRBuPWBh3BwY0WHOIbwpsvDA4RhICLlRtcCdYt9SLxtRSOvHlMTEXDQ
 NGMLcdF+wmkm9c76sPZr5B9NP7nbeHXAY1A6ToQnjucT2mSnp4fJh18iWngG3DtO6hlO
 AYeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TPds7mBnkEpkQwy+qSjMo7aN1Cxu/qv8fnAKewhN5TY=;
 b=pjnk4BXYprQ6ZoYJRbn8LGHYhZ3NjaU0Syh9BjBt4YcsSzR4+5ZSojdSclj9je4zzX
 df41Gw+QXz2djS2BP5B7oFPv0CHnAkbh54ebWs80h1Ly58SfWBzoaB0YkyT8Ctfw2h7W
 SMh7z4wuBiPrt/WbKXlxLNBKAzr4stZLCUhdJMgRzgx0o+H+3yHoUjinBLTidjL0+YNz
 jZrCTl21ojBVjFpTR/EvVvI1wV+2pBwWw6sU6pwYRsPnkCZuNmRlQBNCzfaUsLykNHfM
 hxHHYxfLCkkIroLGx1BdP9PhTyXKI5L9/ZumIG3ohojYJjBGA9d60sjv0avCXTqGfSj8
 sPQQ==
X-Gm-Message-State: AGi0Pub8HkZj6dBdId9bKpX83+fAvGyvIwpAeGRKaHGrKBM+0ay282pa
 MOcStF4xXy0mBHaGTmQab/s=
X-Google-Smtp-Source: APiQypJCbIb+EF4w6L0bLgEKdLTmTLmcq/2wjVvUlpt/OF2HSK4ZsVgDMeKDsUVL4EcT/GVVyL1WRw==
X-Received: by 2002:adf:904a:: with SMTP id h68mr1900019wrh.291.1586255806173; 
 Tue, 07 Apr 2020 03:36:46 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id c17sm25016722wrp.28.2020.04.07.03.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 03:36:45 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH 1/4] arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed config
 symbol name
Date: Tue,  7 Apr 2020 12:35:34 +0200
Message-Id: <20200407103537.4138-2-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407103537.4138-1-max.krummenacher@toradex.com>
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_033647_889901_8A410234 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This occurrence wasn't changed in the original rename commit.

Fixes commit 0411374bdf2b3 ("drm/bridge: dumb-vga-dac: Rename driver to
simple-bridge").

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 24e534d850454..ae908c3f43c76 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -610,7 +610,7 @@ CONFIG_DRM_MSM=m
 CONFIG_DRM_TEGRA=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
-CONFIG_DRM_DUMB_VGA_DAC=m
+CONFIG_DRM_SIMPLE_BRIDGE=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_SII902X=m
 CONFIG_DRM_THINE_THC63LVD1024=m
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
