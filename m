Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424FD132E1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FLl2xb4s+92XdafrGADI6M5eDItTDL/AxQkJaoX1a1c=; b=fFFIXLxVS1AQWH
	D/iXsb5ssyQceOVcy82E0hLbzw7ui9aAEmqmiF5QqvY8Z7lZbll5fbGHHTCRBGaWQstLbW5YIJPBv
	pNxHRzinYcnU/ZnGMMhgH+42wNszGtVXfesiPKEELd8QxlJFAlo83sBaGlShbdp44QJJhkuftAM4L
	q6hTE8rVlvWRphitMBjmXFoG4Fa3o71YmMTpjOuU9nnFbBGgjZ0dtHcSClIvnb1s3TeYtdMAtrFTz
	Ev60GmKaDjWXHDNYvBK6WQdD1U4uEsjwakY18myw/vmN9s/Yn1ZdbXXpu4YV5vWMKJcWhUemKDlTo
	LZ8Lf5DVet13sOc5jQkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotNB-0001PD-48; Tue, 07 Jan 2020 18:14:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotN2-0001Nt-5t
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:14:25 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 362128022;
 Tue,  7 Jan 2020 18:15:05 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/4] soc changes for omaps for v5.6
Date: Tue,  7 Jan 2020 10:14:16 -0800
Message-Id: <pull-1578420398-290837@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101424_256530_54076E4B 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/soc-signed

for you to fetch changes up to 4601832f40501efc3c2fd264a5a69bd1ac17d520:

  ARM: OMAP2+: use separate IOMMU pdata to fix DRA7 IPU1 boot (2019-12-17 09:57:09 -0800)

----------------------------------------------------------------
SoC changes for omaps for v5.6 merge window

SoC related changes for omaps that mostly relate to making iommus
to start probing with ti-sysc interconnect target module driver:

- Add missing lcdc clockdomain for am43xx

- Pass auxdata for reset control driver

- Remove old pdata quirks for iommus

- Add workaround for dra7 dsp mstandby errata

- Convert iommu platform code to probe with ti-sysc

- Use sperate iommu auxdata for ipu1

----------------------------------------------------------------
Dave Gerlach (1):
      ARM: OMAP2+: am43xx: Add lcdc clockdomain

Suman Anna (2):
      ARM: OMAP2+: Add workaround for DRA7 DSP MStandby errata i879
      ARM: OMAP2+: use separate IOMMU pdata to fix DRA7 IPU1 boot

Tero Kristo (3):
      ARM: OMAP2+: pdata-quirks: add PRM data for reset support
      ARM: OMAP4+: remove pdata quirks for omap4+ iommus
      ARM: OMAP2+: omap-iommu.c conversion to ti-sysc

 arch/arm/mach-omap2/clockdomains43xx_data.c |  10 +++
 arch/arm/mach-omap2/omap-iommu.c            | 128 ++++++++++++++++++++++++----
 arch/arm/mach-omap2/pdata-quirks.c          |  43 +++++++---
 arch/arm/mach-omap2/prcm43xx.h              |   1 +
 4 files changed, 153 insertions(+), 29 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
