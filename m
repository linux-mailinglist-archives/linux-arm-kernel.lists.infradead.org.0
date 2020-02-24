Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415EC16B00D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vjVRSlb8CIOLt2ZM2gdTL0kZraz71Fam8jVdMF+GhwA=; b=dwyIg9jMBWEFeL
	4t9V1BYlicahUyQkVT/cIYT9HmENLGytUdjiJtrW7dWIKMZlaoZiuFVbDK1Sl0DXMjtWLvjrIDR8n
	FB18h0EbPQJBkiWuuBzkrMUWkTweBGKw1n6eUN2o/tu7tHNKNHcOtzKOIBM+HNc0jWg0XG9DZ6WTU
	VdC8Xu2AdD0tQ7mTntTOeSQeSYeSbnWNs5V6HUy4JDZ2sXJyRjn+zVOIbNE6M3Dbk1qXyrjMJFAUW
	l4AOUf1moxL5t6dBUTRzkUN9cCxTF3biCWkFi2z9yKXL3pizGluwWUAikbR6QlEmnK7b1Ag/BFBcC
	RnoxsIfndjZEcGt5XaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JAH-0001Dm-Im; Mon, 24 Feb 2020 19:13:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6J9p-00011s-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:12:46 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 767778030;
 Mon, 24 Feb 2020 19:13:25 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 0/3] ti-sysc changes for probing DSS with dts data
Date: Mon, 24 Feb 2020 11:12:27 -0800
Message-Id: <20200224191230.30972-1-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_111245_798336_6AF2729F 
X-CRM114-Status: UNSURE (   6.88  )
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
 dri-devel@lists.freedesktop.org, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here are some changes to start probing display susbsystem (DSS) with
device tree data instead of platform data.

These changes are against v5.6-rc1, and depend on the earlier series
"[PATCH 0/7] ti-sysc driver fix for hdq1w and few improvments".

I'll be posting the related dts changes separately.

Regards,

Tony


Tony Lindgren (3):
  drm/omap: Prepare DSS for probing without legacy platform data
  bus: ti-sysc: Detect display subsystem related devices
  bus: ti-sysc: Implement display subsystem reset quirk

 drivers/bus/ti-sysc.c                         | 144 ++++++++++++++++++
 drivers/gpu/drm/omapdrm/dss/dss.c             |  25 ++-
 .../gpu/drm/omapdrm/dss/omapdss-boot-init.c   |  25 ++-
 include/linux/platform_data/ti-sysc.h         |   1 +
 4 files changed, 184 insertions(+), 11 deletions(-)

-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
