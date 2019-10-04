Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C427CBD2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zlhq+IWqWGWxQYjmIqyJ48dqkmMKi8C1PNGNxjbH+9w=; b=KzJHh6e7v1Va8b
	U/bUpJE8m2DEBZwE+aZIKr10k0UP3sRXKEUkDbTbfcGmPG3RsGwbhUaKLLa3LuTljgVYT1Vanw7es
	9kPkYuUkSfUp5HpKvYbQ1jrsjAXXmuARINuSnWbBKnqFaaSuTaGGmypqa1JxzHJkJoVNQQ9zWTbDo
	bXjLixWeNVXtojFgWiOG2JKuFCY1SoHKrFxS3e+YdkWXYB3Zyvws6y0js2TFWS4pgZw0KWSDGNvFf
	gruZjKj5QnCCN5NpNdbM8pYozpK9BQ4QJiLgYj5EvolL051sBWw2uPWzs2EYzfJahNVsRZIUWSzoT
	xJfHJFE89LfnFTFnWSUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOZ7-0004wo-O7; Fri, 04 Oct 2019 14:28:17 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYk-0004tZ-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:27:55 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1164BC0007;
 Fri,  4 Oct 2019 14:27:45 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 04/21] MAINTAINERS: Add new Marvell CN9130-based files to
 track
Date: Fri,  4 Oct 2019 16:27:21 +0200
Message-Id: <20191004142738.7370-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072754_408554_4385F343 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marvell has a new branch of products called CN9130 based on AP807 and
CP115 which are derivatives of the currently supported AP806 and
CP110. Update the MAINTAINERS entry to reflect this change in the
naming.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b51c83..6b53cd42ae48 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1897,7 +1897,7 @@ F:	arch/arm/boot/dts/dove*
 F:	arch/arm/boot/dts/orion5x*
 T:	git git://git.infradead.org/linux-mvebu.git
 
-ARM/Marvell Kirkwood and Armada 370, 375, 38x, 39x, XP, 3700, 7K/8K SOC support
+ARM/Marvell Kirkwood and Armada 370, 375, 38x, 39x, XP, 3700, 7K/8K, CN9130 SOC support
 M:	Jason Cooper <jason@lakedaemon.net>
 M:	Andrew Lunn <andrew@lunn.ch>
 M:	Gregory Clement <gregory.clement@bootlin.com>
@@ -1909,6 +1909,7 @@ F:	arch/arm/boot/dts/kirkwood*
 F:	arch/arm/configs/mvebu_*_defconfig
 F:	arch/arm/mach-mvebu/
 F:	arch/arm64/boot/dts/marvell/armada*
+F:	arch/arm64/boot/dts/marvell/cn913*
 F:	drivers/cpufreq/armada-37xx-cpufreq.c
 F:	drivers/cpufreq/armada-8k-cpufreq.c
 F:	drivers/cpufreq/mvebu-cpufreq.c
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
