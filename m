Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C001E1D0C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mufoBf8i3RwH9KBLgXvT7C/r4AYIoz+/X8Yqm8QeNzc=; b=M0cUBOlyFDIvcA
	hok9dBxrJNQ0ieoSalfIVynEFM+oU1XzDk4t31LODV+jRtWdo++VlPwkZoSoEsVSujo2rVqxW9hE7
	T04C3WUOcAP/U/vJtFu2b0M+fvR1Y/zsb0StxuNv3uPVQFMkAKyxNOtmHUGCeJFFERAECfJ91iJ+1
	S9QPaX5QqPIC0JMnwSUdEGWo6VN+tR7pA8GYuJ5OtgeRavdnv0WsEyadbiNiz1vyfiEQH1EgGRPz8
	5/3amPEDDeF4yBtVOP4Nibnu4y+8c7vPb0bHEUEaCU86Xtob2KRsh0I7n8Xkr7/d6eS7576DjV+9w
	Yc4KSLPBflgMaTJ6L8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQeHL-0004mB-K3; Tue, 14 May 2019 20:44:03 +0000
Received: from mailoutvs12.siol.net ([185.57.226.203] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQeHD-0004js-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 20:43:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3FA7C521E73;
 Tue, 14 May 2019 22:43:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id H35XG354VjHa; Tue, 14 May 2019 22:43:44 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id ABA0E521E15;
 Tue, 14 May 2019 22:43:44 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id F0885521DDF;
 Tue, 14 May 2019 22:43:43 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: maxime.ripard@bootlin.com,
	wens@csie.org
Subject: [PATCH 0/2] drm/sun4i: Fix sun8i HDMI PHY initialization
Date: Tue, 14 May 2019 22:43:35 +0200
Message-Id: <20190514204337.11068-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_134356_046796_921F9939 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.203 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I received a report that 4K resolution doesn't work if U-Boot video
driver is disabled. It turns out that HDMI PHY clock driver was
initialized prematurely, before reset line was deasserted and clocks
enabled. U-Boot video driver masked the issue because it set pixel
clock correctly.

In the process of researching the bug, I also found out that few bits
in HDMI PHY registers were not set correctly. While there is no
noticeable change (4K resolution works with both settings), I've
added fix anyway, to be conformant with vendor documentation.

Please check it out.

Best regards,
Jernej

Jernej Skrabec (2):
  drm/sun4i: Fix sun8i HDMI PHY clock initialization
  drm/sun4i: Fix sun8i HDMI PHY configuration for > 148.5 MHz

 drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c | 29 ++++++++++++++------------
 1 file changed, 16 insertions(+), 13 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
