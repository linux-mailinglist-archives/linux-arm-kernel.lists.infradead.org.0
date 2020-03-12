Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10797183A8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 21:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dl+UjEgpdb+aeQIXPOKT6a+wCHkUunu+0CduVpFA7pg=; b=P2f/aPguSjE2PC
	nLOaf69uovC07iPOlnI5Cay0lTZUCHrKxfDybU0TaxEvHOEm9tIamnlN2Do0dTPJm0OR4KMNQWc96
	604Gw/9DorlDqOxFFMEitfD65rrQgfcFvKP6KPTvuQixss7Snb7HMzX900zLqMOqfuT7IF9OYVf+J
	BHYfPVsnsB66rHGRuVJJm+CM3pnI6Y1Kt5R9ygeISC1BSOYql/ZI4ZzMgq0mZsK8WvJKZF8WKgEN/
	nFrXzoivYdEk4U9LwTwlhbuiuMeozef0ztnOoAZUTMVfyUH+nLCsbDpe5vq/Q8l5p/7VA3wZbGPiO
	1Q0yIEc1Em6L4ZefOrIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCUOf-0004nQ-1G; Thu, 12 Mar 2020 20:25:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUOX-0004n5-Vl
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 20:25:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 194F4200F30;
 Thu, 12 Mar 2020 21:25:26 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D5BD1200F1F;
 Thu, 12 Mar 2020 21:25:25 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 574D540AB2; Thu, 12 Mar 2020 13:25:25 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] fixes to soc/fsl drivers for v5.6
Date: Thu, 12 Mar 2020 15:25:25 -0500
Message-Id: <20200312202525.16708-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_132530_162637_5905280B 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi arm-soc maintainers,

Please help to merge the following fix for soc/fsl drivers.

Thanks,
Leo

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-fix-v5.6

for you to fetch changes up to fe8fe7723a3a824790bda681b40efd767e2251a7:

  soc: fsl: dpio: register dpio irq handlers after dpio create (2020-03-10 15:28:47 -0500)

----------------------------------------------------------------
NXP/FSL soc driver fixes for v5.6

DPAA2 DPIO
- Fix a kernel hang caused by irq requested before creating dpio

----------------------------------------------------------------
Grigore Popescu (1):
      soc: fsl: dpio: register dpio irq handlers after dpio create

 drivers/soc/fsl/dpio/dpio-driver.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
