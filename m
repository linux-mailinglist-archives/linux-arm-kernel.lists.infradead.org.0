Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0191D369B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YPRRO2VvVCP7u+Sv+AWcHHLF5TEJBYWi13Km2A4+9o=; b=qOVulygu+nVRce
	ahliPoaTPs+5R1Uq+VEriDjq5aA0EhXa/NQRWPWgMxDtuGgxkciGS0nJhkh1COwsC2Gs/1NN/K5qN
	1KWwqYw41OWnU9l8kCq+XwsVj38avGUN98pVHwJwayDjMWkUKJEzXWYO/iJzozj59lurNntYU7oM4
	eDMPOr7tJhVrKpE3w1FCQ1dBI7FvDCWoTUF9FHpaM1rps6K6lwZCL8GtSQMBLEBRlzaC1YbjpQVj1
	vLJ6l5HiukueiISXUT3umBH6nX25tc6BzaL5zjOPgLLxG60FKCjVvirEl5Ibj0/r8lXAGOsTgtsHM
	Y4t+xyMBODdUpxmjj3wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGql-0008T6-0w; Thu, 14 May 2020 16:36:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGqZ-0008SF-Rh
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:36:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB5F220675;
 Thu, 14 May 2020 16:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589474195;
 bh=/Oud4+Cb5VEN+0rjyvNjdi0y40dgg0LowyeDFy6iBQM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wlserAR3KAJqd5xHY94MD8nIrVksbeDqOZ15lIrwLhDydAbHRrjPzYK1z2GmIDIff
 Nty/yTzlxgyCM94tWna6ZmJT4C7xT+pZCPw7JdJoMqK3Cc6RBmnfgu1oiBM+lCS2gj
 q4TNirepiFdHOwljbHbA7YMdvPzupJFclkt+QGDY=
Date: Thu, 14 May 2020 18:36:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 00/12] kgdb: Support late serial drivers; enable early
 debug w/ boot consoles
Message-ID: <20200514163633.GA3154055@kroah.com>
References: <20200507200850.60646-1-dianders@chromium.org>
 <20200514162109.6qt5drd27hpilijh@holly.lan>
 <CAD=FV=X+t_Wg5KadZBTGHMSEXY3c-t6DZAtdaLXys31QJJpGGA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=X+t_Wg5KadZBTGHMSEXY3c-t6DZAtdaLXys31QJJpGGA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_093635_917444_D0439883 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Will Deacon <will@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 jinho lim <jordan.lim@samsung.com>, Andy Gross <agross@kernel.org>,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Allison Randal <allison@lohutok.net>, Juergen Gross <jgross@suse.com>,
 Sumit Garg <sumit.garg@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Jason Wessel <jason.wessel@windriver.com>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 09:34:26AM -0700, Doug Anderson wrote:
> > (though we must keep
> > changes to drivers/tty/serial/kgdboc alongside the kgdb changes).
> >
> > I can hoover them up but I'd need a solid set of acks and
> > I don't think we've got that yet.
> 
> It would be nice for it to be explicit, but "get_maintainer" says that
> Greg KH is the maintainer of serial drivers.  Git log confirms that he
> also has been the one landing changes to these files.  Early-on he
> provided his Reviewed-by for the series as a whole, so he's aware of
> it and maybe would be fine w/ the serial changes landing through the
> kgdb tree?
> 
> Greg: is that correct?

I have no objection for all of these to go through any other tree that
wants to take them :)

But if you want me to take them in the serial tree, to make it easier
for you or any other serial driver issues, I will be glad to do that,
just send them my way.  It's your call.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
