Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF05118A97E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:51:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QCyLVRZEMUQYP5zw/H7j+keIKwuKW6VF/jQoJbI+JhU=; b=iYoVF/itFd7BgV
	S7N3HP6NVcPeGG8UmQZbMQzxi2vitc/fAU1QlXCXOiMaL2JaVR9prs1ilNMVAuVvY94X2i/9svp5M
	UUoOoRsfNQhDrWJZKNzE0PyMzz0h+YfY1YfujzT5yNUijnsWDDUelX1Irr7USXOi/ohMvnEOwlx0J
	K5mxsAOzq/ciLfkSwHZQIEIOpFPe1dTQHOtEXEVvDvz7mftcCp6QPmcV7thFR5bg5TPZIGoUH84Lp
	PKRqh1H5eZ0y7r3hmf5R0tML+VUSyJ9ESCiqIPhizdNoOhejrSDFeSErxIMwaQMssSg1gt2j+u6Qv
	IAqUbEOUFTdQr0m0eWDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEiSb-0001TF-Iu; Wed, 18 Mar 2020 23:50:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEiSR-0001Sw-Hg
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:50:44 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id D202380B6;
 Wed, 18 Mar 2020 23:51:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] defconfig updates for omaps for v5.7
Date: Wed, 18 Mar 2020 16:50:40 -0700
Message-Id: <pull-1584575344-983293@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_165043_627722_F4203626 
X-CRM114-Status: UNSURE (   8.05  )
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/defconfig-signed

for you to fetch changes up to 98c2cc359f8fa67992eb715f89f19390d70e135d:

  ARM: omap2plus_defconfig: Update for moved and dropped options (2020-03-17 09:37:53 -0700)

Note that this causes a minor merge conflict in next with the dss
panel changes.

----------------------------------------------------------------
Defconfig changes for omaps for v5.7 merge window

We want to enable some more features for omap2plus_defconfig to make it
more usable:

- Enable scururity for ext4 so setcap works

- Enable simple-pm-bus so it can be later on be configured in the dts
  files as needed

- Enable zram as loadable modules as we do have devices using it

- Enable more devices for droid4 for 1-wire battery eeprom and isl29028
  proximity sensor

- Enable mcpdm clocks from the PMIC as loadable modules

- Enable ina2xx_adc as loadable module

- And finally let's also  omap2plus_deconfig for moved and dropped options

----------------------------------------------------------------
Tony Lindgren (7):
      ARM: omap2plus_defconfig: Enable ext4 security for setcap
      ARM: omap2plus_defconfig: Enable simple-pm-bus
      ARM: omap2plus_defconfig: Enable zram as loadable modules
      ARM: omap2plus_defconfig: Enable more droid4 devices as loadable modules
      ARM: omap2plus_defconfig: Enable McPDM optional PMIC clock as modules
      ARM: omap2plus_defconfig: Enable ina2xx_adc as a loadable module
      ARM: omap2plus_defconfig: Update for moved and dropped options

 arch/arm/configs/omap2plus_defconfig | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
