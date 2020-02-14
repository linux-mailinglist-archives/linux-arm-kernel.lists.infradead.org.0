Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC72C15D27D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kt9uNjmVbfhXd2xZ4YmOxL+yhD3bXBV+bHHeVwNWOo=; b=BTRgvLwspH1UDv
	qdE2oRapu8H4HqKLam4eQfZtqVIiwpBuYyuOEYNNJBvTpTO/njrpWKas22D8giLQcEVMDMeKzYaV3
	8IxtzxO3/Nm6XSfucLyErn6qYz2Y0BL8uoUHUhDXM2BKCX1eXqC39Mtkix/Nab4I/NsLhfp6ossDU
	fe38oY6PuzHvW5jh9TL1fsP7wghof6UuqlCGz5I5/slwDfd2r5H3A12EsIDycTQY9PFLsOwUu68IC
	HMdJHgRxsTnN51CmO3r5i1mVUy5DMfrzYE9/BAkybOdkQRJJPog0BtAnd2ln/QFVpMCmWP+76g58x
	5DJ9rmgGx5MevZxY9UFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2V0M-00009t-5V; Fri, 14 Feb 2020 07:03:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2V0D-00008z-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:03:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j2Uzz-0000Rz-2W; Fri, 14 Feb 2020 08:02:51 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j2Uzv-000751-2u; Fri, 14 Feb 2020 08:02:47 +0100
Date: Fri, 14 Feb 2020 08:02:47 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
Message-ID: <20200214070247.wrh6yaccyqiwlezh@pengutronix.de>
References: <1581576189-20490-1-git-send-email-Anson.Huang@nxp.com>
 <20200213072710.4snwbo3i7vfbroqy@pengutronix.de>
 <DB3PR0402MB39163A56BF6AA37E3C691964F51A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200213095119.f6obrdqb6ql76qqy@pengutronix.de>
 <DB3PR0402MB391620CB6FA1C3E86AD5C163F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB391620CB6FA1C3E86AD5C163F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_230305_492362_1406DC06 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Anson,

On Fri, Feb 14, 2020 at 05:11:11AM +0000, Anson Huang wrote:
> >  - rename existing imx6sx symbols to contain DTE or DCE
> >    (introducing defines that map the old name to the new)
> =

> Is the introducing defines that map to old name to the new mainly for
> NOT breaking bisect? As pinfunc.h is changed in a separate patch other th=
an dts files. =


It's also for not breaking out-of-tree dts files. I'd put them at the
bottom of the file with a comment that these are not supposed to be used
any more and remove them after a bit of bitrotting there.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
