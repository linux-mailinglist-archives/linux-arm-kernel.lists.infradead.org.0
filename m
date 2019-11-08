Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D908F58D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 21:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DX3PC+bIQvZqSACR9BZQVWtaD1pgXlfB8cS9Ru/JOCg=; b=Ukk5/5ovZxsUJd
	33orLQvmOyjQJ6ugxAZE/oApHuNw6fgOBjlCw87rZ5wclPkaUP6mzIagE0Jr4ueM+2+xY6lVfpnQp
	aadfHTUuNLv4ZWKI3We/XFVO9Tc87iY+tse3TQnPJWzfuNQ3rN35PhGr/0ihgYa6jjZA7jE06sDwC
	jybka40SSeca7VbkIg+AeK4RqhaxTM6HSh0Crty5QE5plhQffy9s4a5bTVP8QOvyMvHpi/TfOZUYB
	banJeXM0M/yOwD+2KLYwyYUJhu8O+PJoxkzxkqcyTRlQug/q9/GkCJFR1HKHvch/i/WQdirUZPt9Q
	sviQfag0njB9ANJ1ctNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBEZ-0000Q2-AE; Fri, 08 Nov 2019 20:51:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBEN-0000JT-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 20:51:45 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4755C80D4;
 Fri,  8 Nov 2019 20:52:18 +0000 (UTC)
Date: Fri, 8 Nov 2019 12:51:39 -0800
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
Message-ID: <20191108205139.GP5610@atomide.com>
References: <20191007220540.30690-1-aford173@gmail.com>
 <20191022162223.GU5610@atomide.com>
 <CAHCN7xLy975mxX+cm56PMx-TKODEZjYPfMHb=byspKxYXXq7OA@mail.gmail.com>
 <20191022221919.GF5610@atomide.com>
 <1CE62E4E-1A38-448C-9197-8FA16747F942@goldelico.com>
 <20191023143646.GG5610@atomide.com>
 <CAHCN7xKi4oSoVbRM=-D1s2GnMig8xs6iYNwUWj2Ohfj+1okx=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKi4oSoVbRM=-D1s2GnMig8xs6iYNwUWj2Ohfj+1okx=Q@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_125143_991797_B2D74F87 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [191108 20:03]:
> On Wed, Oct 23, 2019 at 9:36 AM Tony Lindgren <tony@atomide.com> wrote:
> > My guess is we need to call clk_disable() and call
> > ti_bandgap_save_ctxt() on CPU_CLUSTER_PM_ENTER similar to
> > what ti_bandgap_suspend does. And then restore it on
> > CPU_CLUSTER_PM_EXIT.
> >
> > There's a similar example already in gpio_omap_cpu_notifier().
> > Not sure if there is some related errata to deal with too,
> > probably the old Nokia n900 or n9 would provide some hints
> > on what exactly needs to be done.
> 
> I 'think' I have a patch ready that does what you're asking, but I
> will fully admit that I don't completely grasp what's going on.
> 
> I'll submit it as an RFC, but I am not even sure I understand what to
> put into the description, so if you're OK with reviewing the RFC, feel
> free to mark up the actual commit message as well.
> 
> From what I can see, the changes haven't negatively impact stuff. I
> didn't see the power consumption go up before, so I am not sure I can
> replicate your findings.
> 
> It'll be posted shortly.

Yeah seems to do the job, thanks for fixing this issue.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
