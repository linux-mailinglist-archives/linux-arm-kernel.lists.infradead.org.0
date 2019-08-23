Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F779B888
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 00:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePArl+QjcYy5rgBePeTHfIH64Cq9SFdEYwKuoxxs2iY=; b=APIbxf45ADJK+1
	5VKi/BRCGQV+QOwznG4TKuVDFXRV4C2a4OFJFdtAMRuWR2b+qP4Wu+QAddQW8svyTPXhnwKmgt6wv
	0lffzsO/t61JZABWItsNfITRhr+m+J1nMTm+pSUMKl+0h+v4tl72Ry+C1BY0kO0MCYFbqJCJ5WSh0
	ALfgswfka3G4TGdXo2/kQd/h+34vwDpN2hwS9HWb4QgEFeGoza+AyCmP+Y3o4x6T4FRITjavcusbT
	pTIsKtvEksSf2j+jdOfgZWUGZScQ2bWn9FnWDNbqtNUNikxWsyky8//38l3bHYbgB/opRb4tzRcVy
	AN3mUz06TeIIJZbXowdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1HzL-0003oT-96; Fri, 23 Aug 2019 22:24:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1HzE-0003ns-FP
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 22:24:49 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 329518161;
 Fri, 23 Aug 2019 22:25:16 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/2] dts changes for omap variants for v5.4
Date: Fri, 23 Aug 2019 15:24:42 -0700
Message-Id: <pull-1566599057-142651@atomide.com-2>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1566599057-142651@atomide.com>
References: <pull-1566599057-142651@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_152448_553706_6EE7906B 
X-CRM114-Status: UNSURE (   7.08  )
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/dt-take2-signed

for you to fetch changes up to a27401cecf7795cda7e0c17751feb98fedbaa99d:

  ARM: dts: am335x-boneblue: Use of am335x-osd335x-common.dtsi (2019-08-13 04:51:31 -0700)

----------------------------------------------------------------
dts changes for omap variants for v5.4

Remove regulator-boot-off properties that we never had in the mainline
kernel so they won't do anything. We add stdout-path for gta04, and
make am335x-boneblue use am335x-osd335x-common.dtsi file.

----------------------------------------------------------------
David Lechner (1):
      ARM: dts: am335x-boneblue: Use of am335x-osd335x-common.dtsi

Ezequiel Garcia (2):
      ARM: dts: am335x-cm-t335: Remove regulator-boot-off property
      ARM: dts: omap3-n950-n9: Remove regulator-boot-off property

H. Nikolaus Schaller (1):
      ARM: dts: gta04: define chosen/stdout-path

 arch/arm/boot/dts/am335x-boneblue.dts | 92 +----------------------------------
 arch/arm/boot/dts/am335x-cm-t335.dts  |  1 -
 arch/arm/boot/dts/omap3-gta04.dtsi    |  4 ++
 arch/arm/boot/dts/omap3-n950-n9.dtsi  |  1 -
 4 files changed, 6 insertions(+), 92 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
