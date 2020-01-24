Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194F2148F24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 21:11:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e3j2zxRi8BuVNwELz3D1xx1yfNbvDrGZT878BSZnOGw=; b=kw1A+WxEPQc11a
	GJaFh9EOoyPINTome33wQ5QO3V3UQ910yPu15d3grLsCF1sfaGTZs2M3BAgGIv8O9MgBiIw/FMd7z
	l2+qycTyyQTHfChn6nH2Rxy4+H8YXz18z4GZm2N93D4UGg2gnPLvrb9Gap3/AxPjUbXUIwIixiP7G
	VO6YvWAy1Sg+FKgMjhbpAfOLZGkqTtmF4KRiFMJBlDLmAGO9+2u8Ye29pI5nGRVozUBdn8dwNltgG
	cuh1comGJSXeo8qirhf8WkBKAcaZJTySDFJab8mQx+V5vbmXwoTc4wEKyMzjyIItMYFabacQj5h/9
	BIyW/Wq9oUl5O5mV010w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv5Ix-0007ZQ-P6; Fri, 24 Jan 2020 20:11:47 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv5Id-0007YX-WB
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 20:11:29 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 6CBBE80FA;
 Fri, 24 Jan 2020 20:12:10 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/3] randconfig build fix for omap soc changes for v5.6
Date: Fri, 24 Jan 2020 12:11:22 -0800
Message-Id: <pull-1579896427-50330@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_121128_074718_C7FD4216 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

The following changes since commit 8ab871f8bdfcca627802b6992e556fba5722a268:

  ARM: OMAP2+: sleep43xx: Call secure suspend/resume handlers (2020-01-13 10:06:46 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/soc-build-fix-signed

for you to fetch changes up to c37baa06f8a970e4a533d41f7d33e5e57de5ad25:

  ARM: OMAP2+: Fix undefined reference to omap_secure_init (2020-01-23 07:48:26 -0800)

----------------------------------------------------------------
Randconfig build fix for recent SoC changes for v5.6

We can get build failures if let's say if only am335x SoC is selected.
Let's fix this by always building secure-common.

----------------------------------------------------------------
Andrew F. Davis (1):
      ARM: OMAP2+: Fix undefined reference to omap_secure_init

 arch/arm/mach-omap2/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
