Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E951D4A72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XKKuY/y9zMPryvMFsi8Rg1t1p81oLZ9a0yMSBhfGXVI=; b=j6agZCt39vCfz5WFPhxdB2aVHn
	S2i12oOpfSXkkZpUB+FsPwFgWcShL/uQZO2j56zuQWydYEIP/MSETd8Cam3fccwyGgPv10ypExjie
	GZQ7uGt4Zp0IR0mM1JqHJx7sGPXzD062PWbFCxHr7gQDe/extkjCOqjZunkRuEoxeNEnoMbncGXXr
	Hc4xbaTOANRaRRSkSyJxzPDK92Vc8KbEPzLcPqZyfwzTZ939w6GfIHTp1jposVVjMGt32StmJCYoY
	ysxbRIHAPTeWkoEKKFQLWhYPBmf4ItdhOw9JAu7xcRzMiIklU6ZUoSsYw16Lb7VhbhX4FWVwisSk3
	FUC1lqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXFI-0004Lv-A6; Fri, 15 May 2020 10:07:12 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXEN-0003fx-Kj
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:06:18 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:ad37:48f9:900a:523e])
 by xavier.telenet-ops.be with bizsmtp
 id ey5w2200E1TfvYq01y5w6L; Fri, 15 May 2020 12:05:56 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0008Qq-Ez; Fri, 15 May 2020 12:05:56 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0003pj-Du; Fri, 15 May 2020 12:05:56 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 4/5] Renesas driver updates for v5.8 (take two)
Date: Fri, 15 May 2020 12:05:46 +0200
Message-Id: <20200515100547.14671-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515100547.14671-1-geert+renesas@glider.be>
References: <20200515100547.14671-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_030615_826826_33DAE6D5 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 2f71832755a9422f5a62a13ea3e805df7b173837:

  soc: renesas: rcar-rst: Add support for RZ/G1H (2020-04-30 10:01:39 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-drivers-for-v5.8-tag2

for you to fetch changes up to cdc8abe763c99a6c2b854d7096eaf1ea21017a42:

  soc: renesas: Add Renesas R8A7742 config option (2020-05-04 14:27:20 +0200)

----------------------------------------------------------------
Renesas driver updates for v5.8 (take two)

  - Add the main config option for the RZ/G1H SoC.

----------------------------------------------------------------
Lad Prabhakar (1):
      soc: renesas: Add Renesas R8A7742 config option

 drivers/soc/renesas/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
