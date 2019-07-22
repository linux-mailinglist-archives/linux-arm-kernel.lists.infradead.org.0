Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A69700CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h0Kb9G8ZWBWw3unsrGLs1BXERr80tRhDoyg8Zj+L+kI=; b=tkPBmm9Kf2O965
	CArqCNVb7UrkF2dt7E66PqlEPIlwpaaNTmMq4chqbr7oWOWApDyyY5Z4y/mBRob4vKYwU/iQQmsL3
	6GWD/uTMnqqjtdP0Dd/vwPZZ8jRLToB7H+72r6liGkGfno9Z3zPxxqzc89eV2KfeNb6v2snGEwh68
	PStVatf2xR4+Pimxj2jzmcRhhJ7cXS7ZsKTCZAzwzGgdZYslwy1FnjOURPLxUHkQh88bl5N4GomNJ
	KdJBOMNkFuRdT82dUlFC8g5gEHlfkgi4jRRiVomac00b5cmF2bFfkv7WSbemItTIfuY5Hg0XPYeMK
	i4Fhr/pKGFOmMAHYQWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYDT-0005Eg-0O; Mon, 22 Jul 2019 13:18:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCS-0004Yr-9Z
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:17:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so39436250wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r8dtFoRhBpigWERBQKB7RKr+G3hdahRNY7VfLFlm934=;
 b=k0Ep9b5d+hXmZSpgKuvoYMdbAdVCoXikVnVzcf1jr16GpOeWLDelaUPkyFVQhUSlFe
 4IMjFGbJ74DQ4J8pfxFV7n/3zpaWo4HxYI6DATKTQ4MP1rsF9CmgHBtgJpLYMlJfedcx
 BbeErbRvJR71se1UG12WDyrEO2pUETmZB+Cysy2ezfTrzIJRrXkVoG78GV0mHY1RKu8Q
 6drD2eU0v6xt4e5z9/gBRryREh1NbmsefzugoL5Y7BY5Hc0pH2G4D7mjrRJ3pQel9v21
 NjddSHY8nA+lcnvufIVk3qbzkQYUjW7SayEFDotgJYV5ANSHdCRahfULrLosE0TsE8qi
 Suzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r8dtFoRhBpigWERBQKB7RKr+G3hdahRNY7VfLFlm934=;
 b=LueZxWYX4+RfHAQEGJHdGmZPku61kaC0lTc76ZzZOeNg5YQuWvxBkhfMggdvsaath+
 t+mbmpa99rZ40fYIbs2MCJ0P5PB17yo/76QieqffXl2HzZhHzJ1AL5kbYHPSTOKdcJLE
 lBxVjRwMI66C1ZGnAo5ilDeSEgtCwvM0/yMQyE7Z0txDgVIUii6+n23LD9SM4mJRUqQt
 488IaES3xao0fE/L0jU8YMlIIK2pyB1c+9PCSg/CmNEHjJWumQzqB6KFZlL3R9Fuxp1o
 jPMqB7re++F4Qla6ngUj7E2r+IXZpppA8zmDvJuS4c52hSR9iGFmWPhGt1C1oqclwfgd
 h7lQ==
X-Gm-Message-State: APjAAAUmRT23Nzy1AOVAwdK5QSERVkp+QobLOCRgMAE4NZMYQZFIen/v
 u17ZB5ZlpRU8KYYATu9wbNQ=
X-Google-Smtp-Source: APXvYqybdlKkio8X0I7thfnjMnR06j54Hl+09d0TurnmlzJw4kX/FDdPMDPRp/ecKywk5Y9KcE+ZFw==
X-Received: by 2002:adf:eacf:: with SMTP id o15mr78392762wrn.171.1563801471830; 
 Mon, 22 Jul 2019 06:17:51 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:17:51 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 00/10] ARM: davinci: use the new clocksource driver
Date: Mon, 22 Jul 2019 15:17:38 +0200
Message-Id: <20190722131748.30319-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061757_215394_D6981658 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Sekhar,

the following patches switch DaVinci to using the new clocksource driver which
is now upstream. They are rebased on top of v5.3-rc1. Additionally the
following two patches were reverted locally due to a regression in v5.3-rc1
about which the relevant maintainers have been already notified:

  2eef1399a866 modules: fix BUG when load module with rodata=n
  93651f80dcb6 modules: fix compile error if don't have strict module rwx

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
