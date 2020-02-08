Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF75E1563F8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 12:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2Ft/QYqnxK1946NOjZu5kGIl1z46wO7cJlpFBSdKjY=; b=lDEu1xAKe+Mxt3
	Rxroi05va2uuno+VbjagEv3fUITx4cBgUAgGMpR69X4KmONq2J2E3+KOgp4Hq0rSIFm9lr4dwDCzq
	9aNTVV1kt4rdF5quoQeIWw3Yhvu5LLGdnEKtBMZrnEAzUisasnVaN15NSYiuYiBiQNWPCN2TnhqFp
	f0bKOOwRFIQXw1yZ47DVa7Ok/5whnusmUft5WmwElaNv18HmppcxorSt+pvYeATh9TBAo5MuAluE/
	LCJNhvRvOeHWMCruKShtSswCXZgvq1YeTTosGVUkkEBuAMhwz4UhgXeOkH5dd9wnFcF1o/XD4RjhG
	e+2dQIqNCzryJryANaEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0OAR-0001Q4-KO; Sat, 08 Feb 2020 11:20:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0OA6-0001HY-Ns
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 11:20:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id c23so846985plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 03:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rE+Lqr7BWztveqyxVXRSXM9/n2K29sIPVQRdU+Uw//I=;
 b=gwxfcX4bJmgje1uEWsgv/EduoPEhphtn2sGzVjXJlrjuHam9hILECZ4Z0gK+xhvHVx
 Sr9l9r/OFrPgQdA9PSSV3cvI0681UR3i55agmmkV/6LKsIcDSBPDnRXe1Wwd4hac8CkF
 6XF01dXtAnWo/gMQWJK96QwbJ0iIUoVCjL7GamiOaABIzt+QWyX3DUVh0NaWBsbk10bB
 tTt0eozkFC+9cyNjzSlwpgjU35TTDctT8dWtAvM+JX5fw6qycZG/GTcBnOzHnoiKr7YG
 3hFbqnekyP0ccTg4YVdAS3d1/Sze4z4rCzsvrTTQ1bDoRBjCy5uxh8KTWL+DQ95SOCYw
 LOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rE+Lqr7BWztveqyxVXRSXM9/n2K29sIPVQRdU+Uw//I=;
 b=ZHYZHzhJOegdF3Gjx8EVQ/w4Ydz38nFsEQ7i4psaKBYEaHXs5PdKQ6he6V30JVPouZ
 oJLn+Zhqcf91Sli6+/YgmSR56cSl1+6X0KXLG1JT73q9XhVPC6r9X9jZLhh5CN8VHsLX
 p0P7TD6IRVg+0Fz9WAx0Gtp9nuE+qsYW9sHNlNteTg+NBGgM/BNpuR4W72v23D8uy/dn
 4Xyf2hC8hGZ7ZjYUNc2PXznIo86YyPFuHRAL864rjBFuA4xu1AM6E81mm1rELnqMcu0I
 cqXaB192oXegPxKvswfKcuP3Q4lQqqF5+bUNAk1H0/K8m2MGzQ5E/SC6mhjEAwIRPzaJ
 Q2nA==
X-Gm-Message-State: APjAAAWw1Uxf2gzyHQcnsTkqP1e6DIpgQ+mUWX7/rGgRQSSy0FSz2Msf
 nFes9wGLZD+etFBMstizJFluXQ==
X-Google-Smtp-Source: APXvYqy2KvMQ3IcJoBowIYLSZxDRzT9b3NXXZcJoClRM9zbNhDkvEyZlJl8BQnuSNdgC+4bAOXuh9Q==
X-Received: by 2002:a17:902:9342:: with SMTP id
 g2mr3327247plp.339.1581160833789; 
 Sat, 08 Feb 2020 03:20:33 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a19sm5707281pju.11.2020.02.08.03.20.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 03:20:32 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 1/5] ARM: SoC platform updates
Date: Sat,  8 Feb 2020 03:20:14 -0800
Message-Id: <20200208112018.29819-2-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20200208112018.29819-1-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_032034_774864_936F4457 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of these are smaller fixes that have accrued, and some continued
cleanup of OMAP platforms towards shared frameworks.

One new SoC from Atmel/Microchip: sam9x60.

----------------------------------------------------------------

The following changes since commit a1a0cfaf7fb7c1a90201e6b0937f742c8c212d8e:

  Merge tag 'armsoc-defconfig' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc

for you to fetch changes up to d8430df172118336d050aa61999fb82e55102641:

  Merge tag 'omap-for-v5.6/soc-build-fix-signed' of git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into arm/soc

----------------------------------------------------------------


 arch/arm/boot/dts/am33xx.dtsi                   |  25 ++
 arch/arm/boot/dts/am4372.dtsi                   |  20 +
 arch/arm/boot/dts/am437x-sk-evm.dts             |  27 +-
 arch/arm/boot/dts/am43x-epos-evm.dts            |  23 +-
 arch/arm/boot/dts/am43xx-clocks.dtsi            |  54 +++
 arch/arm/boot/dts/dra7-l4.dtsi                  |  71 +++-
 arch/arm/boot/dts/dra7.dtsi                     |  18 +
 arch/arm/boot/dts/dra72-evm-common.dtsi         |  31 ++
 arch/arm/boot/dts/dra72x.dtsi                   |  42 ++
 arch/arm/boot/dts/dra76-evm.dts                 |  35 ++
 arch/arm/boot/dts/dra76x.dtsi                   |  42 ++
 arch/arm/boot/dts/dra7xx-clocks.dtsi            |  32 +-
 arch/arm/boot/dts/motorola-cpcap-mapphone.dtsi  |   5 +-
 arch/arm/boot/dts/motorola-mapphone-common.dtsi |  19 +
 arch/arm/boot/dts/omap4-l4.dtsi                 |  49 ++-
 arch/arm/boot/dts/omap4.dtsi                    | 110 +++--
 arch/arm/boot/dts/omap44xx-clocks.dtsi          |  11 +-
 arch/arm/boot/dts/omap5-l4.dtsi                 |  20 +-
 arch/arm/boot/dts/omap54xx-clocks.dtsi          |  10 +-
 arch/arm/mach-davinci/Makefile                  |   3 +-
 arch/arm/mach-davinci/board-dm365-evm.c         |  20 +
 arch/arm/mach-davinci/board-dm644x-evm.c        |  20 +
 arch/arm/mach-davinci/devices-da8xx.c           |   1 -
 arch/arm/mach-davinci/devices.c                 |  19 -
 arch/arm/mach-davinci/dm365.c                   |  22 +-
 arch/arm/mach-davinci/include/mach/common.h     |  17 -
 arch/arm/mach-davinci/include/mach/time.h       |  33 --
 arch/arm/mach-davinci/time.c                    | 400 -------------------
 arch/arm/mach-omap2/clockdomains7xx_data.c      |   2 +-
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c      | 135 -------
 drivers/clk/ti/clk-44xx.c                       |  13 +
 drivers/clk/ti/clk-54xx.c                       |  13 +
 drivers/clocksource/timer-davinci.c             |   8 +-
 include/dt-bindings/clock/omap4.h               |  11 +
 include/dt-bindings/clock/omap5.h               |  11 +
 35 files changed, 697 insertions(+), 675 deletions(-)
 delete mode 100644 arch/arm/mach-davinci/include/mach/time.h
 delete mode 100644 arch/arm/mach-davinci/time.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
