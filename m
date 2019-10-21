Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE027DF047
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CPzPISRhDIXkTe23FGrnebIM1+XCR+N9Rdo05MZB3F8=; b=hI0DaLJKPSC7GA
	kiGflskEoz2JzpYVz59yRzk+grXxG9xXi+UGk7i9vGQ36d9k5YHkrvszOgBgkp5DIgQnSPWLLEEdo
	nlshlVCpsQmjEsQXejPg1A4ksFHT0iCO7uDPQDPmOdITAhpS4rvBt9YdYOG+5p2bJ63/foJgBAqlF
	E34U061ZyUnLEasbTUJhwVhbcrpym564Xj1ePGDnC5G6bGTkFyAq7aY2AX1xxonLb3xEF0DyYSjpG
	BFYRKVvvlCdL50tfMOxUQFnIUQKWZMuCKLI4iAfr9msYYOPqCz1/kt1Dq2aP1utWqd9Tm8+M0+VQD
	I01YiWw6+9yyKZ1VzjJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYy1-0002n0-Ag; Mon, 21 Oct 2019 14:47:29 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYxs-0002mQ-Nh
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:47:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9LElCYt046198;
 Mon, 21 Oct 2019 09:47:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571669232;
 bh=208hfWGh/pFfoeG3ry5HtzqgpFp7QIKYsNDNd5f5Bvw=;
 h=To:CC:From:Subject:Date;
 b=AyspszpMiO1FozaCcqmc5kh5cb7HENKkxY3dniRnYe5Q8dHmepHBA60BbKNZ8bI0X
 /TYvqr0EfuZ07fYVtB+XAObeaYjYdKlVKWMSYhqau5xCrqo2/OTvs00QHDU10/swrm
 y5Kq6cTiDyf3sPuu8BUkxomAfj8jtp5duOCU9t6I=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9LEkvlE047929
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 21 Oct 2019 09:46:57 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 21
 Oct 2019 09:46:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 21 Oct 2019 09:46:56 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9LEksp9114102;
 Mon, 21 Oct 2019 09:46:55 -0500
To: ARM-SoC Maintainers <soc@kernel.org>
From: Sekhar Nori <nsekhar@ti.com>
Subject: [GIT PULL] DaVinci fixes for v5.4
Message-ID: <7f3393f9-59be-a2d4-c1e1-ba6e407681d1@ti.com>
Date: Mon, 21 Oct 2019 20:16:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_074720_903242_04BEDBF0 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-fixes-for-v5.4

for you to fetch changes up to 7b21483ccbef1b274a238c0653a03d778b21fbd7:

  ARM: davinci_all_defconfig: enable GPIO backlight (2019-10-17 19:20:22 +0530)

----------------------------------------------------------------
DaVinci fixes for v5.4
======================
* fix GPIO backlight support on DA850 by enabling the needed config
  in davinci_all_defconfig. This is a fix because the driver and board
  support got converted to use BACKLIGHT_GPIO driver, but defconfig update
  is still missing in v5.4.
* fix for McBSP DMA on DM365

----------------------------------------------------------------
Bartosz Golaszewski (1):
      ARM: davinci_all_defconfig: enable GPIO backlight

Peter Ujfalusi (1):
      ARM: davinci: dm365: Fix McBSP dma_slave_map entry

 arch/arm/configs/davinci_all_defconfig | 1 +
 arch/arm/mach-davinci/dm365.c          | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
