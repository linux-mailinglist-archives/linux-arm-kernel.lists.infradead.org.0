Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0121ED8A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 00:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zU2ELYh6bKYYyEmtQ21dPNfi91Ec1XZ8GBfO7RvJ/uU=; b=dvGVLlZtSJJ8v4
	wcNitX5CFcFszSBpaIBbJ2WLwq/+IgyeyLX+l+jlY1zuXcDhSOD/bGOEm9AgJ952pV5Be6/3pEQLr
	K1frd4xBN7LVL7vfoipEjXaKQSpTtvLWzBmJXFtMftJWMeVZPpmUVqQj9+rZ8qcgWDUx1kqJ6Sz5b
	G9pce824mC7VA7eIW4jSBdHkDf8CTNlGJtI87zo1nqYVatWp1kRcCA0xMb16ZvQpvQ8zj8/mhcnzs
	/cK4Gw732IOkj4mTlLcIAqLlygTL0fgtT9+NhQLBoLbyEWmLyVOG+nkyZ8LEtdEsgz1d6GmzedB9P
	bEkmS7E+eTJdtCewBpEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgbrc-00084H-Ng; Wed, 03 Jun 2020 22:28:00 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgbrV-00083v-17
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 22:27:54 +0000
IronPort-SDR: sv8oGNtKHIERa/uXCPUFtujFkwWgTotTIMcOzUUZtoUIYZwFf7zWOdgsV7RbhZBukkjkt5ouOc
 Kmf8j+53b4Mw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 15:27:51 -0700
IronPort-SDR: CtK3RJ3IlBLWUGo7WTOGBGGPp2xOShadscO6X8OQAcZWEW0G6bqEX5m6I9lPx3NLBvg2T3/7rd
 osiw18gROzCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="258727786"
Received: from lkp-server01.sh.intel.com (HELO 8bb2cd163565) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2020 15:27:49 -0700
Received: from kbuild by 8bb2cd163565 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgbrQ-0000E9-Uu; Wed, 03 Jun 2020 22:27:48 +0000
Date: Thu, 4 Jun 2020 06:27:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Amit, Kumar, Mahapatra," <amit.kumar-mahapatra@xilinx.com>
Subject: [RFC PATCH xlnx] spi: update_stripe() can be static
Message-ID: <20200603222748.GA157363@8aa1beddc6c9>
References: <202006040620.KNC6r6Nv%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202006040620.KNC6r6Nv%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_152753_259767_B7B42A43 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 Harini Katakam <harinik@xilinx.com>,
 Soren Brinkmann <soren.brinkmann@xilinx.com>,
 Punnaiah Choudary Kalluri <punnaia@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fixes: 6cac93c63316 ("spi: Add Zynq QSPI controller driver")
Signed-off-by: kernel test robot <lkp@intel.com>
---
 spi-mem.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
index d4e807c8263a4..b95a7fd0bee2d 100644
--- a/drivers/spi/spi-mem.c
+++ b/drivers/spi/spi-mem.c
@@ -15,7 +15,7 @@
 
 #define SPI_MEM_MAX_BUSWIDTH		8
 
-bool update_stripe(const u8 opcode)
+static bool update_stripe(const u8 opcode)
 {
 	if (opcode ==  SPINOR_OP_BE_4K ||
 	    opcode ==  SPINOR_OP_BE_32K ||

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
