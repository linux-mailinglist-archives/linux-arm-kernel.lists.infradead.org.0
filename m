Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AABA049B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 16:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t5DkWqw64Xa2FFvWuD8i8hdbtvRwtlWy/N8WSbmmI8s=; b=rAG6qsroqE6nr+
	xiF/sQZDORZBKr+d6jMvnHcfF9VDFjdKkVM+AEGo833RSEi8yN1T4Vu8h2scdSISjlwHB1mTzAth+
	h2vq7qL1Q+CkXgJGOvBpDOVMgZXkuQGXHpQsjYF3Di/GUPFN0HniXUNhhd9t6Bre47OcCzOUmd8al
	yapeoQK0/tGYReoJ5qQ0aBjpEZO2keqZ6E6ys8P9/yyp/uYeig/+cC+B9uioJPc7QJut8wPgjgejU
	ZEoC2K0TFFqVhlqVm9uqvJ8T/LM5dQ4o3YTQYMczADZdHauml4TKWHKxlE7xVzIqJnqUQevTFpc+f
	/YrPNT078IMn2bWJepAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ymP-0002lp-Du; Wed, 28 Aug 2019 14:18:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ymC-0002ie-Ab
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 14:18:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id o184so236594wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 07:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+UzxOv9a1WpCmhrklx86JwpkfaDfvwrG6kiqiVDTvh8=;
 b=InyAM+eBxP789KoA4ZICBi+cmdeIndVhj47o4LSbHLn4Fbycg6rBCQCRhzjRwisFL2
 pRGD6mbfhSnQYdPQ3gsHGvDSlrVTrgGj8vggeQkCJnDQjQwc1Y3InouJKnMiiZigl1O6
 ohHtZmvF6HKUX5HXz9UCe0b9BI4bkDItjqAa67MUfNCf2JheMOZiKSIsxmKP5nVGFfEO
 HOrBtIlTYLHCwi8akzyAQESIgtLN4ecMEFQJPJQfMlCZRPH+GK4rkniEPKz+nmq6VQqn
 AVRxJfrhyLPpGl2BH7w21znbHR3yYW+qkDPbB6sgToExYp65aI23lB+/0orNQgrk1TF8
 BkOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+UzxOv9a1WpCmhrklx86JwpkfaDfvwrG6kiqiVDTvh8=;
 b=JjYxgSNDPyWfpFDc03ZY0L5Ni8gUkRt3sM6UcUpVj2pa+fCZRbLO87eKpeId18hh/Q
 Djgsdl/VuD2zoyICcbsm0yVMQz1ZyhsTt0PsjTXoVgkx5buLkvK+7vEB5Ok1Q2k9y+mL
 +O+B4POQE9meU6orYjiwQvC+sgXZg9b797QEg9xpUfZIA3YdbslsNC5XbevvZ3OlHPfr
 TP2cNpcI2BwWiYYLGEQoA5RVEs5HCcBgFqo0WT/o8ZN8NVJ1RyKdY6hlsxrLR3zKuxpK
 6hufKxFf8T410K0w8FBS8UkxpceS49ZtGdgi6brNm97tgbbfPPwt78av+oE3NkDBJ5xM
 yJZQ==
X-Gm-Message-State: APjAAAXnx8M0Nku9dnkv79lf4dwkFEOvgePvI4l2tJwkZpjwftK1hr2A
 xTI3XBU6kyZq8H8E7CfIRO1zkQ==
X-Google-Smtp-Source: APXvYqzrySHRNxXc1/MJermkli4siDaCGLmKsgijOLkdZqypQgEKEf3uxKd1T4Y6b6UUSc1TCpEf5w==
X-Received: by 2002:a7b:cc13:: with SMTP id f19mr5430764wmh.116.1567001898683; 
 Wed, 28 Aug 2019 07:18:18 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u8sm3022354wmj.3.2019.08.28.07.18.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 07:18:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v3 0/3] arm64: meson-sm1: add support for the SM1 based VIM3L
Date: Wed, 28 Aug 2019 16:18:13 +0200
Message-Id: <20190828141816.16328-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_071820_369881_1C86F033 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the Amlogic SM1 based Khadas VIM3L variant.

The S903D3 package variant of SM1 is pin-to-pin compatible with the
S922X and A311d, so only internal DT changes are needed :
- DVFS support is different
- Audio support not yet available for SM1

This patchset moved all the non-g12b nodes to meson-khadas-vim3.dtsi
and add the sm1 specific nodes into meson-sm1-khadas-vim3l.dts.

Display has a color conversion bug on SM1 by using a more recent vendor
bootloader on the SM1 based VIM3, this is out of scope of this patchset
and will be fixed in the drm/meson driver.

Dependencies:
- patch 1,2: None
- patch 3: Depends on the "arm64: meson-sm1: add support for DVFS" patchset at [1]

Changes since v2:
- fixed patch 2 subject

Changes since v1:
- renamed compatible to khadas,vim3l
- renamed DT file to meson-sm1-khadas-vim3l.dts

[1] https://patchwork.kernel.org/cover/11109411/

Neil Armstrong (3):
  arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi
  dt-bindings: arm: amlogic: add Amlogic SM1 based Khadas VIM3L bindings
  arm64: dts: khadas-vim3: add support for the SM1 based VIM3L

 .../devicetree/bindings/arm/amlogic.yaml      |   3 +-
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../amlogic/meson-g12b-a311d-khadas-vim3.dts  |   1 +
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   | 355 -----------------
 .../amlogic/meson-g12b-s922x-khadas-vim3.dts  |   1 +
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 360 ++++++++++++++++++
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  70 ++++
 7 files changed, 435 insertions(+), 356 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
