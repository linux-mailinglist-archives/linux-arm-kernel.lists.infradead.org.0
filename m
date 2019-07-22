Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A4270090
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSAFgHviT51x79PNWO9WJMWpTKTYsBP6sgL9eKOE5gc=; b=jN6vs3azXM1/Yr
	NyPJ81geW/t6GazS5TUJTI8zoQmKU3EA+c1AkgZPQQ66cvAQt25XLq48+YhMsfQjlUh/YNsBbEg+R
	l1czvdsNE5qi5mhjTKvW7lxNphYYjibMjY88inlEFiQ5opFI2HVhpQAX8BmGCZv8ddy9sHDu89Mq6
	mXrad+Kpkx88jyRQ/VuBvsh46IH36h0CfGC8+7YjpRf2ISDJbQHknfPQy1sk4FUciagV9QVI2OJxO
	sYfvOR1QjeaHLIa7pZWWeALxtyBKJPSTYTGjzzRurICjzFuU7MDn+QJ/EoVwDbJ3SeFWjADx1dIXT
	ckR3vutNfCD++X6Q39WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpY3i-00012j-FO; Mon, 22 Jul 2019 13:08:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpY3N-000121-4v
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:08:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C1A6344;
 Mon, 22 Jul 2019 06:08:30 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 662383F71A;
 Mon, 22 Jul 2019 06:08:29 -0700 (PDT)
Date: Mon, 22 Jul 2019 14:08:27 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 07/11] firmware: arm_scmi: Add support for asynchronous
 commands and delayed response
Message-ID: <20190722130827.GB9808@e107155-lin>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-8-sudeep.holla@arm.com>
 <CA+-6iNyFToC8QSf042OcqvAStvaF=voy_ohayvQBVCppgtyD7A@mail.gmail.com>
 <20190719110320.GC18022@e107155-lin>
 <CA+-6iNwgza49jmDbTM-_MUx+VPDFpG=1fN8i8v5vXdQNoOk93Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+-6iNwgza49jmDbTM-_MUx+VPDFpG=1fN8i8v5vXdQNoOk93Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_060833_278019_4FBA5432 
X-CRM114-Status: GOOD (  32.36  )
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 04:16:02PM -0400, Jim Quinlan wrote:
> On Fri, Jul 19, 2019 at 7:03 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Jul 18, 2019 at 05:38:06PM -0400, Jim Quinlan wrote:
> > > Hi Sudeep,
> > >
> > > Just a comment in general.  The asynchronous commands you are
> > > implementing are not really asynchronous to the caller.
> >
> > Yes, but as per specification, the idea is to release the channel for
> > other communication.
> >
> > > Yes it is is "async" at the low level, but there is no way to use
> > > scmi_do_xfer() or scmi_do_xfer_with_response() and have the calling
> > > thread be able to continue on in parallel with the command being
> > > processed by the platform. This will limit the types of applications
> > > that can use SCMI (perhaps this is intentional).
> >
> > Yes indeed, it's intentional and async is applicable for channel usage.
> >
> > > I was hoping that true async would be possible, and that the caller
> > > could also register a callback function to be invoked when the command
> > > was completed.  Is this something that may be added in the future?
> >
> > This is how notifications are designed and must work. I would suggest
> > to use notifications instead. Do you see any issues with that approach ?
> >
> > > It does overlap with notifications, because with those messages you
> > > will need some kind of callback or handler thread.
> > >
> >
> > Ah you do mention about overlap. I am replying as I read, sorry for that.
> > Anyways, let me know if we can just use notifications. Also the current
> > sync users(mainly clocks and sensors), may need even change in Linux
> > infrastructure if we need to make it work in notification style.
> >
> > It would be good to know the use case you are referring.
> Hi Sudeep,
>
> Well, I'm just curious how you would implement notifications.  Would
> you have a per-protorcol callback?  The Spec says that multiple agents
> can receive them; in our usage we have only one agent and it is Linux.
>

Well that's something I don't have straight answer yet. I am undecided on
per-protocol callback or just one callback. Yes, the platform can get
the same notification to multiple agents if they have subscribe for the
same. It doesn't matter if you have one or multiple agents on you system.
You have 2 actually: Linux and the Platform(which runs this SCMI compliant
firmware). It could be dedicated power controller or you secure side
firmware.

> We have one use case where that this patchset will do wonderfully.  We
> have another use case where we would like to go crazy on the
> asynchrony of the messages (caller's perspective, that is).
> This usage, which I don't think I can talk about, would like to use
> notifications and a per-protocol callback function.

That's fine. I am interested to know the user, but I understand if you
can't talk about it.

> >
> > > BTW, if scmi_do_xfer_with_response()  returns --ETIMEDOUT the caller
> > > has no way of knowing whether it was the command ack timeout or the
> > > command execution timeout.
> > >
> > Yes, I did think about this but I left it as is thinking it may not be
> > important. Do you think that makes a difference ? I am fine to change
> > if there are users that needs to handle the difference.
> I can't think of a case where it would matter.  Just thought I'd mention it.
>

Thanks, I can add a note to ensure it's not lost, you raised valid points
in review.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
