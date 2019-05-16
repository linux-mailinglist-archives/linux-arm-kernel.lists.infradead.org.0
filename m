Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BFB20042
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 09:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uNEKB34HkMMlmEV0gOlT5Ksro451OFlplVDKflw5gps=; b=Kg9
	exStbasshK6vqkQjWq50QLZyimMqmqqDCmAkjRbU4y8nmMnr5059qIv4AU0NpWsq8jxI9/AWG6gvH
	Ot5Pg9JpA80D5amEI3IjhDFEGDf0YUg+YpBj3ThhslY+7XwjnWyFwIFoHIxZlpG4SvPuhZMapWiHx
	1D0nzKjc8Po4GQtY3aUJffTfJd96o/fGmdQhHL/o+C1g0rRmcFOsipwUR9JKXv+vURaLxn7r93Lzw
	d9wN4bkCHqvhgrTSqTBcrj4W7+CS0htWxgVteCDPCYNfHmc2PodqRSIq7wQl/daFHnY7PYuk7Cv1Z
	BF++E8W5mxoZEUVDTkB+kecybw2BxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRApJ-0007bQ-I7; Thu, 16 May 2019 07:29:17 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRApB-0007Zl-TO; Thu, 16 May 2019 07:29:11 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.227])
 by regular1.263xmail.com (Postfix) with ESMTP id A0EE847C;
 Thu, 16 May 2019 15:28:58 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7747T139724561819392S1557991736066321_; 
 Thu, 16 May 2019 15:28:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e97b00e870e3be5f6951bfbdbadcb8a3>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 0/6] clk: rockchip: Support for some new features
Date: Thu, 16 May 2019 15:28:50 +0800
Message-Id: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_002910_107953_1B6F42B1 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. Support for some new features
2. fix up some error

Chang in V2:
[PATCH v2 5/6] : fix up the Register error, and add delay.


Elaine Zhang (4):
  clk: rockchip: fix up the frac clk get rate error
  clk: rockchip: add a clock-type for muxes based in the pmugrf
  clk: rockchip: add pll up and down when change pll freq
  clk: rockchip: support pll setting by auto

Finley Xiao (2):
  clk: rockchip: Add supprot to limit input rate for fractional divider
  clk: rockchip: add a COMPOSITE_DIV_OFFSET clock-type

 drivers/clk/rockchip/clk-pll.c    | 236 +++++++++++++++++++++++++++++++++++---
 drivers/clk/rockchip/clk-px30.c   |  29 ++---
 drivers/clk/rockchip/clk-rk3036.c |  13 ++-
 drivers/clk/rockchip/clk-rk3128.c |  15 ++-
 drivers/clk/rockchip/clk-rk3188.c |  24 ++--
 drivers/clk/rockchip/clk-rk3228.c |  18 +--
 drivers/clk/rockchip/clk-rk3288.c |  19 +--
 drivers/clk/rockchip/clk-rk3328.c |  17 +--
 drivers/clk/rockchip/clk-rk3368.c |  17 +--
 drivers/clk/rockchip/clk-rk3399.c |  32 +++---
 drivers/clk/rockchip/clk-rv1108.c |  14 ++-
 drivers/clk/rockchip/clk.c        |  48 ++++++--
 drivers/clk/rockchip/clk.h        |  50 +++++++-
 include/linux/clk-provider.h      |   2 +
 14 files changed, 425 insertions(+), 109 deletions(-)

-- 
1.9.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
