Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAFA46F9E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4lp7lZiNzPtxMegGt7WD3RUroqs4cT/+FOE+vuKxN3g=; b=oxqXZlwn7Iyn9k
	7dG0B6s5haIv3qVdHnExLsu7vBLn5qqrWz2VOi08phgFq1+hJBYTtvHoLQMrUk4icGSD3h+MA+Tqg
	wEIS1b284ZKof7h11x4NAIqKjs74EhBW8kup+M2YjymQR9KuxbdpaHcluwCuKV3vCtPL2aVpjeLzH
	EkPcuVu1OdJAzSGMiFezNmSoHOIvCarpGhc6Tjv8yF2ajBXiL8W4HNKORoCWDcb0IuQbk0+2DJb5c
	Ehm997dX1oV0UP38GVAFZUXYAr1bbwAA1n7GWUYGKRWN4UDuJXI68KyAp7wxt72JYhX+ooramilpX
	hKcaDnH3Yy6VVLFaXCKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc66C-00009r-GG; Sat, 15 Jun 2019 10:39:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc65a-0008GS-N2; Sat, 15 Jun 2019 10:39:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so1085250wmd.1;
 Sat, 15 Jun 2019 03:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EWaWjBLfgDeqQMeH6hpzSxjXl2/kKEQOmTgrAj3YJGg=;
 b=q4/8iFDv/T3DcaMC2SysEKqDtCxF3c7gcO9kFC6QhAQ8Ex2o7CwvTeaOo3VXylWkt4
 YtbxW1khkg1DKRwBV1F2J2Dx7XsWT6rv7r8yWVXm4CBoo4yVH/vislaPW/LkR2ChisMx
 j8czCpHUS5RtVrKyJjtzW8TPdYApVAt6hXdf+z+bEjCgoussLKr8dbuyIZnjrvJBzU8p
 3v1fwA87rIJQ0l4yCuDEVLyQ0HIrdeB/ovFmI7Cx42GS4Xq9b+WPRwNLXlVje9c09Tz5
 dHtJbavxvfEoLGIDWDTzo/YLgR9zA5T8dPelO8cn3of6uTO2tuh8JYZLTaaRzEE+JYEG
 D2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EWaWjBLfgDeqQMeH6hpzSxjXl2/kKEQOmTgrAj3YJGg=;
 b=W2XRWFGGVYaAVIJbTfow5Agx1cs6aaGwj7FxyT3BKIwX6I1hPfCw5xy1Acq+fiqelm
 LT993NqmRRUmOrQesiCDhkanniT/vaJ23AuAYPH/PzaqBcAdTM68deCHeZ5s239y76+S
 eHiUtWffPRDvEtLjOPBPTuvLGPv2zAPSdx5Jk0IbSt2EKxQZ9n1wcaX4jeEM7nyCSa3z
 0NMOv6pSe4S8WKzrfMFndlOPR0yYPF+3MkAuQz/BdTehfslFa/wn/E8frCsor4Xmq+uf
 C6/F7uvomg7hZM1sVl47lczQGC46yyRpvXTyYmNy/qKlaXND6wdDiN78xQUHKvFAhcG4
 nMpA==
X-Gm-Message-State: APjAAAU3VAjdBLGDjw/gNmkrr6gH04Om/GHv+RXMzTiHt3zKzj62WeFF
 KdUZjyZ+BM2eGe7h9arxMo3IZJdPfn8=
X-Google-Smtp-Source: APXvYqw7KUGm67auqn07Aq7kGxt/BE4gLpTyvUOVo7p1zIlBqBC3k9rX5VurjgaPLbfEwXXhKwRLZw==
X-Received: by 2002:a1c:2dd2:: with SMTP id
 t201mr10541354wmt.136.1560595152890; 
 Sat, 15 Jun 2019 03:39:12 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id
 o126sm12209031wmo.31.2019.06.15.03.39.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:39:12 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v3 0/4] Ethernet PHY reset GPIO updates for Amlogic SoCs
Date: Sat, 15 Jun 2019 12:38:28 +0200
Message-Id: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_033915_145053_DF4A3B0E 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While trying to add the Ethernet PHY interrupt on the X96 Max I found
that the current reset line definition is incorrect. Patch #1 fixes
this.

Since the fix requires moving from the deprecated "snps,reset-gpio"
property to the generic Ethernet PHY reset bindings I decided to move
all Amlogic boards over to the non-deprecated bindings. That's what
patches #2 and #3 do.

Finally I found that Odroid-N2 doesn't define the Ethernet PHY's reset
GPIO yet. I don't have that board so I can't test whether it really
works but based on the schematics it should. 

This series is a partial successor to "stmmac: honor the GPIO flags
for the PHY reset GPIO" from [0]. I decided not to take Linus W.'s
Reviewed-by from patch #4 of that series because I had to change the
wording and I want to be sure that he's happy with that now.

One quick note regarding patches #1 and #4: I decided to violate the
"max 80 characters per line" (by 4 characters) limit because I find
that the result is easier to read then it would be if I split the
line.


Changes since v1 at [1]:
- fixed the reset deassert delay for RTL8211F PHYs - spotted by Robin
  Murphy (thank you). according to the public RTL8211E datasheet the
  correct values seem to be: 10ms assert, 30ms deassert
- fixed the reset assert and deassert delays for IP101GR PHYs. There
  are two values given in the public datasheet, use the higher one
  (10ms instead of 2.5)
- update the patch descriptions to quote the datasheets (the RTL8211F
  quotes are taken from the public RTL8211E datasheet because as far
  as I can tell the reset sequence is identical on both PHYs)

Changes since v2 at [2]:
- add Neil's Reviewed/Acked/Tested-by's (thank you!)
- rebased on top of "arm64: dts: meson-g12a-x96-max: add sound card"


[0] https://patchwork.kernel.org/cover/10983801/
[1] https://patchwork.kernel.org/cover/10985155/
[2] https://patchwork.kernel.org/cover/10990863/


Martin Blumenstingl (4):
  arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY reset line
  ARM: dts: meson: switch to the generic Ethernet PHY reset bindings
  arm64: dts: meson: use the generic Ethernet PHY reset GPIO bindings
  arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY reset line

 arch/arm/boot/dts/meson8b-ec100.dts                   |  9 +++++----
 arch/arm/boot/dts/meson8b-mxq.dts                     |  9 +++++----
 arch/arm/boot/dts/meson8b-odroidc1.dts                |  9 +++++----
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts             |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts    |  7 ++++---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts  |  4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts  |  9 +++++----
 .../arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts   |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts       |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi  |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi     |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts  | 11 ++++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 10 +++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts   |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts        | 11 ++++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts    |  8 ++++----
 17 files changed, 80 insertions(+), 66 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
