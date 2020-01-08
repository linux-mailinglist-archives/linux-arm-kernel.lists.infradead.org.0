Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3AD134B4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V6AI1lIKvQt361FZW6ffEbvEjLHd8HQ7S84TUo9bSjE=; b=JwY7G+pWr1XEJUll6vg4eTYDfG
	ARlCKMSzBlKt8g8+WCt/7JH6RfNsoxoToizcA9ekfwUCAax4IdhN5PcXLgc8Rg/GNMK/9esR6pOfs
	XHvnwEmxyFNwvhCAWkTks5iYpCEZhvpiVp5TnLQtUeK/Y/3KzxPxQ1IJJl1k+rIlyIyfQX6R0VgOo
	ZmMuFgS0WgewLE8SUtkq8lO1icrxGHsplxxY8T9Tkr7EvashCBgP4T0X6eTSrGsazWbJLxEafHCLa
	h6oH99Eu1c0rPcCkFSM/jYLdigGVcSdH4HJoKnXsy5FLEoKJOY4vgh/v4Rw5mnuNscFrkUWVCyj/o
	TQxP8GQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGkJ-000279-H0; Wed, 08 Jan 2020 19:11:59 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGjm-0001hG-03
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:11:27 +0000
Received: by mail-wm1-x336.google.com with SMTP id f129so76732wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 11:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/2Itg168ZUweh2EyZJKUdnx08FUgLQo9EaSdnWg/KKo=;
 b=MbBj1R02vY1zFLjMsMh1wJfAIwe0HQTACPL8uOOYOTfeJvPE5o09w74fg1vPChW1yD
 mKd2GLin2HGccxH/sTGpKsKSt+qhOHZmW60Ion+SP/Fsp4e/+5V9YJ+5tUWh+pLsLJ0a
 Y4mzOTbKFd4uo9JCqHueRskhWBgFuy3kY1abniG9Ez2cS+XN8SEc8LQWWjjOLj9UP1i3
 MX7hr3P/zSedoclRoeYQgkcCR3IBZQOAdKu8vGwAI68twRLcoD04W9v2yg0CMETEvXBf
 ZcTTaKlDQ8SAx/qUzi3AVXPv2x80UZdk3/cDsRypk9CMtjCNjw1RP6sW95Mo7J90tm0j
 40KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/2Itg168ZUweh2EyZJKUdnx08FUgLQo9EaSdnWg/KKo=;
 b=GFHH08Cc4MXqGLDwgk7tgG4gNdRg2hKkVlYJIsVDzeQH+9FZOyWCDAClUBXv9bngts
 sX2HGPzvfFGDTwboZqTbaz598zDGneThzuNDrceY4dO09UMfdLJ1j/WOuLIemJ3WOZYH
 hwGoRCklIqa34WsXKXo18B/Y59egKAYhSaerW0yOD1WXH2YxMl4+uwfBjXod+xQDQk0/
 dEDi758hq2z9QoN520c8iXfMmQhHBjQtJ0IBud26V/rSQ5Bc7Di7NNJuUg/LUOvBaCsZ
 mmyejcPHDtzocfoabSfwr+Sd4FKG8Spr11D3K4KT86PXCpqyghdgLVSWWKhjaNJgOTY0
 VGpw==
X-Gm-Message-State: APjAAAVQgnOkJUPK7bLwAnYGlwSgOfoC1EIW08V00Qt3WErXQx1P5Z5f
 NX6WWD5IunmRbIgxuTpu0dQ=
X-Google-Smtp-Source: APXvYqxy4wyOZHpWLRDCV+POtH3FfSnpmpp+XxhTe3+rw9pgnUtVcwBXswXbNotpI2ewOFOYdxuH7Q==
X-Received: by 2002:a1c:22c6:: with SMTP id i189mr126069wmi.15.1578510684230; 
 Wed, 08 Jan 2020 11:11:24 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t12sm5243270wrs.96.2020.01.08.11.11.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 11:11:23 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/3] Broadcom soc changes for 5.6
Date: Wed,  8 Jan 2020 11:11:14 -0800
Message-Id: <20200108191114.15987-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108191114.15987-1-f.fainelli@gmail.com>
References: <20200108191114.15987-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_111126_080446_B5329C17 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Justin Chen <justinpopo6@gmail.com>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/soc

for you to fetch changes up to c586f47f55d8239466824f917582c7d7d9e546ed:

  ARM: bcm: Select ARM_AMBA for ARCH_BRCMSTB (2019-12-26 19:50:54 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Kconfig/machine
changes for 5.6, please pull the following:

- Justin adds an entry for BCM7216's debug UART to support DEBUG_LL
- Florian adds a select ARM_AMBA to support the ARM PL011 UART/console
  which is required on BCM7211

----------------------------------------------------------------
Florian Fainelli (1):
      ARM: bcm: Select ARM_AMBA for ARCH_BRCMSTB

Justin Chen (1):
      ARM: brcmstb: Add debug UART entry for 7216

 arch/arm/include/debug/brcmstb.S | 24 +++++++++++++-----------
 arch/arm/mach-bcm/Kconfig        |  1 +
 2 files changed, 14 insertions(+), 11 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
