Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033F41D15E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 23:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mplFyqk4rQgXmS+8HKUEnNNVSZ/T+tF9G1Era2iek4o=; b=Mc9os+q4nwCBbV
	0//j6NkTIyIyZlGQESyHaoV6mFUvprOaY1GGnZ0XljEM06dtue8JUOHe58bnnEtdEQ21UAoewhFIt
	z2clhbAjea8XYV9cFMcz1iTFZEroA3RZZBTthlv1X+iApILedYF81udxn5iq4NdPwH3kIXcJUm7YI
	GzdzNU1NBPMWwEnCYGJqZFIPxqFQpyi13zdQZXz3vH0s8v+Cq6asxpohQLcnBalxfvaD1n1gRvGoR
	LGalGgbJ7kCvjDjmQsj+e466BFujxqJR+wFm9PtRef/CSVhdk0+atpYrvx3IAxFxPLv2TzWR+eZJK
	ZGH4Bd56kTNLlU1sXIhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQf5b-0007nf-8A; Tue, 14 May 2019 21:35:59 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQf5N-0007dd-1U
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 21:35:46 +0000
Received: from 79.184.255.148.ipv4.supernova.orange.pl (79.184.255.148) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id ed89e576564268c9; Tue, 14 May 2019 23:35:39 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v5 0/2] Allow imx6qp PU domain off in suspend
Date: Tue, 14 May 2019 23:35:38 +0200
Message-ID: <2135871.ArgiegidzK@kreacher>
In-Reply-To: <cover.1556636234.git.leonard.crestez@nxp.com>
References: <cover.1556636234.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_143545_239320_EE685E4B 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday, April 30, 2019 5:06:10 PM CEST Leonard Crestez wrote:
> On imx6qp power gating on the PU domain is disabled because of errata
> ERR009619. However power gating during suspend/resume can still be
> performed.
> 
> Changes since V4:
>  * Rename GENPD_FLAG_NO_RUNTIME_OFF to GENPD_FLAG_RPM_ALWAYS_ON
> Link to v4: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=110829
> 
> Implemented with a new core flag because otherwise distinguishing
> between "runtime off" and "suspend off" is very complicated. Link to
> previous much older attempts:
> 
> v3: https://lkml.org/lkml/2018/7/6/698
> v2: https://lkml.org/lkml/2018/7/5/564
> v1: https://lkml.org/lkml/2018/7/2/357
> 
> Leonard Crestez (2):
>   PM / Domains: Add GENPD_FLAG_RPM_ALWAYS_ON flag
>   soc: imx: gpc: Use GENPD_FLAG_RPM_ALWAYS_ON for ERR009619
> 
>  drivers/base/power/domain.c |  8 ++++++--
>  drivers/soc/imx/gpc.c       | 13 +++++++++++--
>  include/linux/pm_domain.h   |  4 ++++
>  3 files changed, 21 insertions(+), 4 deletions(-)
> 
> -- 

Both patches applied, thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
