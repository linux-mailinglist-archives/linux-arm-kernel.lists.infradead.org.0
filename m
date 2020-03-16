Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC29186859
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:58:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBOtCzP6NjOejr95aTn6nTkj89UpXPpPjax/FXRHU9w=; b=h2QcpYZj6Gyrli
	/rUH1iMIE3CG2YaFfJdl5fanG4IUlijTxL4KIV+5vLa+14HyRbbKsRz/lf3+oCsYKsc1NTfrVH3TP
	G3VGHvVfs/Seph5WRoo7xnwjs39WBoAqFXEWZkh9m8Nbx/UXXI3HRotqptlGIjzq6AB4nAC4f07nd
	Gff0BSU1OcC9cfbub5Pqb3zrTR5KDOsDUvadpK0J6xuXJ0Vs4MNWbdjEIQWAejTxve0DvA7SHGcFo
	Jk9SzV0R1lYPLtSBTBlolS5uyXmwNOUsIOPBv/dP93fOXe7tsXycopK/LBGHcE1317by8XBlH5+1V
	AoQ3tKo+vbKCnc7Xyo2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmW7-0000Nw-QZ; Mon, 16 Mar 2020 09:58:39 +0000
Received: from mail.sensor-technik.de ([80.150.181.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmVz-0000NW-OR
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:58:33 +0000
IronPort-SDR: vo1SOg4VDT6SG7QKwa8urOI01MBAWRgseebrM5Xd36RIeG7e03WMrVkYVZi3pk8KVsyASF9Wlx
 3uBo8aU+gTxzLI1qmSNozaUFw+AVgJFpoBWaaQuj9MVj61LfSUta9kRfjz54cwtMBQR0G3niVC
 Jmu3iILIl0dNLNPcdfeUOPOIQhb+959G4EKDf6lp1gX+JPwyVb6wRhk+k4pgdH9py6hUm8jnr/
 wrtMQJy1bCY5Fd/TTZugIqmOAEpzhfLGHdbZF6yV3w9f2bmixYvyqBn3+S+xNuzgCDroVtTJQs
 jgc=
Received: from stwz1.stww2k.local (HELO stwz1.sensor-technik.de)
 ([172.25.209.3])
 by mail.sensor-technik.de with ESMTP; 16 Mar 2020 10:58:29 +0100
Received: from stwz1.stww2k.local (localhost [127.0.0.1])
 by stwz1.sensor-technik.de (Postfix) with ESMTP id 52155B5ABC;
 Mon, 16 Mar 2020 10:58:29 +0100 (CET)
Received: from mail.sensor-technik.de (stwex2.stww2k.local [172.25.2.104])
 by stwz1.sensor-technik.de (Postfix) with ESMTP id 38427B5AAC;
 Mon, 16 Mar 2020 10:58:29 +0100 (CET)
Received: from STWEX1.stww2k.local (172.25.2.103) by stwex2.stww2k.local
 (172.25.2.107) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 16 Mar
 2020 10:58:28 +0100
Received: from STWEX1.stww2k.local ([172.25.5.24]) by STWEX1.stww2k.local
 ([172.25.5.24]) with mapi id 15.00.1497.000; Mon, 16 Mar 2020 10:58:28 +0100
From: Waibel Georg <Georg.Waibel@wiedemann-group.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Thread-Topic: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Thread-Index: AQHV+zKIoQ99JD5nw0OW4Drv9HPHOqhK+ZfHgAACFyg=
Date: Mon, 16 Mar 2020 09:58:28 +0000
Message-ID: <1584352708854.43164@wiedemann-group.com>
References: <1583928220724.65021@wiedemann-group.com>,
 <20200316013040.GP17221@dragon>, <1584352502593.54297@wiedemann-group.com>
In-Reply-To: <1584352502593.54297@wiedemann-group.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.30.230.19]
x-c2processedorg: 71f8fb5e-29e9-40bb-a2d4-613e155b19df
MIME-Version: 1.0
X-TBoneOriginalFrom: Waibel Georg <Georg.Waibel@wiedemann-group.com>
X-TBoneOriginalTo: Shawn Guo <shawnguo@kernel.org>
X-TBoneOriginalCC: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team
 <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Michel Alex
 <Alex.Michel@wiedemann-group.com>, Appelt Andreas
 <Andreas.Appelt@wiedemann-group.com>
X-TBoneDomainSigned: false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_025832_111736_597EB266 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.150.181.156 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Michel Alex <Alex.Michel@wiedemann-group.com>,
 Appelt Andreas <Andreas.Appelt@wiedemann-group.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Mar 2020 at 02:30, Shawn Guo <shawnguo@kernel.org> wrote:
> On Wed, Mar 11, 2020 at 12:03:40PM +0000, Waibel Georg wrote:
> > Setting a CAN bitrate of 800kbit/s fails with a bitrate error of 1.3% if the
> > flexcan module is clocked at 30MHz (CAN_CLK_ROOT). This patch changes the clock
> > frequency from 30MHz to 40MHz which allows to support all bitrates recommended
>
> But code changes IMX6UL_CLK_PLL3_60M to IMX6UL_CLK_PLL3_80M?  Or
> IMX6UL_CLK_CAN_SEL is different from CAN_CLK_ROOT in the context?

Correct. The patch sets CAN_CLK_SEL to 80MHZ. There is a post-divider
CAN_CLK_PODF which is set  to /2 by default which makes the 40MHz
CAN_CLK_ROOT.

Regards
Georg



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
