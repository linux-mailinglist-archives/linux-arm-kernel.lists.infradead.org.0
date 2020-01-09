Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3148413553B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmpqolT0tI3ZmejSZYuckHWMA/Qpq3swYhiS/Xxc8OM=; b=WwRp1rjXrB3DgM
	1C/tk9wkCOe9doD/RJ1QgG8bKJeqwCzHcBG2k8ocZU9dDPdhiqfR04doJakfAn/feBQoU9w+BoFca
	EjihbCU5C2VEMhcXZokGT8B5SuPUCc2sQvvaT34GSWP2eWNowML0G4fw4YoTbYnvW7tD4AGte/epn
	cIuzulVIIbsz1On3RiHqAMW5E692uDREk1JCSDBtWMICPbOUrvOB/KK4CiW1b5ANDOTa4QkYz67QC
	5Tu1+Mu77drMdeIPrRXWPHTer/IQIQv24g1wgIAwYc6vHS0EzP540Gs67syEzm76KexbFBLeMRxMR
	tuaHx7oJDe5NFcl9h04Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTpd-00053D-UU; Thu, 09 Jan 2020 09:10:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTpJ-0004mb-M8
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:10:03 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEAF820673;
 Thu,  9 Jan 2020 09:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578561001;
 bh=haZEqFJpGZtGMsjVB13sXDjxCq2aK0w6Eef5tnBpYpQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2v03/I4mCgexgzf5xwrck+WPVo8KiwMI2YiJmYh28wkaiogxsAYRtgA5mrhq46/0i
 dxgxlyrmYDXAwKeEbmGPIDf5i8YdPOD60zvADN+yhhszuD1dGr0YT6ndAAkbrlq3HB
 xUk/r87D8k6nhOtUgwmpDAQrIXlygmqjLN53Ro/s=
Date: Thu, 9 Jan 2020 17:09:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Message-ID: <20200109090950.GJ4456@T480>
References: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
 <20200109080600.GH4456@T480>
 <DB3PR0402MB39168406714A06869C33D037F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39168406714A06869C33D037F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_011001_795547_74A5D56B 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -2.9 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andreas@kemnade.info" <andreas@kemnade.info>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 08:25:03AM +0000, Anson Huang wrote:
> Hi, Shawn
> 
> > Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect
> > power supply assignment
> > 
> > On Mon, Dec 30, 2019 at 09:41:07AM +0800, Anson Huang wrote:
> > > The vdd3p0's input should be from external USB VBUS directly, NOT
> > 
> > Shouldn't USB VBUS usually be 5V?  It doesn't seem to match 3.0V which is
> > suggested by vdd3p0 name.
> > 
> > > PMIC's sw2, so remove the power supply assignment for vdd3p0.
> > >
> > > Fixes: 93385546ba36 ("ARM: dts: imx6qdl-sabresd: Assign corresponding
> > > power supply for LDOs")
> > 
> > Is it only a description correcting or is it fixing a real problem?  I'm trying to
> > understand it is a 5.5-rc material or can be applied for 5.6.
> > 
> 
> It is fixing a real problem about USB LDO voltage, that is why we noticed this issue.

Okay, please describe the problem a little bit in the commit log.  Also
squash the series into one patch, which is easier to be merged into -rc
as a fix.

My question above that USB VUBS is 5V which doesn't match 3.0V
suggested by vdd3p0 name remains unaddressed though.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
