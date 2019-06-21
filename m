Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55E54E4A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ywNYljGKtkCfk1c6owwa9mNAQP0C9wT4SoMslGyXFWY=; b=Oxh
	Vrryc73drvVvYeE8R+qoJu6zoa1+8usowKPsV2JPW3MyzkagfnszVVdMlRbYzU46reZLsZSTy5eKs
	gchJe+83cu4bwAhGT9uuSI8y7A7Lb2DEXL4LcxyYuSyB4Ak4sitW4C2I7GrScGgT+eYxnyjJ2opkf
	yvwIIz2WMfYmu8oS/B+jkJ65Ihmlc1FBMlUdro2y0A3ApQ5lAgSRHsW8/yQc0llZgl4qP77PFNL+o
	kNJNWc2gAJ8tmAVSxuJlOZwGWH6+1IpcBdHZXZ6T1wlPTIliBgv/5Au70cx0Y15QvOTBv/cU/bpK4
	h+tflPnfdTcc5sizn8YvVBFNfFMEUNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGD2-0002JD-Iz; Fri, 21 Jun 2019 09:51:52 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFh1-0002tV-B5
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:18:49 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id EE83C25BEDD;
 Fri, 21 Jun 2019 19:16:50 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 017549408C4; Fri, 21 Jun 2019 11:16:48 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: arm@kernel.org
Subject: [GIT PULL] Renesas ARM64 Based SoC Defconfig Updates for v5.3
Date: Fri, 21 Jun 2019 11:16:41 +0200
Message-Id: <cover.1561105600.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021847_576166_96809BE5 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Hi Kevin, Hi Arnd,

Please consider these Renesas ARM64 based SoC defconfig updates for v5.3.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm64-defconfig-for-v5.3

for you to fetch changes up to c24f6886b2ee321b50543d3683573689a1817336:

  arm64: defconfig: enable TYPEC_HD3SS3220 config option (2019-06-12 13:57:08 +0200)

----------------------------------------------------------------
Renesas ARM64 Based SoC Defconfig Updates for v5.3

Enable as modules:
* TYPEC_HD3SS3220 B Type-C DRP Port controller driver
* TDA19988 HDMI encoder driver

----------------------------------------------------------------
Biju Das (1):
      arm64: defconfig: enable TYPEC_HD3SS3220 config option

Fabrizio Castro (1):
      arm64: defconfig: Enable TDA19988

 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
