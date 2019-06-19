Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4544BB3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QIj7RioTjlWNwWzIVFUxXsury0TQvALBqZe9QuauBUA=; b=axGBdJLRyUQShJ
	WcE6e08gRXYXBSnSGLH6ObwP76Vj5ibb+LPy/s0mS9BnAoCLD+CW9/3FwwKGd6sHmXVi/T0sFGGK5
	eCpOssizp+5bG7T5hs7CzOJTd+UERgFPGVY7bGxInzb2vlihqiTcAuBj6Lkb8PnfJodP4c32yycN4
	QbAsY67Ix7oCdXfBqc3ryVf7ZHOATa7gygngobh7OBO+Ao/hnojnqRiScxZDvGpX4udz3UMunh+4r
	ZL/27/+dh+VTZsRxqR8HavcDJif1oA/cg+FyvGtzT/VyfSpsRSPaJzBDByXshUX+0r/5k+dO5+H0t
	wFk+OBwx0UtmZdfLxDnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbS6-00065k-2n; Wed, 19 Jun 2019 14:20:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbRj-00061C-Oy
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:20:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id f17so2052298wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xe8Z7G8xOvRe6JhL6dXMu61WRA0y1QcBsLv7BXFLXu8=;
 b=llwcE/vozsWWrzWhJC9CO+SJiPMgZWnVaC4ILiC18AVKVObOtbHqSSD55EKh2GLEEr
 yW9kTMVwvXP0MW/YcvnEzOedwNkcQ2D6Cxmo+AS0urgcS1z0zlUcceMrzXx2kxIcjkSe
 rg0kUNgaJK0dkzvGoo3D8exmVpbm6fWRJy4NnAcO/IwjxmoZ1uk2SjFKEcmvTM1uZ9xv
 yWPWThjFu9RrEyhJQztu3gNLR0VQhk5HqJBiUqcFL8ffaWx1BlPizsHiRlsW2nPl5iyA
 QKRJyQJuHOE0l/qMKvWfFtsaYJ0knEMonny7dmoUcVIIV9Xu6mn+9Sc+psaIdyOuFPsd
 bCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xe8Z7G8xOvRe6JhL6dXMu61WRA0y1QcBsLv7BXFLXu8=;
 b=j+XUuqxEn1llvxF4Ebb5v89TKh838l9w2EBsPtxEbZ03lsI7QALIeYzR7gQJdouphh
 eePWwjRIuMArzvTcy897CkvUry6wKBJk117IQd5tiwk6qlCtAF+EP93ylLehtFZPEshU
 taXTZkHwdoHhlb735vHKQ115QPPwKb8uCJB60nxKNp4vegB2t7vy8SwdVOLfM9uXz2rX
 CyuHJdrNLWx575pbsyXq4qgR9oNmDP2G6897zZshwvLer1PMyWzR53/NF4f5ClUPQcXx
 eeVJ4gzgdpM0GP7bxYrs9F7JTuJnm+VDq0MTu3vDJ6kdL1jA+hsk/+Nu5RpGylaESsmA
 cmwg==
X-Gm-Message-State: APjAAAUjcStkihk25mU7+CEkK+btEV8xnk0V1Z/o/JuJ6+ep285JRqxg
 9Bt6OESkDi+Jnc55TguQb35sHg==
X-Google-Smtp-Source: APXvYqzUYdb3XhMJ78/mGb9h4pNZliClNr3lXrzr0m0AXlFqRlXutMI0MOSuI04PSQl09GOwpUpkgQ==
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr8111575wmc.22.1560954017792; 
 Wed, 19 Jun 2019 07:20:17 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id o20sm24209979wrh.8.2019.06.19.07.20.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 07:20:17 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
 lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v4 0/7] mt6392: Add support for MediaTek MT6392 PMIC
Date: Wed, 19 Jun 2019 16:20:06 +0200
Message-Id: <20190619142013.20913-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_072019_834747_366DB61C 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series aims at bringing support for the MediaTek MT6392 PMIC. This
PMIC is used on the MT8516 Pumpkin board.

This patch series adds support for the following features:
 * PMIC keys
 * regulator
 * RTC

Fabien Parent (7):
  dt-bindings: regulator: add support for MT6392
  dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
  dt-bindings: input: mtk-pmic-keys: add MT6392 binding definition
  mfd: mt6397: Add support for MT6392 pmic
  regulator: mt6392: Add support for MT6392 regulator
  input: keyboard: mtk-pmic-keys: add MT6392 support
  arm64: dts: mt6392: Add PMIC mt6392 dtsi

 .../bindings/input/mtk-pmic-keys.txt          |  11 +-
 .../devicetree/bindings/mfd/mt6397.txt        |  12 +-
 .../bindings/regulator/mt6392-regulator.txt   | 220 ++++++++
 arch/arm64/boot/dts/mediatek/mt6392.dtsi      | 208 ++++++++
 drivers/input/keyboard/mtk-pmic-keys.c        |  14 +
 drivers/mfd/mt6397-core.c                     |  47 ++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mt6392-regulator.c          | 490 ++++++++++++++++++
 include/linux/mfd/mt6392/core.h               |  42 ++
 include/linux/mfd/mt6392/registers.h          | 487 +++++++++++++++++
 include/linux/regulator/mt6392-regulator.h    |  40 ++
 12 files changed, 1575 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi
 create mode 100644 drivers/regulator/mt6392-regulator.c
 create mode 100644 include/linux/mfd/mt6392/core.h
 create mode 100644 include/linux/mfd/mt6392/registers.h
 create mode 100644 include/linux/regulator/mt6392-regulator.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
