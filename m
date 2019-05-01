Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EA110EA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 23:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HNBe9VwF+EvlToiJlugTHjL7hKqNW1lNi74i17D59YM=; b=nmoEJybzF+RovV
	Y0zvmI/FxhDuW+aNkqgANrPjBLaeeTJ3ASLP0wvPD0N5X0s7G5KIydV5fMW/d9KOnPJ5aB7pyV66J
	7VkIuvLxNdUFSVv97Xu0eivkwK7qb2Y+QFnmt3jD5ToJZtf3HM+YgvKXSoBFw9/U8AYKHFS2MUCCL
	O5jCj2NBjikMX/Z9H0ShESFPvcc8Y2R09/vUXksC+oQjCt0cgF00cuIUPiUw9QlPY6JUSUFBSzT3u
	VXxSftpQQj2I9bnWUXTImJ1PybE+oePYNjH7Ko7LqI1OSF6fPa2fXddwLB3Wo+j9tCM2OG3N/9xAE
	6w0MyrmooU/ptiSyoOZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwzC-0002CQ-9r; Wed, 01 May 2019 21:41:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwz5-0002Bj-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 21:41:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 13E82805C;
 Wed,  1 May 2019 21:42:02 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 0/2] Two ti-sysc driver fixes for v5.3 merge window
Date: Wed,  1 May 2019 14:41:27 -0700
Message-Id: <20190501214129.12572-1-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_144147_477909_1F7F4B2F 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here are few fixes for the am335x d_can boot issue Sebastian reported for
Beaglebone.

Regards,

Tony


Tony Lindgren (2):
  ARM: dts: Configure osc clock for d_can on am335x
  bus: ti-sysc: Handle devices with no control registers

 arch/arm/boot/dts/am33xx-l4.dtsi | 14 ++++++--------
 arch/arm/boot/dts/am437x-l4.dtsi |  4 ----
 drivers/bus/ti-sysc.c            | 23 +++++++++++------------
 3 files changed, 17 insertions(+), 24 deletions(-)

-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
