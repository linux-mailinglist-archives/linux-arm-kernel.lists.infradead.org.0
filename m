Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F27B1C2588
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 15:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GXDBZ2aw8qxXE5TCZmDIaR3FkxBoiMKipqyz3mG8csI=; b=ArupRL+uMT1bqt
	k/aGqu5+9xWdEXE7rhLuSVTfWfO6MSpP+bbTUVtHYKdFZ6GvrSrXEjoUfbBg9sUEOLmOlr7zwWV0n
	cbA/noBY8g07ofskhreW4hEq3SLrRXCoKWceXytL/Vcv1+ovpYlRU46LLbCFqJE5hkQ5hzHXOfRRY
	xuUKU+WCWrHq9Hg1siJMHKbm+lI0h5fnoiksQBdgbJjZoQAvsr4qyZQQ85Ablh+ly4A/nikJFNz12
	Z4fbU5eqdvyecYTXHW5jPshYacVbsal2ukO4CvGQ2tahHQDn87fLH0SCEhJgkCrnRVV2uVMVs7oxo
	Aa9XVbon3fciOu0hqBYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrku-0006lC-36; Sat, 02 May 2020 13:00:32 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrkn-0006ir-Oy
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 13:00:27 +0000
Received: by mail-qt1-x844.google.com with SMTP id w29so10124363qtv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 06:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vp9pFOaNAK/bZV4TMm15vSAV9KoRuRCBgnB4GbG7eV8=;
 b=AtRW2QBQjVZqK4pu80aXjEqAkuT5MVq+zFiE6w7FSMt0EUlfKfYXquyiZYb5tfk1rf
 I/4ao3SQbD6713xSca+TcVym9yryLZchj7tk8of/e7FLMc1MQPG2wzPMR5tt8MznBrYt
 Cn//hT9jPNw5R1ijqSSRIojZBVN4oCf3v++vvh2wqMDTPANaH46iNEpe5xlg6VTC7hJp
 4VDRiOeUs1N3mdfPFC848qrejNltWvlCfWQ/IumE4pCBWCAM3FmAkJorhY3ac88e8Guc
 EoO83lTB5FfhDtHdSeD7Dpkmtb0hNyJaXobvjFIUzfYCf9rvNL/90ShhorZPvP+zoPnK
 uBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vp9pFOaNAK/bZV4TMm15vSAV9KoRuRCBgnB4GbG7eV8=;
 b=uCpds0EUzpcSLNu63ajJuZaUic+xiciG/SGOxhJIJQcMOvmz69Y1UHn0YPwsDpdyo9
 BO31kWT9fdB12SzgX18y4nqhjnNnpWOUr4MlkBEoSD8RtWkMxbZ0Id9Z0TWZrPYSeZf8
 /voqUBuaGqybfj8yVznOpcqcVKLubuP61zjOAchElNC+YXtWqSOQWPQ7lU7CLyfPEP3D
 yM1mk1nJ0Pt2GLFIiOHlG/2FzhTQvlJGat/4qVFhZlARpD0KFLwwTDdrFVGMm/4XcqNC
 9svIHEUcXUg9hCy+LPE06ds90HFq5Y6YHvCXi8b8XP2rUeGsrrWOefHiNBMCGx1ENkQ4
 M59g==
X-Gm-Message-State: AGi0PubnhsfGMSTQ7YecLZqblhnlciWXlwp4EigfH8BqR/UDHQaP9NQF
 m19bNcXJ5Jk405AQlLRO/Dzzb5xklis=
X-Google-Smtp-Source: APiQypKm5d8ePdZUSklGoPtSOJFY7y2SdZZOsOKx6ignPtFrthW7vx97HLGQX5+5ikbY5bql7RBiwQ==
X-Received: by 2002:ac8:3713:: with SMTP id o19mr8049899qtb.371.1588424421301; 
 Sat, 02 May 2020 06:00:21 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l24sm5067668qtp.8.2020.05.02.06.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 06:00:20 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable some audio drivers on i.MX8M Mini
Date: Sat,  2 May 2020 07:59:47 -0500
Message-Id: <20200502125949.194032-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_060025_811090_D5D2EFC7 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Will Deacon <will@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, aford@beaconemedded.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Adam Ford <aford173@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini has SAI and micfil support but the drivers
are not being loaded.

This patch updates the defconfig to add support
CONFIG_SND_SOC_FSL_SAI and CONFIG_SND_SOC_FSL_MICFIL to support
these drivers.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 366857dfa9de..4e60e8a98b83 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -638,6 +638,8 @@ CONFIG_SND_HDA_TEGRA=m
 CONFIG_SND_HDA_CODEC_HDMI=m
 CONFIG_SND_SOC=y
 CONFIG_SND_BCM2835_SOC_I2S=m
+CONFIG_SND_SOC_FSL_SAI=y
+CONFIG_SND_SOC_FSL_MICFIL=y
 CONFIG_SND_MESON_AXG_SOUND_CARD=m
 CONFIG_SND_SOC_SDM845=m
 CONFIG_SND_SOC_ROCKCHIP=m
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
