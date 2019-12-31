Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE5212D8B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mya91CYu/t6+Xx+m2ZIkYzq5u4cM+ZjzZh6sqSgohe8=; b=BaQt5CB3tz+Xzo
	2UGqyf3LMaLoOezhBB0b7uiKrSw7FFfA8VUAMlroGT50XP29jMNjpEvdligGWctnpzuV/+sG9WzG2
	JyLCvVE5ODFIOegVJupsU8yD8b/kd7BXdvIyu85MkAk8HFd8Tjb5WkqnzAq32BgGoTRVf2bbyEGZN
	QcW1/coSwcHH1ke9gDf9O1MDy/Z4ef70Gyua3CDfqZYQqDYs+3YcpdvmAqzbOvR+SKmjlV6/Letio
	9eDuaukRj6lmcOZh+ikt9hKW9Nz+d9uhEb+Kk0wc3XiQbsEDK7Bgj37rEZX8XKm6ZCAiNRzDdcoSm
	lRqpAWr2B5PLhf23uMXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHDh-0005UH-8i; Tue, 31 Dec 2019 13:05:57 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHDU-0005TY-Ku
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:05:46 +0000
Received: by mail-pj1-x1044.google.com with SMTP id kx11so1173742pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G8ue1C52c6GMFo3Ro49/gUAlsKHzYRxfbPWqTGCIbyw=;
 b=JNRNyjPnuWa3Uwbq0Q5tiy7txraP03SundwCX4/YlAxMeSUJ4lClB9jb44eLtO6iRF
 HrhyZr5cz1P8LDTX+KBc7DI8GMWWZ3FX2v3iPLpHt1LvH4grZql1KQkDA45kcp8pSkdK
 TBDBQ2HMrNmRsko3h5ah/l328CIQUspldKC0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G8ue1C52c6GMFo3Ro49/gUAlsKHzYRxfbPWqTGCIbyw=;
 b=CSEM3hOJECe0gRljC+aAQW+xpht9Oht0yAtRj33gf5A44uVRvD/jn/IMXaSq3gYPan
 EBtLMsXEepXzh3MdwvYz+m9PD8dBY7eDL5MkrTxL36KWNHW/aS0Z05mGQWT8akL+NZT1
 xyxqEVG008+U37qDbe5IctgS9LrgPsI4bBLuzHHOHAKi6eLepsapjbzwmlvQGfVfIJTd
 2l19gje5nK6cVb6w72S3FVHEa0HMwV46DTl5AKs5AJzqzK+TIfUVJabWfX7HbsQh2NFl
 FXgiY1TPDXW2Ogprw6rF53LG/RwheV18J74pKqKzgk2+1+xu27zFGmHeTDZFl24JHhrl
 LIKg==
X-Gm-Message-State: APjAAAXcUYukDfs9esE3UsnNfxWqWM62nzoi8cir+Gue+Riov4ukekcp
 GrGh/Hu6gWaXg45so/QxgCapWtLGr7I=
X-Google-Smtp-Source: APXvYqxXkYxsyd0ZyZlBKsAKlLynOFIBkeSMyKHk4J7/GJzGsj4UxrrFoX57Z2SFZ8ziy3NWHt7NsA==
X-Received: by 2002:a17:902:bf0c:: with SMTP id
 bi12mr47277055plb.208.1577797541340; 
 Tue, 31 Dec 2019 05:05:41 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:05:40 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/9] drm/sun4i: Allwinner R40 MIPI-DSI support
Date: Tue, 31 Dec 2019 18:35:19 +0530
Message-Id: <20191231130528.20669-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050545_331886_36BED0B2 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v3 version for supporting MIPI-DSI on Allwinner R40 from
initial version[1].

The controller look similar like, Allwinner A64 but with associated
R40 TCON TOP for DSI pipeline.

Changes for v3:
- collect Rob, Chen-Yu r-b, a-b tags
- move tcon top reset control methods into probe
- rebase on drm-misc
Changes for v2:
- drop tcon top lcd clock patch
- add TODO text while adding tcon lcd support
- add patch for registering tcon top clock gates in probe
- change tcon-ch0 in tcon_lcd0 to CLK_TCON_LCD0
- change mod clock in dphy to tcon_top with index 3 

[1] https://patchwork.freedesktop.org/series/62062/

Any inputs?
Jagan.

Jagan Teki (9):
  dt-bindings: display: Add TCON LCD compatible for R40
  drm/sun4i: tcon: Add TCON LCD support for R40
  ARM: dts: sun8i: r40: Use tcon top clock index macros
  drm/sun4i: tcon_top: Use clock name index macros
  drm/sun4i: tcon_top: Register reset, clock gates in probe
  dt-bindings: sun6i-dsi: Add R40 DPHY compatible (w/ A31 fallback)
  dt-bindings: sun6i-dsi: Document R40 MIPI-DSI controller (w/ A64
    fallback)
  ARM: dts: sun8i: r40: Add MIPI DSI pipeline
  [DO NOT MERGE] ARM: dts: sun8i-r40: bananapi-m2-ultra: Enable Bananapi S070WV20-CT16

 .../display/allwinner,sun6i-a31-mipi-dsi.yaml |  8 +-
 .../bindings/display/sunxi/sun4i-drm.txt      |  1 +
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  1 +
 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 37 +++++++++
 arch/arm/boot/dts/sun8i-r40.dtsi              | 77 ++++++++++++++++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.c            |  8 ++
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c        | 50 ++++++------
 7 files changed, 154 insertions(+), 28 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
