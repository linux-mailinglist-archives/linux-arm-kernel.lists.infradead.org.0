Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21C8A0602
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mO/caVL9IUCNot8egtRJF3iVcp1NNEB9i+NlYbAE0go=; b=aR5vQqtvQIO2sU
	J9apymZ5ohUK4OVeiC6OWmiiB89Tu62u1B/Lil3NZWvnljPAQGJwe/g0JrzVQt7KpNvcGVOauv2P7
	H7EoN8mDeZjRfixQrhv5he+X5LP1XZ6OkpZSuC/xcDoG23Rk2qyu+7RT0C61qD9TA9jUJQyQ/rPUY
	TTqWNCTIixsU1Polb/o77eNIKcSa08CAF40X8guQPKKo790HvmCxJXR0RtOWT+sJU1khlq4ATfyA2
	woHcx/1vGDJTclD1Qaa0Yk3t1/oTlUCbgobxZ54W0M1txuC13oSsNMwBHYLqTS/+JSoIa1vvX7mJO
	GOROhb5htAGX9MwQHjSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ziD-00015g-9I; Wed, 28 Aug 2019 15:18:17 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zhx-00014l-Dg
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:18:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7SFHvax006257;
 Wed, 28 Aug 2019 10:17:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567005477;
 bh=Ji4vYx1dTEGNavFHHekmICxOLQ/Ek5A8KvhftJOzpJk=;
 h=From:To:CC:Subject:Date;
 b=R/j4kzsO2LO6jznGmXNy1DOoiMETzIvI04ZfDLqlHAoaDro2yVkxLaQP6IItp0pCZ
 /bthFhM8/a/p30sXDKdoszkwManwPu1fpEEIg3cR867MWxScz4lDZOU5AViylMHFK5
 Oo07UnOH1Urplnp0iLYdCFwY+EjRSqDz5UCDS70g=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7SFHvmI033836
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 10:17:57 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 10:17:57 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 10:17:57 -0500
Received: from psplinux063.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7SFHstC040838;
 Wed, 28 Aug 2019 10:17:55 -0500
From: Sekhar Nori <nsekhar@ti.com>
To: ARM-SoC Maintainers <arm@kernel.org>
Subject: [GIT PULL 1/4] DaVinci SoC updates for v5.4
Date: Wed, 28 Aug 2019 20:47:51 +0530
Message-ID: <20190828151754.21023-1-nsekhar@ti.com>
X-Mailer: git-send-email 2.16.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_081801_591135_FEDF7DBC 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.4/soc

for you to fetch changes up to 93eae12c9f3e3bf423b308b341d380b0b4291bf8:

  ARM: davinci: dm646x: Fix a typo in the comment (2019-08-26 17:51:28 +0530)

----------------------------------------------------------------
This converts all DaVinci SoCs except DM365 to use new clocksource
driver. DM365 conversion is still under debug and will be part of a
future pull request.

----------------------------------------------------------------
Bartosz Golaszewski (8):
      ARM: davinci: enable the clocksource driver for DT mode
      ARM: davinci: WARN_ON() if clk_get() fails
      ARM: davinci: da850: switch to using the clocksource driver
      ARM: davinci: da830: switch to using the clocksource driver
      ARM: davinci: move timer definitions to davinci.h
      ARM: davinci: dm355: switch to using the clocksource driver
      ARM: davinci: dm644x: switch to using the clocksource driver
      ARM: davinci: dm646x: switch to using the clocksource driver

Christophe JAILLET (1):
      ARM: davinci: dm646x: Fix a typo in the comment

 arch/arm/Kconfig                          |  1 +
 arch/arm/mach-davinci/da830.c             | 45 +++++++++++-----------------
 arch/arm/mach-davinci/da850.c             | 50 +++++++++++--------------------
 arch/arm/mach-davinci/davinci.h           |  3 ++
 arch/arm/mach-davinci/dm355.c             | 28 ++++++++++-------
 arch/arm/mach-davinci/dm365.c             |  4 +++
 arch/arm/mach-davinci/dm644x.c            | 28 ++++++++++-------
 arch/arm/mach-davinci/dm646x.c            | 30 +++++++++++--------
 arch/arm/mach-davinci/include/mach/time.h |  2 --
 arch/arm/mach-davinci/time.c              | 14 ---------
 10 files changed, 95 insertions(+), 110 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
