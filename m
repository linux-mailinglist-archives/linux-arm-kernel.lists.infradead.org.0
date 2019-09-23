Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68DFBAF10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uo8ujQDtqcN80i4vU/PE4bYidevwYWu673KtHdsc5Aw=; b=Vd++6tVpeDDOtp
	aXa9hpRHMtZH4rkkyHDL8H/W8AEYNmuEZeqZfACMMddvYQsH+l9C9VLEgOeJyaiQ8v0GfzJCExly9
	/a8tFtocw8NJxMJBoIT4hwpqQKHs9fr5U81LTXFlb+do5hmmdvMGk2wJf3hq2NLLhVi82nyg3RHwW
	lUbVppBWPjEnGgVgrEe5g9A3ZCevmw4WQol8FmDo4f74BkSLhRHJQoTGm4VZZE/yEidrF9+efK2Oj
	TzfJylXJNpyMjB8JHHlyOF18rISOU30CniKsgDUQomHTFTr1yVKmuWUAIXovUM5XAtGtPV2zEcyO/
	4JFNV9ZwseqryMAXKSMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJU2-0005E9-1T; Mon, 23 Sep 2019 08:14:10 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJTn-0005CE-NZ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:13:58 +0000
Received: by mail-lf1-x142.google.com with SMTP id x80so9389866lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YP0Dty02K/PU7snWf9QCmnq9+d/+lpZCzmP6b7jH6B4=;
 b=BJ5LbRkdAmmWPoS4xoIHkGfseBJtqsTjDT8/SzOvXN4s2EcGhdbg44m+jOXBELIcM7
 4ANJ7E6jTSF9ZV6PoV9s6M/UvcK5qxO/EEGJRfM6MxvXh4CH8RQ83T9QQeE2spGj3wZG
 z1XbDZZvAk5dflfZlTdavY3SuAp8xmzsLydtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YP0Dty02K/PU7snWf9QCmnq9+d/+lpZCzmP6b7jH6B4=;
 b=e7c0O1EOG1PlxO29OIxhqosyGbcQROEanRKpxNmlz3lfj4lNLFGmCZm0CZBrJmnq3i
 WXl0AQl9KGeL3nL4/syK1VwtqE95Ap5eGQc24Kii20D3qrwVw1pXvNnzbv3lFdRJQBS4
 m3vdICF9NAtC+kGRn0y6AI4RaPNgVqJMbNBiK2GAx6sVvEH38u+CRnnhJ8SEAkPGP/aH
 RUAEL6q/eReQ9b41Ry/MqgMXg/cAhkJXGtnP7bchJSywzr2YWIeOpNqAMbqpDPxWuPwH
 hxgUbnucUTK4MsWEd0qCOfg52VVeK+sQ2ncQaYar6tvVaC6VIZbawGyb3hutE7qilVJT
 95rg==
X-Gm-Message-State: APjAAAU0hPZj/PbeLPL4sc9HmpjmfBGXkniIrcxQLHTYb1ReEH4U9xfU
 u2z2vT/AB59jyjaMdFzrn2AMSg==
X-Google-Smtp-Source: APXvYqz1aK8MYGtYecVVxc/h+5tNAbQ8QHxsPIQq+G8SCQClVwWdZ7aqolsB4dTq+uFnHjerMW4hNQ==
X-Received: by 2002:a05:6512:4dd:: with SMTP id
 w29mr15905123lfq.2.1569226431814; 
 Mon, 23 Sep 2019 01:13:51 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id c21sm2054946lff.61.2019.09.23.01.13.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 01:13:51 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] pwm: mxs: add support for setting polarity via DT
Date: Mon, 23 Sep 2019 10:13:44 +0200
Message-Id: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011356_727041_71864E4B 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for setting the polarity via DT to the
pwm-mxs driver.

The DT binding is updated, but I'm not touching the existing .dts or
.dtsi files - it seems that the same was done for bcm2835 in commits
46421d9d8e802e570dfa4d793a4938d2642ec7a7 and
8a88b2a2017d1e7e80db53080baff591fd454722, while
arch/arm/boot/dts/bcm283x.dtsi still has #pwm-cells = <2>.

Rasmus Villemoes (4):
  pwm: mxs: implement ->apply
  pwm: mxs: remove legacy methods
  pwm: mxs: add support for inverse polarity
  dt-bindings: pwm: mxs-pwm: Increase #pwm-cells

 .../devicetree/bindings/pwm/mxs-pwm.txt       |  4 +-
 drivers/pwm/pwm-mxs.c                         | 73 ++++++++-----------
 2 files changed, 34 insertions(+), 43 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
