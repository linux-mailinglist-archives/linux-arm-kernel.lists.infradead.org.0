Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD0614D6CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 07:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/vhaIzzQqLFX3MPZFXRGNVcbmDAKrcVHyz5fRTRj0A8=; b=RKK
	xEnceg31dmEXzmyy4c1iVmENlzds25+RkL7yrAQdSyQs1ELZTjZ+R1Q3fAFmaZa1IwpgmSK2ma+Uu
	clr4IcwvNSVeCEREVjyZgnCJss+cS5uEcZYpO17mVEW8/ZFZaJ88PdlVKcAyy2ZyxO1R7wnHVi0Kk
	r1eDm0QuVWxUbWJ2sANlpt5Qv1H0GRO6aKqJ/FMW8cHPcqn/WjjKJjeoSaMWnv8pye8JVb6B4crWZ
	qwFjHTcAvB93g5VC7sPgWROxhbEqFjxVFJrj+DeLp6vjPnRTC4ExL847EWmkGOvZzImeADQFxKRqR
	uacpM2OrM6qFL68hQMJL5RIdTpP04kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix3hO-000572-3h; Thu, 30 Jan 2020 06:53:10 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix3h8-00051t-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 06:52:55 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Jan 2020 15:52:52 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 56077603AB;
 Thu, 30 Jan 2020 15:52:52 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 30 Jan 2020 15:53:57 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id AB1E61A01BB;
 Thu, 30 Jan 2020 15:52:51 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v2 0/7] phy: socionext: Add some improvements and legacy SoC
 support
Date: Thu, 30 Jan 2020 15:52:38 +0900
Message-Id: <1580367165-16760-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_225254_350843_DC6D9763 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds some improvements to PHY interface drivers, and
adds legacy SoC support that needs to manage gio clock and reset.

Changes since v1:
- dt-bindings: Add Reviewed-by: line
- Add SoC-dependent phy-mode function support for pcie-phy

Kunihiko Hayashi (7):
  phy: socionext: Use devm_platform_ioremap_resource()
  dt-bindings: phy: socionext: Add Pro5 support and remove Pro4 from
    usb3-hsphy
  phy: uniphier-usb3ss: Add Pro5 support
  phy: uniphier-usb3hs: Add legacy SoC support for Pro5
  phy: uniphier-usb3hs: Change Rx sync mode to avoid communication
    failure
  phy: uniphier-pcie: Add legacy SoC support for Pro5
  phy: uniphier-pcie: Add SoC-dependent phy-mode function support

 .../devicetree/bindings/phy/uniphier-pcie-phy.txt  |  13 ++-
 .../bindings/phy/uniphier-usb3-hsphy.txt           |   6 +-
 .../bindings/phy/uniphier-usb3-ssphy.txt           |   5 +-
 drivers/phy/socionext/phy-uniphier-pcie.c          | 102 +++++++++++++++++----
 drivers/phy/socionext/phy-uniphier-usb3hs.c        |  92 ++++++++++++++-----
 drivers/phy/socionext/phy-uniphier-usb3ss.c        |   8 +-
 6 files changed, 172 insertions(+), 54 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
