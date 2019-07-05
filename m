Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052AA60847
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RJmLSM+15vRH3ctY1syHGKgnfK+n8laW1das4Gdp1/I=; b=FW0Q1b3dENTzLs
	1ukxNa5voU5tyyDC5/zLkIDC+UZ+HDoLbWCv4M7mOphr5/vrNcP0pyGiGGySl9kuH3fERO1aryAPv
	KZO0yeCizarQZYDrZK18HADEamZEipzZWqvg9CIeFSVWyDnLI9cUBcZcUVQg/YGzKm6UVEYZyUXIy
	KJNJAVuQhZ7VGliT2UEXG20XcvAspLXUdCurEVdY3KOL4l+S5nHAhdEhnaAjoaCY1GokOPG9rRZed
	QSYBXuXLy0/3Z5Mhgc58x41udYFTJ/03f+4xvi9XGO95UMlj8gn9/MQzAP8MMQt1mpkjh2MLGYG1a
	T5tv2+/JPMORsLoB/YDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPWK-0004Gj-55; Fri, 05 Jul 2019 14:49:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRs-0006VJ-Ug
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ensoF4e5rXwj74hLBAIVZsxBBZL6nZ0Z+cRMEnh3LdU=; b=L9dsxu4qGMDu0gs+yV4eml5Trl
 G63sKs7H4mSxqIK2BMG77pDWundO4vlKQo8I+HJ8YbUsuEeySHPq+9Hs7NYB9ST/ksaZU7aLt2G0n
 CR5D4xTPhPOT+DSiLIBYOKo0rHuzYtwOGHMpQG3jJfrnrqAsReoIW1EhktCX0fAV7XH6C0Of9BPGW
 TJ4URTcjPCqeZzRcicJuUYPRXrxP5owHnb2l8PvoLPQBlOz3lxI+KDlTRrGx5GI3LWnsd1KeSE6KW
 VkeMbVsletQOmRhyl3SUP72FPtdxEaXGwyZqixWYHaZGmcsaozyQ8J9SCujDsa5f1xFIIjF0Fc9Yz
 Mr6citgA==;
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFpt-0007Lm-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 04:28:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id c85so3736100pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 21:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ensoF4e5rXwj74hLBAIVZsxBBZL6nZ0Z+cRMEnh3LdU=;
 b=FH7xwm41hWZcz/bAm+ebH7WH/5qVUe7aIauNjE+VqhgU4DONdUYDjR6z3/jLVCpfFL
 +ZyqOEs/+VQDuVAKFfcSwZkA8O1zp5vb1wdIIFfnHLEfwZVUyvh2eD1eewv/HY0dGTZy
 hOrcbDsGJEEK2DJUNTWxd/2vDfa0hfcJ7qHBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ensoF4e5rXwj74hLBAIVZsxBBZL6nZ0Z+cRMEnh3LdU=;
 b=Y7j9gJ6oIgRXomABT2Fk/UPMlvOvjxvQrA23w8P9okb5RL5EBTsd/SmmirZpRdUFk/
 buANA+Zm7xrRq7PtQt1WgYWGFYhfNJnjbll/WDixAsLioUUCfYXqV+MzfGKdbFz8VyHr
 s9e7Jqi/fk3ghIcmprgO2mnCTFbW9JARH9S9W4RMnNTZO2U4dIODxQBk3eS3E7+MJDy0
 mfJ9/10oacsgkXq3/ifRQqGV/uxcMfwPEB8eYdX85cbfF1PjM/OE2FaW9hzitADoNudJ
 6Vh0mgcO7P+mOBS7YhC86/SPBvpXRs/PHOe5KV5pwj/HHri53PDqPpoM+D2Q5LIhF+Wh
 9kuw==
X-Gm-Message-State: APjAAAXP1db7F0NZ6RMzYzrTRNgut+fxiWPBfQrz3iuXEDAs3j9p75qH
 ib30B9iuBlifI0TmoFW2VpoMTg==
X-Google-Smtp-Source: APXvYqyf2nrb7RrUXLJ76qJyQDgKtq5/C+VLUCT/21TfLnfPJ/m2mK68NmzbeQqbgUJDJTJaH+v/mQ==
X-Received: by 2002:a17:90a:e38f:: with SMTP id
 b15mr2098527pjz.85.1562300791713; 
 Thu, 04 Jul 2019 21:26:31 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id q3sm6050507pgv.21.2019.07.04.21.26.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 21:26:30 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add HDMI jack support on RK3288
Date: Fri,  5 Jul 2019 12:26:19 +0800
Message-Id: <20190705042623.129541-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 tzungbi@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series supports HDMI jack reporting on RK3288, which uses
DRM dw-hdmi driver and hdmi-codec codec driver.

The previous discussion about reporting jack status using hdmi-notifier
and drm_audio_component is at

https://lore.kernel.org/patchwork/patch/1083027/

The new approach is to use a callback mechanism that is
specific to hdmi-codec.

Cheng-Yi Chiang (4):
  ASoC: hdmi-codec: Add an op to set callback function for plug event
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |   3 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  10 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  32 ++++-
 include/sound/hdmi-codec.h                    |  16 +++
 sound/soc/codecs/hdmi-codec.c                 |  52 ++++++++
 sound/soc/rockchip/rockchip_max98090.c        | 112 ++++++++++++++----
 6 files changed, 201 insertions(+), 24 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
