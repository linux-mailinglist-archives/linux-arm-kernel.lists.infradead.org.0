Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EB21AF590
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w7avFc7u9k6RDnto4xkMA+sWCEndW0Zw6WRlnvkKNWY=; b=An0/DbhiBV10FA
	kgaT12VoRauvDYNtwicQ/MwC8Dfn0eFrgX9GV5uibrR3S5Ts1san7FTs1PqoZ9ftdMrBDbYkJ/4M6
	lBjaCuV9uAHeIyoYIMGpNiacP8kYeaEhLZsFfaaIpo+pfqanPylyLnfMQvzS3SA0mPWCkwkchPtWp
	bhHQta5Nhqo8NO1LgUSj+zSTZSDFJJK0OxBfj5E1rfPi9FhOWNya6L0HHDyiPGTWwvC1EQ0CbShpN
	xf6+bdWjMPjHka/DxMuKIT+4Ypp6BBGL7nn1GpxpeChbZIRx9Q9ppobEBwRMM4eBgxc08BwsA/F0e
	qBLKXz6Kgx4lf2xVPmJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwCe-0007Ry-Nv; Sat, 18 Apr 2020 22:44:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwCW-0007Q7-Hg
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:44:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id j2so7391118wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 15:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wutgCaF9Zt/dkeWGofK0wxzxUn+L+6837DjwQz9y1UY=;
 b=S8KltfH+/O56KBksVXD14TzKEOLFfEQyo4KgSjFu66oO3Uk5cwNWg5nBnLAjoS5ztX
 4xjow8fTnW0ns/pNDHxBa5a5+HshR5W40o9c/ct5OZrf1o1ZG4g/xKmOfwpk1WBfCTQ0
 ojGBTITEANi7ER1oclt1vO3TzETC08kH/nIk2fi7a9QfgpGFae5VLrbgydJdH1SHsDAX
 o1rZrKERoVYwEZEV+PLbbMA7oMVaXf7LID9r6dRhyaPDcSslUQfQlZglgE/ClFrKpR80
 syrlPCDBugz7YHcQpyH8KXBE/bZOSNAz4isuXF2RD/fSJPp3i54pYPc9E2Bpl5wTZwIC
 fKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wutgCaF9Zt/dkeWGofK0wxzxUn+L+6837DjwQz9y1UY=;
 b=jDXoX5PueFexpP/RSFR5BXGqijy8bw1EGm6rhX5YZtLZGX4K4Tl9bfa52SkClWxj5C
 QFEuKIiLcb/whSemxL1qKbNk3LtLbcrKbKyzdbMZlzXZbBCe5v70xsk4jvAiqLshJ/kR
 c2MOS7DvJbaYy/EelTMcAgiIUwhZIOuHn/Ol2qeE1evfkcq8b7b9+Rk9M9pPj8BtlPmA
 Wq0S3amNlFfnXKzMMqLIKWhRinOPjqRmdJ3iqTXynAfUCSoRpy7bGFM5MArM2ZnREY5u
 oFoVCsusV+LURnf1R+XDWzUDrGo8ohsxDrWAKIo2gxyjYbZW7EF6W25VZKH5xyTtmDcu
 6Q+g==
X-Gm-Message-State: AGi0PuZMkybh4qXeIk7v9sdNq6fZR6rkjLjYy4C9UizvkrOJE1CS6y1F
 G4vuvX6DHlSWrqnchgeH3hQ=
X-Google-Smtp-Source: APiQypLOwYrHCgIWndZgkcTL4l0O4nIwWLNdaqPiGUU1qxzWWClq+DqLkuqfQGwqt4juRRHwGPellQ==
X-Received: by 2002:adf:dd07:: with SMTP id a7mr10688193wrm.349.1587249878341; 
 Sat, 18 Apr 2020 15:44:38 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id t16sm13371559wmi.27.2020.04.18.15.44.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 15:44:37 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2 0/7] Add H6 I2S support
Date: Sun, 19 Apr 2020 00:44:28 +0200
Message-Id: <20200418224435.23672-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_154440_609118_8E092F7B 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is a sequel of Marcus Cooper serie[0], where remarks made by Maxime
have been fixed.

I have tested it on my Beelink GS1 board.

Thanks,
Clement

0: https://lore.kernel.org/patchwork/cover/1139949/

Changes since v1:
 - Fix missing header in set sign extend sample

Jernej Skrabec (3):
  dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
  ASoC: sun4i-i2s: Add support for H6 I2S
  arm64: dts: sun50i-h6: Add HDMI audio to H6 DTSI

Marcus Cooper (4):
  ASoC: sun4i-i2s: Adjust LRCLK width
  ASoC: sun4i-i2s: Set sign extend sample
  ASoc: sun4i-i2s: Add 20 and 24 bit support
  ASoC: sun4i-i2s: Adjust regmap settings

 .../sound/allwinner,sun4i-a10-i2s.yaml        |   2 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  31 ++
 sound/soc/sunxi/sun4i-i2s.c                   | 292 ++++++++++++++++--
 3 files changed, 301 insertions(+), 24 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
