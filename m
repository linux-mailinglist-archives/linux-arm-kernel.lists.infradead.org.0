Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60F9185071
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CeiHvV+YIULk+yvhJUH1cX2stIuFlea5vAUFkEHg4yA=; b=fJh9Pt6MkkVqqg
	egkCGXmtOfO8A9Zq966DeH00fO5GA5ZXZzul5QWRozBzZlGNi+dt/SZIFSfa2gMyeAoOHxd3bBY0X
	M/9cLtTEq6syuRs5vv8um4qcNrru9BHUwJW53HzMLZ/lzKQdAFPLerPM0CbBIr9wVRMA1w7nLLIXW
	9Q59aeLe/Us6ejTBxMKzvaOe7H4RDcEPIpfvvXx6rkQmnlWLCTOd8ply6SwE7JWEXHRUjaZEWeAHB
	CvPJjxZDqOdIw2kKX6Uzc/yahrUbnPE/o5ZFTatuUO9K9MOxf3aQ9yER5I21/JQ3jHHsEled47YOt
	3TWLm1s0U986ms3Uncdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCr74-0003GK-Sx; Fri, 13 Mar 2020 20:40:58 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCr6r-0003Fw-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:40:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id D5A4E8087;
 Fri, 13 Mar 2020 20:41:31 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] ti-sysc fix for v5.6
Date: Fri, 13 Mar 2020 13:40:42 -0700
Message-Id: <pull-1584132028-918607@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_134047_240106_746B5F6E 
X-CRM114-Status: UNSURE (   7.57  )
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

The following changes since commit b2745d92bb015cc4454d4195c4ce6e2852db397e:

  bus: ti-sysc: Add support for PRUSS SYSC type (2020-03-04 07:54:57 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/ti-sysc-fix-signed

for you to fetch changes up to aef067e8e95d856bc09557a91e740b2d6a81a6ae:

  Merge branch 'fix-lcdc-quirk' into omap-for-v5.7/ti-sysc (2020-03-10 09:06:02 -0700)

----------------------------------------------------------------
Fix for ti-sysc suspend/resume issue on am335x for v5.7 merge window

Just merge in a ti-sysc fix for am335x lcdc suspend/resume issue, and
resolve merge conflict.

----------------------------------------------------------------
Tony Lindgren (2):
      bus: ti-sysc: Fix quirk flags for lcdc on am335x
      Merge branch 'fix-lcdc-quirk' into omap-for-v5.7/ti-sysc

 drivers/bus/ti-sysc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
