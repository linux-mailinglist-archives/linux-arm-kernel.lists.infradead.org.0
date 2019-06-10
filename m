Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4B03C024
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 01:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJkgxq9sI5Mb81YSF8PQNrq0Mpbe5q1Zrn8BEtgLGXM=; b=ksYcZrXK+8QwS+
	JF6xNdAYpqQthL98YHM+pfJI2HnV3yReQKHHxdVZZFbtP6PeyuVZuyJb2xEBbnLz+TY3Ty0Z2JZzL
	bEE/EnnL9RaMLb8Lk1GNNJYMxlGzQKDOBZ+KvJrX1/6TwHueQVrWJw1p3czbKYnU8fb5V+dwPXLJx
	YDv1mS5VmPoYWrXTjGkXIicnEgvWP1Pf4YOFO9AgxYz2BP67adBWw6tx07GjQAU8KbtYjFnvx4/Co
	RPDV4Uomkkj7AGiHer2aYAUoK15CPNiVyCfWO/F0khxsR0ttrovkaTfxQhT7cr1ayLt34xit9vyZ1
	L3+tsPC6+wy2f4rZB3AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haU29-000145-6a; Mon, 10 Jun 2019 23:49:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haU1t-00013X-Jc
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 23:48:46 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC289206C3;
 Mon, 10 Jun 2019 23:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560210524;
 bh=72gAQp6W+mB42Owmu65aph68iaCWcwF69xAsJoCk818=;
 h=In-Reply-To:References:From:Cc:Subject:To:Date:From;
 b=m9+B2HLDSuwzf1/BR+YsFuY5vV0CzkU7xlGpUQv9GqHMTKKQSCoi64iopdgJidRIt
 1t5ny+47b5u70b/lsK0mQzQ5SpZ/+DA6Sr4DRnz45ROxuLbaQSSNOObaijhg3oGvrr
 wpFEZGnlWxtrMlkLWxbZViM6Ht4yBcSBJhJxu53Q=
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB50558EF0387824D6AAEEB18EEE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <e48d7e3d71166cea20c3c200300e0ffa6d26d085.1559737589.git.leonard.crestez@nxp.com>
 <20190606031526.xknv5qdoqufim6tr@vireshk-i7>
 <VI1PR04MB50558EF0387824D6AAEEB18EEE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC] devfreq: Add generic devfreq-dt driver
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
User-Agent: alot/0.8.1
Date: Mon, 10 Jun 2019 16:48:44 -0700
Message-Id: <20190610234844.CC289206C3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_164845_683807_8ED69CC2 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-06-10 15:13:19)
> On 6/6/2019 6:15 AM, Viresh Kumar wrote:
> > On 05-06-19, 15:31, Leonard Crestez wrote:
> >> +static const struct of_device_id devfreq_dt_of_match[] = {
> >> +    { .compatible = "generic-devfreq", },
> >> +    { /* sentinel */ },
> >> +};
> >> +MODULE_DEVICE_TABLE(of, devfreq_dt_of_match);
> > 
> > DT can't contain nodes for any virtual devices, this will have similar
> > problems to cpufreq-dt. How is this driver going to get probed ? Who
> > will create the device ?
> 
> CPUs are special devices, I'm not sure the same issues apply here.
> 
> If a SOC has multiple buses or frequency domains which can be scaled up 
> and down then those can be treated as "real" devices and probing them 
> from DT seems entirely reasonable. DT could look like this:
> 
> +       noc1 {
> +               compatible = "fsl,imx8mm-noc", "generic-devfreq";
> +               clocks = <&clk IMX8MM_CLK_NOC1>;
> +               operating-points-v2 = <&noc1_opp_table>;
> +       };
> +
> +       noc1_opp_table: noc1-opp-table {
> +               compatible = "operating-points-v2";
> +
> +               opp-150M {
> +                       opp-hz = /bits/ 64 <150000000>;
> +               };
> +               opp-750M {
> +                       opp-hz = /bits/ 64 <750000000>;
> +               };
> +       };
> 
> Instead of a "generic-devfreq" fallback the compatible list of 
> devfreq-dt could contain a large number of unrelated compat strings. 
> This would be vaguely similar to the white/black lists from cpufreq-dt-plat.

This still looks very much "virtual" because the NoC node doesn't have a
'reg' property. Is there anything the driver will do besides change the
frequency of the clk based on the OPP table? If not, then it still looks
like this is a node for the sake of making devfreq happy to probe via
DT.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
