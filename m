Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3A316FCDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:03:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QHAWvZGS++He99bEe/dAhJ5J8pfCV0ttT+G8uZ78RFw=; b=HuNHk3RAw7uOyOt8s/xsjPKKOJ
	1HHyJg2Vuxx8MTWwPoTmBgiaBzYOnstn0NgIJGVIySq1j/sdkkiz7DGMidDwRqlVuidtywwHDEjYy
	hsiPBFs0dQymaeELp+WG3oH2GSAYggOuLMyHnsYReg3tbteUrcNrRNsjYTW2MmJMObg0a2R3U+xTS
	LN4qmqvCucpCea3Y/R0M/v9hQ8V31uOKCcl3STUxiz0X/kyYgMyRwJkxcBCF9SK+PaGCQ70ccd0K7
	R67JHnY4Kyxk9JYAyE4akf6amxm7gxYMOuyYaYYn6z9Cr27P1faWqzxNRLPKguBzjlGglZOjHDGf0
	06KVdT8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uSy-0006ag-N0; Wed, 26 Feb 2020 11:03:00 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uSZ-0006Qb-31
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:02:37 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id 7P2V2200S5USYZQ06P2V8u; Wed, 26 Feb 2020 12:02:29 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-0002U7-Ah; Wed, 26 Feb 2020 12:02:29 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-00052C-9a; Wed, 26 Feb 2020 12:02:29 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 5/5] Renesas driver updates for v5.7
Date: Wed, 26 Feb 2020 12:02:21 +0100
Message-Id: <20200226110221.19288-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226110221.19288-1-geert+renesas@glider.be>
References: <20200226110221.19288-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_030235_294868_5CFC19A9 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-drivers-for-v5.7-tag1

for you to fetch changes up to 4ff27112282e5482d618ea93837fe416af671bc2:

  soc: renesas: Remove ARCH_R8A7795 (2020-02-21 14:39:58 +0100)

----------------------------------------------------------------
Renesas driver updates for v5.7

  - Miscellaneous fixes and improvements.

----------------------------------------------------------------
Geert Uytterhoeven (1):
      soc: renesas: Remove ARCH_R8A7795

Nishad Kamdar (1):
      soc: renesas: rcar-sysc: Use the correct style for SPDX License Identifier

 drivers/soc/renesas/Kconfig       | 16 ++++++++--------
 drivers/soc/renesas/rcar-sysc.h   |  4 ++--
 drivers/soc/renesas/renesas-soc.c |  2 +-
 3 files changed, 11 insertions(+), 11 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
