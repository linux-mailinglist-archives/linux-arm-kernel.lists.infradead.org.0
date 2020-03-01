Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9759C174FD5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 22:20:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zHnR8vdS48WCPl5CGLWTVSBNC6Q7ELqjwSvxe0Tqng0=; b=IMMTC7uR7lMGRv
	8+C72o4w8V9WYkAAwtyFbR9s1n7B+qUucN5p32M6lS4+N5R864teULTk3NRK9g8/Cp9j3gHqh29aG
	l1kw3MNfR7aWOr/4jag2SHkDnJUxN1Jke+tzfHLKFm9qhWQE3neOvWgyBMil+Df9L/8QSVsNUKvAu
	FLL3LW6DiOaYOOEYWMNLMTwPwa4j2iP8ukYXo+wx6+deCFLmrHLmEjPGIQeQgpXX1+61HAKRwclWc
	9PxFjoI5TdsnPjD2b6kG0x5m+onMGu04QhGK+rTjqGA4j0xomf7tESthvl7h3LvozTJ6fAmQ+DuNG
	4pPRbJ/mAXMlfaac15uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8W0x-0007Pf-80; Sun, 01 Mar 2020 21:20:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8W0p-0007PF-3l
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 21:20:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id s2so3513396pgv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 13:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qSE/dLT1/R1TdrIzig5uAH8kZs4aY53Q6FYuH0pUIUk=;
 b=s4Zf2t2MMt9IzcUlDUUfEqdmZpcN4tLZUAGpHUJ8zKnuw1EVVfQ/JHirIAIlRMDawn
 mMlMZpbX43B8oPQcTf2btArXgRnDiqq+DzJuv2xdZVpvgt6CiNwX9cMAxo0M6fMhSzqw
 VswjwJh0v9+r/QO+YVllvuLOTRrLMnv7gelQF7Jnz3POAYwTS+Lxr0/JSUuj9+pLEsvd
 OqPl/JewYqSoYQnnLR62c2/gNsY083N8DGDMLGBLKLCf4H0aoU05qDUaSc9puM60YrHg
 u574RD/o+Bvr7HayNpYrmG6x1BbHMGrkVcR8YuxySJSF9wb5dEBilqhpZd9jhEtILqul
 tGqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qSE/dLT1/R1TdrIzig5uAH8kZs4aY53Q6FYuH0pUIUk=;
 b=fmjXD/05Ti/Ba3vpH7RHWdxNxwrgi6ZQ0PszGk66/ov+B84zXJml+eL5QMMGJB7M5a
 jyQOExcZps+ff3aTYmSpj19h4C1hWhuiL2mpBz4yt5FK1/j018gtNDgAIJN7tZLfEp4X
 1O0pcziFwNzvZrSqRXes/9PJbbGGWDEEbaOyzRUTaCwn3uKTSwnFaSd4CXkcvxqBlh3K
 GeriDuP89f7dzkoQs924I1cQFDFiUCyzMBnSYlRzMfRc+ZZeFstFI8UG3+ktv3IqZBOj
 fKlZ6OIhkCxDIByMqL7yki2sqqUmT7l1NCtfqhoIa1BgYvoueHP+OrGQZq3fpVPhprDa
 XtdQ==
X-Gm-Message-State: APjAAAU/J0L8oNiFvpKco80L2OBgUcXAaEuVsiJLgfzWbrlXvBVhsGYe
 CA3PrwB3vLOTcDhlH1SaEaI=
X-Google-Smtp-Source: APXvYqym95seeMXORpjNvDAtUfGgiQZ4H2PTVGNx06uulZYbhJD58loKpNqvBWcfDllmtRSV3tT+kw==
X-Received: by 2002:a62:d408:: with SMTP id a8mr14201601pfh.99.1583097633454; 
 Sun, 01 Mar 2020 13:20:33 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.208])
 by smtp.gmail.com with ESMTPSA id u19sm4547686pgf.11.2020.03.01.13.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 13:20:32 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 0/3] Add support for suspend clk for Exynos5422 SoC
Date: Sun,  1 Mar 2020 21:20:15 +0000
Message-Id: <20200301212019.2248-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_132035_211606_72366DEA 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Seried build and tested on linux next-20200228.

This patch series tries to enable suspend clk using
exynos dwc3 driver, for this I have added new
compatible string "samsung,exynos5420-dwusb3"
so that we could add new suspend clk in addition
to the core clk. exynos dwc3 driver will help
enable/disable these clk.

This series PatchV2.
--Added the clk names for exynos5420 compatible.
--Added missing support for Exyno5410 SoC suspend clock.
--Update the commit message to support suspend clk usages.

---
Long time ago I tried to add suspend clk for dwc3 phy
which was wrong appoch, see below.

[0] https://lore.kernel.org/patchwork/patch/837635/
[1] https://lore.kernel.org/patchwork/patch/837636/

Previous changes V3 (It was send with wrong Patch version)
[2] https://patchwork.kernel.org/cover/11373043/

-Anand

Anand Moon (3):
  devicetree: bindings: exynos: Add new compatible for Exynos5420 dwc3
    clocks support
  ARM: dts: exynos: Add missing usbdrd3 suspend clk
  usb: dwc3: exynos: Add support for Exynos5422 suspend clk

 Documentation/devicetree/bindings/usb/exynos-usb.txt | 5 ++++-
 arch/arm/boot/dts/exynos5410.dtsi                    | 8 ++++----
 arch/arm/boot/dts/exynos5420.dtsi                    | 8 ++++----
 arch/arm/boot/dts/exynos54xx.dtsi                    | 4 ++--
 drivers/usb/dwc3/dwc3-exynos.c                       | 9 +++++++++
 5 files changed, 23 insertions(+), 11 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
