Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5DCA39A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjSwkSRn6+Wc8VMB9cCamAk+fjnC9Bm4e4I61HHpEIA=; b=FgV1rA835i2KZV
	n6srB6ogZANzh+/hNL8jMNpj6Fsn3nBS9NYE3U+3t8Vvua2P5wnivys5tFXpwtoyOwogG0p5B2MIw
	pXzdJPaL3ie/XKQZTbbbLE8FAtrJwjedZaTzakToUmwFdJ0QBDxOufETOLOo+C/zNVKPUwnZ+gOTX
	gyVGGnpx181DjC6i2vnadDa9jbHz7pn9Ly1yW4LRaJEa1xTvn24z4hVD7+FPl1Y/LpkfxlUW69H5H
	7hUKJ1nsd29uGW54PucRvVC4Rz8w9dL7kY88nChIj7m+AFgBtBajo+fh9vCnI4Zv7vMF9OTeyOOFW
	n4Nqj1oObEk94Lkb2gtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iJ8-00028h-8g; Fri, 30 Aug 2019 14:55:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iIt-0001pe-Ut; Fri, 30 Aug 2019 14:55:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C500F344;
 Fri, 30 Aug 2019 07:55:05 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0C2E3F703;
 Fri, 30 Aug 2019 07:55:04 -0700 (PDT)
Date: Fri, 30 Aug 2019 15:55:02 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
Message-ID: <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_075508_041848_5AE90E32 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wsd_upstream@mediatek.com, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, Jing-Ting Wu <jing-ting.wu@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/29/19 11:38, Valentin Schneider wrote:
> On 29/08/2019 04:15, Jing-Ting Wu wrote:
> > At original linux design, RT & CFS scheduler are independent.
> > Current RT task placement policy will select the first cpu in
> > lowest_mask, even if the first CPU is running a CFS task.
> > This may put RT task to a running cpu and let CFS task runnable.
> > 
> > So we select idle cpu in lowest_mask first to avoid preempting
> > CFS task.
> > 
> 
> Regarding the RT & CFS thing, that's working as intended. RT is a whole
> class above CFS, it shouldn't have to worry about CFS.
> 
> On the other side of things, CFS does worry about RT. We have the concept
> of RT-pressure in the CFS scheduler, where RT tasks will reduce a CPU's
> capacity (see fair.c::scale_rt_capacity()).
> 
> CPU capacity is looked at on CFS wakeup (see wake_cap() and
> find_idlest_cpu()), and the periodic load balancer tries to spread load
> over capacity, so it'll tend to put less things on CPUs that are also
> running RT tasks.
> 
> If RT were to start avoiding rqs with CFS tasks, we'd end up with a nasty
> situation were both are avoiding each other. It's even more striking when
> you see that RT pressure is done with a rq-wide RT util_avg, which
> *doesn't* get migrated when a RT task migrates. So if you decide to move
> a RT task to an idle CPU "B" because CPU "A" had runnable CFS tasks, the
> CFS scheduler will keep seeing CPU "B" as not significantly RT-pressured
> while that util_avg signal ramps up, whereas it would correctly see CPU
> "A" as RT-pressured if the RT task previously ran there.
> 
> So overall I think this is the wrong approach.

I like the idea, but yeah tend to agree the current approach might not be
enough.

I think the major problem here is that on generic systems where CFS is a first
class citizen, RT tasks can be hostile to them - not always necessarily for a
good reason.

To further complicate the matter, even among CFS tasks we can't tell which are
more important than the others - though hopefully latency-nice proposal will
make the situation better.

So I agree we have a problem here, but I think this patch is just a temporary
band aid and we need to do better. Though I have no concrete suggestion yet on
how to do that.

Another thing I couldn't quantify yet how common and how severe this problem is
yet. Jing-Ting, if you can share the details of your use case that'd be great.

Cheers

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
