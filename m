Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAA11DA8B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Y5Xh1j8BuJyrRhDPg51bhRCFvtuc5x2dCyeeM1y+Vs=; b=rCbwOKJEDQZ/AC
	TwOVWe5D76zGoJclKxVX+1uKkpCsyQZ7MjtzuaPDhSl0iv2kKSwdEE2OP8YOB55UaHzW8kDdhUiqv
	JbEknbrT6k4z18I15X8KadTUoWG0Zhp876UToWLhMMJwRuvIQs+h3ci/ytSs/+8TrigC3A0k8U8e3
	g+EUIbLDuS/TbGC+dFv4w5eB1sm3P6jDg8ABKYms73CL7NvAHCHAe6BbXpBlUGEpXWdugn13y0qcJ
	9eDyn0gvHmVhNWeuJwyfVt1CDCISO7iBt7vZLO5f0BjXwcKjcaNrQbVnMhUHRCaHtFxzGUmxMXxHY
	kev9BzVgP0XnBislnmLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFdn-0001OZ-P2; Wed, 20 May 2020 03:43:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFdd-0001NJ-Jb; Wed, 20 May 2020 03:43:27 +0000
X-UUID: cc7dd3d1cd784e40a521d0dae226d53c-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=I/ipTuLZZN+lNS6Vkk1QJ+iIXyt0Ii1/ZmMGHZu52U8=; 
 b=Ji6Jjpqh/AjiYHMXsVNFqviXJSSgFlfeSUUm5ekJCvFfISHyVLglPZd3+Ot3Fx0pqttTIWpDXUNCssVJyEOPkxCI0CxQHczDL6rwM+4Cx606OKvhnXNQbLsoWt9V+waQyQqW69MI801hPaSJEEsZIa2RPo0iFTOVsrHvht36lbA=;
X-UUID: cc7dd3d1cd784e40a521d0dae226d53c-20200519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 196550989; Tue, 19 May 2020 19:43:21 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:18 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:16 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:10 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 00/12] Add cpufreq and cci devfreq for mt8183, and SVS support
Date: Wed, 20 May 2020 11:42:55 +0800
Message-ID: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_204325_651518_7152B8D8 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.

For SVS support, need OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.

Change since v5:
	- Changing dt-binding format to yaml.
	- Extending current devfreq passive_governor instead of create a new one.
	- Resend depending patches of Sravana Kannan base on kernel-5.7


Andrew-sh.Cheng (6):
  cpufreq: mediatek: add clock and regulator enable for intermediate
    clock
  dt-bindings: devfreq: add compatible for mt8183 cci devfreq
  devfreq: add mediatek cci devfreq
  opp: Modify opp API, dev_pm_opp_get_freq(), find freq in opp, even it
    is disabled
  cpufreq: mediatek: add opp notification for SVS support
  devfreq: mediatek: cci devfreq register opp notification for SVS
    support

Saravana Kannan (6):
  OPP: Allow required-opps even if the device doesn't have power-domains
  OPP: Add function to look up required OPP's for a given OPP
  OPP: Improve required-opps linking
  PM / devfreq: Cache OPP table reference in devfreq
  PM / devfreq: Add required OPPs support to passive governor
  PM / devfreq: Add cpu based scaling support to passive_governor

 .../devicetree/bindings/devfreq/mt8183-cci.yaml    |  51 ++++
 drivers/cpufreq/mediatek-cpufreq.c                 | 122 ++++++++-
 drivers/devfreq/Kconfig                            |  12 +
 drivers/devfreq/Makefile                           |   1 +
 drivers/devfreq/devfreq.c                          |   6 +
 drivers/devfreq/governor_passive.c                 | 298 +++++++++++++++++++--
 drivers/devfreq/mt8183-cci-devfreq.c               | 233 ++++++++++++++++
 drivers/opp/core.c                                 |  85 +++++-
 drivers/opp/of.c                                   | 108 ++++----
 drivers/opp/opp.h                                  |   5 +
 include/linux/devfreq.h                            |  42 ++-
 include/linux/pm_opp.h                             |  11 +
 12 files changed, 874 insertions(+), 100 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci.yaml
 create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c

-- 
2.12.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
