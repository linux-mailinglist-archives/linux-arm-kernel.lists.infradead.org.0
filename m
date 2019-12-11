Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA1B11A908
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XT1Cxu/Td3/v9BPRZtlVfaNwDwb/eqC3HdYW8wGEBAo=; b=ftDWx9yh1D8QXG
	e5g7WFXfHLjMt/FusnVaa8bOXpCaaWMgXPuI1l7aKUj/mUjIfRENwNK3mu/FzYLrqPalOpjWFM+ok
	HnffPLOHp6M9YtLoxsSgYl+VffiHexxuRvQgceHg+hTgfZL0SrOO6BnqDTg85fnshTWR37SZPOH5Z
	fIdhXQpcyQv4FxGRdkx40brx0/eB2t4zhDRGfAygy9aLUtpCwlgY94DXAjJJ0irj3cKYe9wqSHL6m
	ZOtOqk2lRp5qppS3tuzKs6yETjJak0d7q5Xl5xjvZWs5d2nMplS0/9efIOVmf4mDtUiSE6+P2F58E
	jW+20V+Zfgz4GKG3ecKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezNr-0003c0-Og; Wed, 11 Dec 2019 10:38:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezNi-0003aa-67
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:38:11 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iezNg-00063v-Co; Wed, 11 Dec 2019 11:38:08 +0100
Message-ID: <bb59b9f83892aa3c876f5da87890b0496f2dc755.camel@pengutronix.de>
Subject: [GIT PULL] Reset controller fixes for v5.5, part 2
From: Philipp Zabel <p.zabel@pengutronix.de>
To: soc@kernel.org
Date: Wed, 11 Dec 2019 11:38:08 +0100
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_023810_225053_198BF48C 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear arm-soc maintainers,

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.5-2

for you to fetch changes up to db23808615e29d9a04f96806cac56f78b0fee0ef:

  reset: Do not register resource data for missing resets (2019-12-10 11:43:37 +0100)

----------------------------------------------------------------
Reset controller fixes for v5.5, part 2

Fix the example in the brcmstb-reset device tree bindings, remove a bogus
resource alignment check from the reset-brcmstb driver, fix the documented
return value type for the reset_control_array_get functions, and fix a
devres memory leak when requesting optional, not present reset controls.

----------------------------------------------------------------
Florian Fainelli (2):
      dt-bindings: reset: Fix brcmstb-reset example
      reset: brcmstb: Remove resource checks

Geert Uytterhoeven (2):
      reset: Fix {of,devm}_reset_control_array_get kerneldoc return types
      reset: Do not register resource data for missing resets

 Documentation/devicetree/bindings/reset/brcm,brcmstb-reset.txt |  2 +-
 drivers/reset/core.c                                           | 10 ++++------
 drivers/reset/reset-brcmstb.c                                  |  6 ------
 3 files changed, 5 insertions(+), 13 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
