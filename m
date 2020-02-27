Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6446417231C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9XG2SzaPBfbUIZzTkUSZL6jWoY54qJoiyQAosMa7M08=; b=sxUWanXAJDUAKP
	zz8I/7g7zq7sWNF+BANOzn2/sZzVcmnUxo4HqiIlmhaIgWexBJtm4iiacloDdmQMl8Cw8lrt3rZEd
	qxv+lXWcUv4zvN1IPlx7N2wNV3aAHkSZzJmxZ9a++sGq0k3NWc3EqfzY1LU1VMq0i4sAxF59El/Xl
	JNKrchnOTRvX0P+wV4hKjCcVMpH1cD1v8aPXbc6pv+Kbp0AuLWhYE5FP/4mN1zbIzJg25A1/0KRwm
	Ck4e+jHOVT1oK01izHmaEKbrEpBdXo4H0XcMc1Jj30TIhEV3qO+BBHWutO0HQZu+7X1EelawzuaSu
	VaeRClngwOl7e9W0uosw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7LvR-000182-Dd; Thu, 27 Feb 2020 16:22:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Luu-0000wD-6s
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:21:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sI-8Y; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007hI-22; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 00/17] DRM: imx spring-cleaning
Date: Thu, 27 Feb 2020 17:21:08 +0100
Message-Id: <20200227162125.10450-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_082140_254396_36204561 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

the purpose of this patch series is to address bug reported here
[1]. There where two approaches [2,3] to fix this but non of them get
mainline. The issue is caused by the fact that we are using devres
allocation for the driver (pd,ldb,hdmi,tve) state struct which holds
also the 'struct drm_encoder/connector'. 

We need to move the driver state containers containing the drm members
out of the devres memory management into the drm memory management
framework to fix the bug [1]. Therefore we need to split the single
driver state struct into two: one for the drm_connector device and one
for the drm_encoder device.

The series removes some legacy code paths too and removes the useless
imx_drm_encoder_destroy() API.

Pls don't be surprised about the edid memory leak fix patches. I went
this way because those patche can be applied independently of the last
patch which did the conversion from the devres alloc to the non-devres
alloc.

I did the following tests for each component:
 - probe successful
 - correct failure handling during probe
 - bind / unbind (module load/unload)

I also kept a few lines longer than 80char to improve readability.

Other tester are welcome =)

Regards,
  Marco

[1] https://www.spinics.net/lists/dri-devel/msg189388.html
[2] https://lkml.org/lkml/2018/10/16/1148
[3] https://lkml.org/lkml/2019/4/2/612

Marco Felsch (17):
  drm/imx: drop useless best_encoder callback
  drm/imx: parallel-display: fix edid memory leak
  drm/imx: parallel-display: move panel/bridge detection to fail early
  drm/imx: parallel-display: detach panel within drm_encoder destroy
  drm/imx: parallel-display: split encoder and decoder states
  imx/drm: parallel-display: split attach function
  drm/imx: tve: add regulator_disable devm_action
  drm/imx: tve: split global state container
  drm/imx: imx-ldb: remove useless enum
  drm/imx: imx-ldb: fix edid memory leak
  drm/imx: imx-ldb: release ldb-channel resources within encoder destroy
  drm/imx: remove imx_drm_encoder_destroy helper
  drm/imx: imx-ldb: split imx_ldb devres allocation context
  drm/imx: imx-ldb: add ldb_is_dual helper
  drm/imx: imx-ldb: split encoder and decoder states
  drm/imx: imx-ldb: refactor imx_ldb_bind
  drm/imx: fix drm_mode_config_cleanup race condition

 drivers/gpu/drm/imx/dw_hdmi-imx.c      |  28 +-
 drivers/gpu/drm/imx/imx-drm-core.c     |   9 +-
 drivers/gpu/drm/imx/imx-drm.h          |   1 -
 drivers/gpu/drm/imx/imx-ldb.c          | 514 ++++++++++++++-----------
 drivers/gpu/drm/imx/imx-tve.c          | 173 ++++++---
 drivers/gpu/drm/imx/ipuv3-crtc.c       |  28 +-
 drivers/gpu/drm/imx/parallel-display.c | 142 ++++---
 7 files changed, 523 insertions(+), 372 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
