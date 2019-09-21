Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B133DB9E60
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EXJd5K9WrIqbeGSMFEM3wrbq41WVy2CnUoe8tSW3xis=; b=uuY1e7Nqo9rcCo
	XiU8FO0Qp4y9NA6SVWYbx2MOd6gCz+eBkt0eoM7qZBJGfTX7xbRQicoXzwALyn90lHQbCrRrY0oVd
	X9SsjmZWnqLaVqqdoBL0KmpEFeoAp9rL/LBh4Yy7AUKEtNldn8OCASlfxZ2DtZWzQpHW6ZZyp+13k
	cpk+hRS26ow66jS0sbpIFucff1F533CWagCoR8o/Auvb9j7x/3TxEHAbR2gVQ+4uvudnfzZhgXuTI
	mPIcPH4KVyEnzKzq1trLxL1ASrJXHadTXYZ6k1jJRN3Tjkq5AD6UYZjUrUV+rP7phzhapX6NQ2F15
	CuKsZh9XA4bQDxBXD/Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBh4K-00079d-7U; Sat, 21 Sep 2019 15:13:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh41-00077F-Jq; Sat, 21 Sep 2019 15:12:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id v8so9623199wrt.2;
 Sat, 21 Sep 2019 08:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cy8BeFSyyxwCJlrN4qHH8AR4EXYnev9cLyrShu/UrkQ=;
 b=k3ebWKuhTvDBaawmONRTOFMM7lDUOFLxEasIcVIStcSneASkrQBwEuItFSSDjr6B6Y
 FKWFRvcEQPXg2Dd19GWK2TKxBjMZ2hVNlD5X/F6Rx4Xt8+yaPHAeD8mCowQMYBOEY3an
 ga1FPmCX/J4lWpGGJnSkWSNVzkTK2D3vDe3nAX7+TK++LbxiHMyJOXWufs8ACJx7iXH4
 s5Tgf9j1diNERktWhqYDIExnwrcf4tumXTylzW1J5jBZz1F2lOkWJDBbIIuoSWy44C16
 CYG8kbsWaJmtwZikJBokiia/zDpwyZr7khG+xqZGkk7ImZD9UM1tqlS8tPraGmEnIamM
 WHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cy8BeFSyyxwCJlrN4qHH8AR4EXYnev9cLyrShu/UrkQ=;
 b=DsO5qOGbOs9ojWgT/v3d2RNZt7dXnc/+vjHdTo1GtjSXY5wU4QEmMM2RYl+hlhV6Xj
 7Xc0AXx/EVhEMxthFicyaNwkGfb2yhwEtJ22CQvnZe46M8/3F1xE9Sk3+QsAMwBd6wDe
 0/CwpBFWOE/WLgRjovI5OYM8DpfP/kmPDT4pUGfy6iIKLZsjVubzXeLxC3/tmYIwCLPP
 StAIOMC+DJMxRBvX/CHO/D44z6e+K2btpPOi43kUylJ1PdprQlttp0Rjz+Bsm3WaO4Um
 SkSp1Z32WwzEEsekeUE7pQciM/VHJv/UvPM/xMFWUtEr/j++rQYsqTDs4VLIxTi+NaIa
 zGFw==
X-Gm-Message-State: APjAAAXp75XiurtAgWV7AyjKNXycEq0zFG9HjC6+R7UazT/w/l8mwqyY
 PYwBIrSzkNFHLXMISiex+AE=
X-Google-Smtp-Source: APXvYqw/V5JLWLvUR93P5+Lb2v8QiSrmRjA9KV1rVw9muLj69o9nmSCWZTmtDbJFGQj4P8XZwTRQ3Q==
X-Received: by 2002:adf:ec44:: with SMTP id w4mr14678602wrn.251.1569078763876; 
 Sat, 21 Sep 2019 08:12:43 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id
 y186sm10712491wmb.41.2019.09.21.08.12.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:12:43 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
Date: Sat, 21 Sep 2019 17:12:18 +0200
Message-Id: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081245_679098_33597EAA 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far the HHI clock controller has been providing the XTAL clock on
Amlogic Meson8/Meson8b/Meson8m2 SoCs.
This is not correct because the XTAL is actually a crystal on the
boards and the SoC has a dedicated input for it.

This updates the dt-bindings of the HHI clock controller and defines
a fixed-clock in meson.dtsi (along with switching everything over to
use this clock).
The clock driver needs three updates to use this:
- patch #2 uses clk_hw_set_parent in the CPU clock notifier. This drops
  the explicit reference to CLKID_XTAL while at the same time making
  the code much easier (thanks to Neil for providing this new method
  as part of the G12A CPU clock bringup!)
- patch #3 ensures that the clock driver doesn't rely on it's internal
  XTAL clock while not losing support for older .dtbs that don't have
  the XTAL clock input yet
- with patch #4 the clock controller's own XTAL clock is not registered
  anymore when a clock input is provided via OF

This series is a functional no-op. It's main goal is to better represent
how the actual hardware looks like.


Martin Blumenstingl (5):
  dt-bindings: clock: meson8b: add the clock inputs
  clk: meson: meson8b: use clk_hw_set_parent in the CPU clock notifier
  clk: meson: meson8b: change references to the XTAL clock to use the
    name
  clk: meson: meson8b: don't register the XTAL clock when provided via
    OF
  ARM: dts: meson: provide the XTAL clock using a fixed-clock

 .../bindings/clock/amlogic,meson8b-clkc.txt   |   5 +
 arch/arm/boot/dts/meson.dtsi                  |   7 ++
 arch/arm/boot/dts/meson6.dtsi                 |   7 --
 arch/arm/boot/dts/meson8.dtsi                 |  15 +--
 arch/arm/boot/dts/meson8b-ec100.dts           |   2 +-
 arch/arm/boot/dts/meson8b-mxq.dts             |   2 +-
 arch/arm/boot/dts/meson8b-odroidc1.dts        |   2 +-
 arch/arm/boot/dts/meson8b.dtsi                |  15 +--
 drivers/clk/meson/meson8b.c                   | 106 +++++++++---------
 9 files changed, 87 insertions(+), 74 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
