Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DC019B81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2BneB71UoBt27+n+0J0z4Hd5zdJ26zgCnn7LKTKrjcY=; b=ENLceTpXd3Q5Qv
	fS0+JfoEJukisgtRxu8Re2/bJuTNeKvA3uh81J2LWXdg+MwaYrieLgCxFXPp9wbvZ9o+4+iRe6g7f
	6WjtAoNoIZbwPwEQhVq1t2IIHM6/EvbqVTlbzjsKEtDqmQqRogRo2qqChNlRr4a72wtXvuVE2p2w8
	hSg8eNjt6V47ptfgshBC6Sd60DhstT0nbWL+Q3hUkQn4vDnJ8pHwcdOa/8N/VD+cB6DJChocj6O6M
	wgqsZ52NNNeNXETtlq8tBzFRqsM+Bz9D6lqPwMBcj3Bbh8VmVsbY7C+gY3lTZ3vYG2dcK+YFfcEb9
	sV6STYgl+ENwjtmcN3VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2gm-0001si-4a; Fri, 10 May 2019 10:23:40 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2gg-0001li-3R
 for linux-arm-kernel@bombadil.infradead.org; Fri, 10 May 2019 10:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=On8oRpSMr9n7y+jn0PyfMJc06liZSsVfOPwylqHrUoU=; b=GfYOUn/CNYU/2bNfvD/D2TEXS8
 SF0brRzAO1VCUVCwtX439SBl3KgrrjVzxHMxqqw0RMnB11g0AYW9+gFIhT1BR7ketMY3oCjFrTcsT
 VNOJZxUmWcu4FkpQkkX7b0WCzOSiIyEEhFspBbp2K/l13ieKY48higB1NaLRIlWWLM3CiI0xGDwLk
 QkV2WdzykdMjU4mSvkfgdaPJXx27hyru4leowhbz7El0xHVydUH+UCpAjFYanqhRjhaFvrJP6iYPB
 ntSfuCZLet1LDa/JALbn9G0Y4lFqLl3b+auBjLGibXhyQqoz4FMevdLJzgXlFjI80wfGtJrQyYQFr
 X9VgNbDA==;
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2Zj-0004Te-Vi
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:16:27 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id CAABE891AD;
 Fri, 10 May 2019 22:15:40 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1557483340;
 bh=On8oRpSMr9n7y+jn0PyfMJc06liZSsVfOPwylqHrUoU=;
 h=From:To:Cc:Subject:Date;
 b=mDw/iZnvLKj+CSlmDMAnuGUoEwt1Q9shVT6hjsSdmnjp07GUxxIhxBEvPxVFxGjhk
 FBpmAI27gvA1INf+JFE5dvzt9rsr/IkG5fwLWR68jueSgNzb9lh4y051WAxIXRiP28
 VOd1L41QWEtgt5dj18puSqJHB4d/8YPRY9glwnFejPTKkf5D+RuaSoH8fZNrK7kCWV
 XtEoAToY+BwVwhsFX/SnssGAL0hY9L61z8ucsvKK41d45zJPygNULwX6bQ2THPwarr
 LAy11Zk4kQt1GrMlZ/oRD2ZSsdOhkBUurFGWhuI9jiyXmKsVxljpf6zSpJhjns9hIS
 /i1a3XA1ICL0Q==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd54f4c0000>; Fri, 10 May 2019 22:15:41 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 896D913EEA0;
 Fri, 10 May 2019 22:15:39 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 1B34B1E1D5B; Fri, 10 May 2019 22:15:39 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linux@armlinux.org.uk, bp@alien8.de, mark.rutland@arm.com,
 robh+dt@kernel.org, mchehab@kernel.org, james.morse@arm.com,
 jlu@pengutronix.de, gregory.clement@bootlin.com
Subject: [PATCH v8 0/9] EDAC drivers for Armada XP L2 and DDR
Date: Fri, 10 May 2019 22:15:27 +1200
Message-Id: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_111624_655598_1E79432C 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Reviews/Acks have been given so this should be good to go in via the ARM
tree as planned.

