Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D451563FB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 12:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHO0+QAHfNXHazyiGNReieepbZ8li9+gm/agdbDTq94=; b=GEeAfG6Rio0mXT
	dbRSNboDTwhXoIBKLcd05H+u5amKCCY6JJX0rlLWDI9EZ3t+yBkzNVW0rS8utFAaXKuNx5/qQ6xxi
	3dE9i6VbLUqRtjCdksBzkLznNmigRkLU+lwnbV1CleAPh1LC8KTjs60IMDExXb1GB5VAtgPkrVr5V
	35LEzyQVMUnn/T0pinmAdt4MdYOwsnv8c/BPgxjQl9/DCCE1WHo7KxBAEiWLPNzXrv5oB8wMrANtn
	W3+gU4eEsAl55qqkAw+sQ3b9mYkC/xtfHOkSR4w4Eh2sHXt2N7TKesS2QY2rX8ckZ1ihB1ZyVg1Q3
	hs/FARdE3/d60dWmjg/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0OAw-00027G-8g; Sat, 08 Feb 2020 11:21:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0OAC-0001Kf-5y
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 11:20:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id l3so1201625pgi.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 03:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/TuNGFz1JcD7T6IDfh5rq70OidRyfNk4PEH1acEnm1Y=;
 b=XL+flBOTIWxg+yjbLL5ipgbB4fCNCmx0tdgckQrzylmHqrakQWwG3Tzo00aHR5IbBZ
 qCgEpK8hLISiwRNIMPD7vlYtJl6kwJjWoRfT3WHTRcQeWqPuoYGJynm74cp8C10a7UHV
 uA6+PS2g7C3llNBpmXKOA0yd/ARLVfHn+XWm5GYhaZaucXCrgbKcb1iXL0aOQiqGHKRT
 HCfEODsBoPgy8EDG7gZ6vFYrgq8brXMXOJZcIi0zLzrVodDDQgxagaybxmE5J1DccX91
 xu+sWn3PftBlZ1Rxt7zZD9XpWnRxnyABQ0svMzGAXwD5NfLMHR6R9RZlqnPdlsy+srnw
 NNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/TuNGFz1JcD7T6IDfh5rq70OidRyfNk4PEH1acEnm1Y=;
 b=NpLu9zzdRGkn1n2oNenqxwrIoIGDvA4l0aNO0jQL9yueqGsL35LiE2fXwbOpKnqNeu
 fYQG5u9fXKg7OrUf8TkPk9EcT48wHbD7BhqTPkjqwQUhMr12tKOlKgFvmNkscjWJx8cZ
 +ysrRNosL/unLVK1ZrveaBEpERMkcIUzAT+OGGDBlELXFB7pjF7yHyYleioaj0IyPV6h
 ox2UOQYqAChnOijqUAAnjQrdeGCRjpwgPmS5ajXVxFau1GoQTO683nPO/GXWENK07yZz
 STr0EXuWQk7fQzrToHw2Ff1nfSRgBfupdwOq7lQAkZZyWPLY2mTp2jU/+ZZgVRG0LIWd
 RZJA==
X-Gm-Message-State: APjAAAX4d7pTRGc30BYWzOa44RGylSstXikySnziWLsWQg35028Gq+K0
 8KtfWHlqztN6jYWEmWronQPM/w==
X-Google-Smtp-Source: APXvYqzqcF7UHN6MhOG6LzgFQ1WYsym1a8kd+pbhCUGC6kcjiHgSR3d5X61zzw1f7lOjMzuhgJ4I8Q==
X-Received: by 2002:aa7:86c3:: with SMTP id h3mr3589889pfo.243.1581160839243; 
 Sat, 08 Feb 2020 03:20:39 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a19sm5707281pju.11.2020.02.08.03.20.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 03:20:38 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 4/5] ARM: SoC defconfig updates
Date: Sat,  8 Feb 2020 03:20:17 -0800
Message-Id: <20200208112018.29819-5-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20200208112018.29819-1-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_032040_230464_8C192124 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

We keep this in a separate branch to avoid cross-branch conflicts, but
most of the material here is fairly boring -- some new drivers turned on
for hardware since they were merged, and some refreshed files due to
time having moved a lot of entries around.

----------------------------------------------------------------

The following changes since commit a1a0cfaf7fb7c1a90201e6b0937f742c8c212d8e:

  Merge tag 'armsoc-defconfig' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-defconfig

for you to fetch changes up to 1342a6aa4abf6a56e83ce24ce5e84243c365ab4d:

  Merge tag 'samsung-defconfig-5.6' of https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux into arm/defconfig

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
