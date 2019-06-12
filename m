Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E54B42290
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqgWmrREw+ls2MYILpIff3yMfz32Gs4OT+gbFhWT0Zs=; b=UpCBvVf91CxzGH
	m1n5ZGHRvXHC+hZFiFc/squNXmhwORrigvwd0oV5XPtQy6SvdghC2em6P+j6EV6M3DCEgjHo2iIvW
	BelPnCU7OYi+67TabcUAgFLHUIr5BSmaeIdqFiuMJ5hHJYH8DV/ocDci+eIAdklII0w9AcgoprkdU
	0aN7+KunS0zNe2SPMPGSvsUr5n9cz0ukp8xvuVZcLtB7gMH0yRLWrFJm5+BRA7S5/TiqKuM94Zyql
	QImwBMddk1JoOpZqJ7LhfgzfVV2q7klKf4iaWyzf9vSv/SzNndh8QVGZ/YEgrXCJSrGgbZzE1e0C/
	2vsB+4cmp7zveEF3GloQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0a5-0000Wu-Rb; Wed, 12 Jun 2019 10:34:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0Zw-0000WQ-Ni
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:34:06 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5773B2082C;
 Wed, 12 Jun 2019 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560335644;
 bh=8T6dnFzQPiLaoQgZC+Dpz7abgUojnrqzVQ3wpe/w1IE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G30A9vkkKUqaqawEP5TZMl6ELc/YqQb2Jqm894VVfpuQ+P9OsMTUPSthyi0ZTLN3f
 xQdfxpqsvAcjB57t5sjm4MOXTiJ6IotDIzpgZPtK2qlHcgLlu2pQxF1X7ifMRlf77E
 7qhkfpNSLberR1A0AchXnjZ5hEDPf+LSsLEcnruQ=
Date: Wed, 12 Jun 2019 18:33:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 0/5] Add imx7d speed grading and higher OPPs
Message-ID: <20190612103327.GD11086@dragon>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_033404_795564_9EFFD100 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 01:37:04PM +0300, Leonard Crestez wrote:
> Changes since v1:
>  * Remove the match list from imx-cpufreq-dt
>  * Split arch and cpufreq changes
> Link to v1: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=124427
> 
> Leonard Crestez (5):
>   cpufreq: imx-cpufreq-dt: Remove global platform match list
>   cpufreq: Switch imx7d to imx-cpufreq-dt for speed grading

>   ARM: imx: Switch imx7d to imx-cpufreq-dt for speed-grading
>   ARM: dts: imx7d: Update cpufreq OPP table
>   ARM: imx_v6_v7_defconfig: Enable CONFIG_ARM_IMX_CPUFREQ_DT

Applied these 3, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
