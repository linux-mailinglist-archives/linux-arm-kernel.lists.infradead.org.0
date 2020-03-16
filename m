Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7913B186138
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:13:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rw5csb/Iqo8wwxPXF7p6msK2bsSFl69kFr4JgZ0RhyM=; b=KNSLLSatGvlwMd
	G2a1ksfQj011VaUSGphng/2ctQP8wqSnU2DrmAv6qPFxCFi8+TCZPH1vEGpGJl+vtvKYqt5xMyCul
	AVxR5uAD0ameTcMAmpiwf08XY0ueSYj3lDZG9OphjITspIl9VPKI2a+YRRJLQAlhvLPar8misdjDj
	J0QpsEp+yrrh/sN23fZCeZYYjEbtpwxUQIXMUyAp1wF3Z4tA/TBa+Gl7Od2HLQpEN5UoP8tJ7otTB
	/rBItOrW5Bx1re/zP5Z4Um77qBJqskosz682cYiAvDw3X0aAwrkkwVmyJXHH3leU5LvDBOJNKAiyK
	i14dshSR+09z7wl8hZ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDeJk-0007Hd-Ge; Mon, 16 Mar 2020 01:13:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeJV-0007HI-Qu
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:13:07 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA84B20674;
 Mon, 16 Mar 2020 01:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584321185;
 bh=ILnGuopfrhCWnkKrqnyInl7MvbflrVYGdJUJ9X9o7J4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bl8nACmy85FPAzdl2QuPd305imWBxyeo5FBiR8LYXOqQj8S5slX/47kvyaF3x5XFu
 hPor8oR0wjKb7Vkzpsd+o3Mpu7FMl32oQyMKkKFlMyOIVNFGJj+k7TbPCtIZvXU6KI
 0lKVPSE8X99h/ee+sSyTkwyOZdn0zrUPkeFbVqc8=
Date: Mon, 16 Mar 2020 09:12:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH V2 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Message-ID: <20200316011255.GL17221@dragon>
References: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
 <20200316002803.GL29269@dragon>
 <6bc06056-b614-fbbf-037c-4a98bafa591c@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bc06056-b614-fbbf-037c-4a98bafa591c@roeck-us.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_181305_896397_CCEDDC68 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, m.felsch@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-rtc@vger.kernel.org,
 robh@kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 Anson Huang <Anson.Huang@nxp.com>, daniel.lezcano@linaro.org,
 yuehaibing@huawei.com, krzk@kernel.org, Linux-imx@nxp.com,
 linux-input@vger.kernel.org, rui.zhang@intel.com, ronald@innovation.ch,
 linux-watchdog@vger.kernel.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, a.zummo@towertech.it, gregkh@linuxfoundation.org,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 15, 2020 at 05:54:52PM -0700, Guenter Roeck wrote:
> On 3/15/20 5:28 PM, Shawn Guo wrote:
> > On Sat, Mar 07, 2020 at 09:25:53AM +0800, Anson Huang wrote:
> >> Add stubs for those i.MX SCU APIs to make those modules depending
> >> on IMX_SCU can pass build when COMPILE_TEST is enabled.
> >>
> >> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > 
> > Already had such a patch from Peng Fan.
> > 
> 
> Did you follow the discussion and the conclusion that the only patch
> really needed is patch 2/7 ?

Thanks for the reminding.  Just did.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
