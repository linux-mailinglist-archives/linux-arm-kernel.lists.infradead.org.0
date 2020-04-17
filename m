Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61091AE4F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fbFY1HKf9oREsjFxYiRvW90Z1cASyELBy3Jf4gjrrik=; b=XvSQKFCzBuiHuU
	Hp5+1seKA01ycovjhjD4Z5aI53/iMWEngMoDgOangYD4H22CHHl7ie380C/hvqHLmx6/ZzPacAz3X
	0AyGAf8RCLsJKZimyPSgupc7z1FfIGg9gmtxQVbjZ2dXbUII7plFZPopmK6jOEAJztp3/1Ay0O1ys
	twsONCyEMS6fowjCQGX4VgxiehNqZmtAnmGWCTM/xy/yiO7LX1NOAOGOoLa3P/xIc6yP4F8U3NYmI
	6zQMq+7PxmrKy/gao4q8XmXvAT6AFLfp1w2V4XtH7HKCy8trPZepQwTn4UO8u23BZAFOyJrU1hBl5
	DOAwzwQcPetcnq6cJplQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVw7-0006yn-Ew; Fri, 17 Apr 2020 18:41:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVvo-0006ug-4p; Fri, 17 Apr 2020 18:41:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so4200800wrp.5;
 Fri, 17 Apr 2020 11:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2fCasJ2C+JC/HUKeTPHMgTsMvggIkNTYgPJZjR55RsU=;
 b=LXPAvTODuV1mrN7GJOFr+aeOYLH/I4yhHZmBHhlvtFZi3pHvCGkvG371ONKh08DYBs
 0EQYOXKOXY6VDC87dCc0DQkR6gdnRcWmQ6XzatNBI9cibBQEWj8xf1hoAjfjqP2oTccI
 OtNXrfTchRt7BQmA6d15v0lzSaUxgkdEV0JUgEYnoMLlqSFqhZyDaY0sGVR9+RHKZiKK
 jXaIAbiV9NnrssX/9tq9BtOzZulYgXZoFTeTP57WOSNgeAZPHyXpKX4bhpUa8lplaueX
 SnirzxJglgw3QODNUjEkIplsRTLIE4VSx/R3SSid24vAn+i/CnAZo5l3ETMRXla5SLwe
 YkNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2fCasJ2C+JC/HUKeTPHMgTsMvggIkNTYgPJZjR55RsU=;
 b=dmLkjvi8CtGQ4N2W9ubxxNUZeSF52QMCKYWfJJyYGjt73LnGkzDI+Ha1qpD0TcDSiK
 xART/1mOxYT22m0ZSZ4gEKiCb8EP2JZ8xjxjcUNsXwyYlt1rAfNdozGlP3upSHLPgSud
 W42SlUwLxA4vU+/3YeQKdYTZfX1W3KewD1FjfmY96dtTSoukfm6k3jKZ4wohoBMOk0mE
 1bW7onSHdLBMCnj2LV5KAX1qRwC+ln79zAymtPIU3WlzqPQXDrrJs48kj/4tB94yXEIT
 3zqOI3N7c3RQ2BHXUAcdQPpw+4UuoPE1vx8g5ypQO3+buv4GlS5fGAm3GtsxpOnwOxcq
 Yquw==
X-Gm-Message-State: AGi0Pub3pX7OdJTo6gjpIMMv3XVctYJ2c40ZpyS0EDAx5/xTbfwO4FTO
 aS8IPW787WiQPUbuKdgfBy85AnARaLc=
X-Google-Smtp-Source: APiQypIIGUhAdLJvQZMeRku+d4KFp8njsgQOIbIzXEqczaUyWySh9fX7lU1ILP8NotRqPUayjCIXeg==
X-Received: by 2002:a5d:51c6:: with SMTP id n6mr5298149wrv.314.1587148898835; 
 Fri, 17 Apr 2020 11:41:38 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id c17sm33237391wrp.28.2020.04.17.11.41.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:41:38 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v2 0/4] clk: meson8b: updates for video clocks / resets
Date: Fri, 17 Apr 2020 20:41:23 +0200
Message-Id: <20200417184127.1319871-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_114140_182674_37F0E3A5 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the first batch of fixes and updates for the Meson8/8b/8m2
clock controller driver.

The first patch fixes the video clock hierarchy. Special thanks to
Neil for providing a lot of details about the video clock tree!

The second and third came up while testing video output on my EC-100
(Endless Mini). This board is special because u-boot does not enable
the video outputs like most other u-boot versions do. However, this
is very useful for development because it shows (the hard way ;))
where the existing code is buggy.

The last patch is a small improvement for the VPU clock so we
utilize the glitch-free mux (on SoCs which support it) and avoid
problems by changing the "live" clock tree at runtime (with the mali
clock this resulted in system hangs/freezes).

In my opinion all of these patches - including the fixes - can go to
"next" because the relevant clock trees are still read-only.


Changes since v1 at [0]:
- updated the description in patch #1 to clarify that (it seems that)
  there is no fixed pre-multiplier for the HDMI PLL (like on GXL for
  example). Spotted by Jerome - thanks!
- simplified the logic for the active_low resets in patch #2 by
  shortening the if ... else. Thanks to Jerome for the suggestion.


[0] https://patchwork.kernel.org/cover/11489079/


Martin Blumenstingl (4):
  clk: meson: meson8b: Fix the first parent of vid_pll_in_sel
  clk: meson: meson8b: Fix the polarity of the RESET_N lines
  clk: meson: meson8b: Fix the vclk_div{1,2,4,6,12}_en gate bits
  clk: meson: meson8b: Make the CCF use the glitch-free VPU mux

 drivers/clk/meson/meson8b.c | 105 +++++++++++++++++++++++++-----------
 1 file changed, 73 insertions(+), 32 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
