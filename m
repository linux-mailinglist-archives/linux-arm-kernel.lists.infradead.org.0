Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C49E8BA49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HLFgD3znrTLgd0GdBAwx4BTZEtOcr8dTNWUNFSfdrBg=; b=lotyiCDFMxunZK
	owTu55FKYT7ZWTm3eB3fVFFLg62OvL/E3eEV/qCZdjBpEpHYIkqJwfJMkXQugeU9b2duWuaaSMgYe
	r89C6Qo2xp8ltCSoxbDf8kxhquMAaRMKfCQZWNqYWq8iV0pTWpjWy9lb8z8JYAW7Ub6YOwo1lve87
	MvTD0yQU+ztFSDfv9hvgfXQip3axoKaWlAfbJoOakfYwJF1lG/UZ7FQLOHhwyPy/FRWsFmcfO+ToF
	NE10xnUG0eWhzxwLHUap+O15Ro1+ku3md2jvrAyDwD8ti8kN3LHb0cjRPy4SqVvXKpGkTpJUURd3+
	sgh3AHw/3dHCSDLGEXxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWvH-00057h-J2; Tue, 13 Aug 2019 13:33:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWv2-000539-0C; Tue, 13 Aug 2019 13:32:57 +0000
X-UUID: df54a8094b6b449d8d0a0de2265850e6-20190813
X-UUID: df54a8094b6b449d8d0a0de2265850e6-20190813
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2006960718; Tue, 13 Aug 2019 05:32:12 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 06:32:10 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 21:31:58 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 13 Aug 2019 21:31:57 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [v4, 0/8] Add cpufreq and cci devfreq for mt8183, and SVS support
Date: Tue, 13 Aug 2019 21:31:45 +0800
Message-ID: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: D7839D27C4C616350DB74E772C1782DC07B875324FF63921E5DE37E0960449452000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_063256_052953_C3501FAD 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Change since v3:
 - modify example of dt-binding
 - change rcu implementation in Support adjusting OPP patch
 - Add mutex init in cpufreq driver

Andrew-sh.Cheng (7):
  cpufreq: mediatek: change to regulator_get_optional
  cpufreq: mediatek: add clock enable for intermediate clock
  cpufreq: mediatek: Add support for mt8183
  dt-bindings: devfreq: add compatible for mt8183 cci devfreq
  devfreq: add mediatek cci devfreq
  cpufreq: mediatek: add opp notification for SVS support
  devfreq: mediatek: cci devfreq register opp notification for SVS
    support

Stephen Boyd (1):
  PM / OPP: Support adjusting OPP voltages at runtime

 .../bindings/devfreq/mt8183-cci-devfreq.txt        |  20 ++
 drivers/cpufreq/cpufreq-dt-platdev.c               |   1 +
 drivers/cpufreq/mediatek-cpufreq.c                 |  94 ++++++-
 drivers/devfreq/Kconfig                            |  10 +
 drivers/devfreq/Makefile                           |   1 +
 drivers/devfreq/mt8183-cci-devfreq.c               | 309 +++++++++++++++++++++
 drivers/opp/core.c                                 |  63 +++++
 include/linux/pm_opp.h                             |  11 +
 8 files changed, 507 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
 create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c

-- 
2.12.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
