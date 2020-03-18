Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598FD18A971
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kynEnjF7fbpzgX1QgRVBvbG1MubxPJ9oiMJzkVWQDw=; b=O6V1JB/lsFCt5s
	BqnhPUgzjsGsrn2KoX0nKN9tarryE02xTBG132sqxR1HhnO4xROjTKDfgGTNSXTftcRkAhSiRsxvu
	RVFTP48D1hC+LW9Yxyy22cyGuVPDb58j+6CFlCyxvKrgMmXwXmTdPohdu9gW4Ih1RKYmFwRcN0OTL
	fgMgw63uZLK9wGu55A9tQwuJ19R/zrDq3k26Ckpr81gjfUPe6V5a5JjS8TKRgSJYZM276tGYb6pjm
	vpSCZnea56C1O/yTI81ldjx+BWN1ioiLe4X+OKELoC+ZuO/pBFALSJw0piLt9NONuD535IgJY4OiT
	gv8SF/QZTMfunfOdrQAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEiQD-000884-GG; Wed, 18 Mar 2020 23:48:25 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEiQ4-00087j-TH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:48:18 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 36F8480B6;
 Wed, 18 Mar 2020 23:49:01 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Fixes for omaps for v5.6-rc cycle
Date: Wed, 18 Mar 2020 16:48:12 -0700
Message-Id: <pull-1584575254-461940@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_164816_986060_E0377349 
X-CRM114-Status: UNSURE (   8.71  )
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

The following changes since commit cfb5d65f25959f724081bae8445a0241db606af6:

  ARM: dts: dra7: Add bus_dma_limit for L3 bus (2020-03-13 07:40:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/fixes-rc6-signed

for you to fetch changes up to dfa7ea303f56a3a8b1ed3b91ef35af2da67ca4ee:

  ARM: dts: omap5: Add bus_dma_limit for L3 bus (2020-03-17 10:01:28 -0700)

----------------------------------------------------------------
Few more fixes for omaps

Just few dts fixes:

- A fix droid4 touchscreen stopping working with lost gpio interrupts

- Also limit omap5 dma range similar to what we've recently done for dra7

----------------------------------------------------------------
Roger Quadros (1):
      ARM: dts: omap5: Add bus_dma_limit for L3 bus

Tony Lindgren (1):
      ARM: dts: omap4-droid4: Fix lost touchscreen interrupts

 arch/arm/boot/dts/motorola-mapphone-common.dtsi | 2 +-
 arch/arm/boot/dts/omap5.dtsi                    | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
