Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB86E9F30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:36:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsyKaHaGtigZSh7jSOt28xuvRBA6zMXd86DGzJPn3VA=; b=fG9Juo3pl9oSkp
	GsEpBzBh4PwoOHD80yg3//POScboiuNdIoyPn6vXqH5O00btTC/BcOZ46q30lwJL5i4lfFysmBxxG
	LeljT1p28IW8el6v+XHxCtUTibq5ItlAvVznMxnuaonBMIpW2yzpixzl1C4aBYxoIq56y/flI/Vko
	YbGpK8k97hR9B/1l08ziL7OylCPe8KWojMoLL5Zfjab6WRExch1x3pV/rUnbDGV3hgB37qJrl/GJ3
	PAscBJqIASs+Qrwr8Jy0rdrbOpZaIXWV8pq++uf/M9u8a94A1wC5xJVXXvYJd0Tn/Twx59pFh1E//
	0ZR68K6QOroplfSAPvaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPq1n-0004iC-LP; Wed, 30 Oct 2019 15:36:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPq1e-0004hd-8t
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:36:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34C27205C9;
 Wed, 30 Oct 2019 15:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572449805;
 bh=OnqREm4tm82WExRUaETf0Uzd6mEGoQvkv5iu9iS7co4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VB1S7pNVWBSSW8mCmMe8FwnwYoTrxdEHymmmcmHRm+2LPgn2k76eFGsGMO041McFL
 6pK2T/FwFb0fPdZ+om4uTkcgozLEBDy+L/uL450mvU1+Dt+cv6TUG2RiiZ/5zwCsZC
 rB32RGh1kU8fOHWYyLFMpNUCeo9MVrZejrKO7nOE=
Date: Wed, 30 Oct 2019 15:36:40 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Message-ID: <20191030153640.GB19096@willie-the-truck>
References: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
 <20191028145436.GA5576@willie-the-truck>
 <DB7PR04MB4618B90121FE884B8864E7AFE6610@DB7PR04MB4618.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4618B90121FE884B8864E7AFE6610@DB7PR04MB4618.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_083646_329924_74677139 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joakim,

Please can you try to configure your email client correctly, so that you
don't have to prefix your replies with '[Joakim]'? I use mutt, which works
pretty well, but you can look at Documentation/process/email-clients.rst
for hints about using other clients.

On Tue, Oct 29, 2019 at 07:02:28AM +0000, Joakim Zhang wrote:
> > From: Will Deacon <will@kernel.org>
> > On Fri, Sep 06, 2019 at 08:26:55AM +0000, Joakim Zhang wrote:
> > > diff --git a/drivers/perf/fsl_imx8_ddr_perf.c
> > > b/drivers/perf/fsl_imx8_ddr_perf.c
> > > index ce7345745b42..5f70dbfa9607 100644
> > > --- a/drivers/perf/fsl_imx8_ddr_perf.c
> > > +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> > > @@ -45,7 +45,8 @@
> > >  static DEFINE_IDA(ddr_ida);
> > >
> > >  /* DDR Perf hardware feature */
> > > -#define DDR_CAP_AXI_ID_FILTER          0x1     /* support AXI ID
> > filter */
> > > +#define DDR_CAP_AXI_ID_FILTER			BIT(1)     /* support AXI ID
> > filter */
> >
> > Is this a deliberate change from the previous code and, if so, why?
> 
> [Joakim] DDR PMU integrated in various SoCs may have different
> features(extend more features), use BIT(1)/BIT(2)/BIT(3)... instead of
> 0x1/0x2/0x4..., I think it is more easier.  This deliberate change from
> previous code has no functional effect.

My point was that I don't think BIT(1) == 0x1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
