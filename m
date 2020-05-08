Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178771CA1DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wHO50pExU48vTXAPQXVhDdm9BYYP6Rm1a4YZSH4Tc+Y=; b=Xum
	QcFxEIlFNA2uL+TGl2NGrpB7ql0ITVO2NM4KLrA2APnIrCSbm3/kvdJuX0D3q/EJZjiZe8Seolu7Q
	55mN5I9xCxeuu/wmSN9Ef+VXIGX0gHdN37/WXD5g5oO1kzYSG1YLfr4C9iXpcpTi22xSESzppm4Xa
	iJtiO1nN3QbJR74dUt2uvmTj6mBRMkKigHfLGJFN1yfRMICPq+DQHv27f4Pgz1kUZ+T3GH9QcZe9R
	LayvKICUyCyV/k/GqZyNX8dFk/CgdhG3rQXQnLorstcx8cskIfq+JAG9FcsqH4rwOTpVUMUyZXQIl
	0XagFlRNkI/cthJBBDRWz0Ko14vtSJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuO9-00068y-6t; Fri, 08 May 2020 04:13:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuO1-00068T-Kn
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:13:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id q124so256885pgq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 21:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=n63i3r0L2IRpeGMKN7qKGLKSiEkxvDfFBuN0D82sIKo=;
 b=f549fH1riIbuo8ah1TTsCCpm1ZZXn7S2OPcoVIKseqS3u3naNxt2u5u2yue9ia4f35
 aukn+x9RoVtzRotGy89BFThqOsN+8Hvz0BiPwBjQEETQ9gD+zhB0cqzrEvTxKYQDvgwF
 ZZ3vzEx4Edbtr92ALNFDitl/XcwHHmoK6aBBirRzTJb2giYxmR8LHalrm8FHTOBuhSD6
 hR6zDTJluoRElYuNmnpxzdsWrJvQ2QN2cyG5asOiU16f9ANpVcSJF4/7QDMMFK9+ZPgV
 k0NVAlaHzH3PUoYp+3/40hIKX2qcANGDt4gxjc+LWJBv7LnVGgOCTAESa5PmQ5zQMZyR
 da5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=n63i3r0L2IRpeGMKN7qKGLKSiEkxvDfFBuN0D82sIKo=;
 b=qbXa4pUa2cj73OHl3KkdR2/kPn0O2yztJTOGh9SLwuObTKGM4jo57zkwmQN4nnVJMV
 w72O7RkwtVSVREHcYWFMbfBiYvd/ItVoDqZoSW9LisgaIHl7Z/Vrm+cIpQzVDuAkagzJ
 wD+zsJg2cplixwqjJRJWoVplkh9aj7JXLxas9JGL50UNI8/SW5UcciUeoXxIRnANzQDh
 p1TZ27ECYxt9l02zaYUdxUwKRxYg7dODl5G2ek1ag8VuExCC86Mrv4nFAZYF9n3uuNA5
 KvaKe87LB2dKU1V/FkVfyanIs60OIvU/e1g7z2+gYMl/Xgc6DKYHmvESfR/BQd5qwV6T
 IAZQ==
X-Gm-Message-State: AGi0PubaGDL2h5Fcb9Hjd7Z0mjkqUg7WDVAfgwnIhrFKpI4GyuyCO3Xq
 MV9ykTWBdf+Lsvx3MABqKfc=
X-Google-Smtp-Source: APiQypKy7XAhc6hawzdj77Xs0oeZFyq8G/VpqAn061VrqG5U+MNUQKe6OKJlyeRDZxXp18aM4MdX/g==
X-Received: by 2002:a63:da49:: with SMTP id l9mr508966pgj.432.1588911200789;
 Thu, 07 May 2020 21:13:20 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id h12sm314868pfq.176.2020.05.07.21.13.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 21:13:20 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 0/5] Enable ilitek ili9341 on stm32f429-disco board
Date: Fri,  8 May 2020 12:13:09 +0800
Message-Id: <1588911194-12433-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211321_677687_3F27C82D 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patchset have following changes

V2: verify ilitek,ili9341.yaml with make O=../linux-stm32 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml

V1:
    add ili9341 drm panel driver
    add ltdc, spi5 controller for stm32f429-disco
    add ltdc, spi5 pin map for stm32f429-disco
    add docs about ili9341
    fix ltdc driver loading hang in clk set rate bug

dillon min (5):
  ARM: dts: stm32: Add pin map for ltdc, spi5 on stm32f429-disco board
  ARM: dts: stm32: enable ltdc binding with ili9341 on stm32429-disco
    board
  dt-bindings: display: panel: Add ilitek ili9341 panel bindings
  clk: stm32: Fix stm32f429 ltdc driver loading hang in clk set rate.
    keep ltdc     clk running after kernel startup
  drm/panel: add panel driver for Ilitek ili9341 panels

 .../bindings/display/panel/ilitek,ili9341.yaml     |  68 +++
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi             |  67 +++
 arch/arm/boot/dts/stm32f429-disco.dts              |  40 ++
 drivers/clk/clk-stm32f4.c                          |   5 +-
 drivers/gpu/drm/panel/Kconfig                      |   8 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c       | 561 +++++++++++++++++++++
 7 files changed, 748 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9341.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
