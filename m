Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20389A0607
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/P8OpfuS7+HGXdCL5XzgFUmIJNQyrBRDu4Xe5JVAgas=; b=iDCyLeoolfb2fm
	o46uTOFJJfj5hTafES60tBDWjx0Oi9VoBkm3+Rum85ee/hDVCUxFrZGrOohKBJ9SY1++E8npSomX/
	8tgu/dBU1Cs2EAr60zc9N4GMKOj24bPLjLUCUmIT+HL88Mo6yGPMHn2c1r0Gpllk2AhC1AxPHjwZv
	ttF42J83RuAuQyZXKCazaojNPRW5sLbhBwWHD3BScUsw8b8EMKrM8I2tf6U3b8oIItArl/SpXW8SJ
	UMy2oNxbuLBqmrjzEQR92CtgGYzNMWO4T7H1mf3HYBh2CMdAH1g/pjoxM+U1/p0f751fZ0Qn19J+j
	OwleuzZkojQm1eS6p1Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zix-0001dJ-KV; Wed, 28 Aug 2019 15:19:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zi1-00015w-6O
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:18:06 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7SFI1lD008071;
 Wed, 28 Aug 2019 10:18:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567005481;
 bh=M5BGA6KoedU5sEUmWvf42yrp8A1d9du4pGX95Rso+uY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=BBb3UAbgPO+dfGFDE9xl6O98+PVuuIACGFWtkcN0r97tBwNV7m4j6N8vQPkbmbe18
 IDgKULM/WdxRHFn2W/QQvEg2Kp4IvaM8G2qR1Cy4hXTjW45vZH+KKjxnTiH8m45bh8
 MUh+omuWUrB1UeDtBDxOoWc7l1YwAnQS42nTzllA=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7SFI1L3033921
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 10:18:01 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 10:18:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 10:18:01 -0500
Received: from psplinux063.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7SFHstE040838;
 Wed, 28 Aug 2019 10:17:59 -0500
From: Sekhar Nori <nsekhar@ti.com>
To: ARM-SoC Maintainers <arm@kernel.org>
Subject: [GIT PULL 3/4] DaVinci fbdev driver updates for v5.4
Date: Wed, 28 Aug 2019 20:47:53 +0530
Message-ID: <20190828151754.21023-3-nsekhar@ti.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20190828151754.21023-1-nsekhar@ti.com>
References: <20190828151754.21023-1-nsekhar@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_081805_431850_7E019A55 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, nsekhar@ti.com,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.4/fbdev

for you to fetch changes up to 671da5f3444b09779f108d28cc69414c57deab8c:

  fbdev: da8xx: use resource management for dma (2019-08-26 17:54:00 +0530)

----------------------------------------------------------------
This converts the da8xx fbdev driver to use GPIO backlight device
and regulator devices. This will finally help get rid of legacy
GPIO API calls and simplify DaVinci GPIO driver.

----------------------------------------------------------------
Bartosz Golaszewski (7):
      ARM: davinci: da850-evm: model the backlight GPIO as an actual device
      fbdev: da8xx: add support for a regulator
      ARM: davinci: da850-evm: switch to using a fixed regulator for lcdc
      fbdev: da8xx: remove panel_power_ctrl() callback from platform data
      fbdev: da8xx-fb: use devm_platform_ioremap_resource()
      fbdev: da8xx-fb: drop a redundant if
      fbdev: da8xx: use resource management for dma

 arch/arm/mach-davinci/board-da850-evm.c |  90 +++++++++++++++++-------
 drivers/video/fbdev/da8xx-fb.c          | 118 ++++++++++++++++++--------------
 include/video/da8xx-fb.h                |   1 -
 3 files changed, 131 insertions(+), 78 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
