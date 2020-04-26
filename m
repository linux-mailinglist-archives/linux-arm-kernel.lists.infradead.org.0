Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8CC1B8EF4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cWICsZwW3WNtRIoDd07Dp2SqfmcjWMZ7aB+nZ5a5pZM=; b=fPqPfT0WqOqmd6
	1fVTuxYEQ9ujXYXWP/Sh+KS6LZCOD/TYkgmF5pCnSUvIGyS7pa2wd5lccwmfN7WeKcLJMFa8soqet
	A4JkBj9wjX4RRbjTPDy5tVtJb5uD7R6ocyd0yYWZ34aGdevrDtC9pNVToVEbb0f2PDGYdSBUEHwFP
	2A4uz6ZTOiu363uEbM99fjLMsjAGfcw5jUZyMegdB3xWNv6WVy8GZmzvVRck4i3sFEOqCs+aSFKub
	31LUJlsD/dZe0dNZiQTnaMs4bFwqufEV1Om0lS4mUiCW0Ppfiw72lY+QXV3Z3oEW8dOWf7DxstIbx
	4cT1crzPFsfJ12KsM+jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSej8-0002xR-1N; Sun, 26 Apr 2020 10:41:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSeiv-0002v5-AF
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:41:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id d15so15345952wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t36awUAxBdURHa0pPaeUAx2wGUximeZMbTRyNuoxFJQ=;
 b=DJTyWottTMVyc6z8QE28iZUq89K4lfUqv7E0bZ5i00aryQAtf8IQhI6iOj+qjELeIL
 Mai5Ks/HBGmUe3f7su0WhujgOQzyX4MjfVB3gYYAVGu3i46Yl2RLQFhZtHu/Vrt+vQpa
 AYOYXLSc9siKKV81KymabDWHdPxvIN30C3zeirXkQ2lIIfkuf1KRIlrwmLJzK8mTevax
 yWqeX7zL5XPo8nnlZE0SJR/6piBu4vwO/zoSeRNcPPe64a7zzSfbj2tPy05R9xal7yRH
 w/tso/JEplt8R4PEiwW2rxUX/GnjzdVNJbsk5lQMSOy1xeEReNkWKcIW1m5HTC4I93Yg
 xG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t36awUAxBdURHa0pPaeUAx2wGUximeZMbTRyNuoxFJQ=;
 b=YCV/oMmiF59KZAWe+bskVOXiE8ApM1IjXs7hr6YlqHB3/NO9hQUnLnVTbUNi/H4cyY
 1CdBpwqAfs1qm7k9gc+iyQa3mJ+RQZ4IS65aQtNQPsHQRTLhe1ffLd8QK+q2tCiDtjke
 v9vpnaYvbQfeKcZVuP/zB3bsfhgjFEY51t/q2pOiYadK7UGLEzIkGsD5u3ZG+4JzwcDM
 YeCMdegrBPoCplcMieA3ZUe7XKGqanDKIiz3cR3DHIoDdnri9CYoP5ne8GN65K5MQAUK
 VkeaAsqTJM3vA62K/3B7zgyGHIt+yi9q9iRjcF2KvNVeeRBJaMQIjI2emStS9xDfrdWS
 JdqA==
X-Gm-Message-State: AGi0PubCoV3VBMnImYK5T/mC5TTF6NrDlW9vhDBuk5hS/oW9MLMvJtOV
 h4FbV2P+QlIr9x/afxVl5Qo=
X-Google-Smtp-Source: APiQypKFE6ZvIpfTdcTCsjnX6lRWOkKiGHpgutcqgs8f5RsTU7gCLlhGaKzJPimh6XbZNz2/ILqSwA==
X-Received: by 2002:a5d:4e12:: with SMTP id p18mr22033146wrt.148.1587897678658; 
 Sun, 26 Apr 2020 03:41:18 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 y10sm10491793wma.5.2020.04.26.03.41.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:41:18 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v3 0/7] Add H6 I2S support
Date: Sun, 26 Apr 2020 12:41:08 +0200
Message-Id: <20200426104115.22630-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_034121_379479_32DB9533 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes since v2 (thanks Maxime):
 - Add details in commit log about sign extend sample
 - Only set FIFO regs as volatile in regmap
 - Missing a space (detected by checkpatch)

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
 sound/soc/sunxi/sun4i-i2s.c                   | 265 +++++++++++++++++-
 3 files changed, 296 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
