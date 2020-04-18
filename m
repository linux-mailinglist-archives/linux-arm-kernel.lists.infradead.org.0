Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7031AEECC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v+9vM/9tuyjm6APjk1gB1yMl9DNZgcNHXs++DRGrCjo=; b=C3vU3kROx9chK+
	72jEcUg3q9Z/yom0SW4FqEMSMWqYOMOEciGKKngkvdnek6fQwnP9OzCpM4hHUf6E1XSjXPd+FLzvX
	oJSPAmQcB3jdlmBLWGVixgW4H5mA9ICfMPAk2T5ht6jKVs+2rKjcKlpOpvdwy64wDEnidVmWDB2UM
	ZAZm5D5JV4ZBVYI8c1PsaETJPkm2BO2gmV+df0ZEFyxDiEyNu2z1AGgfYcbmYT1/n+PS8d/sR39f9
	634ThMWWOJFtBjlr4h3mpJdsSxxw7CieAZGuKYg/ZuQnZVhLXMc6sEY2QbNZPD5xaG0GiW/yfMM5O
	YHxujYoVa0I/W1Hxh2hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPodD-0003V3-UE; Sat, 18 Apr 2020 14:39:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPocz-0003Sl-As
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id v4so910136wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 07:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=stLQlVuh4P5IJ5M0lj4/6uAQgTyw/bQBI8ltWxyZDXo=;
 b=E9cA2LGcfpwjWkWL0LUCKY8rmu73mUw4/VIbbjYfLKPQwuWP9GEU6t7ShXY0UXKUmt
 Z8fXWZurPul5Q9s9FOLmzG8iSW+h9wQGvfq/Vay0WY8Wa7Tz8vb4B2JnsAmuQHQQIOzr
 jW2PHrACksVjQkQZd1h+cahQd+HTFKynZObqNlHA6BRUDaM/67kufXqd5vmEIFB3F5D+
 T9p3+9Gkb010F2QJ0jY8Z9vjeEEAtCmOftABQtUOWhaWfAQdnBRi/2pOiSBw4FqLeuFj
 Pr9VnRQ1cMPsoNr7KfX6BwqUkMOg1kFog4UDIjA0Qum20JgQHo2GbTunOfUK9YQa+HjZ
 yB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=stLQlVuh4P5IJ5M0lj4/6uAQgTyw/bQBI8ltWxyZDXo=;
 b=jrd5DhRPakoDbmW1c6CVp8PWkvkcfZ1d52tYqDd4H60q4HUjCP2K990GJJ5P/eoVsP
 hBQNHAhJBAXGFGchTEltTjj/4jg+2sawD5uiRiWCjf5rHWJAo2VT19OYJ3fZJ7AIQWEC
 lFgRJV2l0ljk2fZV9DtMgRgTgD1JDuqh1ATJuwo1S3jwZ9TOdDS1sTprW+inqysN/0sf
 rh9Vc0suhkbTYB1rFnO/PITRsBLgBf+xGxg+rhvgBrdTQD5fQb3RUHo7ROCXyGPzuUSh
 2puUJqp9P4T5u+VVGsM/l7oDDPkoJQ6A10dntQFwSOTbeggriEIVLmDv9KX8qijKkmOO
 iH7g==
X-Gm-Message-State: AGi0Pub0s0104/52VBpk2Z70SyCMvlHOv0z8qSBFVvZEW/8WzFf2kmgW
 gIDLmGl25uyIoVSrpxsoXS4=
X-Google-Smtp-Source: APiQypJgp3beoqLe7KxcrcgO1iEb5Zi5/JPSvihpkv2bGufse5QTbKlcUIFXicuNuiKrgQXX+QJ18g==
X-Received: by 2002:a05:600c:2255:: with SMTP id
 a21mr8551841wmm.150.1587220767261; 
 Sat, 18 Apr 2020 07:39:27 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 s9sm25375322wrg.27.2020.04.18.07.39.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 07:39:26 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 0/7] Add H6 I2S support
Date: Sat, 18 Apr 2020 16:39:16 +0200
Message-Id: <20200418143923.19608-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073929_394551_D072EA73 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 sound/soc/sunxi/sun4i-i2s.c                   | 286 ++++++++++++++++--
 3 files changed, 295 insertions(+), 24 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
