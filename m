Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4930817C2CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oBpnLXc0c5+sz87GE3xi3iq1MdA1T8saORWlSCL4J+M=; b=WHqfXMy6lbooiE
	f4lhwTxcwx117LIzzK2/wLJGdi7DptUfMRLHR6TknMfX4tsFheGhPyKtGjZOfzC+5pof/3Q8RHDzv
	RLBHf+zO+xVevh9jFrNZK2Rx0R3e2eQI/ikmtjRsPFnayMuG2F3Mcm4VOAZFzJUdXdxn5VR2P34eV
	/oHqXwAHwXrPLptr7wnIIo1SaL6VGi9pUWR87io8rzLcV6PZQSbgl0b+z+lokP0RFF/oXOuvwec8g
	JS9e1bV5pPURybZ5FpkkljEO6TY52RVxo5kcjELQAsPCA2ugKKWc3if+hCyJkgl5haUGIXfhGriRv
	S1R2Pc0U7s7QoYtZtsNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFiC-0002MQ-R6; Fri, 06 Mar 2020 16:20:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFhh-0000u9-Cd
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:20:02 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id C2A688027;
 Fri,  6 Mar 2020 16:20:41 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/4] soc changes for omaps for v5.7
Date: Fri,  6 Mar 2020 08:19:47 -0800
Message-Id: <pull-1583511417-919838@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_082001_468232_619CA4DC 
X-CRM114-Status: UNSURE (   6.84  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/soc-signed

for you to fetch changes up to 0d53cc8b3319fc6d0d9656c428d03a3c1628c19f:

  Merge branch 'omap-for-v5.7/omap1' into omap-for-v5.7/soc (2020-03-06 07:17:10 -0800)

----------------------------------------------------------------
SoC changes for omaps for v5.7 merge window

A change to improve the warning output for device tree data
mismatch as compared to legacy platform data for ti-sysc
related interconnect target modules.

And change omap1 to request_irq() instead of setup_irq().

----------------------------------------------------------------
Tony Lindgren (2):
      ARM: OMAP2+: Improve handling of ti-sysc related sysc_fields
      Merge branch 'omap-for-v5.7/omap1' into omap-for-v5.7/soc

afzal mohammed (1):
      ARM: OMAP: replace setup_irq() by request_irq()

 arch/arm/mach-omap1/pm.c         | 13 ++++++-------
 arch/arm/mach-omap1/time.c       | 10 +++-------
 arch/arm/mach-omap1/timer32k.c   | 10 +++-------
 arch/arm/mach-omap2/omap_hwmod.c | 19 ++++++++++++-------
 arch/arm/mach-omap2/timer.c      | 11 +++--------
 5 files changed, 27 insertions(+), 36 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
