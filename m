Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4AE50BA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jFdBFFRgYAUKl1Hn6VURE2FGblKANpUxAT4j3qdlKLM=; b=iB1bBQcY1iNKE5
	ckd9RayGxI6Z3Gl+uJ8FW7lRBI1WcR8kcelK1+yWdX4XPWo+bgEyQN+WqUDTpSCBcSdgojlj6FnU3
	x+S+/1CHvtZov4gxP/GKE7fXotFFR6Wj5hWU0QcduePvGiDXYcu52MLEtCLYu/cpzZ0n5LmP8lV7g
	0ABZmU/JzmmUcBht/haV0nrejUL5uPHjk6CKkIX8RJH42l4/R7OyTIEEjPIfU9jit/mMFHCUaM14C
	AH8Bo/eB7WwMs/f2N3fEptrdUqgTHkiA9boEy/ju7pnA5D5bm0es4O+a1HXh6z9lv5gHvT8vlZvaB
	WW5xy1diV/hNKaPPqVsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOoM-00083Y-69; Mon, 24 Jun 2019 13:15:06 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnM-00081j-V8
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:06 +0000
Received: by mail-wr1-x42b.google.com with SMTP id k11so13895736wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+oomzOAjO98XLvoEbiqoPvmm7twt6bFPtAYlt6Hi1o=;
 b=hMAayp2UQdANcARpsGk4OKb2NvkK80e/RLWe4sGNTFGNjnzPHOr66W9tTCseB6kK91
 +z78X02QLPBbWk7jpBwfH4cXuZJ3pRRAYHBZFKWrf7iB24nWOqdNlJONx2egfuhXh8v2
 7Nij2e31zxzsRHKCM2BdZJlKWhi8C8luIKv4ofb2RSiceC899WPS1w+c0tmCEogWHt3c
 VsGAahOSSVwNLne26KOpLaFmR9vwRM0J7wPlgHwZ9hN6fAR/ulFf3YRif5rGR42Nm+uD
 o9Gp85pqhlaj4wKDo6cvwHxvbGK31HpQb2+Vvl3Js09MWh8cc48hU4TM1XKtoFiJp851
 W5ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+oomzOAjO98XLvoEbiqoPvmm7twt6bFPtAYlt6Hi1o=;
 b=NK+rYz/87tKLXQgNfvXTqf23ZQv0LWnSxPpHtIjykUYaO2Tma5nBsoyeeOOTiwZRhU
 81OQo10Pmp6YJa5rQ9R6ebIdEMSZZDsKI9QAtInW57k5r7thjEKa/H6Irx40rIXgquWl
 b+e0yW//MRdI1g8TfojW86WIBp/NXbpKl7aD0oSUtUXPkiBl/TxlmKoSwNPo4waVutj1
 gTUBSwT0tOhjp6fBDcI1Adn1MsWoQJVFsfICFPo5gP6O90Hl7C8fmHo7XqFAaLExXZ+x
 ZUQ7VxkmU4KUnHPghe+f1nIovGge1QUNL2+nSnYnwZ+FVUKJMkPIi/gNE99tvQxTAznD
 XeLw==
X-Gm-Message-State: APjAAAWaejIrS2cxUiemzccWGs5rINlcjSFw4NoD0+2Eph6LqYp+cswM
 RhB66Hw6/RHioXwCV/zEVMNaYA==
X-Google-Smtp-Source: APXvYqxl4eykzFe6CYTPiNlEmYQ0qHeH12pFnrSjRcCW0j/dYnT5i9nw/Ayhvc4HKR/lSsuV5WcmFw==
X-Received: by 2002:adf:edcd:: with SMTP id v13mr31650518wro.210.1561382041611; 
 Mon, 24 Jun 2019 06:14:01 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:01 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 00/10] ARM: davinci: use the new clocksource driver
Date: Mon, 24 Jun 2019 15:13:41 +0200
Message-Id: <20190624131351.3732-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061405_056712_F09C33FF 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Hi Sekhar,

once the clocksource driver is in some upstream branch, you can pick this
series up - it contains the platform code necessary to use the new module.

Tested on da850-evm/lcdk, da830-evm and dm365-evm.

Bartosz Golaszewski (10):
  ARM: davinci: enable the clocksource driver for DT mode
  ARM: davinci: WARN_ON() if clk_get() fails
  ARM: davinci: da850: switch to using the clocksource driver
  ARM: davinci: da830: switch to using the clocksource driver
  ARM: davinci: move timer definitions to davinci.h
  ARM: davinci: dm355: switch to using the clocksource driver
  ARM: davinci: dm365: switch to using the clocksource driver
  ARM: davinci: dm644x: switch to using the clocksource driver
  ARM: davinci: dm646x: switch to using the clocksource driver
  ARM: davinci: remove legacy timer support

 arch/arm/Kconfig                            |   1 +
 arch/arm/mach-davinci/Makefile              |   3 +-
 arch/arm/mach-davinci/da830.c               |  45 +--
 arch/arm/mach-davinci/da850.c               |  50 +--
 arch/arm/mach-davinci/davinci.h             |   3 +
 arch/arm/mach-davinci/devices-da8xx.c       |   1 -
 arch/arm/mach-davinci/devices.c             |  19 -
 arch/arm/mach-davinci/dm355.c               |  28 +-
 arch/arm/mach-davinci/dm365.c               |  26 +-
 arch/arm/mach-davinci/dm644x.c              |  28 +-
 arch/arm/mach-davinci/dm646x.c              |  28 +-
 arch/arm/mach-davinci/include/mach/common.h |  17 -
 arch/arm/mach-davinci/include/mach/time.h   |  35 --
 arch/arm/mach-davinci/time.c                | 414 --------------------
 14 files changed, 110 insertions(+), 588 deletions(-)
 delete mode 100644 arch/arm/mach-davinci/include/mach/time.h
 delete mode 100644 arch/arm/mach-davinci/time.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
