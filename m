Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D4E1BA4EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5rYMdpXBInsenKesWykFiAPUmEO5R80MQvQ1zVD/dY=; b=AYmGz2izyOhhCC
	uTEPPV+XUFST8Udd5s6nV2ciPnBpoR9PKiz2yj3NPgkdvp4iROrDabeReeGR8b+FFWzrSjH5xoE46
	IuPNHIajCM3FkkoUslIzShLbU5bWVdeBsebQTpydhTch0xCo7egJp7nWffUFfLbYoeTlSFObrJ68O
	fOSqrrtiW/Io3IVejm8sRRClc0swlx6jmXO6kaJwaUb7absBcSlcSCH/0BNwDFS06Q86GiyAHjFn4
	WahtNP/0L8r/RQmY70GoLisEpBF+dYUTC8kSVupc1Nq2oYdyIzljLiHwAwHFHgsAVqX31POR3oaG6
	IcDscNQsb+GkpicFroYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT40d-00047b-Cc; Mon, 27 Apr 2020 13:41:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT407-0003vn-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:40:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id x18so20586707wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 06:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RiMefAOXlyaMSqnLhpchCstN7XqhLMcx22y6IQqdL4Q=;
 b=ASTSFY9F3TLwf+IKtAq5cnpC+xQXoehcFGPhx+I2SuHprkVECleJxo2/AIiJ/HY0iJ
 4w3OzeuVWBoSqpfzzzGMzOOV0SY1aQeXkyQaIqeYgJaYqikSyyJFnata+2tbeCvZoJrb
 CZviEbLqr1mMLjdHLd5JBfqFoNINVou8Vcfa/vrE1OhsfFd21V/uvPNsGFqEJFy+G9WQ
 +eRJEBp5DEchJ7CRKg39eGHhFIwpSqo62eYWU6aY7jj4l9Gy7jnsw94n2LBsda5h6D6r
 x8DX+2jGxXy+vTXK87J3lHj0JYooWETEK/0FbLDEHO047PANUc+egb5mmEpAiaY/HBqG
 AXsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RiMefAOXlyaMSqnLhpchCstN7XqhLMcx22y6IQqdL4Q=;
 b=DCzy5mfxg00m5QECQcTpnoEj7o39bFmWryWVKaCLOBfDJBTUunib0RbiPMifdpu7/o
 FAylbvogrQkIFMgU6mj/7qtTmVjulv53sZbC5TJDeg+9DIspJX/ZcB7ZngIHrFHHzsqW
 UOLPFBnQqlQ6fNHcU+qC1APvP2BobPPIi7iLN6bhImK1D1r4qxRrIEd1IG5pCvQuoQ8l
 JKl8epMNB2QFjS71Oa/FENaoNtD7nxU6V38C7HMRibvr8Ws38i2x4aKswiAVoBQzoos2
 Z5R2hMv/H+G/Wy+Yk2D8IF9StOmDNUmjnjnRCC4E0msTbMeArwmXChFo7owOv9afxLnw
 hHxw==
X-Gm-Message-State: AGi0PubdWMDCr6GFksNcp82k/mSZ+a0vJwbBworZKUSkvulnwq1812sC
 Gom4bH4+uujavHSpbZOxUrA=
X-Google-Smtp-Source: APiQypLUOFC/DgEcn9NHO7x22MhzlTcbZ9utUziqLJQC2hJnzG4hsUvgA4WrEridvx5X5DqwVGIWeg==
X-Received: by 2002:adf:dec9:: with SMTP id i9mr27300917wrn.197.1587994846328; 
 Mon, 27 Apr 2020 06:40:46 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id g186sm16290640wme.7.2020.04.27.06.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 06:40:45 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>,
	soc@kernel.org
Subject: [PATCH v3 1/5] arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed
 config symbol name
Date: Mon, 27 Apr 2020 15:39:59 +0200
Message-Id: <20200427134003.45188-2-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427134003.45188-1-max.krummenacher@toradex.com>
References: <20200427134003.45188-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_064047_762305_7762D3F3 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This occurrence wasn't changed in the original rename commit.

Fixes commit 0411374bdf2b3 ("drm/bridge: dumb-vga-dac: Rename driver to
simple-bridge").

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

---

Changes in v3: None
Changes in v2: None

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 37e512c135baa..5033cfdde3d8d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -613,7 +613,7 @@ CONFIG_DRM_MSM=m
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
