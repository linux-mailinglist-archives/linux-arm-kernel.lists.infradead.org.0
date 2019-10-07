Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B99DCEF71
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 01:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GXPWPw7uVbFahLl0/AobDUopc0FQXzEV6NWU3hD+X6Q=; b=WhLpJ7NA5oS1U7
	w8FpS2wCv0XDjlIvLcljgFLLRARitusKCPbz0HKgVFR6eExWrvV7OPxf0vVAtdxpkd8v+8TrmD9Oh
	SKBKuOi6yzWEc/EnIlFxxXduSohjcqhk2fnJ29nMWEMr92aUW2qfFSX+6uF8wfD7sM3h9ddM4b4yP
	mtG2201SmF5LAYnhElMfDWYxgqPboM79O0XbpHE3beW1/iAPq8Zbil+/pnAijXlM2P/Vaebib+2Ff
	FhSWUqb5AoDGLZmHdPjibvlNrQ0Ne6KqleQpdPutttoDnWDNs4YMDOSoK586YVHRWOJRFKqW595tt
	zHqtZp2KARdaAamp1mqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHcBx-0002zV-Tm; Mon, 07 Oct 2019 23:13:25 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHcBp-0002ye-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 23:13:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 16:13:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="218109559"
Received: from maru.jf.intel.com ([10.54.51.77])
 by fmsmga004.fm.intel.com with ESMTP; 07 Oct 2019 16:13:14 -0700
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
To: Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>,
 Tao Ren <taoren@fb.com>
Subject: [PATCH 0/5] i2c: aspeed: Add buffer and DMA modes support
Date: Mon,  7 Oct 2019 16:13:08 -0700
Message-Id: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_161317_647880_58E18E2B 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds buffer mode and DMA mode transfer support for the
Aspeed I2C driver. With this change, default transfer mode will be set to
buffer mode for better performance, and DMA mode can be selectively used
depends on platform configuration.

* Buffer mode
  AST2400:
    It has 2 KBytes (256 Bytes x 8 pages) of I2C SRAM buffer pool from
    0x1e78a800 to 0x1e78afff that can be used for all busses with
    buffer pool manipulation. To simplify implementation for supporting
    both AST2400 and AST2500, it assigns each 128 Bytes per bus without
    using buffer pool manipulation so total 1792 Bytes of I2C SRAM
    buffer will be used.

  AST2500:
    It has 16 Bytes of individual I2C SRAM buffer per each bus and its
    range is from 0x1e78a200 to 0x1e78a2df, so it doesn't have 'buffer
    page selection' bit field in the Function control register, and
    neither 'base address pointer' bit field in the Pool buffer control
    register it has. To simplify implementation for supporting both
    AST2400 and AST2500, it writes zeros on those register bit fields
    but it's okay because it does nothing in AST2500.

* DMA mode
  Only AST2500 and later versions support DMA mode under some limitations:
    I2C is sharing the DMA H/W with UHCI host controller and MCTP
    controller. Since those controllers operate with DMA mode only, I2C
    has to use buffer mode or byte mode instead if one of those
    controllers is enabled. Also make sure that if SD/eMMC or Port80
    snoop uses DMA mode instead of PIO or FIFO respectively, I2C can't
    use DMA mode.

Please review it.

-Jae

Jae Hyun Yoo (5):
  dt-bindings: i2c: aspeed: add buffer and DMA mode transfer support
  ARM: dts: aspeed: add I2C buffer mode support
  i2c: aspeed: fix master pending state handling
  i2c: aspeed: add buffer mode transfer support
  i2c: aspeed: add DMA mode transfer support

 .../devicetree/bindings/i2c/i2c-aspeed.txt    |  67 ++-
 arch/arm/boot/dts/aspeed-g4.dtsi              |  47 +-
 arch/arm/boot/dts/aspeed-g5.dtsi              |  47 +-
 drivers/i2c/busses/i2c-aspeed.c               | 513 ++++++++++++++++--
 4 files changed, 588 insertions(+), 86 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
