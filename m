Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D3E190109
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 23:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PAhW7BJKKU4/wdkQRj8ZMveI24IEOZ8qJTOFoSh2AUE=; b=g6u9dhnAHhFI4c
	ZDaJ9MSdBP7oZ+alzmCEbaPdi+EEtwgKHeAsfcZECGuPeutGKCJvbmMn01FbmeugBK1hFL265imbF
	uJKuaF43thubnaThf7JyLWWzAZiVD0F6Fq0BLUwEHvbfTIPgiqLUV8SITYhxjjjVpaQXgANUs2Za8
	IeFs7p2Ltlje4m6DoRgH8tIMLM1EC37X/ePoXC0Vhc/4Fhzuka6CGFrbV7M+TikMqM8M3+KGfY0+U
	Qrq0IC56EvDqmRRawFa5jB0h3/9lsrZKjA2/grQowb0c1S9KdJGJskkfVtWLjbu6OAYFJS7F++eFW
	eCovYCpWEREVMjxf7/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVV6-00085B-8l; Mon, 23 Mar 2020 22:24:52 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVUu-00083k-VD
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 22:24:43 +0000
Received: by mail-wr1-x444.google.com with SMTP id m17so10179501wrw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 15:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=jENGzdOPvP/M6f2t5ohcAn6yjmjB16kOxfnwrqgSiJs=;
 b=SFOHqpwGHre4Qbf5P/oyPPJrrRSeQk6WM/EZkB6Rl3Jqx+9dH6aMUlMML9jPNGSA/p
 qalBZzlvMI0vNgXDjegMTCSRI2hdoXN8J5XwwVE6z0pLNNmzNCCchwM5D4dEv25g4PDJ
 aBLSTdRc0XqT+BjiAnYm+I/usDuqdz4FMY/QYFVrIfC6HJh3wDoPjcHf/LDkdG/uKuzD
 7jlqpM90ixll04rwNnIcRQNcuf3aiNi/y4TLdpNqZQAiJ0LvKMviqfxTsKdI7QUjoIIQ
 H1DqFgr9yXz/w+4LlFOO6lISMikqWfrZz6WEXTnnVp+Oxg8cpbl0aiEWvJwi0KRNXQZE
 pA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=jENGzdOPvP/M6f2t5ohcAn6yjmjB16kOxfnwrqgSiJs=;
 b=eqWss4QPuS7gZifmuaEsOyx07uT4xdDicyUNQJOe/168n3yBamcPOhyAGTVXH6y0aH
 mfFHNyDBdTnjhh8wilUnQi9qW/C1n9Cr0SkbNnVI2sRjS15FdoOny/4/ksCEE2oVP9fg
 /2sdtUEE42VdGlXINw1ZSHfnpqTJZaYW5dzS27yV9gI8qmT3xtyMpl4Q0I0526cEn6fg
 s6iMS6vDhgXzz1jZhAUvoJzgT8zahPKK0UmVPunjOgScblj0UE0Wpf99G7P14XyOdKR1
 lj/K9uljbIf3sm4KZgBWOlhxyazvSqFpy7DzbIU0nDxwdAUXeLzNDQNvoKpeKTifuwgk
 kWeg==
X-Gm-Message-State: ANhLgQ1Ow5kYchBHjbxpxNGJA1CYCJSKSSLheLURy4r8r9CmlnNPHBMl
 PePTwHZEgNqRbV/588LRfzEL7KBPQHw=
X-Google-Smtp-Source: ADFU+vtwWseqjMiUk/waLc5ml8zvODonw/w/fI2eAn1Znx1bgx7b/CAZySVluQ3KExUO/iPSb1REuQ==
X-Received: by 2002:a5d:4a10:: with SMTP id m16mr31146308wrq.333.1585002278989; 
 Mon, 23 Mar 2020 15:24:38 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id k185sm1419486wmb.7.2020.03.23.15.24.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Mar 2020 15:24:38 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org
Subject: [GIT PULL] arm64: dts: Amlogic updates for v5.7 (round 2)
Date: Mon, 23 Mar 2020 15:24:35 -0700
Message-ID: <7hftdyhfq4.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_152441_048529_81797967 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Here's a small follow-up round of DT changes for Amlogic for v5.7.  Note
that this tag includes a merge of some DT bindings (queued in clk-next)
for the new SPI clock IDs used in these changes.

Please pull.

Thanks,

Kevin

The following changes since commit cd13d5f115f91065319c7604132d14db7048391e:

  arm64: dts: meson: add thermal zones to meson gx devices (2020-03-16 09:49:36 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64-2

for you to fetch changes up to a084eaf3096c140deb4062fd09b6d20144d40ad7:

  arm64: dts: meson-g12b-odroid-n2: add SPIFC controller node (2020-03-17 15:15:09 -0700)

----------------------------------------------------------------
arm64: dts: Amlogic updates for v5.7 (round 2)
- G12[ab]: add SPI support, enable on odroid-n2

----------------------------------------------------------------
Jerome Brunet (1):
      dt-bindings: clk: meson: add the gxl internal dac gate

Kevin Hilman (1):
      Merge tag 'clk-meson-dt-v5.7-1' of git://github.com/BayLibre/clk-meson into v5.7/dt64

Neil Armstrong (6):
      dt-bindings: clk: g12a-clkc: add SPICC SCLK Source clock IDs
      arm64: dts: meson-g12-common: add spicc controller nodes
      arm64: dts: meson-g12: split emmc pins to select 4 or 8 bus width
      arm64: dts: meson-g12: add the SPIFC nodes
      arm64: dts: khadas-vim3: add SPIFC controller node
      arm64: dts: meson-g12b-odroid-n2: add SPIFC controller node

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi    | 135 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi           |   1 +
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts    |   2 +-
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts      |   2 +-
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts   |   2 +-
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts |  23 ++++++++++++++++++-
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts |   2 +-
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi   |  22 +++++++++++++++++-
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts     |   2 +-
 include/dt-bindings/clock/g12a-clkc.h                |   2 ++
 include/dt-bindings/clock/gxbb-clkc.h                |   1 +
 11 files changed, 177 insertions(+), 17 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
