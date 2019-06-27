Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928E858CE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 23:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fm/GomdZ9AKyBayXV+4F+f9WHN3ZoJ9QNNfc8PSG8bc=; b=Ye7eL3t8obOqom
	NIl+280A40JxgeUVwUUZlw3Ar3PjM8nKuGP9LAGF9T01siMg8SdxdB63Y6A6EGau/AMhFkifppUZx
	zrzUmgenVV1rcBp3/4DjNSaG5rXZn9zrwtTdAfnxzESNTlktUUhpVbDnDB0jbZbMaz3B4wwu/aAX2
	y5TR3zxwnWL+UqxX7G5SliWDv6EuIGwKix753ONHHOjWfop5t7NPfyDZ8Qg1RmuO+ofefcUtlT74X
	xFOqzhopxjA7brpZIuIdn0S/lCsf4BEiRhIq+/D/+KiggJMnpwFW3vEEawYG2zxJ5ICzOolU9kZKT
	ZApCkGtR0E4/u+yKb6yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgbjb-00050R-Nk; Thu, 27 Jun 2019 21:15:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgbjK-0004zv-0a
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 21:14:55 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37FF4208CB;
 Thu, 27 Jun 2019 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561670093;
 bh=aF18PB9ndCbQ/0tO043NbIEQd0ErKNrDAli6X2roWq0=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=CNMciDmGkyUYWNkDg4WtU6vSG5PpIaJeyI1Upn0mozqwrcBTJRUhBZhl8YEV0+/Zv
 WN4ik+trQwPg6qycA+od0fYc9/pkYm3PLK6t//UKhFyPMmNX0+GkThhgWqnArchKwB
 PXUS29YhxcVR4eRS9/ga35BFDW8O+jwqMn5mUEJo=
MIME-Version: 1.0
In-Reply-To: <475e0250b1e77a660c095749e78427fde318d5f6.1559200405.git.leonard.crestez@nxp.com>
References: <475e0250b1e77a660c095749e78427fde318d5f6.1559200405.git.leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>, Jacky Bai <ping.bai@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC] clk: imx8mm: Add dram freq switch support
User-Agent: alot/0.8.1
Date: Thu, 27 Jun 2019 14:14:52 -0700
Message-Id: <20190627211453.37FF4208CB@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_141454_092214_85DEE775 
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nitin Garg <nitin.garg@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Cedric Neveux <cedric.neveux@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 Silvano Di Ninno <silvano.dininno@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-05-30 00:13:51)
> Add a wrapper clock encapsulating dram frequency switch support for
> imx8m chips. This allows higher-level DVFS code to manipulate dram
> frequency using standard clock framework APIs.
> 
> Linux-side implementation is similar in principle to imx_clk_cpu or a
> composite clock. Only some preparation is done inside the kernel, the
> actual freq switch is performed from TF-A code which runs from an SRAM
> area. Cores other than the one performing the switch are also made to
> spin inside TF-A by sending each an IRQ.
> 
> This is an early proof-of-concept which only support low/high mode on
> imx8mm but NXP has secure-world dram freq switching implementations for
> multiple other chips and this approach can be extended.
> 
> This was tested using a large pile of NXP out-of-tree patches. Code for
> the "busfreq core" from last release can be seen here:
> https://source.codeaurora.org/external/imx/linux-imx/tree/drivers/soc/imx/busfreq-imx8mq.c?h=imx_4.14.98_2.0.0_ga
> 
> It can be likely made to work with interconnect RFC:
> https://patchwork.kernel.org/cover/10851705/
> 
> This RFC effectively refactors a common part between them.
> 
> Among the possible cleanups:
>  * Handle errors in low/high busfreq code and back off
>  * Move irq to secure world
>  * Try to use fewer clk parameters
>  * More chips and frequencies
> 
> Many platforms handle this kind of stuff externally but cpufreq is quite
> insistent that actual rates are set by clk code and that new platforms
> use cpufreq-dt.
> 
> Let me know if there are objections to handling dram freq via clk.

Can it be an interconnect driver instead? I don't see how this is a clk
driver. It looks more like a driver that itself manages a collection of
clks, and you've put the coordination of those clks behind the clk_ops
interface. We don't want to have clk_ops calling clk consumer APIs in
general, so the whole approach doesn't seem correct. Hopefully this can
work out as some other sort of driver that is used directly from devfreq
or interconnect core instead and then have a different consumer driver
of devfreq or interconnect core that knows how to drive the clk tree.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
