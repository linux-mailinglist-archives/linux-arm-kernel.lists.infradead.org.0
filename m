Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3AA3279A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 06:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8Gn5Wo7ojYWUVTorovPtFkBwmqJfwL7fS1ftNukbt1s=; b=Cq5cr3M9xXQf+k
	U+a1Z3CbNl/qihha8LdpbX7F+vlgfPcXAjrIddkdNhDfCrb0jN2fVtfHK4uAyRoecyeU4q0G9Lz+4
	bU0+3AGHU2ckkkTVs6QgD36J7EdgHlN6c0bP77lgA3+WFS5SjWALUmkdxwmsGmwEJ6HTBhTW6DiA4
	x9ayVjK6MJfRaerTfV8cpR9pvrzXTM2DoH4gEVeUgApHcWVDHVnwLcjWFJBmt+9yzPDbI40Om5TZT
	7T3c3gkUxRtFi4wv807aQJ600YvMpDua1YpeCi7Vxp/gtq1aShFznQyGbqNGt3PrTmH/g7FQ79Ln9
	seL8g4tlQHh1RcjDQiAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXeev-0001wr-28; Mon, 03 Jun 2019 04:33:21 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXeeo-0001vg-5C
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 04:33:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id g21so6474485plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 21:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gbBoXtkybCih+d0Fl03vwDQsITr3snGAAM8qh+nRjII=;
 b=VeaP4rlcKfdj36YiD4gQN5PLFZoAC42M84KJTEVRE31jLss30T+2akFEYuIFscw/ch
 osRR3hmV4eFkOymM8RI/dzrIeWeqmeCdj51ANhdIi8KizrDsWOPaglP+WSVFVgD9Tnl7
 MddyM0pP/JzICG9T/EMHkZSnnKGiIZeN7crL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gbBoXtkybCih+d0Fl03vwDQsITr3snGAAM8qh+nRjII=;
 b=MnubqKge1dEUjKunJMO+79poV//xYEnbEes0lEl2k4phCzIOkdHHtwdg6zJIpM40rs
 HlxvfNmVo/YxwfTwUd55F+oYamyf9ej0QLI/Ep1jw6i1zBBfx+3R/h41DbdjJphMJUvF
 8Fhy/7etkBs1Rjd+WVJTxefLnKCpbycYuqBDsfoSxOBO3z05Tpq9qhWBOlJMNfzE2sIm
 oTgUU/dCyl1WJNurwiL0Y0ZWgrLvATd73QPfL7E9OlGR/jlrAZzXBYrbKYfdewmfFoYp
 2/x/9cNC93nbHr1oXzUcj3Rs2ugyn7pHpg18TBzeiNU7Wpi/yuRZFmEF+lnd5NbauIpy
 +rqA==
X-Gm-Message-State: APjAAAXMtJfPK6pP80q5WR1iZUGVZM5bk99LfGKugCUcnuDHHm2kQWtH
 EJhiaAqDJYeuvhlc6rA8RAEEMQ==
X-Google-Smtp-Source: APXvYqwHPRACAb2NVy4vT95TjNhB37pT6HfXrPSfjEO5DvIiqn/QoGGQisMAL1weRQlGa/4txReURQ==
X-Received: by 2002:a17:902:54f:: with SMTP id
 73mr27187074plf.246.1559536392351; 
 Sun, 02 Jun 2019 21:33:12 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id d19sm11382053pjs.22.2019.06.02.21.33.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:33:11 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] Add HDMI audio support on RK3288 veyron board
Date: Mon,  3 Jun 2019 12:32:44 +0800
Message-Id: <20190603043251.226549-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213314_233334_59B70C9F 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is to support HDMI audio on RK3288 veyron board.

To support jack reporting, there are two old patches:

video: add HDMI state notifier support

<https://lore.kernel.org/linux-media/20161213150813.37966-2-hverkuil@xs4all.nl/>

ASoC: hdmi-codec: use HDMI state notifier to add jack support

<https://patchwork.kernel.org/patch/9430355/>

They are modified to pass checkpatch checking based on latest ASoC tree

https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git

for-next branch.

With these two patches at hand, hdmi-notifier support is then added to dw-hdmi
driver so the plug/unplug event can be passed to codec driver.

The rest patches are about machine driver rockchip_max98090.
A HDMI DAI link is added for HDMI playback so there will be two devices on
this sound card. One for max98090 and one for HDMI.
The HDMI node is passed from DTS so machine driver can set the correct
hdmi-notifier on codec driver.

Cheng-Yi Chiang (5):
  drm/bridge/synopsys: dw-hdmi: Add HDMI notifier support
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip: rockchip-max98090: Add node for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support
  ARM: dts: rockchip: Specify HDMI node to sound card node

Hans Verkuil (1):
  video: add HDMI state notifier support

Philipp Zabel (1):
  ASoC: hdmi-codec: use HDMI state notifier to add jack support

 .../bindings/sound/rockchip-max98090.txt      |   2 +
 MAINTAINERS                                   |   6 +
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   1 +
 drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  28 +++-
 drivers/video/Kconfig                         |   3 +
 drivers/video/Makefile                        |   1 +
 drivers/video/hdmi-notifier.c                 | 145 ++++++++++++++++++
 include/linux/hdmi-notifier.h                 | 112 ++++++++++++++
 include/sound/hdmi-codec.h                    |   7 +
 sound/soc/codecs/Kconfig                      |   1 +
 sound/soc/codecs/hdmi-codec.c                 | 104 ++++++++++++-
 sound/soc/rockchip/rockchip_max98090.c        | 123 ++++++++++++---
 13 files changed, 508 insertions(+), 26 deletions(-)
 create mode 100644 drivers/video/hdmi-notifier.c
 create mode 100644 include/linux/hdmi-notifier.h

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
