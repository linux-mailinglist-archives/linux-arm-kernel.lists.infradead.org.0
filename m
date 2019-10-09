Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0459CD053C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 03:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GIvlPBvuqEOjHZ9389O4yqpyF6tCnYz8eBPFdaC2yXc=; b=ESu
	hlkNf//Qg4YcetapvsUtgFum/3zricUCmu+Yqpa2M6qLI/cCpSuBCbzhc1NEj3NrZkuEjIaz5xDTP
	LQBE0Olgoydd/bakKsSsBx2xett1Uiq96JZhLDY+Otyw1wjRY/Px+w0rT2M5rYyVg0aL45V2J5E7j
	YnqdZMVGs8ZYRxJX4BDslux8FxfhFW7NQ8AI/lVDI+2z1AOddnNnUZ5jKv8vJ5we71kmfB8k5kpNy
	mEl4icOPsqLKLf2yCNRS62Bs6RPcHCgo4TnFIDj6sJlrAg60sI8mjXDcHtUMcB4Zmpw/EHY778oN9
	7v3oV5h4haV6pxcRXIn4E0ff2XRbtCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI0mM-0001db-Iq; Wed, 09 Oct 2019 01:28:38 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI0m8-0001d2-LL
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 01:28:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 18:28:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="206769647"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2019 18:28:20 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] mmc: sdhci-of-arasan: Add Support for Intel LGM SDXC
Date: Wed,  9 Oct 2019 09:28:16 +0800
Message-Id: <20191009012818.32763-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_182824_741471_C6008512 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.4 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, adrian.hunter@intel.com, michal.simek@xilinx.com,
 "Ramuthevar, Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 robh+dt@kernel.org, qi-ming.wu@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current arasan sdhci PHY configuration isn't compatible
with the PHY on Intel's LGM(Lightning Mountain) SoC devices.

Therefore, add a new compatible, to adapt the Intel's LGM
SDXC PHY with arasan-sdhc controller to configure the PHY.

Linux code base : V5.4-rc1 

Ramuthevar Vadivel Murugan (2):
  dt-bindings: mmc: sdhci-of-arasan: Add new compatible for Intel LGM
    SDXC
  mmc: sdhci-of-arasan: Add Support for Intel LGM SDXC

changes from v1: 
 -  commit message updated 
 -  Acked-by tag added

 Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 17 +++++++++++++++++
 drivers/mmc/host/sdhci-of-arasan.c                     | 15 +++++++++++++++
 2 files changed, 32 insertions(+)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
