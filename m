Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98D711E60F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SQosGyVvAjCNAMOU7SUSXpQd8tofWrFrNHArrU0WN0s=; b=udd1D+CAOlW7qY
	Kvp+Wr4BZ/qQoWRflbllzb3N8YhUGQA1AYQ8cJaSoPuxTXd77GOAyu8NwqtQQZZxdEI5HX+OrkP0K
	RT7MmuJp8K2X6tY4jQ9HAx6XimINp9UwIruvccKlaGKec3SbEJB89iOrntj4VVc9gPs+AwwMyAeuT
	WINCUHIlnUCeHHoigArlcCbzfPCf2yvUaVdzG0tkUBiMYQm5aLk5uv9YCdZvCqFnMnWeo9wF8P5K0
	UgkcbScvUw0cPepMbx2FFc8W4WoUFtNSqkQPm57GSTJtVQrazUWzySAsuITKp/MsxxuambBc/dcYu
	cKanaoQHzBk3hWnOO9Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmVS-0007EI-7t; Fri, 13 Dec 2019 15:05:26 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmVD-0006mm-Iy
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:05:13 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /l3zNd7W8x5mGxD5D2YKoB1ZSgknSeaTBybraVXNXDLaHm0eK/6PWCZz5tbCMhBfosSQk99CMd
 sun3NtdDv8aYIoRGm4z0TPZ/CjWpJ9uiZz54nOAyE58fK2qAOiwinDmKSjahHddnQWWvvfetST
 ckayaBEyvavx3V+Kp+T9fDkeUaQyeJDbbtHiuZIPIrabWW6LqIRxB13GEMq5cdGQSZgwjzLScP
 o1lcMPyuTP/IHzWr7cWsZm8HA2xfjYrUqmWEtVoFw7TC++lzLZVf12NqSWfQmGy4T5C19yxMlF
 PRI=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="61646956"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 08:05:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 08:05:06 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 08:05:02 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <sam@ravnborg.org>, <bbrezillon@kernel.org>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <lee.jones@linaro.org>
Subject: [PATCH v2 0/6] fixes for atmel-hlcdc
Date: Fri, 13 Dec 2019 17:04:50 +0200
Message-ID: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_070511_772839_0B00C7F2 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
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
