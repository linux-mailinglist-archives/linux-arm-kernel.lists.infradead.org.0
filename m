Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51555EC5D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n/8ymW+54BwOc32ZlMVbXy9xpqNUaubX2VF229uH4BU=; b=NmLSuFs1fKGlpj
	cdF9AotnTV6NR7DFRTBLmhILprO5WFUmHHIkmId7qOYSRyoZLcf9M8IFuvAbtowoRWlU3UdJQVktG
	wLKeuUh+ytPp5ijHpQbpGFZH2rkP4uzzdQI76kwT9yJJw0HCvdY/olesRAeLRy2khGN4jfEHO4YS+
	pBZqLil+HsalBes6aZGFVbcwbnfSnIcLD6e//Mz+7qF6F2oedKZUW98Rvq17X/tDO5chTgfCrRPC9
	0lcOyrbfx1F2BXKNcsIIn4az57u1x10WpGZaHl/DCSYYF6XEN+Ch0zCcECoZgepQQF1ZKr3rMAnho
	HXQ6QdAcLtCZhC98x3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ8d-0002RL-Si; Fri, 01 Nov 2019 15:46:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ8U-0002Qo-QL
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:46:52 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 5FFD98140;
 Fri,  1 Nov 2019 15:47:24 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] prm reset control dts changes for omaps for v5.5
Date: Fri,  1 Nov 2019 08:46:45 -0700
Message-Id: <pull-1572623173-281197@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_084650_892469_C4294A13 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

The following changes since commit 5478f912d225a1745a4b3d5f564daa0004d35a42:

  soc: ti: omap-prm: add omap5 PRM data (2019-10-09 08:55:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/prm-signed

for you to fetch changes up to a868da75fd8f925caaf7f5381b2dccff2a244986:

  ARM: dts: omap5: Add PRM data (2019-10-10 07:22:36 -0700)

----------------------------------------------------------------
PRM reset control dts changes for v5.5 merge window

This series of changes adds the PRM reset driver nodes for am3/4, omap4/5
and dra7 SoCs. The reset driver changes make it easier to add support for
various accelerators for TI SoCs in a more generic way.

Note that this branch is based on the PRM reset driver changes branch.

----------------------------------------------------------------
Tero Kristo (5):
      ARM: dts: dra7: add PRM nodes
      ARM: dts: omap4: add PRM nodes
      ARM: dts: am33xx: Add PRM data
      ARM: dts: am43xx: Add PRM data
      ARM: dts: omap5: Add PRM data

 arch/arm/boot/dts/am33xx.dtsi   | 26 +++++++++++++++++++++
 arch/arm/boot/dts/am4372.dtsi   | 26 +++++++++++++++++++++
 arch/arm/boot/dts/dra7.dtsi     | 51 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/omap4-l4.dtsi |  2 +-
 arch/arm/boot/dts/omap4.dtsi    | 26 +++++++++++++++++++++
 arch/arm/boot/dts/omap5.dtsi    | 26 +++++++++++++++++++++
 6 files changed, 156 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
