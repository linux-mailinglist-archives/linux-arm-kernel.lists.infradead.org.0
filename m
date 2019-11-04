Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40E6EE6C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RLHq2b3TgMgVX3fxFl9wNQ4t6j/Cq4sHwIoNC4dH94E=; b=SLa
	XZpo/cQiU/CRWn960bMydIhw7iFmWjDa5wwc7qlKH6wxTCGlWlnWM4LmFCZfLHlruQsAQey+84xqe
	G1XI1qNqTLqozhkcPTfMExszdLA4B4ckV/B8PR+hKXEk/IENHkH+o9UE6YuvnekVuQ8qdulsD0t1X
	HPHe6+Rzirua3ShQ6RrRLSkXEXA3tmVt6LxjXCDeam7omlcuN7RJzOvqDI6o/QGC2PbVfqmWOVoe+
	xTOGwWCM7vsClePnSUk9GMxmWdude+fjAu+Tsifo/zFBd8qKGMfR0rKhHxgpXUOWJtu0xKewhW26b
	AGKJZcyHcuU1sLy9LsrQrDzCpg87QEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgc5-0000wn-Si; Mon, 04 Nov 2019 17:58:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgbx-0000w8-Sm
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:57:55 +0000
Received: from localhost.localdomain (unknown [194.230.155.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 063EA20B7C;
 Mon,  4 Nov 2019 17:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572890272;
 bh=IjSEu9sfsdTQLLr2k3rmKdHTN5zkOVDlK7n/cmmSx0E=;
 h=From:To:Cc:Subject:Date:From;
 b=IsOkeKkQg0RNjneVRSm0lUjDXjGoAbtLABF61Spn/HW4acXLFURvr3+WxuY+6OTws
 cET84CYoXKPs3Lsdl9SwDsTganuIbSSWKTmEx5eQ4EgMFtEpDnBdHAS+k8NDIAW92V
 g2aWXBzNdQu+biZ/1k1Lg1IwhTjIoxjaA4DxxNYk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [GIT PULL] pinctrl: samsung: Pull for v5.5
Date: Mon,  4 Nov 2019 18:57:44 +0100
Message-Id: <20191104175744.12041-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_095753_948361_1ADFF678 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org,
 Sylwester Nawrocki <snawrocki@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git tags/samsung-pinctrl-5.5

for you to fetch changes up to a322b3377f4bac32aa25fb1acb9e7afbbbbd0137:

  pinctrl: samsung: Fix device node refcount leaks in init code (2019-10-01 20:22:04 +0200)

----------------------------------------------------------------
Samsung pinctrl drivers changes for v5.5

Fix several device node refcnt leaks (missing of_node_put()) in several
drivers.

----------------------------------------------------------------
Krzysztof Kozlowski (4):
      pinctrl: samsung: Fix device node refcount leaks in Exynos wakeup controller init
      pinctrl: samsung: Fix device node refcount leaks in S3C24xx wakeup controller init
      pinctrl: samsung: Fix device node refcount leaks in S3C64xx wakeup controller init
      pinctrl: samsung: Fix device node refcount leaks in init code

Nishka Dasgupta (1):
      pinctrl: samsung: Add of_node_put() before return in error path

 drivers/pinctrl/samsung/pinctrl-exynos.c  | 14 +++++++++++---
 drivers/pinctrl/samsung/pinctrl-s3c24xx.c |  6 +++++-
 drivers/pinctrl/samsung/pinctrl-s3c64xx.c |  6 +++++-
 drivers/pinctrl/samsung/pinctrl-samsung.c | 10 ++++++++--
 4 files changed, 29 insertions(+), 7 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
