Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956E275478
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KI6P0usYm62u1uZvQr4hnmg3hFZDVwsElDW8TqOXuPc=; b=Ipy
	hX7S+jIRqozLoaxK0o0mG7U96MphBEZ8aPuN5cqfox8+wAYY0KxIP1+3sFjHzkd70kVixTmx2HA7o
	Hv8hM4Vt/9ww6QASUt+5ty4Crfqn8An3QiRHF5Em2dEKbmwEWTwGRfXUQKao+baBOIO1ZJ6sO5rsj
	8GFG1FwfIEIoX2WZ8E8NZYmPd6LnVy/iGP28L3YiIdm1PG8PCoBL2Pzxd18VxIvlXpm3382nSNCH0
	cfwJ5zVqn6uvN4ysnbxnfR/FEiDp8q4x7URaxYDnOYEC7vtql8h98r6g/69clgvYL80zL//6BHmq5
	PUiKfG15833Bf1wk2gdk7cw4YKFL2yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgqv-0004xq-4Z; Thu, 25 Jul 2019 16:44:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgpR-0004AM-Ns
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:42:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id g67so41227326wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=SGJmBKcUqMKvR6yeTOTPyisPIWw/oGZVjBLHI0+zcGw=;
 b=KBrW3Ij5aUwDiRAJ6GdXeNunBAkqSMTT/1zew7s3LvqOT9kGlohsMF+iVKBf9QMyOy
 7erUqMglmdsQuxcBSrZANcdrZ1yE19tfjAY35s6J64CfX2jtNzUy5GL+UP5zfMr13CZr
 oTwIP7c+juJvDLeCSTcPhDGOo5ooqpyGEwBXOo4leugbE0kWSWA5pvS4ssQFqMdk+bH9
 eFJHOhsyHSbIaNPaoBoDoGDMripnCeDSm2EP6skBs4D860iUXnEvBr1P/9lxgQzjHQ2n
 puVV5XKuCYCpE6ckW71Sv1wsjgLBTq3fetwYWQ39osRHeCI9b+O3Ammm/xCJ+uc0JRg1
 dbBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SGJmBKcUqMKvR6yeTOTPyisPIWw/oGZVjBLHI0+zcGw=;
 b=FaZRLLWFZ3edtJPU8W8TaxG3xMbKrBsQwHgS5946Z5SkxU4wGFIAu1KnJd3e+EtLTs
 QegcwxbZ2NVQ8rzgqlZNPAEpsQjo6bFHvuVE63Ic3gDBggTOY2WcBfwSH/73/CSAyjPh
 UppwLg5xam4PEz/06wUoFX3f4qCkFcOuGoSuafGsEBkQxwh83xLT5ClMb5bhYHKQwX86
 NoRpjzkl53yyRGyTlab4sgFeF6aa+UIpxrygQg8fh6thAmSa8fZVM1DH8KdhwvPiuCvq
 9/sybNU6J1mvVlgrNEnOzF8Y9ZjEQoa2R+TQ2s2LrAW6SblqpyoS/JMR0uluznZN2WqC
 5cKg==
X-Gm-Message-State: APjAAAVqoyr2h5ArLoIkNitD4RpQ62rmFLZXo/Q+JV5ishCYid169F1U
 nd4aJln4gwnRoyHKhjFWNdNEig==
X-Google-Smtp-Source: APXvYqxlREV45hHUfVDk1Y22GCYG2j0m/duTrCeHlsvTz6wQQ10qi4zHPhIAryaEEmTtj9/oEill3Q==
X-Received: by 2002:a1c:a1c1:: with SMTP id k184mr83257469wme.81.1564072972458; 
 Thu, 25 Jul 2019 09:42:52 -0700 (PDT)
Received: from pop-os.baylibre.local ([2a01:e35:8ad2:2cb0:2dbb:fac9:5ec0:e3ef])
 by smtp.googlemail.com with ESMTPSA id 91sm103031727wrp.3.2019.07.25.09.42.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:42:51 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 0/8] clk: meson: ee: use the new parent description method
Date: Thu, 25 Jul 2019 18:42:30 +0200
Message-Id: <20190725164238.27991-1-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094253_869055_01944E22 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Meson SoCs clock controllers use the string comparison method to describe
parent relation between the clocks, which is not optimized.

Its also use bypass clock made from device-tree clock to provide an input
clock which can be access through global name, but it still not optimal.

A recent patch [0] allows parents to be directly specified with
device-tree clock name or without string names from localy declared clocks.

This patchset replaces clock string names by clock pointers (as possible),
removes bypass clocks and uses directly device-tree clock names in parent
assignment.

Tested on GXL, GXBB, Meson8b, AXG SoCs by comparing the clock summary
(orphan too) before and after migration.

[0] commit fc0c209c147f ("clk: Allow parents to be specified without string names")

Change since v1:
- Improve comments in gxbb, g12a and meson8b files

Alexandre Mergnat (8):
  clk: meson: g12a: move clock declaration to dependency order
  clk: meson: g12a: migrate to the new parent description method
  clk: meson: gxbb: migrate to the new parent description method
  clk: meson: axg: migrate to the new parent description method
  clk: meson: meson8b: migrate to the new parent description method
  clk: meson: clk-regmap: migrate to new parent description method
  clk: meson: remove ee input bypass clocks
  clk: meson: remove clk input helper

 drivers/clk/meson/Kconfig       |    4 -
 drivers/clk/meson/Makefile      |    1 -
 drivers/clk/meson/axg.c         |  207 ++++--
 drivers/clk/meson/clk-input.c   |   49 --
 drivers/clk/meson/clk-input.h   |   19 -
 drivers/clk/meson/clk-regmap.h  |   12 +-
 drivers/clk/meson/g12a.c        | 1093 ++++++++++++++++++++-----------
 drivers/clk/meson/gxbb.c        |  657 +++++++++++++------
 drivers/clk/meson/meson-eeclk.c |   10 -
 drivers/clk/meson/meson-eeclk.h |    2 -
 drivers/clk/meson/meson8b.c     |  710 ++++++++++++++------
 11 files changed, 1805 insertions(+), 959 deletions(-)
 delete mode 100644 drivers/clk/meson/clk-input.c
 delete mode 100644 drivers/clk/meson/clk-input.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
