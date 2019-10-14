Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007E1D6803
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 19:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhXAQw19tVdATYh/+3fTWYzrZcTpty317XVQ9dc3sKo=; b=R36FLp47hVoDtn
	mGWRbwu2DgFgmd3gIQ05K8XvzRVOeSsZyBsvb6BOUpUabqTU5TIhfxGS7DZjNWNEjysPaMT0C7VK4
	gfdsa0Z1ZAlBayc6hd/5srtgx8XFTVpZkiHJmU7P6tQpcNbBbUBrZTzaOyeSz3EhUGJ5MGO2nZlOW
	WaRGzeqIwhI4cTdrFMfml83yB9L+5yMgJgBrMvi9cWcxe2Ti/MvKXIcWTF0tl1r1zAxLz/92Ue3o8
	An/Dst8nKSAWCcRlHb1XlPKp2sQwpCmIrFJe4+Btrwftbxz28VOzvtpQI+OL6Zq79ZpLOwEkSSuLv
	OtA7Ki6kyuuWlHMPhgWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3qC-0006Lx-4N; Mon, 14 Oct 2019 17:09:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3q2-0006La-Pm
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 17:08:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BA9228;
 Mon, 14 Oct 2019 10:08:54 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 74BCC3F6C4;
 Mon, 14 Oct 2019 10:08:53 -0700 (PDT)
Date: Mon, 14 Oct 2019 18:08:51 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Subject: Re: scmi sensor
Message-ID: <20191014170851.GB323@bogus>
References: <BYAPR18MB2438D5CE74FADE66F1EEFC66AF900@BYAPR18MB2438.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR18MB2438D5CE74FADE66F1EEFC66AF900@BYAPR18MB2438.namprd18.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_100854_880635_86FFC3AE 
X-CRM114-Status: GOOD (  16.19  )
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
Cc: linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 06:26:57AM +0000, Sujeet Kumar Baranwal wrote:
> Hi Sudeep,
>
> In order to use scmi sensor TRIP_POINT_NOTIFY part, the protocol only
> specifies trip points to be configured, and it doesn't have any handler
> associated that shall be invoked upon those points being violated on agent.
> After registering the trip points for a sensor, how does the linux scmi
> sensor driver ever comes to know any violations reported by SCP?!

The notification part is not yet implemented. It's yet another work
in progress feature.

>
> In the scmi_rx_callback() in ISR context, I only see complete(xfer->done)
> which would only let a blocked thread know it could proceed but that means
> some application needs to be initiated and permanently stalled, listening
> to this event?
>

Yes we need to set up Rx channel, buffers and then handle the event.
Rx channel support was added in v5.4, I have posted patch for setting up
buffers[1] but didn't merge without the user. I am still debating on how
to add notification APIs from SCMI for it's users.

> My requirement is that some how I register a call back in linux's scmi senor
> protocol that would be called when trip values are violated and it shall be
> initiated by platform to the agent. It doesn't appear to be a possibility
> looking at the current implementation and msg ids of scmi sensor protocol.
> Am I missing something?
>

As I mentioned earlier all these are WIP. Without platform to test, I am
not actively developing these. I can share patches when it's in good shape.

--
Regards,
Sudeep

[1] https://lore.kernel.org/lkml/20190708154730.16643-6-sudeep.holla@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
