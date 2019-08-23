Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453949A876
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tN3dgYgtGQ9o6HGb6fVIVnCWa5sL+2oOlacMl2fm3Jo=; b=gsAbiXu3hs6FjW
	bdgMUsWYvSEvnnOR3KmK9oCd1K7sOvNRowpXxSp9X2/+pgWXFJ/60eB2hS0vb2+RYzIua2vfYoOyY
	0iZiMc7xdcfYa/XyIuZ2ogsbSEm9p1CkjQa+X3yN833EAtdGwmcEnwLNHn9vN8GOfEl82gj+syvGa
	GubobSuZn9y7C6GG1ypPp/XPAVe6Ag9Qo7eJBCTasy6iSpib88T4OVMfaTrml5IB7YBwyjt7TIdIH
	f85Fb6B6CrFRD71agztilDlXmxXEnYR67HkDLsg5CnxvWhYYBF66s4TEb7QL/1aNsXn7h4mZQ0PLB
	Lns9V7Bskag7JTekhUSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13qc-0001y8-R6; Fri, 23 Aug 2019 07:18:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bB-00013R-6d
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id c5so7823663wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vS6xmM1o4WiYAtnye6AaJ1yvjVsYp/heWNStiuUNd54=;
 b=JvmXI4IDuugnF0UEeIOn4C9BrsVkHnPQSawVawISluQUAsOo5lwzWS7ylrKoKm79Ax
 MtG+Ecfz3F8/PO7H+WQKxCXrRGfjinkUy8yePNuykncOuBtVBS140o4XEjcsHPlyLgrx
 CM6KsFCCOs3iql0c4n4ysGcuhAUDJWqv25PUplxEM9quaKrjs5AOQj+Xs6PMg2pGSOzM
 kDsQax7XlQGqmGI2xjPfk2xZr0js4NCHf0rliNWrKNmR0lJBDIJK3ekx1Rthvr0Y4pcf
 YC6eTbJXnb6QXE+0YK0JMp6acJt7izrmdkv3drqeBMf2voNQFgi7ZySr6YR+D89m29Dm
 fHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vS6xmM1o4WiYAtnye6AaJ1yvjVsYp/heWNStiuUNd54=;
 b=Y3k5qifW9s99x7gYCW+HrsFzYwqEwOewzv+LDnAq0/PGrBx1o4ukxXeAUKc50IFDLd
 OCHO2UfHGa79TmJHCp5CDu2cM8pgbTxcCA9fxhKtFr83kOsuZzxWeRyXKaUjhbmmH0O3
 s8aG3IglL+JWdB4rPi2qZpIfsSx3c7s6FokO3evRh9dkMbht8jcGebMrUmT+rwXtXbFQ
 TgYui5bfy5uCk93EITQuRaoqCV0bfGBN1yE0Olhv/UPNobpncDQeqy6RSEfzoiyZANAB
 e1bYym2AGYQp+rYBXRGXExIrpkgxXkaeps+WcblcukzMhxOm3wZsiPltat9bU92VcCIw
 bZgw==
X-Gm-Message-State: APjAAAUj7v2orZ2UUUsFD4/iX1wue/kqhushfeexOZ4yOfctyHMsLYbf
 S5RuvkzxzYbeJa6sW4SgWSA3YA==
X-Google-Smtp-Source: APXvYqx9lHpHGea6NolLMfr9QDp+D+dEO0xlkR9VntWGjp8ouTua1i3g1Oom7QpRBdEEJ8oV8s2e2A==
X-Received: by 2002:a7b:c649:: with SMTP id q9mr3153030wmk.108.1566543774241; 
 Fri, 23 Aug 2019 00:02:54 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:02:53 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 00/14] arm64: dts: meson: fixes following YAML
 bindings schemas conversion
Date: Fri, 23 Aug 2019 09:02:34 +0200
Message-Id: <20190823070248.25832-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000301_968685_C6C5615F 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the first set of DT fixes following the first YAML bindings conversion
at [1], [2] and [3].

After this set of fixes, the remaining errors are :
meson-axg-s400.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-sei510.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12b-odroid-n2.dt.yaml: usb-hub: gpios:0:0: 20 is not valid under any of the given schemas
meson-g12b-odroid-n2.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-x96-max.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'

These are only cosmetic changes, and should not break drivers implementation
following the bindings.

Changes since v2 at [5]:
- Rebased on khilman's v5.4/dt64 tree
- Collected Acked-by and Reviewed-by tags from martin

Changes since v1 at [4]:
- Added suggested commit text from Martin in patches 1 & 2
- Fixed NanoPi K2 model name

[1] https://patchwork.kernel.org/cover/11083597/
[2] https://patchwork.kernel.org/cover/11103229/
[3] https://patchwork.kernel.org/cover/11083649/
[4] https://patchwork.kernel.org/cover/11094063/
[5] https://patchwork.kernel.org/cover/11106927/

Neil Armstrong (14):
  arm64: dts: meson: fix ethernet mac reg format
  arm64: dts: meson-gx: drop the vpu dmc memory cell
  arm64: dts: meson-gx: fix reset controller compatible
  arm64: dts: meson-gx: fix spifc compatible
  arm64: dts: meson-gx: fix watchdog compatible
  arm64: dts: meson-gx: fix mhu compatible
  arm64: dts: meson-gx: fix periphs bus node name
  arm64: dts: meson-gxl: fix internal phy compatible
  arm64: dts: meson-axg: fix MHU compatible
  arm64: dts: meson-g12a: fix reset controller compatible
  arm64: dts: meson-g12a-x96-max: fix compatible
  arm64: dts: meson-gxbb-nanopi-k2: add missing model
  arm64: dts: meson-gxbb-p201: fix snps, reset-delays-us format
  arm64: dts: meson: fix boards regulators states format

 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  6 +++---
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  7 +++----
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  2 +-
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     | 19 +++++++++----------
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  1 +
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-p201.dts      |  2 +-
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  4 ++--
 .../meson-gxl-s905x-hwacom-amazetv.dts        |  4 ++--
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  5 +----
 13 files changed, 31 insertions(+), 35 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
