Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D865F6B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u2/6/aUJrCgzl+GVSsEv/4lKaOOvZEHKKErRcwgP7Lk=; b=ldYvxfG3Ro1hKd
	Ccn2qgxvppqEMH0w5bFQ5NCZeGBpbNnk1j+KwUAbCtebD9MBSniFmUQ9ZJyfKe3vbNUhEr/wW8D5Y
	gIazUD7bHMzf//+StYpRBzB0cF1nSjcmcpfF9rWzH11lUu2oorQqLic1v3RyaYikJEOExIot3QeCd
	BHqiTsHV7E88pWISUMcqjMZkFYCX6htQaM7lePtxb73BipN/suES96yMzN99lusXkg8JxIPQb+0zO
	9cj2616FaeQt+xBoCM50kM0V4keRaq6A5uf0MT8GIpj70R3/cLvU4RSOdhF51Mc2Y2T9iZOPkrpAC
	IodRch/FNbwtqe4KtyLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiz7X-0008H3-MO; Thu, 04 Jul 2019 10:37:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiz74-00084P-4Q
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:37:15 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hiz72-0008OL-Qv; Thu, 04 Jul 2019 12:37:12 +0200
Received: from pza by lupine with local (Exim 4.89)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hiz72-0000uc-J5; Thu, 04 Jul 2019 12:37:12 +0200
Message-ID: <1562236632.6641.14.camel@pengutronix.de>
Subject: Reset controller changes for v5.3
From: Philipp Zabel <p.zabel@pengutronix.de>
To: arm@kernel.org
Date: Thu, 04 Jul 2019 12:37:12 +0200
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_033714_198854_79AF1466 
X-CRM114-Status: GOOD (  10.98  )
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.pengutronix.de/git/pza/linux.git tags/reset-for-v5.3

for you to fetch changes up to b108ad53bb65c19ae8e2d9c7fc0d052b3d9c153b:

  dt-bindings: reset: imx7: Fix the spelling of 'indices' (2019-07-01 17:08:13 +0200)

----------------------------------------------------------------
Reset controller changes for v5.3

This tag adds support for the Bitmain BM1880 reset controller to the
reset-simple driver and fixes a spelling mistake in the i.MX7 reset
controller binding document.

----------------------------------------------------------------
Fabio Estevam (1):
      dt-bindings: reset: imx7: Fix the spelling of 'indices'

Manivannan Sadhasivam (2):
      dt-bindings: reset: Add devicetree binding for BM1880 reset controller
      reset: Add reset controller support for BM1880 SoC

 .../bindings/reset/bitmain,bm1880-reset.txt        | 18 ++++++++
 .../devicetree/bindings/reset/fsl,imx7-src.txt     |  2 +-
 drivers/reset/Kconfig                              |  3 +-
 drivers/reset/reset-simple.c                       |  2 +
 include/dt-bindings/reset/bitmain,bm1880-reset.h   | 51 ++++++++++++++++++++++
 5 files changed, 74 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
 create mode 100644 include/dt-bindings/reset/bitmain,bm1880-reset.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
