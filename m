Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF191A67F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 16:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ot/fU4Yg05yOlfa5qe9EJOUz5m0OevN7yVXJXvsipXg=; b=P0pTn3D+/EfRMx
	UhBpPRDX8XIzL5vG1jAsax6o7XSepko+8Olyz4OPzc5w9tp43vV6ScgA/de1LPYLo0btUeqD66Inj
	dsMb/u+NQ0nZ87b9gA3W9G+EiqEJXA+tl41EFDOItyn4PRmW3MH0668RQa77Ow46inHo7bOWVeeei
	oKf7eoqnXT1g7Sr/gvL8JUOnzSkNCTRPvrR5a1a+BiJU1SJZ6d2PgpMstl4/H8DMgTw3xbpNggW1u
	rBAtTaLM4qvcKASqDvRnrHv/urBPYBa+jw8FAIBGkPwQ07cg+fVWfKtm4w83eDHgRslfg3NUwDpPc
	VvNRUUAjydd5scbZnl7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzzK-0001Qa-Pp; Mon, 13 Apr 2020 14:23:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzzD-0001Q5-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 14:22:56 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FE422075E;
 Mon, 13 Apr 2020 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586787775;
 bh=whC59W9tFB4e6EkwxQEawXo/Ndl2/DcxWSyZCHIqVAs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=agtyxO4CPE9EQyUCRgl9nJgybO3dkv5LWVZT7zRBs97tVubvN71zLwuy8XJawCI2t
 0lUbP+nFa9J5Ywv4msBNqT6uOw6TPgj8nnTJaQMVWYa2Vk2OC4d/epuGSr7VYCoMyD
 dQvTT7h1cxfl6kpYsxWGozrYvveCkGYrrpH94Ih8=
Date: Mon, 13 Apr 2020 22:22:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Waibel Georg <Georg.Waibel@wiedemann-group.com>
Subject: Re: [PATCH V2] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Message-ID: <20200413142248.GB4722@dragon>
References: <1583928220724.65021@wiedemann-group.com>
 <20200316013040.GP17221@dragon>
 <1584352502593.54297@wiedemann-group.com>
 <1584352708854.43164@wiedemann-group.com>
 <20200317134810.GA2884@dragon>
 <1584527604108.70800@wiedemann-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584527604108.70800@wiedemann-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_072255_706237_A1F0A0F7 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Mar 18, 2020 at 10:33:24AM +0000, Waibel Georg wrote:
> Setting a CAN bitrate of 800kbit/s fails with a bitrate error of 1.3% if the
> flexcan module is clocked at 30MHz (CAN_CLK_ROOT). This patch changes the clock
> frequency from 30MHz to 40MHz which allows to support all bitrates recommended
> by CiA.
> 
> The patch sets CAN_CLK_SEL to 80MHz by changing its clock parent from
> CLK_PLL3_60M to CLK_PLL3_80M. The post-divider CAN_CLK_PODF is set to /2 by
> default which makes 40MHz CAN_CLK_ROOT from its parent CAN_CLK_SEL.
> 
> Background:
> CAN in Automation document 102 (CiA102) recommends the CAN bitrates 10, 20, 50,
> 125, 250, 500, 800 and 1000kbit/s.
> 
> With the flexcan serial clock at 30MHz (original value) setting some common
> bitrates ("ip link set canX type can bitrate <bitrate>") gives the following
> results:
> requested value / actually set value
> 5000: bitrate 5000 sample-point 0.708
> 10000: bitrate 10000 sample-point 0.866
> 20000: bitrate 20000 sample-point 0.866
> 40000: bitrate 40000 sample-point 0.866
> 50000: bitrate 50000 sample-point 0.866
> 80000: bitrate 80000 sample-point 0.866
> 100000: bitrate 100000 sample-point 0.866
> 125000: bitrate 125000 sample-point 0.875
> 250000: bitrate 250000 sample-point 0.866
> 400000: bitrate 400000 sample-point 0.866
> 500000: bitrate 500000 sample-point 0.866
> 666666: bitrate 666666 sample-point 0.800
> 800000: bitrate 789473 sample-point 0.789 !!!bitrate error 1.3%
> 1000000: bitrate 1000000 sample-point 0.733
> 
> With the flexcan serial clock at 40MHz (new value) we get this:
> 5000: no more possible
> 10000: bitrate 10000 sample-point 0.875
> 20000: bitrate 20000 sample-point 0.875
> 40000: bitrate 40000 sample-point 0.850
> 50000: bitrate 50000 sample-point 0.875
> 80000: bitrate 80000 sample-point 0.850
> 100000: bitrate 100000 sample-point 0.875
> 125000: bitrate 125000 sample-point 0.875
> 250000: bitrate 250000 sample-point 0.875
> 400000: bitrate 400000 sample-point 0.850
> 500000: bitrate 500000 sample-point 0.875
> 666666: bitrate 666666 sample-point 0.800
> 800000: bitrate 800000 sample-point 0.800
> 1000000: bitrate 1000000 sample-point 0.750
> 
> A drawback of the modification is that 5kbit/s is no more supported.
> 
> Setting the flexcan serial clock to 60MHz or 80MHz would produce similar
> results but with losing even more bitrates at the lower end.
> 
> Changing the flexcan serial clock to 40MHz might apply for other SoCs
> using the flaxcan module as well (e.g. imx6q/d/s..). But since I don't
> have such hardware to test I did not add this to the patch.
> 
> Signed-off-by: Georg Waibel <georg.waibel@wiedemann-group.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
