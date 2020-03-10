Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D57C17F042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 06:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6e16EhUGTsrGWZIOceMxx/SLc/Wf5zBpngJkproypQ=; b=lP0XmwXd56XApR
	dHLFeJwvcIv9KdqfP2lR2phSghd/nFkMT/vDLPxgtCca0t9wMGKyKq6mT5uelelfwE37GB95MpKIO
	/1lal7RBj+qf682EOaV4yyY1zDtYpzo4G5Pgh2LEopyFLE/Q4Krj7E0HBDQSOsVIY42ohrthnTN+f
	xpqznJY55Kk136dsBXQvgE2+W771zkxVvTuZsfB4nN/hLrxHPm/skmnnlSkAhvEJfHnBTrLMGSqxz
	PbxhhMTFcMxoUn0R3wqxo+gcb/PQDnHG8prv9XIj/VWzRp10o3bKeB74MEC7FkUqf2Aoj82auUaJm
	9fi0/0Pf+YRBJwGq6EiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBXpk-0002ga-LY; Tue, 10 Mar 2020 05:53:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBXpd-0002g5-NJ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 05:53:34 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BDA42071B;
 Tue, 10 Mar 2020 05:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583819613;
 bh=JJxGvJHWNSGB7lyLfFPO7G8uwwA6FJNOdDTip0Btc5U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0jKuK38ZlOi8uX0RBbOuec5pcMzbYImr8Vs+ILU5HuY5gxfPcCR0DD0yGFnMfD05r
 aRCTooV+leJHTbPZo3r0VlhB6tNnX8BajoS/Fbr6mendvdP/AMr9MbB0TZFkXY5+g0
 e4cbDtThRMdLx2d4+aYyekaBmYJKTsjsBo7xexa8=
Date: Tue, 10 Mar 2020 13:53:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 03/14] clk: imx: Fix division by zero warning on pfdv2
Message-ID: <20200310055324.GF15729@dragon>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-4-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-4-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_225333_782150_F17D4A64 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 03:59:46PM +0800, peng.fan@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Fix below division by zero warning:
> 
> [    3.176443] Division by zero in kernel.
> [    3.181809] CPU: 0 PID: 88 Comm: kworker/0:2 Not tainted 5.3.0-rc2-next-20190730-63758-ge08da51-dirty #124
> [    3.191817] Hardware name: Freescale i.MX7ULP (Device Tree)
> [    3.197821] Workqueue: events dbs_work_handler
> [    3.202849] [<c01127d8>] (unwind_backtrace) from [<c010cd80>] (show_stack+0x10/0x14)
> [    3.211058] [<c010cd80>] (show_stack) from [<c0c77e68>] (dump_stack+0xd8/0x110)
> [    3.218820] [<c0c77e68>] (dump_stack) from [<c0c753c0>] (Ldiv0_64+0x8/0x18)
> [    3.226263] [<c0c753c0>] (Ldiv0_64) from [<c05984b4>] (clk_pfdv2_set_rate+0x54/0xac)
> [    3.234487] [<c05984b4>] (clk_pfdv2_set_rate) from [<c059192c>] (clk_change_rate+0x1a4/0x698)
> [    3.243468] [<c059192c>] (clk_change_rate) from [<c0591a08>] (clk_change_rate+0x280/0x698)
> [    3.252180] [<c0591a08>] (clk_change_rate) from [<c0591fc0>] (clk_core_set_rate_nolock+0x1a0/0x278)
> [    3.261679] [<c0591fc0>] (clk_core_set_rate_nolock) from [<c05920c8>] (clk_set_rate+0x30/0x64)
> [    3.270743] [<c05920c8>] (clk_set_rate) from [<c089cb88>] (imx7ulp_set_target+0x184/0x2a4)
> [    3.279501] [<c089cb88>] (imx7ulp_set_target) from [<c0896358>] (__cpufreq_driver_target+0x188/0x514)
> [    3.289196] [<c0896358>] (__cpufreq_driver_target) from [<c0899b0c>] (od_dbs_update+0x130/0x15c)
> [    3.298438] [<c0899b0c>] (od_dbs_update) from [<c089a5d0>] (dbs_work_handler+0x2c/0x5c)
> [    3.306914] [<c089a5d0>] (dbs_work_handler) from [<c0156858>] (process_one_work+0x2ac/0x704)
> [    3.315826] [<c0156858>] (process_one_work) from [<c0156cdc>] (worker_thread+0x2c/0x574)
> [    3.324404] [<c0156cdc>] (worker_thread) from [<c015cfe8>] (kthread+0x134/0x148)
> [    3.332278] [<c015cfe8>] (kthread) from [<c01010b4>] (ret_from_fork+0x14/0x20)
> [    3.339858] Exception stack(0xe82d5fb0 to 0xe82d5ff8)
> [    3.345314] 5fa0:                                     00000000 00000000 00000000 00000000
> [    3.353926] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> [    3.362519] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