http://lists.infradead.org/pipermail/linux-arm-kernel/2017-August/525561.html

This series adds drivers for the L2 cache and DDR RAM ECC functionality as
found on the MV78230/MV78x60 SoCs. Jan has tested these changes with the
MV78460 (on a custom board with a DDR3 ECC DIMM), Chris has tested these
changes with 88F6820 and 98dx3236 (both a custom boards with fixed DDR3 + ECC).

Also contained in this series is an additional debugfs wrapper.

Compared to the previous v7 series this has been rebased against 5.1 requiring
some changes in the devicetree binding documentation.

Compared to the previous v6 series I've dropped the marvell,ecc-disable
property.

Compared to the previous v5 series I've split the dt-binding documentation into
its own patch and updated armada_xp_edac.c to use a SPDX license.

Compared to the previous v4 series I've added my s-o-b to some of Jan's
patches and rebased against v4.19.0.

Compared to the previous v3 series, the following changes have been made:
- Use shorter names for the AURORA ECC and parity registers
- Numerous formatting changes to edac/armada_xp.c (as requested by Boris)
- Added support for Armada-38x and 98dx3236 SoCs

Compared to the previous v2 series, the following changes have been made:
- Allocate EDAC structures later during probing and drop devres support
  patches (requested by Boris)
- Make drvdata->width usage consistent according to the comment (suggested by
  Chris)

Compared to the previous v1 series, the following changes have been made:
- Add the aurora-l2 register defines earlier in the series (suggested by
  Russell King and Gregory CLEMENT )
- Changed the DT vendor prefix from "arm" to "marvell" for the ecc-enable/disable
  properties on the aurora-l2 (suggested by Russell King)
- Fix some warnings reported by checkpatch

Compared to the original RFC series, the following changes have been made:
- Integrated Chris' patches for parity and ECC configuration via DT
- Merged the DDR RAM and L2 cache drivers (as requested by Boris, analogous
  to fsl_ddr_edac.c and mpc85xx_edac.c)
- Added myself to MAINTAINERS (requested by Boris)
- L2 cache: Track the msg size and use snprintf (review comment by Chris)
- L2 cache: Split error injection from the check function (review comment by
  Chris)
- DDR RAM: Allow 16 bit width in addition to 32 and 64 bit (review comment by
  Chris)
- Use of_match_ptr() (review comments by Chris)
- Minor checkpatch cleanups


Chris Packham (4):
  ARM: l2x0: support parity-enable/disable on aurora
  dt-bindings: ARM: document marvell,ecc-enable binding
  ARM: l2x0: add marvell,ecc-enable property for aurora
  EDAC: armada_xp: Add support for more SoCs

Jan Luebbe (5):
  ARM: l2c: move cache-aurora-l2.h to asm/hardware
  ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
  ARM: aurora-l2: add defines for parity and ECC registers
  EDAC: Add missing debugfs_create_x32 wrapper
  EDAC: Add driver for the Marvell Armada XP SDRAM and L2 cache ECC

 .../devicetree/bindings/arm/l2c2x0.yaml       |   4 +
 MAINTAINERS                                   |   6 +
 .../asm/hardware}/cache-aurora-l2.h           |  50 +-
 arch/arm/mm/cache-l2x0.c                      |  18 +-
 drivers/edac/Kconfig                          |   7 +
 drivers/edac/Makefile                         |   1 +
 drivers/edac/armada_xp_edac.c                 | 635 ++++++++++++++++++
 drivers/edac/debugfs.c                        |  11 +
 drivers/edac/edac_module.h                    |   5 +
 9 files changed, 733 insertions(+), 4 deletions(-)
 rename arch/arm/{mm => include/asm/hardware}/cache-aurora-l2.h (50%)
 create mode 100644 drivers/edac/armada_xp_edac.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
