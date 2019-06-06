Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E5F3708E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rxYSfoOUZegeWTGU6w8nxPwO4Hd94ntPuia/dkAb2OI=; b=iXQm63j7IfRXmy
	Fe2g//4/0+yoh2KxwtOSgHi1Tjt2wa4jT108Owsw2CtRgz8PeyAhaT+ZStpN1eRMG1iwHxtzHRHF6
	IDjqR7SVpF3C2T6pqGTHJZrFuRSm9S7TUUtzIsXMSHKS3hHzgSzanq9nYyOLZmmZcH+rY6dFqhk63
	BiSFpmzD2hWuur01MCcVYIA4DDpMHZKLAa4bBrB281CgXVTXdNc3mM9tsp0NXuyykHT3VCsnjm2TQ
	6/ulRx0GLy9aFn2q+2KqYygj0Eo1VSNsvZinwaNZNRESlfdKPpSe/aWjJnQsIQcIHxae4jb54n+ZP
	d4oRI6zE2J80qYGlRqVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYozM-0005mw-BK; Thu, 06 Jun 2019 09:47:16 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozF-0005mb-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:47:10 +0000
Received: by mail-lf1-x142.google.com with SMTP id 136so1057527lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZUJtTHTXNxu11uFgApSggUR6FUDtGDSUrwD5+2c4fw4=;
 b=fjWTs+v9sRcacPTkE7/eRu/9lwuTPBz6IVARKm6m4Eq7OW7fr63Dg12tQgHVVCRbol
 X9xJuP/JqN3cXHjJiC6f8ejkT+eMEcvNjqmDsSgH22spBK04YFEiIlwrHageUyfQp0xt
 Dr0W1fN4Dhoc4Vs0e2dMfi84pDucPLYspHEx1qyBDNLoCiJIDHxXk89F7LxCZQIsKONd
 8my/z5+M+Fr/vICw5e12GUeEZWFVwbkdPpr56GF9RuHraCzJOfRPTERnTkxQX5WMo6cS
 EP4xY+CInGYsGcd/8/b+F6qjYG5PezinP4T3p0CCu/MDQ46QsZOu/D1w+p5MJ3axD+dR
 KU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZUJtTHTXNxu11uFgApSggUR6FUDtGDSUrwD5+2c4fw4=;
 b=OgpX1hFvPxQMaydM46kKSp5Ho96u8vDm0I87C+/T0mfoxsMpXIaVJFuV+Oz3u6fHed
 6StGgDNuWo8xcWBv4lWBl6LMErrfy2dvgxuzdejeLYGlUUVojcwg9rzbFYJpgo+MSO9X
 1KCKPpe1D+ho33NOmlRrDOjNajHsxu78ARZ9ZLrEVmH4PPSYANxJyWsrJtRO2XmloZWG
 W6t2wGILscOXPOzCbpV8l1uqEHJXDbYlb+lOEkLa+mU7VixHviVI5VBGY92HNDVYlXsc
 y136Kj3Fa0o9BQS3i4K7x6tKPkbgCdVUZdA1fvh1M9Q9ArKPxGmOk5YVtfuslyi50HD/
 c2Vg==
X-Gm-Message-State: APjAAAVJSf6ZuSbMI9zotvB0ywFKu1KAD0t1JInoOq5pZ9cFTWqlst5P
 aYpe3pCJHZzI1NgJT7eva0ao3g==
X-Google-Smtp-Source: APXvYqyfSm4WZqLlK2FuAsUFqx7p2Ew9DH+2Np2QIeyhi9dQlGG8JR0BxiRPugpDfNWGd0YdYSALPA==
X-Received: by 2002:ac2:5609:: with SMTP id v9mr15271221lfd.27.1559814426775; 
 Thu, 06 Jun 2019 02:47:06 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id e8sm241763lfc.27.2019.06.06.02.47.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:06 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
 marex@denx.de, stefan@agner.ch, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, b.zolnierkie@samsung.com,
 a.hajda@samsung.com, mchehab@kernel.org, p.zabel@pengutronix.de,
 hkallweit1@gmail.com, lee.jones@linaro.org, lgirdwood@gmail.com,
 broonie@kernel.org, davem@davemloft.net
Subject: [PATCH 0/8] fix warnings for same module names
Date: Thu,  6 Jun 2019 11:46:57 +0200
Message-Id: <20190606094657.23612-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024709_312619_BC7B905C 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-fbdev@vger.kernel.org, Anders Roxell <anders.roxell@linaro.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch set addresses warnings that module names are named the
same, this may lead to a problem that wrong module gets loaded or if one
of the two same-name modules exports a symbol, this can confuse the
dependency resolution. and the build may fail.


Patch "drivers: net: dsa: realtek: fix warning same module names" and
"drivers: net: phy: realtek: fix warning same module names" resolves the
name clatch realtek.ko.

warning: same module names found:
  drivers/net/phy/realtek.ko
  drivers/net/dsa/realtek.ko


Patch  "drivers: (video|gpu): fix warning same module names" resolves
the name clatch mxsfb.ko.

warning: same module names found:
  drivers/video/fbdev/mxsfb.ko
  drivers/gpu/drm/mxsfb/mxsfb.ko

Patch "drivers: media: i2c: fix warning same module names" resolves the
name clatch adv7511.ko however, it seams to refer to the same device
name in i2c_device_id, does anyone have any guidance how that should be
solved?

warning: same module names found:
  drivers/gpu/drm/bridge/adv7511/adv7511.ko
  drivers/media/i2c/adv7511.ko


Patch "drivers: media: coda: fix warning same module names" resolves the
name clatch coda.ko.

warning: same module names found:
  fs/coda/coda.ko
  drivers/media/platform/coda/coda.ko


Patch "drivers: net: phy: fix warning same module names" resolves the
name clatch asix.ko.

warning: same module names found:
  drivers/net/phy/asix.ko
  drivers/net/usb/asix.ko

Patch "drivers: mfd: 88pm800: fix warning same module names" and
"drivers: regulator: 88pm800: fix warning same module names" resolves
the name clatch 88pm800.ko.

warning: same module names found:
  drivers/regulator/88pm800.ko
  drivers/mfd/88pm800.ko


Cheers,
Anders

Anders Roxell (8):
  drivers: net: dsa: realtek: fix warning same module names
  drivers: net: phy: realtek: fix warning same module names
  drivers: (video|gpu): fix warning same module names
  drivers: media: i2c: fix warning same module names
  drivers: media: coda: fix warning same module names
  drivers: net: phy: fix warning same module names
  drivers: mfd: 88pm800: fix warning same module names
  drivers: regulator: 88pm800: fix warning same module names

 drivers/gpu/drm/bridge/adv7511/Makefile | 10 +++++-----
 drivers/gpu/drm/mxsfb/Makefile          |  4 ++--
 drivers/media/i2c/Makefile              |  3 ++-
 drivers/media/platform/coda/Makefile    |  4 ++--
 drivers/mfd/Makefile                    |  7 +++++--
 drivers/net/dsa/Makefile                |  4 ++--
 drivers/net/phy/Makefile                |  6 ++++--
 drivers/regulator/Makefile              |  3 ++-
 drivers/video/fbdev/Makefile            |  3 ++-
 9 files changed, 26 insertions(+), 18 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
