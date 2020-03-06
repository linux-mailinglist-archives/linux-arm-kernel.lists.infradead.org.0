Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4BA17C2CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rE/lXwnUOkDSU8oQlrpe8hTzrW9j043F1Vy+vT7drA=; b=J8gTrIYxV5+7ev
	gIP6p3/jDs5JTCaDZbSsGlxhjd/3IzBAEPOaE5yv8MWk47rSF0VsH1Jn3al4EztdHAw4eOpc+ktGQ
	KLCKfu1b9kW+h9BMrW+S4N9BGJOEcAAJxCN4RJasxhruYVmlRVjHgUodSbu0RyztoEWyg4z/gar9P
	j1uoYFjplkMC5bysOgawwHkROBWxdsuw3fk37cRqpgq2JOPZIo6haS8LD/c0LNJlM7tPHJXXZ5aUY
	RbjgvrHMGqmM0z4IMLS6f3x8+FHOWNoV3ojRkifVVqwwjXK7skq06/BnxcebjIAyIi2iU4ajxA9Lo
	HUL0W7pRt5CpKofW0bGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFiQ-0002by-Dk; Fri, 06 Mar 2020 16:20:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFhh-0000uE-Cn
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:20:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 122998192;
 Fri,  6 Mar 2020 16:20:44 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 4/4] dts changes for omaps for v5.7
Date: Fri,  6 Mar 2020 08:19:50 -0800
Message-Id: <pull-1583511417-919838@atomide.com-4>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <pull-1583511417-919838@atomide.com>
References: <pull-1583511417-919838@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_082001_471388_6117BB1E 
X-CRM114-Status: UNSURE (   7.76  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/dt-signed

for you to fetch changes up to 89a7b191fcd17e3f1dba963eb2cba8262b45a4d2:

  ARM: dts: am4372: Add idle_states for cpuidle (2020-02-27 09:33:33 -0800)

----------------------------------------------------------------
Devicetree changes for omaps for v5.7 merge window

Few device tree changes for omaps for v5.7 to configure omap5
AESS module and to add idle_states for am335x and am437x cpuidle.

----------------------------------------------------------------
Dave Gerlach (2):
      ARM: dts: am33xx: Add idle_states for cpuidle
      ARM: dts: am4372: Add idle_states for cpuidle

Tony Lindgren (1):
      ARM: dts: Configure omap5 AESS

 arch/arm/boot/dts/am33xx.dtsi       | 12 ++++++++++++
 arch/arm/boot/dts/am4372.dtsi       | 12 ++++++++++++
 arch/arm/boot/dts/omap5-l4-abe.dtsi | 16 ++++++++++++++--
 3 files changed, 38 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
