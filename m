Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E428206D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 14:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdNpGAsmupltlujvbm8T7ExvawrZw9bXs4qy9+0j8XQ=; b=GK4AZe/IPd7A2S
	vINX1ku0bSxaH7BUbfcOQ/YRdvsucdUY+RxSPrNwwwWeoddjJ3NRDuTzccZeSlKzRIAiSpZraFS2g
	EaCjL2si7HUEMSpNjvwGplPffSlojCjkFd3gSvP30eBKfV74fL925AhK76R/kQaen6hQDmxYGsRzx
	aH04hxMGxYEvxJMKuNH2tYE/VubMBBJxHmTkm4j98VwGcACh7reC60gTl6JRVppw2uSsU2VIc3b0L
	S+3EJJcXl018CQyCfCH2u1pgciLwcBSk3cJi4LFHukzhwymHGWpL8qPYdeW4WQCWhhllngtRBykTB
	BPxUsvoBfb7DScL/J5XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFQX-0002D4-Gv; Thu, 16 May 2019 12:24:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFQO-0002CA-HB; Thu, 16 May 2019 12:23:54 +0000
X-UUID: 423ae854a80a42fca7a16f5bac198baf-20190516
X-UUID: 423ae854a80a42fca7a16f5bac198baf-20190516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 635194405; Thu, 16 May 2019 04:23:49 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 05:23:47 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 20:23:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 16 May 2019 20:23:46 +0800
Message-ID: <1558009426.29944.1.camel@mtksdaap41>
Subject: Re: [PATCH 0/8] Add cpufreq and cci devfreq for mt8183, and SVS
 support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Thu, 16 May 2019 20:23:46 +0800
In-Reply-To: <20190516092328.4n7kuqw7bxokhdjp@vireshk-i7>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190516092328.4n7kuqw7bxokhdjp@vireshk-i7>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_052352_589078_C104C404 
X-CRM114-Status: GOOD (  17.50  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Matthias
 Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-05-16 at 14:53 +0530, Viresh Kumar wrote:
> On 16-05-19, 17:08, Andrew-sh.Cheng wrote:
> > From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> > 
> > MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
> > So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.
> > 
> > For SVS support, add OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.
> 
> No version information here or what has changed. That doesn't help.
> 
> I believe this is V3.
> 
> Don't resend it but please mention the changes in reply now. Thanks.
Yes, this is patch v3

Change since v2:
- Separate cpufreq modification into 3 patches.
- Modify dt-binding for more HW information.
- Refine cci devfreq coding style.
- patch 6 ~ patch 8 are for SVS support

> 
> > Andrew-sh.Cheng (7):
> >   cpufreq: mediatek: change to regulator_get_optional
> >   cpufreq: mediatek: add clock enable for intermediate clock
> >   cpufreq: mediatek: Add support for mt8183
> >   dt-bindings: devfreq: add compatible for mt8183 cci devfreq
> >   devfreq: add mediatek cci devfreq
> >   cpufreq: mediatek: add opp notification for SVS support
> >   devfreq: cci devfreq register opp notification for SVS support
> > 
> > Stephen Boyd (1):
> >   PM / OPP: Support adjusting OPP voltages at runtime
> > 
> >  .../bindings/devfreq/mt8183-cci-devfreq.txt        |  20 ++
> >  drivers/cpufreq/cpufreq-dt-platdev.c               |   1 +
> >  drivers/cpufreq/mediatek-cpufreq.c                 |  88 +++++-
> >  drivers/devfreq/Kconfig                            |  10 +
> >  drivers/devfreq/Makefile                           |   1 +
> >  drivers/devfreq/mt8183-cci-devfreq.c               | 310 +++++++++++++++++++++
> >  drivers/opp/core.c                                 |  78 ++++++
> >  include/linux/pm_opp.h                             |  11 +
> >  8 files changed, 517 insertions(+), 2 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
> >  create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c
> > 
> > -- 
> > 2.12.5
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
