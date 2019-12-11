Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C6611BC9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zMkMJ9y6GVfzrBLM87BkaFpH5KK12KmetrnMITfOVew=; b=eT7nWUc07plGdl
	CKNSeiztSzb4d+VMUBeUpi+fIlO/FB3tqfI0kPMeLjqvr2Qg78fWpMJyfpq94kWBY8TDwdd6VsnYI
	F9jGdeqQzF1JMnJwVYfT4KXEYYaCef7xIzYAUgvTWt8UHsA4BnzOqGtluJUz/mJTeKA4qIWGfvit3
	0KDxB5HRXDXNpd6nDPdzuy6E9tZ6+8Y8liouRu6Mm8uDbYxjHIYPSbOkDJ0vINYdPHWU9O7GkkTOw
	kQavlwckJG0Yp6hQyERBoi+vb6ifa4CmNBYkCDAy5rhFjLC/zd1C+1qgil5qMNznHtUW85rAMgV6I
	sFyLI6shQIzTQU+i5E0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7PJ-0002kS-QF; Wed, 11 Dec 2019 19:12:22 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7P9-0002jE-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:12 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id EC55C80FA;
 Wed, 11 Dec 2019 19:12:49 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 00/13] Drop more legacy platform data for omaps
Date: Wed, 11 Dec 2019 11:11:53 -0800
Message-Id: <20191211191206.12190-1-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111211_457978_41DA1649 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keerthy <j-keerthy@ti.com>, Sebastian Reichel <sre@kernel.org>,
 Benoit Parrot <bparrot@ti.com>, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here are more patches to drop legacy platform data for v5.6,
please test.

To make testing easier, I've pushed out all the related patches
I've posted over past few days into omap-for-5.6/ti-sysc-testing
branch at [0][1].

Regards,

Tony

[0] git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap.git omap-for-5.6/ti-sysc-testing
[1] https://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap.git/log/?h=omap-for-5.6/ti-sysc-testing


Tony Lindgren (13):
  ARM: OMAP2+: Drop legacy platform data for am4 ocp2scp
  ARM: OMAP2+: Drop legacy platform data for omap4 ocp2scp
  ARM: OMAP2+: Drop legacy platform data for omap5 ocp2scp
  ARM: OMAP2+: Drop legacy platform data for dra7 ocp2scp
  ARM: OMAP2+: Drop legacy platform data for am4 vpfe
  ARM: OMAP2+: Drop legacy platform data for omap4 hsi
  ARM: OMAP2+: Drop legacy platform data for omap4 smartreflex
  ARM: OMAP2+: Drop legacy platform data for dra7 smartreflex
  ARM: OMAP2+: Drop legacy platform data for omap4 kbd
  ARM: OMAP2+: Drop legacy platform data for omap5 kbd
  ARM: OMAP2+: Drop legacy platform data for omap4 slimbus
  ARM: OMAP2+: Drop legacy platform data for dra7 rtcss
  ARM: OMAP2+: Drop legacy platform data for omap4 fdif

 arch/arm/boot/dts/am437x-l4.dtsi           |   4 -
 arch/arm/boot/dts/dra7-l4.dtsi             |   5 -
 arch/arm/boot/dts/omap4-l4.dtsi            |   8 -
 arch/arm/boot/dts/omap4.dtsi               |   1 -
 arch/arm/boot/dts/omap5-l4.dtsi            |   3 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c | 115 ------
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 423 ---------------------
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c | 117 ------
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c  | 194 ----------
 9 files changed, 870 deletions(-)

-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
