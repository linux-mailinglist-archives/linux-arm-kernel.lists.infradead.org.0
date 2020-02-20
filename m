Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F342165953
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OsNTBTH8LtWo60Ut9AXhon+E24D0ttwiVeNm4hZZczI=; b=ASiMLUS6ChRFHG
	3m22hWBvzoABtL9a5Zr+GvZT1EcGZIkyP3KbCz/v/s5Rj9flHjI0rHhzxDeeKggB6KolTurZCtFO+
	7b5iRhGAGxwcApcN9ZixMbUkMQy0+2rTKr74dKHXPTH795FwIGDh8U6M+xTbVNduKpQchyEzb3HaN
	88sn409t0Au68frXdL89wJlI3ZESgQIo1xItYmoYm2NfwXDfjSb8GRpt0ctOctb4xUSS9oEcwprgt
	1gCjONTVhpZsXcd52OQ84tNx7RCb6cZwY1L8wzZKwp5RgO7wwkAeISYQpEJ5jvqg360l7IssnrLT7
	oFu64hn914QchQfR5Z3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hJs-0000N2-9k; Thu, 20 Feb 2020 08:36:28 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hJK-0000Be-Ih
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:35:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id gv17so582809pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SW6+8bpFonKNb3f2YyuDTFneOp+QYGUKG8MU+Huhr84=;
 b=NLfDvpmphz84eNv17aBMiiqAMqVRvSFWjee1gd8DwTcU5WUsDFqZ9aP2ecjx9QMRwb
 PALAwf/6OlcTq/DyByk0h/aL5jR0Qh9kpipz1wKr+X5OrLfG1xso5chKqEDsvCEN1+7N
 AdybVWlhDI15pIfmzvZVQv43ua+uIFoDZJrZDz5Ua0Fiypghs7qmCxakm12iLhqx6prn
 MIqA8+HOleqP7N+mT+fe3/JnCtSTQM8pLAUuVj3WkfTo14VvtQavoi6qzUSIhv5TJqXr
 s9lBrcXILDs5wdYQKHBFMZkvh68Wg1UutoTVS4mSTxrtUs7NPiittk0I5xDEDo1a1I/C
 KxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SW6+8bpFonKNb3f2YyuDTFneOp+QYGUKG8MU+Huhr84=;
 b=KWg91ufcohgRz2mowrjIX5W9F+cna+lEwUVpKwVi4m8WWlVwEQIjWmZHTeXYFWGAok
 RX+J3tKUMwGjOBQ1gqpxs5FMVye+/3SW3aDf4UMJy1pIkp2eZNyc4RVNUYcBbSOxzJWQ
 sousK9yvlbcVhWEs6Q6cqfvEOJdd3fXXdRf6bvzQsLZib4QSwJJMitQ6mi+Ushayc6XQ
 WM5YTUBjDWS6XrQp7xRp80pPcYqS7l9P7tbZp4VuvZY5FUdf9yIRV5iIgW6WucZQm1Tm
 Jxf4gj2lQabsIGuFRHkop60ZQFfeWHVneRXuI5ZEINlWZfZT1rHm4kcmvX+mobzwmi9G
 xMLw==
X-Gm-Message-State: APjAAAWKi2VrOPuJzmL1tgX2uadZ2PLf8GzDfjoo8xr3fOXPk6I25qdy
 qYUzTC8tflrSEZsec1F62uQ=
X-Google-Smtp-Source: APXvYqwUjt36D32iUpxvkzgCrZ5Cy1bNz6qVcLjbq7xSe6oYStvEJ3BdJs2uPheTayNx6ML7KG+AaA==
X-Received: by 2002:a17:902:8bc7:: with SMTP id
 r7mr30187510plo.12.1582187753221; 
 Thu, 20 Feb 2020 00:35:53 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id l13sm2319038pjq.23.2020.02.20.00.35.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 00:35:52 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Icenowy Zheng <icenowy@aosc.io>, Torsten Duwe <duwe@suse.de>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/6] Add LCD support for Pine64 Pinebook 1080p
Date: Thu, 20 Feb 2020 00:35:02 -0800
Message-Id: <20200220083508.792071-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003554_646025_02224B95 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since ANX6345 driver has been merged we can add support for Pinebook LCD

This is a follow up on [1] which attempted to add support for all the
A64-based Pinebooks.

Since patches for 768p were dropped we don't need edp-connector binding
discussed in [1] and its earlier versions and we can use panel-simple
binding as everyone else does.

If we ever going to add support for 768p we can do it through dt-overlay
with appropriate panel node or by teaching bootloader to patch dtb with
correct panel compatible.

Similar approach was chosen in [2]

[1] https://patchwork.kernel.org/cover/10814169/
[2] https://patchwork.kernel.org/patch/11277765/

Icenowy Zheng (1):
  arm64: allwinner: a64: enable LCD-related hardware for Pinebook

Samuel Holland (1):
  drm/bridge: anx6345: Fix getting anx6345 regulators

Vasily Khoruzhick (4):
  drm/bridge: anx6345: Clean up error handling in probe()
  dt-bindings: Add Guangdong Neweast Optoelectronics CO. LTD vendor
    prefix
  dt-bindings: display: simple: Add NewEast Optoelectronics WJFH116008A
    compatible
  drm/panel: simple: Add NewEast Optoelectronics CO., LTD WJFH116008A
    panel support

 .../bindings/display/panel/panel-simple.yaml  |  2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 .../dts/allwinner/sun50i-a64-pinebook.dts     | 69 ++++++++++++++++++-
 .../drm/bridge/analogix/analogix-anx6345.c    | 12 ++--
 drivers/gpu/drm/panel/panel-simple.c          | 47 +++++++++++++
 5 files changed, 123 insertions(+), 9 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
