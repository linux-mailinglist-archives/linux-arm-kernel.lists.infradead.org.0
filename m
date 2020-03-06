Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66ED17C2CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fH5QVJ1dPN/U6HmLE3M3nB+fR6L4gXiVBFdkBhG2Ic=; b=Uwg/H+i8m00pu4
	MsaWFs294f59u+5Srt/5SDtHDETwuvih27BcDPebN4m1m6p3vYXm8eyjBDvxh9nnctLBh/828plT8
	345vpzv+HlPVM2ir9DaLiQsBKCuK3qEXI9XpLsYgw5Wrw1oyBixUagPAi+xbfnIB1Ofdh/0InmFM0
	ea03ApACrXY+9i2CgVoMcgHjDkKMb5+JjhEC65XA0S1QD3X1VieXUq+eyxxvO1rNM8sUrkre1zQao
	Pyv6+ULl4j6nz67ystaA6chORL6XEbQVvn2Y56Xt5AiaohemaDPKhX2kk59dAMLELpFKcWeegDYLy
	+JwbuInzhcfM/qM2B/vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFhw-0001Hy-EO; Fri, 06 Mar 2020 16:20:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFhh-0000uA-B2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:20:02 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id C4E658160;
 Fri,  6 Mar 2020 16:20:42 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/4] am3 and am4 pm changes for v5.7
Date: Fri,  6 Mar 2020 08:19:48 -0800
Message-Id: <pull-1583511417-919838@atomide.com-2>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <pull-1583511417-919838@atomide.com>
References: <pull-1583511417-919838@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_082001_418273_C30C36FC 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/pm33xx-signed

for you to fetch changes up to 73321b5f4dafc0a0e7389174ba7eaf558291a188:

  ARM: omap2plus_defconfig: Add CONFIG_ARM_CPUIDLE (2020-02-27 09:27:30 -0800)

----------------------------------------------------------------
PM changes for am335x and am437x for v5.7 merge window

A series of changes from Dave Gerlach to enable basic cpuidle support
for am335x and am437x based on generic cpuidle-arm driver.

----------------------------------------------------------------
Dave Gerlach (5):
      dt-bindings: arm: cpu: Add TI AM335x and AM437x enable method
      ARM: OMAP2+: pm33xx-core: Add cpuidle_ops for am335x/am437x
      ARM: OMAP2+: pm33xx-core: Extend platform_data ops for cpuidle
      soc: ti: pm33xx: Add base cpuidle support
      ARM: omap2plus_defconfig: Add CONFIG_ARM_CPUIDLE

 Documentation/devicetree/bindings/arm/cpus.yaml |   2 +
 arch/arm/configs/omap2plus_defconfig            |   2 +
 arch/arm/mach-omap2/pm33xx-core.c               | 137 ++++++++++++++++++++++--
 drivers/soc/ti/pm33xx.c                         |  21 +++-
 include/linux/platform_data/pm33xx.h            |   6 +-
 5 files changed, 160 insertions(+), 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
