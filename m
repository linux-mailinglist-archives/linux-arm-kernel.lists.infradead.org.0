Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F447BB81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S6/4xyT5D70QhGh4xmMC1S0hDdgrVO+MvsUfJ/5qHHU=; b=dgfbPVr5TOyXKN
	EW8yIv1hQNkRKkvMht1Se+MINzsgWJK7xNjr1ALr6iyCCQUwn3T8y0yNqFomrtkPRPE9FrV/QnKmW
	4URokVMw2c+tcHLoN3PN9BdJta22RI0lev/6BNPabI8RE24bgq93oF2iKloCMwrCO70d6QPAnXqWz
	NlgQ5P5XHNHHivd+Q0Bz29H9FxfZa3zq3mYQwnD3cHsL9oi3Ku6E1AdsJs9NGkO4oNvhWM07EZC3b
	vdNqvwfyvt91nwq8BNl8NX4kq2jtFWvnYX/oRLaFZO+8hw1xGvIWhnFVkwWmrTC4jBBnjNABUtDYO
	0I8z9A2UZtca4d5Jlflg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjv5-00055S-H6; Wed, 31 Jul 2019 08:25:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjuD-0004kM-N0
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:24:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so68635268wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=923Ja2WcpXT79P86aL3lNG+qbwOggNaCyX5ijNpRJ5o=;
 b=QFW/c3WauL5r/F0ZtnfrXqzpOqeu5eaCNKRUXuqJoeMRA8C58lPUBaC3Dk3vyAk7u2
 2mp5c6hjhvIyYLyIsmXtkNOAhXBwylr0QuMoYthx29CxnyrNuRZw6yqnUcVaa8u7kPOI
 3waHbd0gqvRrvXjBCOdUAlZ4yVWgv3YN8O0xFCvzHzpYSQO0tCjk36m+ZKCR7HzEFkX9
 3Z4WI8E0b2ssz6KAYgP4vvnO4q0PBwZh+W9fp5QuT+J6PmCD6FNgvyyvLxmsH7hRyCxO
 5zXrzDqbX78wnpbrEqu+XhSDEy4Aeji6tRxf4fc7lMg4xwT9LGrMKxQ2gmiXEm50r/1T
 EmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=923Ja2WcpXT79P86aL3lNG+qbwOggNaCyX5ijNpRJ5o=;
 b=oG4eu7+GbbRWunCObkax1r7tTjYc34PHuSE6QY2WkPJ8YaoA6ZRVvb1BE65V9ikOTH
 omImRI0kJu/GrEPgyQm61nGfFOug2+F5AIwxnoorZKTlCuXfC4p/VHWOTxd4Hmh0PeJ6
 zeSXcW4E70v0u9SJ1agmLYbHABguGvXTTFGpi1T4DCpDYCBOAddcY8AkduMejtm5Ox4D
 hrl53MGki5hektH3SOtpQgo/uMYQVBKkyajUp/DNb4vqPVP8FsUNTVYajyIr94CRlRk8
 pEH1zXpJamC5bsXscBarM4WRG1b//xeDsvKt4aPCpQ4Uvx19onQzVU3bW8RqC4xr9g2R
 aoYw==
X-Gm-Message-State: APjAAAWqzXNuOQegWbrp9gpoOi6Obhb0Jp2+YlnLvEGxogFzGMJppXTZ
 +XSHFw3zcJ5LosLdUID0bqgwKg==
X-Google-Smtp-Source: APXvYqyW+Kdgzx7xM0neb1lynMTW4xGwPPQq/J11QHkYCb0v1hPS9K5b4vVL8TRzTgh4ggvSdNM09A==
X-Received: by 2002:adf:de90:: with SMTP id w16mr35937106wrl.217.1564561455192; 
 Wed, 31 Jul 2019 01:24:15 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
 by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:24:14 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/4] Rework secure-monitor driver
Date: Wed, 31 Jul 2019 09:23:35 +0100
Message-Id: <20190731082339.20163-1-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_012418_176600_DC6A51C0 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The secure-monitor driver is currently in really bad shape, not my 
proudest piece of code (thanks Jerome for pointing that out ;). I tried 
to rework it a bit to make it a bit more tolerable.

I needed to change a bit the APIs and consequently adapt the only user 
we have, that is the nvmem/efuses driver. To not break bisectability I 
added one single commit to change both the drivers.

The remaining commits are cosmetic and DTS/docs fixes.

Changelog:
- Changed patches order to not break bisect
- Removed non-functional changes (PATCH 1/5) of the nvmem driver
- Fix gxbb/gxl DTS

Carlo Caione (4):
  firmware: meson_sm: Mark chip struct as static const
  nvmem: meson-efuse: bindings: Add secure-monitor phandle
  arm64: dts: meson: Link nvmem and secure-monitor nodes
  firmware: meson_sm: Rework driver as a proper platform driver

 .../bindings/nvmem/amlogic-efuse.txt          |  6 ++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  1 +
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |  1 +
 drivers/firmware/meson/meson_sm.c             | 96 +++++++++++++------
 drivers/nvmem/meson-efuse.c                   | 24 ++++-
 include/linux/firmware/meson/meson_sm.h       | 15 +--
 7 files changed, 104 insertions(+), 40 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
