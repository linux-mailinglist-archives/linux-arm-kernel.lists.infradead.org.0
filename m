Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DF97CB65
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 20:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9eONKr1G7vJr7PbhE9qnXKFCGmimBnYEsr5RYglxok=; b=PWysR5YO8S0PL7
	alPwLcUtz+biqAXnrDl/n5hfS20omRLa/R1aHPawiszWOuE40JtDTrzZRs8aFXktEb2Irfsu+5sQ6
	DrmMvMf8lPsjEzBaAnNEzalEcenNMKk2vH0IO/EYqy1vUDTvQnkPbifO0n5HibzvpN0EEmEd5fTX3
	39xTDUMDx1d5Z3zmVqfMCftaAawRBHZ4gpqF3tFdOWtO/l3p5hQBAUJlJDbyMaThwvYuLq4GBfjvT
	yX5MQc9q1obic/WKWHdCVjkg1wJq1iO/LSrzwH182ETVJSxeSOUF8Ku6REKab9nZBScnAVeX9aTE+
	MGBJhVeBA11VbRzakSIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssv6-0000Lw-E4; Wed, 31 Jul 2019 18:01:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssuy-0000LE-Pw
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 18:01:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 646A9208E4;
 Wed, 31 Jul 2019 18:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564596100;
 bh=4ibDl2O7rKiEN6+IwmT4udq2c+90o6Zhrpsn6oOwUzY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JA1wYq11FISrACVDMAW6/qPHOrr+JcZLopYxZT3k4BE4WwuygEppFyQM/qbvHCQtu
 7v7CwtxNWqDShYza9cZMSu5IDPLtsUpBF0i2XgHnLXj+0bTvlcQf+U4n5bfuNiXHDd
 hGVn7vgHzZqfpT8+XYOlENWcBUSFMfLctGz5uXJU=
Date: Wed, 31 Jul 2019 19:01:36 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH] perf: imx8_ddr_perf: calculate ddr bandwidth via virtual
 event read-bytes/write-bytes
Message-ID: <20190731180135.azuxbppt5wht6itn@willie-the-truck>
References: <20190709054417.11734-1-qiangqing.zhang@nxp.com>
 <20190709155606.x45nmew253giwvgf@willie-the-truck>
 <DB7PR04MB4618081D853C6CF9015D86EFE6F20@DB7PR04MB4618.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4618081D853C6CF9015D86EFE6F20@DB7PR04MB4618.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_110140_859074_6707E7FA 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 07:18:14AM +0000, Joakim Zhang wrote:
> > On Tue, Jul 09, 2019 at 05:46:44AM +0000, Joakim Zhang wrote:
> > > We can calculate ddr bandwidth via virtual event
> > > read-bytes/write-bytes based on ddr burst width, which actually share
> > > event read-cycles/write-cycles. Burst width is 32 bit on i.MX8 board.
> > >
> > > The ddr interface will generate 2 up edges and 2 down edges in an
> > > internal clock cycle, so it can pass 4 beats of data. 4 bytes of each
> > > beat if ddr burst width is 32 bit.
> > >
> > > for example:
> > > perf stat -a -e imx8_ddr0/read-bytes/,imx8_ddr0/write-bytes/ ls
> > 
> > I don't think you should be doing this in the kernel. Can you look at
> > implementing it in perf tool instead by adding a .json file for your PMU and
> > expressing this compound event using "MetricExpr"?
> 
> I try to implement it in perf tool, but it shows nothing with perf list
> metricgroup.
> 
> A. Add JSON metric.
> diff --git a/tools/perf/pmu-events/arch/arm64/imx/imx8/ddr-metric.json b/tools/perf/pmu-events/arch/arm64/imx/imx8/ddr-metric.json
> new file mode 100644
> index 000000000000..3588dc5a4f46
> --- /dev/null
> +++ b/tools/perf/pmu-events/arch/arm64/imx/imx8/ddr-metric.json
> @@ -0,0 +1,20 @@
> +[
> +    {
> +       "PublicDescription": "Calculate DDR read bandwidth based on read-cycles event. DDR interface generates 2 up and 2 down edges in an internal clock cycle, can pass 4 beats of data. 4 bytes of each beat if DDR burst width is 32 bit.",
> +       "MetricName": "imx8_ddr0/read-bytes/",
> +       "MetricGroup": "bandwidth",
> +       "MetricExpr": "imx8_ddr0/read-cycles/ * 4 * 4",

This is probably being parsed as:

	imx8_ddr0 / read - cycles / * 4 * 4

I think you may need to use something like:

	imx8_ddr0@read\\-cycles@ * 4 * 4

although it's a bit weird to hardcode the instance number '0' in there.
It would be better for perf to add that itself, imo.

Anyway, I haven't used this before, so you need to read the code and figure
out how it works. Some support does appear to be there, so that's what
you're going to have to work with.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
