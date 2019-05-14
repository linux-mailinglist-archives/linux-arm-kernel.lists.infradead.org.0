Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A69D1CB04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 16:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9ZhxBDmWoNMUdZ2MWxLVeRJ4n6Nb7ynjpqvQmhJudQ=; b=oFe8Ig/6awuuHD
	fMJNGDo4rMdu7A5KkMeN7ev06RuGmvdbGkilcjhVv2zodVgWwS3U50FNd4LLxsEuhwerH0w9i7y0L
	m8f+4iY3Vv2v9gR/EaAjj3bUYCKKMAdNGWtmQSE5oCqjyTqph1ktPrVMx3dXvzm69ElrARF5Yve3d
	VYkcw0IoMzBsfD0x320LEy1TAuQjG8o/AGjGHzitWYCiANCxaq2eQHyCEm/hSis4hJJP1YjOA3eRn
	LHsuXENLPJ5DLDGrlzgwDIVaH5zJBfW0o/qYa5KseVleSON/qK+8qtriuNZBm+sBbgc6+WVmxkPqj
	9Jcs3L8mkyAs0diZc5gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYqS-0008FA-Bi; Tue, 14 May 2019 14:55:56 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYqK-0008Dk-FZ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 14:55:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9D80374;
 Tue, 14 May 2019 07:55:45 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 823343F703;
 Tue, 14 May 2019 07:55:43 -0700 (PDT)
Date: Tue, 14 May 2019 15:55:41 +0100
From: Will Deacon <will.deacon@arm.com>
To: Zhi Li <lznuaa@gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190514145541.GC2825@fuggles.cambridge.arm.com>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
 <CAHQ1cqGszjTZ+kSTeqHjoZ-QPKd6f1Afn+00-haJy_dJY4X4+g@mail.gmail.com>
 <CAHrpEqQKyH0+vXJfWf0fuUDvQnSCKjrBmU8megsUWX1mHdbfrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHrpEqQKyH0+vXJfWf0fuUDvQnSCKjrBmU8megsUWX1mHdbfrw@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_075548_532215_14FCACF3 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 08:53:18AM -0500, Zhi Li wrote:
> On Tue, May 7, 2019 at 2:30 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> >
> > On Wed, May 1, 2019 at 11:43 AM Frank Li <frank.li@nxp.com> wrote:
> > >
> > > Add ddr performance monitor support for iMX8QXP
> > >
> > > There are 4 counters for ddr perfomance events.
> > > counter 0 is dedicated for cycles.
> > > you choose any up to 3 no cycles events.
> > >
> > > for example:
> > >
> > > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
> > >
> > > Support below events.
> > >
> > >   imx8_ddr0/activate/                                     [Kernel PMU event]
> > >   imx8_ddr0/axid-read/                                    [Kernel PMU event]
> > >   imx8_ddr0/axid-write/                                   [Kernel PMU event]
> > >   imx8_ddr0/cycles/                                       [Kernel PMU event]
> > >   imx8_ddr0/hp-read-credit-cnt/                           [Kernel PMU event]
> > >   imx8_ddr0/hp-read/                                      [Kernel PMU event]
> > >   imx8_ddr0/hp-req-nodcredit/                             [Kernel PMU event]
> > >   imx8_ddr0/hp-xact-credit/                               [Kernel PMU event]
> > >   imx8_ddr0/load-mode/                                    [Kernel PMU event]
> > >   imx8_ddr0/lp-read-credit-cnt/                           [Kernel PMU event]
> > >   imx8_ddr0/lp-req-nocredit/                              [Kernel PMU event]
> > >   imx8_ddr0/lp-xact-credit/                               [Kernel PMU event]
> > >   imx8_ddr0/mwr/                                          [Kernel PMU event]
> > >   imx8_ddr0/precharge/                                    [Kernel PMU event]
> > >   imx8_ddr0/raw-hazard/                                   [Kernel PMU event]
> > >   imx8_ddr0/read-access/                                  [Kernel PMU event]
> > >   imx8_ddr0/read-activate/                                [Kernel PMU event]
> > >   imx8_ddr0/read-command/                                 [Kernel PMU event]
> > >   imx8_ddr0/read-cycles/                                  [Kernel PMU event]
> > >   imx8_ddr0/read-modify-write-command/                    [Kernel PMU event]
> > >   imx8_ddr0/read-queue-depth/                             [Kernel PMU event]
> > >   imx8_ddr0/read-write-transition/                        [Kernel PMU event]
> > >   imx8_ddr0/read/                                         [Kernel PMU event]
> > >   imx8_ddr0/refresh/                                      [Kernel PMU event]
> > >   imx8_ddr0/selfresh/                                     [Kernel PMU event]
> > >   imx8_ddr0/wr-xact-credit/                               [Kernel PMU event]
> > >   imx8_ddr0/write-access/                                 [Kernel PMU event]
> > >   imx8_ddr0/write-command/                                [Kernel PMU event]
> > >   imx8_ddr0/write-credit-cnt/                             [Kernel PMU event]
> > >   imx8_ddr0/write-cycles/                                 [Kernel PMU event]
> > >   imx8_ddr0/write-queue-depth/                            [Kernel PMU event]
> > >   imx8_ddr0/write/
> > >
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> >
> > Don't really have anything to suggest, that I already haven't. LGTM, so:
> >
> > Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> 
> 
> Will Deacon:
>             Is it okay to pick up these patches?  Andrey always acked.

It's the merge window at the moment, so it's too late for 5.2. I'll have a
look at these in a couple of weeks as candidates for 5.3.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
