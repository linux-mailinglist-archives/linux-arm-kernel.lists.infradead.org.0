Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D995F195F98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 21:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6oQ+nz0c17x7lut/+2C5l0GkN+kv/9MF6eUgW/qLOEw=; b=e4nfkykubwDTNT
	0hkvR/lgX8TTvC7JmM7vX/+DcaRTv94koNGC0e018VlODcNDpIRb3M1JeewRPk5qk1FhudOYPXlcz
	GPWYY48DBZrdFlkcnKzVgmD+AZFBYrXDRBhaLNIAFd7s1Mk2D4nxFGchFzKFzj7w4hVKGnvnYDiUh
	ORicNe/DCbo/8fDF8I7Z3K/98/xIw0fA/MOvn+ryBywtfYiC5g2kwTbbB8e1QeGg1iB0jxA/hcyrg
	nXgGSC2DYFlZAEhcqNarRdpbv2rKMBAFrmlfNFq/FsZZXdxUgWdW18LaxehAIU4nhFtKt9EvSZtuM
	BaaZeeICwKSxJ8DLCRFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHvWI-0008U1-QD; Fri, 27 Mar 2020 20:23:58 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHvWA-0008TQ-0R
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 20:23:51 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id CD05C809F;
 Fri, 27 Mar 2020 20:24:31 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] One N950/N9 boot regression fix
Date: Fri, 27 Mar 2020 13:23:37 -0700
Message-Id: <pull-1585340588-558327@atomide.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_132350_089572_3AAD6F48 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

The following changes since commit dfa7ea303f56a3a8b1ed3b91ef35af2da67ca4ee:

  ARM: dts: omap5: Add bus_dma_limit for L3 bus (2020-03-17 10:01:28 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/fixes-rc7-signed

for you to fetch changes up to 07bdc492cff6f555538df95e9812fe72e16d154a:

  ARM: dts: OMAP3: disable RNG on N950/N9 (2020-03-26 10:04:56 -0700)

----------------------------------------------------------------
Boot regression fix for N950/N9

We need to tag RNG as disabled for N950/N9 as it blocked by the secure
mode. We have a similar change done for N900, but I missed adding it
for N950/N9 with the recent RNG changes.

----------------------------------------------------------------
Aaro Koskinen (1):
      ARM: dts: OMAP3: disable RNG on N950/N9

 arch/arm/boot/dts/omap3-n950-n9.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
