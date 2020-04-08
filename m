Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAA51A241C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmBM9T5H7QGuMObDM1VCa4HcM9jwW1z8MweSZfL2MT8=; b=aIUkPZYGlLGA5s
	xqj1yJ9uFXK2zJ3DukzlfxcfuFk0CbqnHK/ueA87K9j4HoQfP1Hel320qKbQFzHkLuMlwcHnT201v
	/x05arHop6GbW8ewIy9MoqkiXwIiPnnGTbegMnsyyostlPz932QmK7+hRdsf+/BGWAARHum+SSanZ
	sdryhl4SSKWRKPT3ZqZwJjHv+UEA8oAEGPCsAVStYFc+v2Uhq9BQCuqptSdKdCi+X4r3XzGCFD8fz
	1YnZa5sLUg5KiexPkPBR31MDLn0QFzyjdS/iK0gzrykajJ95nMsEixrq3VeU/hUoI1v+21DrI4Hsz
	dLqg05MoAuhn8QMj/JCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBkU-0003Mm-0I; Wed, 08 Apr 2020 14:32:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBjJ-0001r8-KA
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:31:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id y24so111744wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vNUJmyW/0AurvAI4tkIhYfgnlohv2nTKpbi6mh0xlvI=;
 b=X8xoTfHrd0Sfw1q3Hr8N4cLgFngKYZapoPfYdenjpWtKorpNb5Bstn+5+41Ssfnj0I
 3sz44ghiVSqWdxNKPvZAVTk6U9Xo/+gVt2xsodyMvSICQt3vhaoT4F29P1GlyMYj18vR
 OQbiuMQO46GdndqXdj1hCRBvKM62fSO3lGqYy1DtgPcVMNlHQ6ZOU7R/LecDdCpPjb9u
 fAsKWiEC/kxAvOCNCnFVSYD6sTRTyRL5r3pZsjjIA7KcZlIVdR3bKpyuqKWQ9kqa0/lG
 /KmhWjNid1ltzY8w/dkmnagUSdqXvvXy5vqAvGKmFWERKgMQlY9z07CIOiZUBMyMiVxJ
 7k0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vNUJmyW/0AurvAI4tkIhYfgnlohv2nTKpbi6mh0xlvI=;
 b=NcFSMAmgRiDiLdu5kgfj+xDRK+GGB4qEftYl0L5S9UnFLWALqujcx/JHtDnY/LW3tM
 r4GB+WviRWT0cVNilZJVY0JsY3TuRBVRIWP7DdlNGuu4yLYZxAxOyn7N8kYCWS3+kHJP
 eU43TSWqW+IS1lVerJrKqS5ANZ1/VK2LATTOmGWjdjXQ+WlVyxj4faX1XUuw8Kw1e0pk
 /eYdzmYIuPcRJeiVu+8mZ0ZAVzFYx5OlQybAPcfy1kjcINWJ+tjQAOvEJAoyXIjZ3oV+
 kBC78oRKpnGB4214b3dlEUqi/qigdoq9H5nlFYPsEvvqoZ/fVMN9JhSZvtG77COe4djD
 t9xw==
X-Gm-Message-State: AGi0PuaAFyfvvJfN68vOJXcrjgiyp4NMqICdcuYFsUaqD5ESgiNOHhbG
 5qYcS4627Ybd16oYJmb16fg1OL0voRA=
X-Google-Smtp-Source: APiQypKfQ60dQO/USHfHn1Zyi5ma7wDcLwDkDFMWIdbvlhovNGEmXJ2l9V9IELW6acmB3eORhypqLA==
X-Received: by 2002:a1c:750a:: with SMTP id o10mr4876811wmc.124.1586356256589; 
 Wed, 08 Apr 2020 07:30:56 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id a10sm36268828wrm.87.2020.04.08.07.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 07:30:56 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH v2 1/5] arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed
 config symbol name
Date: Wed,  8 Apr 2020 16:30:36 +0200
Message-Id: <20200408143040.57458-2-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408143040.57458-1-max.krummenacher@toradex.com>
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_073101_671912_D462E254 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
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

Changes in v2: None

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
