Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D6220236
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Soq3vDH37qhT7+F2EWqK1IWjmgTK9GPO7pS5WYYMwhs=; b=PIjJDOMwzVM5Kx
	zcJ5RrhvQ9qTXUWCxHXKvlOHcHawflptkhb/4BezHt8tvCOLBQdXVhPL/56rBwCinUPe2A5gZhL27
	dd/Qf5Szb3MYJtMgFxOhFh7QrZ2LZ3L6VYcNB4iGXsvUcsICtC8ftuOuCXI2hu8ZB6bfJX4+eyRIc
	4u4xKvXuYwyrZ+dEQJp95OnYDcEcjzFcuo95N/BH4xgMKMtep+f/ySAVG6anSB8b7Mbq3BwzSr0hC
	8nUBQZZE0+VqFMIwlUp94TwcPA4wmWVctdo5cIMoXnkzzSXI7FbCK7+t62gtfGWjPBTvaWWQKmXE4
	mB1sXFP5eqoQISKRJpVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCNu-0000mo-I1; Thu, 16 May 2019 09:09:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCNk-0000kM-BS; Thu, 16 May 2019 09:08:57 +0000
X-UUID: 4bec25a1af264529bafb50f066eae534-20190516
X-UUID: 4bec25a1af264529bafb50f066eae534-20190516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 15307253; Thu, 16 May 2019 01:08:50 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:08:48 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:08:47 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:08:47 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [PATCH 0/8] Add cpufreq and cci devfreq for mt8183, and SVS support
Date: Thu, 16 May 2019 17:08:37 +0800
Message-ID: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_020856_396810_5024BB7E 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.

For SVS support, add OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.

Andrew-sh.Cheng (7):
  cpufreq: mediatek: change to regulator_get_optional
  cpufreq: mediatek: add clock enable for intermediate clock
  cpufreq: mediatek: Add support for mt8183
  dt-bindings: devfreq: add compatible for mt8183 cci devfreq
  devfreq: add mediatek cci devfreq
  cpufreq: mediatek: add opp notification for SVS support
  devfreq: cci devfreq register opp notification for SVS support

Stephen Boyd (1):
  PM / OPP: Support adjusting OPP voltages at runtime

 .../bindings/devfreq/mt8183-cci-devfreq.txt        |  20 ++
 drivers/cpufreq/cpufreq-dt-platdev.c               |   1 +
 drivers/cpufreq/mediatek-cpufreq.c                 |  88 +++++-
 drivers/devfreq/Kconfig                            |  10 +
 drivers/devfreq/Makefile                           |   1 +
 drivers/devfreq/mt8183-cci-devfreq.c               | 310 +++++++++++++++++++++
 drivers/opp/core.c                                 |  78 ++++++
 include/linux/pm_opp.h                             |  11 +
 8 files changed, 517 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
 create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c

-- 
2.12.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
