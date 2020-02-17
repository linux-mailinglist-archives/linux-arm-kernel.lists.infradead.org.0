Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1228E160E18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TowcT7+FVFCpH22Gd2hZFBMdwevc6HzREH7BCCw0MVE=; b=c2NaddghCR82vc
	WJHXmqkk7JODKjFrKGJOIJ/k+7rfnwmbz0tWyB3ca9Qw3dvJctQscm6Ix6AbQ6yObcFRKIrFkkG+v
	abQoyDgDPlsDoAV6nY5dofVT7lJqPqCZlvR7JSFjiKr3QHpBSDuxkf0DtUPvsXLjEyJhfw4U6J9vV
	dcNRdLjPlNH9I3fYT7d80dZWQjpLjeU5hVZnMhqjQD7gKfxHu9Ai1zoRhJBPGXETeQztGXrkl7XKD
	B1AY81ieh8O60ge/yX/05Fl4eHT1gGZQckQRyR17wFDaQAU/sj5cRqDyiIwTUfhJzig0ebKLbbVTX
	oaKPDASQatAS3yuAnx7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cQ0-000543-4k; Mon, 17 Feb 2020 09:10:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cPW-0004qV-IG
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:09:51 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1j3cPT-0002hV-JX; Mon, 17 Feb 2020 10:09:47 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1j3cPT-0005Ky-BP; Mon, 17 Feb 2020 10:09:47 +0100
Message-ID: <e6eaa409883cbae8d1e818b732b98c3362635712.camel@pengutronix.de>
Subject: [GIT PULL] Reset controller fixes for v5.6
From: Philipp Zabel <p.zabel@pengutronix.de>
To: soc@kernel.org
Date: Mon, 17 Feb 2020 10:09:47 +0100
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_010950_614513_936F0227 
X-CRM114-Status: UNSURE (   8.44  )
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.6

for you to fetch changes up to b460e0a9e2404450a0cc4c5e6476483d6cda1b26:

  reset: intel: add unspecified HAS_IOMEM dependency (2020-02-10 11:11:55 +0100)

----------------------------------------------------------------
Reset controller fixes for v5.6

Fix the intel,rcu-gw binding schema for the intel,global-reset
property, fix whitespace in the MAINTAINERS keyword entry, and
add missing CONFIG_HAS_IOMEM dependency to CONFIG_RESET_INTEL_GW
and CONFIG_RESET_BRCMSTB_RESCAL.

----------------------------------------------------------------
Brendan Higgins (2):
      reset: brcmstb-rescal: add unspecified HAS_IOMEM dependency
      reset: intel: add unspecified HAS_IOMEM dependency

Lukas Bulwahn (1):
      MAINTAINERS: fix style in RESET CONTROLLER FRAMEWORK

Rob Herring (1):
      dt-bindings: reset: intel,rcu-gw: Fix intel,global-reset schema

 Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml | 6 +++++-
 MAINTAINERS                                               | 2 +-
 drivers/reset/Kconfig                                     | 3 ++-
 3 files changed, 8 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
