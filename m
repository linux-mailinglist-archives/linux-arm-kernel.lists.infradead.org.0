Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEC81164AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 01:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pblj4LzBq9IhFlvF7ZXl3w7MnKnKIE+sFjA1rwmf0z8=; b=aGALRmuIrn3hg2
	vUUpgFC5jCNyeJbaDbu67QdbhZRGCUezw9UpRwXLKXEWzJQ37WVXpTp1sI/RwNGrRp3wQDQlqRHw4
	jR4gpiTwfVAAuFJeOaI5zbdjd4WDBoNQ4C/yrvnmuoAOO5aNhdHpSkZBw1s+wHfLHV+W6JY5JExHE
	uryabQW+lniK1d9xjV/HMbU2QQhJYjowvZhCO8aZl1VdIWJzLRzT89+NNjFPUBUvuxSl9hLtdrE0T
	FdDVpru33JnImBMQKQ8pOfya35zMbW3rMGEO9J14r/IUI6Xgje6Xmi/aNcw9DI3J+Nq/5RJNgkzQW
	b8i9KuuIblsMSTYFyFsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie7M6-0007kw-6P; Mon, 09 Dec 2019 00:56:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie7Lu-0007jx-VQ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 00:56:44 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97F3B206DB;
 Mon,  9 Dec 2019 00:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575853001;
 bh=el/OTbphV9HjIKRMZ2QKo2lfvib9RuNgPJS+Z3thZog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c9hAO1IfDZP+nrTOhuZ0GOxHHLzXnHkYhn2wCFOWaTPBcARl2uQSPFeKkPVcTmMUF
 lSIYNs+VxtvZXxSo5aQO9RkHIC+UF4KLBlIjolglbr899AF/w6eurnY0M6lHPri63X
 jp5olO3T97dRFMojqvojRCxYmfvgi7oGs1uQQDmc=
Date: Mon, 9 Dec 2019 08:56:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH] ARM: dts: e60k02: fix power button
Message-ID: <20191209005621.GO3365@dragon>
References: <20191111202959.24189-1-andreas@kemnade.info>
 <20191204123645.GL3365@dragon>
 <20191205070612.27204646@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205070612.27204646@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_165643_042215_7B8D2F40 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "H . Nikolaus Schaller" <hns@goldelico.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 07:06:12AM +0100, Andreas Kemnade wrote:
> On Wed, 4 Dec 2019 20:36:47 +0800
> Shawn Guo <shawnguo@kernel.org> wrote:
> 
> > On Mon, Nov 11, 2019 at 09:29:59PM +0100, Andreas Kemnade wrote:
> > > The power button was only producing irqs, but no key events,
> > > Forced power down with long key press works, so probably
> > > only a short spike arrives at the SoC.
> > > Further investigation shows that LDORTC2 is off after boot
> > > of the vendor kernel. LDORTC2 is shared with a GPIO at the pmic
> > > which probably transfers the button press to the SoC.
> > > That regulator off at boot, so "regulator-boot-on" is definitively
> > > wrong. So remove that.
> > > 
> > > Reported-by: H. Nikolaus Schaller <hns@goldelico.com>
> > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>  
> > 
> > Do you want this go into 5.5-rc as a fix?  In that case, we may need a
> > Fixes tag here.
> > 
> well, now there is 
> regulator: core: Let boot-on regulators be powered off
> so the power button should work after regulator_late_cleanup()
> is called but that is usually some time after userspace has started,
> so it would be better to have that in. And of course dt should
> correctly describe the hardware. That would be
> 
> Fixes: c100ea86e6ab ("ARM: dts: add Netronix E60K02 board common file")

Applied with the tag.

> 
> BTW: I have not seen your 5.5 stuff in Linus' tree yet. Seems that Olof
> has not sent his pull request yet or is there bigger trouble?

Now they are in v5.5-rc1.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
