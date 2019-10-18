Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E95DDC38B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oqlhq3DAxtY1wiwts9bv2be8Dbz8PYdb05r0XzyrZRs=; b=bOR8If58rBRLgJEnhZCLLY1ns3
	4UbNNY1FzEiCO4b1RVQbjS0MpvsOyp0A76bA0OOWYv7x/0MyfV6kPJC1MTk/2QjPO29L/9bp9/73g
	y5XnGCTCg7ham00Dxvd1FhvVxLXaBQAI9/8yGSb3hFJBZOHPmLIwm6hYHMftUilueH/rLTlM6lYcy
	rLhghlCllbtQAGUYuDkyB8W6obzzuKD8FgfktgTItyALelz4bllWmEuOnk3rjPHFvyLuJu3wZKmEx
	MWAbGmXOJrqNZrcpdgY1rXojyZRcK5qUSjDdXslW95T8kacrdlVwmgXVLdhPYpmVOrIsHU2lF2Zwf
	PHHIdNJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQ1g-0002Ux-12; Fri, 18 Oct 2019 11:02:32 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQ0R-0001Qq-KW
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:01:17 +0000
Received: from ramsan ([84.194.98.4]) by andre.telenet-ops.be with bizsmtp
 id Ez142100r05gfCL01z14st; Fri, 18 Oct 2019 13:01:09 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLQ0G-0005q3-Oc; Fri, 18 Oct 2019 13:01:04 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLPEt-0006rw-Qt; Fri, 18 Oct 2019 12:12:07 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 1/5] Renesas ARM DT updates for v5.5
Date: Fri, 18 Oct 2019 12:11:32 +0200
Message-Id: <20191018101136.26350-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018101136.26350-1-geert+renesas@glider.be>
References: <20191018101136.26350-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_040115_847028_0C98A4F6 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.5-tag1

for you to fetch changes up to 84cd9d3442b755b804618b265d39ab99df829ab2:

  ARM: dts: emev2: Add whitespace for GPIO nodes (2019-10-01 09:51:42 +0200)

----------------------------------------------------------------
Renesas ARM DT updates for v5.5

  - Whitespace cleanups.

----------------------------------------------------------------
Geert Uytterhoeven (2):
      ARM: dts: gose: Replace spaces by TABs
      ARM: dts: lager: Replace spaces by TABs

Magnus Damm (1):
      ARM: dts: emev2: Add whitespace for GPIO nodes

 arch/arm/boot/dts/emev2.dtsi        |   4 ++
 arch/arm/boot/dts/r8a7790-lager.dts |   8 +--
 arch/arm/boot/dts/r8a7793-gose.dts  | 110 ++++++++++++++++++------------------
 3 files changed, 63 insertions(+), 59 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
