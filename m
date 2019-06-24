Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65E5501E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7vn/GCRgQ7OydHVHvOPePzUHupWPxnY0ecdpwup1gMs=; b=GBbt/XICr36RXc
	JwrHNur31iySko0WImPRluGIoeMImaGnibTyyV0ljlCZzl6zo+wFxK0UAn5Id7xNt3awyzzPWYpy5
	nPIu2FD+cegUkMG41Z3BeNdYHHzewDdiFtWhnQzU3uCjS6lG0kw/HHvz6VaIW9iXzS9LxD0N9rxkK
	mhbuo5eMGzwoeZ6UvSGv5DqEFf795AwidXREBpZDICNH5G4VSqQkvRmBprpu3SbWVGHnWmjf8/HpY
	eRTK2+k7aoC9iyjh2b53/aONE96pQSQNXIVDIrdpk/B8h31EQyLTJ5zLb810d3hOOy9T1DKxp/vEz
	rvhzIM8jScryDCUejSCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfI6e-00028G-7J; Mon, 24 Jun 2019 06:05:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfI5u-0000TP-9P; Mon, 24 Jun 2019 06:04:47 +0000
X-UUID: c8af2978c57e4f5c839830fa3949b4e6-20190623
X-UUID: c8af2978c57e4f5c839830fa3949b4e6-20190623
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1469003470; Sun, 23 Jun 2019 22:04:02 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 23 Jun 2019 23:04:01 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 24 Jun 2019 14:03:51 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Mon, 24 Jun 2019 14:03:49 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [v2 0/2] Add BOE tv101wum-nl6 panel driver
Date: Mon, 24 Jun 2019 14:03:41 +0800
Message-ID: <20190624060343.62451-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24708.005
X-TM-AS-Result: No-3.897700-8.000000-10
X-TMASE-MatchedRID: dOSp9Mvb4gYsO+kVEfVuQuw8wbnnSw8b/qWl+m17jWGRoQLwUmtov4B5
 w6KBECW1+AJGIBv8BrccPMPBmVk68KKgpS1QMZdlQ4srjeRbxTY/pOSL72dTf+C8kJH0fC7Go8W
 MkQWv6iUoTQl7wNH8Pg1fA1QHegDv3QfwsVk0UbvqwGfCk7KUs1dJSLY83D7tT5zdiUMG61EtX1
 Ku9S0y2cJJw7Bu+2A7wBJhFox5jCMeK/2EmSeazhjzxtagfc5ZCL7s8Gn7821S9V8uD0rKaXWzn
 loeB3HaPQzwIbfiR5AMD9LTK+5Nny0c7FwZxiheftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.897700-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24708.005
X-TM-SNTS-SMTP: E64738CD7F700C8353EFED01D393DEE921552EFA3212ABD26258D2E10059537E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_230446_424290_4E323570 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since v1:

 - update typo nl6 -> n16.
 - update new panel config and makefile are added in alphabetically order.
 - add the panel mode and panel info in driver data.

Jitao Shi (2):
  dt-bindngs: display: panel: Add BOE tv101wum-n16 panel bindings
  drm/panel: support for BOE tv101wum-nl6 wuxga dsi video mode panel

 .../display/panel/boe,tv101wum-nl6.txt        |  34 +
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 715 ++++++++++++++++++
 4 files changed, 760 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt
 create mode 100644 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
