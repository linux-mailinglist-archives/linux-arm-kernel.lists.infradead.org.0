Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A8484974
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNqKksuc58PpytIny+gLnZff8vBCdEiHfmVYhAt2t/w=; b=kUa+WwCScXnfYi
	gvwkgMgU84mjdmc//rZQkUjNmVtSLgSgSqm4QdkISWBnCzw/baFpSV3Y6ld3cyMfTBsyUR8GWHxOG
	av+exE2qAMGpyLDibB1lRXq9hBz4RSnGFPTBOWJhYFPuHVICa86TPPJD7hTcGr4+rHSgtlzuXTvxJ
	LT3PzTzpfZLcB5abPsFUnLIeByF+wl+OwbmfPwbkhZRFaRbOy7MBZDYcU21RhQxzrKPHD5YGHtdlI
	Ec+DmTDrLeT3tf1sGMafnI2rfq3VfihEuwdJNxE1Qmu+UjUWfBAxeRo1VB2rKYDGBWMfULIHYbcDH
	qk1FwO+k04uo9TwWYt9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJBM-0000an-El; Wed, 07 Aug 2019 10:28:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJB9-0000aR-5g
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:28:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E22C428;
 Wed,  7 Aug 2019 03:28:21 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C49293F575;
 Wed,  7 Aug 2019 03:28:19 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:28:17 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v2 1/5] firmware: arm_scmi: Add discovery of SCMI v2.0
 performance fastchannels
Message-ID: <20190807102817.GG16546@e107155-lin>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
 <20190806170208.6787-2-sudeep.holla@arm.com>
 <AM0PR04MB4481BA101A13A0E45DA50E9088D40@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481BA101A13A0E45DA50E9088D40@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_032823_259227_87A387A3 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "aidapala@qti.qualcomm.com" <aidapala@qti.qualcomm.com>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 "wesleys@xilinx.com" <wesleys@xilinx.com>,
 Ionela Voinescu <Ionela.Voinescu@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Quentin Perret <Quentin.Perret@arm.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Felix Burton <fburton@xilinx.com>, Jim Quinlan <james.quinlan@broadcom.com>,
 Chris Redpath <Chris.Redpath@arm.com>,
 "pajay@qti.qualcomm.com" <pajay@qti.qualcomm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 09:23:41AM +0000, Peng Fan wrote:
> > Subject: [PATCH v2 1/5] firmware: arm_scmi: Add discovery of SCMI v2.0
> > performance fastchannels
> >
> > SCMI v2.0 adds support for "FastChannel", a lightweight unidirectional
> > channel that is dedicated to a single SCMI message type for controlling a
> > specific platform resource. They do not use a message header as they are
> > specialized for a single message.
> >
> > Only PERFORMANCE_LIMITS_{SET,GET} and
> > PERFORMANCE_LEVEL_{SET,GET} commands are supported over
> > fastchannels. As they are optional, they need to be discovered by
> > PERFORMANCE_DESCRIBE_FASTCHANNEL command.
> > Further {LIMIT,LEVEL}_SET commands can have optional doorbell support.
> >
> > Add support for discovery of these fastchannels.
> >
> > Cc: Ionela Voinescu <Ionela.Voinescu@arm.com>
> > Cc: Chris Redpath <Chris.Redpath@arm.com>
> > Cc: Quentin Perret <Quentin.Perret@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/perf.c | 153
> > ++++++++++++++++++++++++++++++-
> >  1 file changed, 149 insertions(+), 4 deletions(-)
> >

[...]

>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
>

Thanks for the review.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
