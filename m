Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFF9452EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aR8tOoS4Ql6lWuDIgGK7qpJqtoMBMJLFQ+0jH1RBxQs=; b=pb45h5H+AxM6vT
	IfRQ2t7QxfEBfRVB5VYqMTtnzkq9bTiYNwEChNCEEdN/ryWr20Ly8O1NhwL0K5DdIloi3rmJRa6xj
	jS8DyOnzK81Ix/PP/ItgY0JXhgptoWahqNSxdF4bkKCsumPqrLKiqdB2AMhoehvcrPe4r9s81yFXS
	5+/ZKxpktHT+dUi15SkrtXDAfHWN5rgojf8ypfIRtIx2v0p9041/y8fArDj8sTaU4OPt+RhcG8Akr
	acJhK8KniwsKhfYfQxU2puvWEQW36sognehHNeEkhT3fLrn6WpcvlmYo3HEy6O4YCZPqxwttZ9mLj
	0iHsIdrsD8G1C74J12kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbctS-0000OC-74; Fri, 14 Jun 2019 03:28:46 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcfu-0001uS-0E; Fri, 14 Jun 2019 03:14:53 +0000
Received: from tony.xie?rock-chips.com (unknown [192.168.167.229])
 by lucky1.263xmail.com (Postfix) with ESMTP id B29D95E8A4;
 Fri, 14 Jun 2019 11:14:37 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13273T140214467016448S1560482074692142_; 
 Fri, 14 Jun 2019 11:14:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <da7045de40a53e67fa1df5b4903fd717>
X-RL-SENDER: tony.xie@rock-chips.com
X-SENDER: xxx@rock-chips.com
X-LOGIN-NAME: tony.xie@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Tony Xie <tony.xie@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v9 0/6] support a new type of PMIC,
 including two chips(rk817 and rk809)
Date: Thu, 13 Jun 2019 23:14:19 -0400
Message-Id: <20190614031425.15741-1-tony.xie@rock-chips.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201446_532372_3ED7DA3D 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 tony.xie@rock-chips.com, huangtao@rock-chips.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, lee.jones@linaro.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of functions and registers of the rk817 and rk808 are the same,
so they can share allmost all codes.

Their specifications are as follows:
  1) The RK809 and RK809 consist of 5 DCDCs, 9 LDOs and have the same
registers
     for these components except dcdc5.
  2) The dcdc5 is a boost dcdc for RK817 and is a buck for RK809.
  3) The RK817 has one switch but The Rk809 has two.

Changes in V2:
1. initialize the pm_pwroff_fn to NULL.
2. use EXPORT_SYMBOL_GPL to export pm_power_off_prepare.
3. change patch 2/3/4/5 subjects.

Changes in V3
1. change patch 4 subjects
2. replace pr_ with dev_ for printing in patch 2
3. modify switch1 and switch2 configs in patch 2
4. explain gpio information for rk809 and rk817 in patch 4

Changes in V4:
1. modify some codes for patch 2 and patch 5 according to comments
2. add reviewer mail lists for patch 3 and 4

Changes in V5:
modify some codes for patch 1 according to reveiw comments for v3.
 1) remove the pm_power_off_prepare() and replace with shutdown
call-back from syscore
 2) move the macro REGMAP_IRQ_M into the regmap.h and rename it
REGMAP_IRQ_LINE
 3) make some dev_warn() log clear

Changes in V6:
modify some codes according to reveiw comments for v5.

Changes in V7:
modify some codes for patch 2 according to reveiw comments.

Changes in V8:
For helping me promote this work, Heiko send the V8

Changes in V9:
1.base on the V8
2.modify some codes according to reveiw comments for V8 from Mark Brown

Tony Xie (6):
  mfd: rk808: remove the id_table
  mfd: rk808: Add RK817 and RK809 support
  regulator: rk808: add RK809 and RK817 support.
  dt-bindings: mfd: rk808: Add binding information for RK809 and RK817.
  rtc: rk808: add RK809 and RK817 support.
  clk: RK808: add RK809 and RK817 support.

 .../devicetree/bindings/mfd/rk808.txt         |  44 ++
 drivers/clk/Kconfig                           |   9 +-
 drivers/clk/clk-rk808.c                       |  64 +-
 drivers/mfd/Kconfig                           |   6 +-
 drivers/mfd/rk808.c                           | 199 +++++-
 drivers/regulator/Kconfig                     |   4 +-
 drivers/regulator/rk808-regulator.c           | 646 +++++++++++++++++-
 drivers/rtc/Kconfig                           |   4 +-
 drivers/rtc/rtc-rk808.c                       |  68 +-
 include/linux/mfd/rk808.h                     | 175 +++++
 10 files changed, 1155 insertions(+), 64 deletions(-)

-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
