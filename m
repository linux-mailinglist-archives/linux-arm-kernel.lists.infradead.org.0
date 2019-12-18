Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DA61246D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:29:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kck7vMV3lHwisNxXVO/pLldV9+qF6J2CrfTVMjqZV4Q=; b=tAyNP72Jf0WvYr
	CgMVvoGGuK0v3LAxGXNJyye7pWIAOkoWDfRKw4r8co/a+iXZzSOKtraBIJDSncL87hteY555jGU2P
	udkVwwzCSUcuLnVeLS76qK8XI2MXmGGkxJ4qBhpfC+vrUT4YgeYGU1/ea2m91bbArHs4uAZxknjrd
	k6y1LGEbDWAXv9vDVS5Tp8aYlNp8GDPfZlmzK/49f5vzer48t4tv+4iSkLK8FeR9vRMbymp75sVwS
	JyDs5nryX7TsGuzEcUm7kRoT7lVbWxqainzy7jazjlfGvkO/2XWBXHx8EjBoJggrA5NP2HdxxmbOD
	sBL2WIZmdaWHJesbEvGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYRh-0001vT-6L; Wed, 18 Dec 2019 12:28:53 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYRS-0001sl-B0
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:28:41 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: mMhpzqDKffyOcoquQvlWs/uTrosHiQ7bIT/IryT2UMqI7ma5vJ2NJeK8pNZJ9N7JIXOfpvRzkV
 8+SsrubPp0iJsBWeYWFx1AdrDba0+//DCb2x0sLZ+rQQnB0SC4BKWeOD1Vp9Yx/2OVIk/McC9o
 4SLOMnDu6mXyqyTaIHO+fNpedRk8tJfdgYybV09Oru3BJvMvMAa3VzCHMmvwASCP65f2q5GDO+
 ILx+QKs+VqE6+FP5SBoNPOTv4a8DnakSnsXDy3BdI93M0vMRmMhJbH0D6g5SDdxuLcdTV1zvUF
 EYc=
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="59399379"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 05:28:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 05:28:34 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 18 Dec 2019 05:28:31 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <boris.brezillon@bootlin.com>, <airlied@linux.ie>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <lee.jones@linaro.org>, <sam@ravnborg.org>
Subject: [PATCH v3 0/6] fixes for atmel-hlcdc
Date: Wed, 18 Dec 2019 14:28:23 +0200
Message-ID: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_042838_382615_4FE1FA54 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, peda@axentia.se,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I have few fixes for atmel-hlcdc driver in this series as well
as two reverts.
Revert "drm: atmel-hlcdc: enable sys_clk during initalization." is
due to the fix in in patch 2/5.

Thank you,
Claudiu Beznea

Changes in v3:
- changes dev_err() message in patch 4/6
- collect Acked-by tags

Changes in v2:
- introduce patch 3/6
- use dev_err() inpatch 4/6
- introduce patch 5/6 instead of reverting commit f6f7ad323461
  ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")

Claudiu Beznea (5):
  drm: atmel-hlcdc: use double rate for pixel clock only if supported
  drm: atmel-hlcdc: enable clock before configuring timing engine
  mfd: atmel-hlcdc: add struct device member to struct
    atmel_hlcdc_regmap
  mfd: atmel-hlcdc: return in case of error
  Revert "drm: atmel-hlcdc: enable sys_clk during initalization."

Peter Rosin (1):
  drm: atmel-hlcdc: prefer a lower pixel-clock than requested

 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 18 ++++++++++++------
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c   | 19 +------------------
 drivers/mfd/atmel-hlcdc.c                      | 18 ++++++++++++++----
 3 files changed, 27 insertions(+), 28 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
