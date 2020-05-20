Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77B61DAA0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 07:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljRrCYsYhx7t6nyy4ATVv9Qb0PTPvazd9vPcMvjSas4=; b=JfZ4WqL2m9QaST
	jglcKpDnC751vp3J6SDtc+UZp3umYQzLCeqAEWI25BnwgO0Ap+J9v25LYpFV3AgTXUZxc316nzDQN
	8/mzeHGA6IGJyENhc619EYo28Lh2vSw38evRWeE933Fcwpf76bP5hFr5oVVpFt/3z/aNEeKhkbFpr
	i1yla0kT5axtrG1c1Yy5P8p6VHSU3RRa1jYuchRo0zDjpcSDbyjpj2DDIMOIdJvtJRovuYdpKGq1Q
	gXiD/2MDUe7SEKYOW4lC9XlSoFyehCfNH3coq9tc5H14sYWdL4blV5j0uDqdcWe9eevZ4C4719Yjq
	6TfUCMXgyQUXrYGGZBNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHWV-0002Vh-CK; Wed, 20 May 2020 05:44:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHWK-0002UK-2C; Wed, 20 May 2020 05:44:01 +0000
X-UUID: a1c940d97fcb40c99b3a5e0bd1099e42-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=nYc+pSkNQ//KAuNKNyF6D7XuOmlKnUTkhWcw97R/H5Y=; 
 b=EDvzEM8xOVwS4geJ0qGiDxjs2wNpallE0+VU9YqJp1YoPVdWhH5NxgHVzGlVUEAkSvB+xxjuHntkvk3iG/b0MWnfzU0IGHB5fkTqpxUhooYY8DsrvLzK/7EWZ5+AsoN6PU6IhCmpgmQNVqWkzPonUvyKV8L0ZJePHfqImYLun4w=;
X-UUID: a1c940d97fcb40c99b3a5e0bd1099e42-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1447562701; Tue, 19 May 2020 21:43:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 22:36:56 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 13:36:54 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 13:36:54 +0800
Message-ID: <1589953015.8243.2.camel@mtksdaap41>
Subject: Re: [PATCH 00/12] Add cpufreq and cci devfreq for mt8183, and SVS
 support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Date: Wed, 20 May 2020 13:36:55 +0800
In-Reply-To: <d08c0dc0-5573-6ba0-1d9f-18857c7f6fb6@samsung.com>
References: <CGME20200520034324epcas1p3affbd24bd1f3fe40d51baade07c1abba@epcas1p3.samsung.com>
 <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
 <d08c0dc0-5573-6ba0-1d9f-18857c7f6fb6@samsung.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_224400_110254_09CE73B2 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Mark Brown <broonie@kernel.org>, "Rafael J
 . Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-20 at 13:10 +0900, Chanwoo Choi wrote:
> Hi Andrew,
> 
> Could you explain the base commit of these patches?
> When I tried to apply them to v5.7-rc1 for testing,
> the merge conflict occurs.
> 
> Thanks,
> Chanwoo Choi

Hi Chanwoo Choi,

My base commit is
commit 8f3d9f354286745c751374f5f1fcafee6b3f3136
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sun Apr 12 12:35:55 2020 -0700

    Linux 5.7-rc1

Could you show me the conflict error?

BR,
Andrew-sh.Cheng
> 
> On 5/20/20 12:42 PM, Andrew-sh.Cheng wrote:
> > MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
> > So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.
> > 
> > For SVS support, need OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.
> > 
> > Change since v5:
> > 	- Changing dt-binding format to yaml.
> > 	- Extending current devfreq passive_governor instead of create a new one.
> > 	- Resend depending patches of Sravana Kannan base on kernel-5.7
> > 
> > 
> > Andrew-sh.Cheng (6):
> >   cpufreq: mediatek: add clock and regulator enable for intermediate
> >     clock
> >   dt-bindings: devfreq: add compatible for mt8183 cci devfreq
> >   devfreq: add mediatek cci devfreq
> >   opp: Modify opp API, dev_pm_opp_get_freq(), find freq in opp, even it
> >     is disabled
> >   cpufreq: mediatek: add opp notification for SVS support
> >   devfreq: mediatek: cci devfreq register opp notification for SVS
> >     support
> > 
> > Saravana Kannan (6):
> >   OPP: Allow required-opps even if the device doesn't have power-domains
> >   OPP: Add function to look up required OPP's for a given OPP
> >   OPP: Improve required-opps linking
> >   PM / devfreq: Cache OPP table reference in devfreq
> >   PM / devfreq: Add required OPPs support to passive governor
> >   PM / devfreq: Add cpu based scaling support to passive_governor
> > 
> >  .../devicetree/bindings/devfreq/mt8183-cci.yaml    |  51 ++++
> >  drivers/cpufreq/mediatek-cpufreq.c                 | 122 ++++++++-
> >  drivers/devfreq/Kconfig                            |  12 +
> >  drivers/devfreq/Makefile                           |   1 +
> >  drivers/devfreq/devfreq.c                          |   6 +
> >  drivers/devfreq/governor_passive.c                 | 298 +++++++++++++++++++--
> >  drivers/devfreq/mt8183-cci-devfreq.c               | 233 ++++++++++++++++
> >  drivers/opp/core.c                                 |  85 +++++-
> >  drivers/opp/of.c                                   | 108 ++++----
> >  drivers/opp/opp.h                                  |   5 +
> >  include/linux/devfreq.h                            |  42 ++-
> >  include/linux/pm_opp.h                             |  11 +
> >  12 files changed, 874 insertions(+), 100 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci.yaml
> >  create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
