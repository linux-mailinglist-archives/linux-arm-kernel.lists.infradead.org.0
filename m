Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB14A044F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 16:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mjy7QZdqhThUjLJ+vRIwMUjOdzV4waHIQKzIRpQKHrQ=; b=UJ7owU3bpO5QCV
	Uq0Dnzeqv+uvYdLeT5gzJky38hvRvmcqpzvEtjuuU2Mov5cmsPcE5LCupFKug2x+atPNgE6vzfuOe
	Yg+kYPyIRNm5cIyxG6CRoB2mdewY538SQ32hRaTEUvSiPej8H2pTpiB5AfIH+xh56u2AYBix3K7fL
	+AZ644IQXU9BatrsZWz5UCXMo5ncKyEiVfLDwRmEIE5dGJuhRdwObilwGYISgwqgtubTQbXvDfF8g
	z9nU6YfAAp2KlYgyKJNWzwlcToY3Mz7zHylGJSA7gQoVRItoPSr8utpJRcbRmwZr50aiR/crw49Mi
	6rBr/DNa+T7GaCxUlH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ygI-0007SL-7H; Wed, 28 Aug 2019 14:12:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yg5-0007PJ-8P
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 14:12:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id 10so222257wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 07:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f1KAv8pKi0AoAgvfh+n5R42Iglf6I+wQt55KJGFF0fM=;
 b=pc2FgNUQUjmKwzqDzFdyQRbg8Pz0IJ1f67uI8PAy3R+CZy+hUqM5zfcBwGGC0RoBeZ
 +R0k3wlkOb2mxbERi6LKxTZZzNQu4F02boiRkENQKTIvk9fBBLIYpfPbgaADkVqMgSCJ
 V1snUwxahhr3Mra0ax3jiesoRcDHZvl5OdK0wonGTm//SQCKQWwaX+n1REV0O+KdfyqD
 mn8DjWAWkOKYSfHlaRQ7tEDhtYXRekb7UhNMdiz86p8XFnanbwHRSK/wRzlX3zjD0yAi
 rSgrbYyRggylCIaxeMZ2SQxHL6BiJv3ReBDfNsga+HY/LeH7EXiW/l97aHRxzYH7MkP2
 j4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f1KAv8pKi0AoAgvfh+n5R42Iglf6I+wQt55KJGFF0fM=;
 b=GKd+M+GUu9EqINIZpiPE85pazDPj/6dvM1eZzGn5wco97V78NggHPVXrfbg8k+OOpz
 shfUVScbceo2kv36BknVt4O19nt5NoGC7nEM5uoAk92yoMkG0YkxzeojMdUBVyQsJZGn
 bnAlkbdxMLlhS4r8+mcX0hxkYfN2Yxxh/b6JuhA9kRX7c+06MYF79fPLNtwjLYcJJFPO
 Tq/cuMKmBqewFL/xU+kJ5qm9SyFlU3d15CRb23rslhZO+l9f2IGejIrZfEyUOUZQZCzR
 MSTFZ04F+p86/Nf4/A22Qk6cfJ7TXYBPXOScat9pmvkz6BD4aHtzusbmcq0dH1XYEx3Z
 VlKQ==
X-Gm-Message-State: APjAAAUwQmbf1YeulCVuxvieEqk4lSI48zdp2fiLoXLdmrjC8ny1JtJE
 Db7URjIFiRVu30bBGDDbgcMuaw==
X-Google-Smtp-Source: APXvYqz96TmPPVEmMTQIWd5o34VAawuoSnxOtUnJnMiSj9qw7YFhgfiDwSSFrKcnrJG3/uC29Gpqlg==
X-Received: by 2002:a1c:a503:: with SMTP id o3mr4911436wme.37.1567001519544;
 Wed, 28 Aug 2019 07:11:59 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a11sm2774838wrx.59.2019.08.28.07.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 07:11:58 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 0/3] arm64: meson-sm1: add support for the SM1 based VIM3L
Date: Wed, 28 Aug 2019 16:11:54 +0200
Message-Id: <20190828141157.15503-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_071201_295980_1B95D3B5 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Changes since v1:
- renamed compatible to khadas,vim3l
- renamed DT file to meson-sm1-khadas-vim3l.dts

[1] https://patchwork.kernel.org/cover/11109411/

Neil Armstrong (3):
  arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi
  amlogic: arm: add Amlogic SM1 based Khadas VIM3L bindings
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
