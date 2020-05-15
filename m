Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414301D531A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weeld6D6tDbPpWNNK5LGtahHKa0A514IUuWmazz2R58=; b=LmEg3Ve7OBPRkr
	lBCgTmBILscGW9Db2k6E5zobBsMDpexPU3v62qcidOgNnbdQolcJ1cW9kitzqKp9lql4Juxs1DxVy
	qSRsiVHk11O+AodXUisLgtaS3ELSVMJh6pGuqmGOzaYg0xet0CciMuYBhyLPRPvA5vTOXXauqcxYS
	6+XEdaGZ+JLX0cY6OvyH4/4bI8Wg+cMb8FeMJC8v5Pz3aZrrsAyHFci0+wOtQPh7szolHTLinPAAJ
	Z5IsSkLmonr8nxqyAkTP7uI/Jo/exkwbXAW9ravrmqOJrRNOeOABPTTo0eHAPqxCS10pROzjvJM0f
	Rh9Qd+n7rN3yzJPGTm2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbuR-0006LC-Dk; Fri, 15 May 2020 15:05:59 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbuF-0006KG-If; Fri, 15 May 2020 15:05:48 +0000
IronPort-SDR: 4xaC1kudpJFFgAkHpf713fyW1qgYTCRPIfQ5TcL9q/n7f6B2yIfAu1xhO1zQUl48kPf218XWoU
 W8ZNjE3N/PfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 08:05:46 -0700
IronPort-SDR: EX+/kA0HXNH84sqyToqDVeH2rEi9LIuOqiQ6K0oN24pfAe2f1Rat9eUkw4gWcL3iD9ayQ886Np
 VcYqaY6I9WsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="252057189"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007.jf.intel.com with ESMTP; 15 May 2020 08:05:40 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jZbuA-006tTf-Vz; Fri, 15 May 2020 18:05:42 +0300
Date: Fri, 15 May 2020 18:05:42 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v3 3/4] serial: 8250_dw: Simplify the ref clock rate
 setting procedure
Message-ID: <20200515150542.GN1634618@smile.fi.intel.com>
References: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200506233136.11842-1-Sergey.Semin@baikalelectronics.ru>
 <20200506233136.11842-4-Sergey.Semin@baikalelectronics.ru>
 <20200515140547.GE1634618@smile.fi.intel.com>
 <20200515145007.xjrx5mminxrh374d@mobilestation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515145007.xjrx5mminxrh374d@mobilestation>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_080547_631659_958FE732 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Paul Burton <paulburton@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Long Cheng <long.cheng@mediatek.com>, linux-mediatek@lists.infradead.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, linux-mips@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 05:50:07PM +0300, Serge Semin wrote:
> On Fri, May 15, 2020 at 05:05:47PM +0300, Andy Shevchenko wrote:
> > On Thu, May 07, 2020 at 02:31:34AM +0300, Serge Semin wrote:
> > > Really instead of twice checking the clk_round_rate() return value
> > > we could do it once, and if it isn't error the clock rate can be changed.
> > > By doing so we decrease a number of ret-value tests and remove a weird
> > > goto-based construction implemented in the dw8250_set_termios() method.
> > 
> > >  	rate = clk_round_rate(d->clk, baud * 16);
> > > -	if (rate < 0)
> > > -		ret = rate;
> > 
> > > -	else if (rate == 0)
> > > -		ret = -ENOENT;
> > 
> > This case now handled differently.
> > I don't think it's good idea to change semantics.
> > 
> > So, I don't see how this, after leaving the rate==0 case, would be better than
> > original one.
> 
> Semantic doesn't change. The code does exactly the same as before. If it didn't
> I either would have provided a comment about this or just didn't introduce the
> change in the first place. I guess you just don't see the whole picture of the
> method. Take a look in the code. The ret variable's been used to skip the
> "p->uartclk = rate" assignment. That's it. So the (rate == 0) will still be
> considered as error condition, which causes the clock rate left unchanged.
> Here is the code diff so you wouldn't need to dive deep into the driver
> sources:
> 
> <	clk_disable_unprepare(d->clk);
> <	rate = clk_round_rate(d->clk, baud * 16);
> <	if (rate < 0)
> <		ret = rate;
> <	else if (rate == 0)
> <		ret = -ENOENT;
> <	else
> <		ret = clk_set_rate(d->clk, rate);
> <	clk_prepare_enable(d->clk);
> <
> <	if (ret)
> <		goto out;
> <
> <	p->uartclk = rate;
> <
> <out:
> ---
> >       clk_disable_unprepare(d->clk);
> >       rate = clk_round_rate(d->clk, baud * 16);
> >       if (rate > 0) {
> >              ret = clk_set_rate(d->clk, rate);
> >              if (!ret)
> >                      p->uartclk = rate;
> >       }
> >       clk_prepare_enable(d->clk);

Thanks.
Indeed, in the above it looks clear.



-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
