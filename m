Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AF51E63C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dR/L6qXCvsb6inM6u1E/7nM/3H4LcFH4jEdvqx0gpsI=; b=pwrd0g1yHJyt+s
	ks0Cz/+obbHiKOKGGFGWE94GVa/vJgABhn0d7rdJtVn7kxIkylzAhhD7ouGzu53bsVOnZfe6K3fRl
	9kI4emCR3HNjAT2zFDGeyKoPvWkOCQRyHLTzEl1Xu0taDIso43FEAp2pJF8j+yGY7DN3UEDDhJgE5
	YaenvzRZ2C1S0DPxhzgtsQv+uZCleIf19+F2gTODG+FPd7qNvNtZB8mE1W5/LAgWlUmbqUTQFNUNX
	vZOeEZxgXbPJdHapl+/jrQViDBOGg3aA0sLD4nlhdIARoM9LEXIRPSExCP4viMEVU3YgS4Hk0FIJo
	AkvDKpXU5GGqLPmanqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJRb-0002mI-8z; Thu, 28 May 2020 14:23:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJQs-0002Fx-7M
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 14:22:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id c71so3319472wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 07:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fW1nO44AIOkd1DyHEXQPPUYlT6a8b9ESKOQqboJxrOI=;
 b=Ej4N7uslJSputqEQa2xbVuKyL2M+K03+7SqLgEzI3Rn7DshHJgdM/1XfyTMJGnW2Vr
 m0kkQeSvrJxgLmRBi4HalZPUSysYWSMvD8eFOAkLxWuFZhQhfy/KFGA/rhCdy4GUO4Pn
 iKNJxxJUjDqambIIaNJHNZx7GdTpvLc5/YhqkdhU/HunYNdaEEHUWKYEKM/54NCX3mc4
 7+4XyZJipYLbx5cPjsGshzE8ppHw/6xYyV6Z2MCCG8D1JcIbjXIceyeEUpdWsHqCAuhz
 oq1OVCuUMCpbxDzIXVKaKNAUP6MtMrYwvPGK3qKZh8Z+oY7R5T9JWGFIadiTQ2msyWgZ
 0lcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fW1nO44AIOkd1DyHEXQPPUYlT6a8b9ESKOQqboJxrOI=;
 b=fFfHFhqbhyxKAmjuCPky6Ahi/1f36kRyLsD8XkYOgv3o6Cl3HFBy3eiTSY/oWCIWpa
 cmADQGPrYqoN9cNZ/4lvAX9pznTDDfiHBZtkDmexnT/f6q5aOu1mJeVeEX7++Nn+M7w9
 6RqiVInY6gZv864F+LL8t/upIPl2uigcRbvoV0AHw7P5xO5BLvpxZpGSQg0RYkVDMa4e
 SMzwY/rNfr3xEwgc1cO46/6V/XMXzsKLSvtlsdWJqSOEYhkEhjvunQzP4SLjOq8WKyou
 lKywNz4mRvrSMoFbceAiVxbp+o5fplc3dVFVPpmYja49j1sv2XBSwkD/gtGwC5++Gano
 /obQ==
X-Gm-Message-State: AOAM532nL9aw6j9RGaCKrWZ05+Gp027MPh3q65gryxBto4lqCTzmKzNU
 ES2bZzM8oPYH7APsh/6AMccmQQ==
X-Google-Smtp-Source: ABdhPJyjpo8fZxpr55zZ4EY0chHkdotq2Tr2sLbnnUHjIG5v+Aeelk58EK7UzA58W/G6CefodEUQ6A==
X-Received: by 2002:a1c:4008:: with SMTP id n8mr1516082wma.118.1590675772064; 
 Thu, 28 May 2020 07:22:52 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id h74sm6258162wrh.76.2020.05.28.07.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 07:22:51 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 0/2] regmap: provide simple bitops and use them in a driver
Date: Thu, 28 May 2020 16:22:39 +0200
Message-Id: <20200528142241.20466-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_072254_288852_0650BCBF 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

I noticed that oftentimes I use regmap_update_bits() for simple bit
setting or clearing. In this case the fourth argument is superfluous as
it's always 0 or equal to the mask argument.

This series proposes to add simple bit operations for setting, clearing
and testing specific bits with regmap.

The second patch uses all three in a driver that got recently picked into
the net-next tree.

The patches obviously target different trees so - if you're ok with
the change itself - I propose you pick the first one into your regmap
tree for v5.8 and then I'll resend the second patch to add the first
user for these macros for v5.9.

v1 -> v2:
- convert the new macros to static inline functions

Bartosz Golaszewski (2):
  regmap: provide helpers for simple bit operations
  net: ethernet: mtk-star-emac: use regmap bitops

 drivers/base/regmap/regmap.c                  | 22 +++++
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 80 ++++++++-----------
 include/linux/regmap.h                        | 36 +++++++++
 3 files changed, 93 insertions(+), 45 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
