Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A2E1D1E22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTp+A+/R2gdYqzFmWb+T5KwSaf3ftSAyO9UlXWh2cms=; b=Knb2NgjNkMVZTQ
	YckOgUKrJQUtdWnMM2r7W+EPvGi3Qi3SXMfDp+awNSI0a4Uxbl5ZZDi56PtzVjCJ0RNlbW0/ZRnw/
	7NCuAkRtOcL9eWto50YOju4jEq0CWFkiOZqcEKxxzLC03N4m34W5WphY6HodFSYhc0CVReJoPxuhz
	7Mbf96Xu/A/AH/WpJmpAU3+7g/ONKu66Pzm6OXjCxfdFCkt6ELiK/1ifCTXVXLpbaMRsfr0KNfcYL
	4ztpqDNG2XcGjfQtbw9fRroR6tEl77PuTkuc2p7ojoDIhgAau6EiAuSCfh09/q308Xl+/zbyftdvb
	engbcvKU3qApEYT6Xc/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwYZ-0007H6-KF; Wed, 13 May 2020 18:56:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwYK-0007DK-25
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:56:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1820531B;
 Wed, 13 May 2020 11:56:22 -0700 (PDT)
Received: from e119603-lin.cambridge.arm.com (unknown [10.57.41.193])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 020403F305;
 Wed, 13 May 2020 11:56:20 -0700 (PDT)
Date: Wed, 13 May 2020 19:56:18 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v7 1/9] firmware: arm_scmi: Add notification
 protocol-registration
Message-ID: <20200513185618.GD17648@e119603-lin.cambridge.arm.com>
References: <20200504163855.54548-1-cristian.marussi@arm.com>
 <20200504163855.54548-2-cristian.marussi@arm.com>
 <20200506152550.GA21779@arm.com>
 <20200511220403.GB17648@e119603-lin.cambridge.arm.com>
 <20200513164612.GV21779@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513164612.GV21779@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_115624_191673_1AC3FC52 
X-CRM114-Status: GOOD (  30.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 sudeep.holla@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 05:46:13PM +0100, Dave Martin wrote:
> On Mon, May 11, 2020 at 11:04:03PM +0100, Cristian Marussi wrote:
> > Hi Dave
> > 
> > thanks for the review first of all.
> > 
[snip]

> > 
> > First of all the enabled flag does not probably belong to this commit properly;
> > here is initialized but it is really fully used only in subsequent patches
> > (...so makes apparently little sense here... my bad...)
> > 
> > Anyway, in general SCMI protocols (beside notifications stuff) are initialized
> > as depicted above, BUT they are never deinitialized explicitly (there's no
> > equivalent scmi_protocol_deinit()) and also proto devices are never destroyed:
> > so there's no scmi_protocol_deregister_events() neither in this series, because
> > it would have been tricky to properly invoke it and would have not been consistent
> > with the original SCMI design.
> > 
> > On the other side since in protocol driver _remove() some general protos resources
> > are in fact freed anyway, for consistency I decided to free the devm notification
> > resources allocated with the above init() in scmi_notification_exit(): this should
> > happen only at system shutdown in fact when notification are no more of a concern.
> > 
> > So given there's no explicit deregister I had to ensure somehow that the wanna-be-freed
> > notif devm resources were safe to be released.
> > 
> > In this context the 'enabled' atomic flag is set to 0 @_exit to stop the dispatch of the
> > events (possibly still coming from the fw) from the ISR into the kfifo queues: once such
> > pkts flow is stopped I destroy_sync() (in a subsequent patch @_exit too) all the workqueues
> > fetching the events from the kfifos: this way I can be sure that all the notif resources
> > are no more used at all when I free all of them with devm_release() at the end.
> > 
> > All of this is an additional precaution against buggy fw not stopping sending events
> > even when asked to do so (by drivers when deregistering notif callbacks in their shutdown)
> > 
> > Give the above scenario on shutdown (which I never observed to tell the truth), and the fact
> > I'm freeing all devm res (including ni) at shutdown, it's now apparent ALSO that I cannot use
> > 'enabled' to keep stopped the flow in a safe way after its enclosing struct ni has been freed !
> > 
> > So I'll remove the 'enable' atomic_t too and rely equally on the bare !ni check to determine
> > if the notification are enabled and should be dispatched. So that in 
> > 
> > scmi_notify_init() {
> > 
> > 	if (unlikely(!ni))
> > 		return 0;     /// Stop notification dispatching from ISR
> > }
> > 
> > So ni and !ni will signify (initialized && enabled) or not.
> 
> Can this still race?

It should not race now with a few barriers...V8 is not posted still (and it's a
bit different from the above broken snippet of mine :D)

> 
> If teardown is impossible or useless, perhaps it would make sense not to
> have the code for it (?)
> 

Well yes in fact I was doubtful from the start if this rarely used code was
needed at all...I added just for consistency since some cleanup happens
elsewhere in SCMI...but...

> Do we expect SCMI related drivers to be buildable as modules?
> 

... talking with Sudeep these days around the content of this thread, it seems that
we should be able anyway to modularize cleanly most of the SCMI core due to the
Android GKI thing....so I'm going to review the whole SCMI core and notification
shutdown/cleanup process soon....still I'm not convinced if I'll do anything different
here for notif at that point...as of now I fixed as above the current series foro v8
following your feedback then we'll see if I'll change it more drastically....

> > Not really a short explanation...sorry
> 
> Sounds like it's not simple :)
> 
> What you've said sounds plausible -- I haven't found much time to think
> about it this week I'm afraid!
>

Thanks you for the feedback !

Cheers,

Cristian
 
> Cheers
> ---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
