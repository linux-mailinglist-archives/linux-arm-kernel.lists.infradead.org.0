Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4FF4D445
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkrQYuSW1xLCI75Db0AKLx2139GbaUpAl5OE/MizKIE=; b=WWk0276dd7S+WG
	Oo3XAY2lTcVIl8FD+6sboChOoJOvwTxcLiDxkkOQ2iHhj1rkk0igUUcIpQ10MDPRayV/opRajOj54
	+0tJ7i5SrP6ZCCAwAyEHfYuUAA1nm2VLMdQfGg2cUZX0sdb+4JpEFsIojwmzAOv3F/FaMT5lqcRDb
	4kAZbPdOnm7a74uJ3K2h+gAePjBIp3UXy8pakwM4L7QpH6mUXwDm1/qD4lDsppy7kN6hnfwA+AJoh
	a3rWWbvr66oGiJY9fQCl2XnJ3UqqoAbHNvYvnGm8x+fRKz9DsAezKUvmIFwZEbv6Xlz6pzixaMt+j
	G/IudzjMa3+Tq4lhFZ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Ik-0003Ot-05; Thu, 20 Jun 2019 16:52:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he0IV-0003OE-4s
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:52:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 555642B;
 Thu, 20 Jun 2019 09:52:21 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 36F003F246;
 Thu, 20 Jun 2019 09:52:20 -0700 (PDT)
Date: Thu, 20 Jun 2019 17:52:18 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190620165218.GE25273@e107155-lin>
References: <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
 <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_095227_280065_4176B50F 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 10:47:38AM -0600, Mathieu Poirier wrote:
> On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> > > On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> >
> > [...]
> >
> > > > Sorry but even then I prefer it not to be default and force extra work
> > > > to the people who add support and constantly be reminded that it's
> > > > broken and they are deviating from default behaviour in the kernel
> > > > which may come and latency penalty.
> > > >
> > > > Making it default may hide the problem if Linux is used for some validation.
> > > >
> > > > Also we hardly have 3-4 platforms in upstream that support coresight,
> > > > and many are broken except Juno. But that doesn't imply all others
> > > > are broken and we just can't derive that unless we have more information.
> > >
> > > For now we have a clear trend.  To me it is not a matter of broken vs.
> > > non-broken but more about what people want to do or can
> > > (realistically) do.
> > >
> >
> > No disagreement there.
> >
> > > The coresight specification is broad and very permissive in terms of
> > > implementation defined choices.  It is not because the TRCPDCR.PU it
> > > not taken into account by a platform that it is automatically broken.
> > > This could be a design choice or a trade off.  We already have two
> > > ways of putting a CPU to sleep (architected or OS driven), we simply
> > > do the same here for coresight.
> > >
> >
> > Sure, if the term "broken" is inappropriate I am fine if anything else
> > is used. The point is we are adding an idle notifier that adds latency
> > and must be done if and only if necessary.
> >
> > How you identify that and implement doesn't bother me much, making
> > that default just based on the fact that more platforms need it
> > compared to others definitely does. So I am fine if this needs to be
> > advertised *not broken* but *by design*, sure go for it.
> >
>
> Then all we have to do is make the ACPI/DT property that indicate the
> method used to deal with tracer idling mandatory.  That way people are
> conscious of the choice they are making.  To be backward compatible
> with current systems we default to the TRCPDCR.PU method but print a
> warning message, just like we do for obsolete DT bindings.
>

If you are happy with kernel module/command line parameters, I am fine
by that too. I missed that earlier, sorry for the noise. But I still
need to keep the default disabled and platforms needing it must enable
it. If not architectural argument, I am still concerned with latency :)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
