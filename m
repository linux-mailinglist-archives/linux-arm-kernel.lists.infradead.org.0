Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF61687E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QFVvtUTkKaZjV2nwxOQ1pHAmzXzJvdiA0HRlMd7GbaA=; b=KEUE1eRITzqMXt
	0feo6P6whSAfvM0xLMRbAiIqpbBbn2ZpsO3N57Z5LC+VaPetvAm8XokztIxgxSEGntsN7mimkg1aO
	LrRqISuCevdhUvOkTY6h6I6wmYddWgCa/bmjedqAaDs0/wK0bv8mb/27aJgNfcnSQe0Awa4URJemf
	L3e+q7m4nYjJ66VP5ZTBI8M6iVzEdSa4dX2FNqvYEQ90cyJ32Q4Cxvw0HrEQiayZbFfOO6B5+cYgx
	szax+iIZ9Z5/KFKngZrlJJcmai2sHXiLBcavPYd9GpFDaI4RM7tB2Jswvv6BKDmuuNTlcmcPeHwUL
	WSgnIPO/krbyx4J7KLoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5EMn-0005Uq-Q2; Fri, 21 Feb 2020 19:53:41 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5EMI-0005HP-A1
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:53:11 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id EB03B807E;
 Fri, 21 Feb 2020 19:53:50 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 0/7] ti-sysc driver fix for hdq1w and few improvments
Date: Fri, 21 Feb 2020 11:52:49 -0800
Message-Id: <20200221195256.54016-1-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_115310_388059_B2D342DE 
X-CRM114-Status: UNSURE (   6.67  )
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andr=C3=A9=20Hentschel?= <nerv@dawncrow.de>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here are some ti-sysc interconnect target module driver fixes and
improvments.

There's a fix for 1-wire reset, the rest can wait for v5.7 merge
window.

Regards,

Tony



Tony Lindgren (7):
  bus: ti-sysc: Fix 1-wire reset quirk
  bus: ti-sysc: Rename clk related quirks to pre_reset and post_reset
    quirks
  ti-sysc: Improve reset to work with modules with no sysconfig
  bus: ti-sysc: Consider non-existing registers too when matching quirks
  bus: ti-sysc: Don't warn about legacy property for nested ti-sysc
    devices
  bus: ti-sysc: Implement SoC revision handling
  bus: ti-sysc: Handle module unlock quirk needed for some RTC

 arch/arm/mach-omap2/pdata-quirks.c    |   6 +
 drivers/bus/ti-sysc.c                 | 430 ++++++++++++++++++++------
 include/linux/platform_data/ti-sysc.h |   2 +
 3 files changed, 348 insertions(+), 90 deletions(-)

-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
