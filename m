Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E802B727
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 16:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yNJL+HvMENcu9iKDlyrCAppJo/wXIaT5T32AVuaqdQQ=; b=BeyMozlcqZqMSG
	eyGyVoX1U+9T3JjwcVCma5HUP3LcrjRr4qIF+r+gPnAYVydB4ajclx38Lutu6fGUrPOPmMLYz8SI9
	OJNMQUwmKSCKG2mbPgxVWdFPSDzqwgBBv3CPs2Jt2chyKGFHA9oK65oKm9T7AAQKkaPQ/0UdtLqz0
	iTJCtFJ72as/5Xf+XhkEeTCJ6y+UoRZ7BA1QmGq+oXQwZ2AjwfWuH9g4AxS4bhKzCCpphbqSC+wXu
	ZR0hqk/awNwPWHz6oTX0mxzgz9Nq+b+yAcwm/EoJqxDPvttJl/rIK1YSk45C02Kud1dIUp78qbUKW
	Rm0wv4jn/pZUSUIzqYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGCk-0000Ao-B3; Mon, 27 May 2019 14:02:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGCZ-00008Q-Ty
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 14:02:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id v22so8711576wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 07:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/uTBfIzkKswT7Ff1/QE2n2AouJ/Ougb4/VDEgUdIRqs=;
 b=poVOrEX1TwfxN0/t4+KDONVIES7GtfU0ZA+8LNhgcYVWDVKeytEMClNThxyj0JUlSa
 0dx0wCZKUtXOM76Deh5ALVPWOBovWox8e/5ggcpNpF9wbMdHg/OrOZyRS8Q3kIR2g5hS
 XJ5LJZ8oLCDV/A5f8z7AiD1TDA4nmYD7GexXPgB/byniXe3TyBtOJ/SFHXo71qBXJo/c
 C/Ix1NFkPeD4JEqNQcqAoJ8KL2m1/4hBV06KI6q+dt0azYDKwpt5/na1H11V/EE/5+gF
 lzAeWOJ/AtqWs1bGJUZ+oUsOJzz51VV357ESWnForolZ/GnT3WNxDI2srGDEKtM17TvJ
 os1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/uTBfIzkKswT7Ff1/QE2n2AouJ/Ougb4/VDEgUdIRqs=;
 b=iWIw+RlQYbtxe0CbIo/yPCDmBeLryyfNqJrFBrY3q1JsAzxxLpzVeU1iBBw/CaEiCd
 VZny0haO9N7mDHroXiRw5VMmNc1TApR1JrAELz5Tb6ORuCDNaVJ12UWBIWUfx5BiYMXL
 e5ox41oHXRKWNnClmpm7nT2f7jfu1eo8oGqKs0U3rsn9dpzdAUz8x+2XrZDFezil90H7
 UkQGzF3Z+EWcGvMyJN8ajyLF0sXI3gHZkFl0dgSz7Xct3xrjPnz7guhxqk8UUVD2HWNL
 9WRQLDP+N1BX9tR1uymKl65EfJT1NYZHeiMg7bIx7nHRST/VWmlCGykElWJSz4xZHLMI
 KSog==
X-Gm-Message-State: APjAAAWShLrnF89/Y8M17SAQ1jGkh48LOoY2sewluKPXOuGqmz6g32/J
 CqiB1nBD5rZzkhtw1LVm9CsjNw==
X-Google-Smtp-Source: APXvYqzOpNufEDr+eiQXqZvSsV1YciB2MT0meHySLn86nd8G7TrvMMyWvAGHcfExDUbQ9R5TEgTCEA==
X-Received: by 2002:a1c:65c3:: with SMTP id z186mr1504553wmb.116.1558965730045; 
 Mon, 27 May 2019 07:02:10 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s17sm8231628wmj.15.2019.05.27.07.02.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 07:02:09 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v4 0/3] arm64: Add initial support for Odroid-N2
Date: Mon, 27 May 2019 16:02:03 +0200
Message-Id: <20190527140206.30392-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_070211_969047_547551D7 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

This patchset adds basic support for :
- Amlogic G12B, which is very similar to G12A
- The HardKernel Odroid-N2 based on the S922X SoC

The Amlogic G12B SoC is very similar with the G12A SoC, sharing
most of the features and architecture, but with these differences :
- The first CPU cluster only has 2xCortex-A53 instead of 4
- G12B has a second cluster of 4xCortex-A73
- Both cluster can achieve 2GHz instead of 1,8GHz for G12A
- CPU Clock architecture is difference, thus needing a different
  compatible to handle this slight difference
- Supports a MIPI CSI input
- Embeds a Mali-G52 instead of a Mali-G31, but integration is the same

Actual support is done in the same way as for the GXM support, including
the G12A dtsi and redefining the CPU clusters.
Unlike GXM, the first cluster is different, thus needing to remove
the last 2 cpu nodes of the first cluster.

Dependencies :
- Patch 1, 2 : YAML rewrite of amlogic.txt bindings at [7]
- Patch 3 : None since clock + g12b bindings has been acked

Changes since v3 at [8]:
- Dropped arm,armv8
- Dropped eee disable, not needed in further tests
- Add comments about where are connected the regulators pins
- Moved the phy0 regulator to the usb vbus regulator

Changes since v2 at [5]:
- sent the clk patches in standalone at [6]
- rewrote the bindings on top of the YAML rewrite at [7]
- Added MMC, SDCard and Network support to Odroid-N2

Changes since v1 at [3]:
- Renamed the g12b cpu clocks like g12a counterparts
- Rebased clock patches on top of Guillaume's Temperature sensor Clock patches at [4]
- Added AO-CEC-B support to N2 DTS

Changes since RFC at [1]:
- Added bindings review tags
- Moved the fclk_div3 CRITICAL flags to the gate
- Removed invalid CRITICAL flags on the cpu clocks

[1] https://lkml.kernel.org/r/20190327103308.25058-1-narmstrong@baylibre.com
[2] https://lkml.kernel.org/r/20190325145914.32391-1-narmstrong@baylibre.com
[3] https://lkml.kernel.org/r/20190404150518.30337-1-narmstrong@baylibre.com
[4] https://lkml.kernel.org/r/20190412100221.26740-1-glaroque@baylibre.com
[5] https://lkml.kernel.org/r/20190423091503.10847-1-narmstrong@baylibre.com
[6] https://lkml.kernel.org/r/20190521150130.31684-1-narmstrong@baylibre.com
[7] https://lkml.kernel.org/r/20190517152723.28518-2-robh@kernel.org
[8] https://lkml.kernel.org/r/20190521151952.2779-1-narmstrong@baylibre.com

Neil Armstrong (3):
  dt-bindings: arm: amlogic: add G12B bindings
  dt-bindings: arm: amlogic: add Odroid-N2 binding
  arm64: dts: meson: Add minimal support for Odroid-N2

 .../devicetree/bindings/arm/amlogic.yaml      |   6 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 288 ++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  82 +++++
 4 files changed, 377 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
