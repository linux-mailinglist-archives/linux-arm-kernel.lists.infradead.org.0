Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18B624F8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7+P9u5lanrD4q8j2OXj7tI1BMszDzr57PIZJRGy2js=; b=mkR4Qvp23JEJHU
	OYejg2EMmj8ddQBeiZKxyJ2Mb2ENoGmgECSZ4DQHOiCpk+FLfWtGi3HxbdECApCO7Rb96xt1J8XV3
	hbp1/E7yj2GcPAWz4u5XY3ivKGN/wmaqoHJY/yy3PFKCU+ZV9KBX6oLqVPA96qH11qIvp0VQKrWZu
	IP2uO0K1Eru06aaHTLzBazjab5Gc0uV26wDp6XFzHut6zi3ZWohSiNVQXozGdT9r6h67fETg0bQRI
	8D0Nlx+9L7uv+uajMNuF5busCpq6RvVeiwmsp5MLU/p23A0Lf3nUrkuVny/H/mS0p8LUle9V7ZOmX
	FHKijtoHwyJBgORuz3Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4OH-0004Lo-D6; Tue, 21 May 2019 13:01:13 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4O9-0004K1-Qv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kiheRmbJwdSSS6MbG97WbRFjTMnk82PDnA5kIng1yE4=; b=PLUVW7rskILZEnwXWJPNl3ACrk
 ZGLf5epz4ySN73QrNYT644tZiNkYMnFdOt8/EEtu46x95PE5p5nN7KB6hDdOWWtg8NidyDILbDcvE
 sy4+8sm3C52pde16SliFP1yWRD9NSMWG9Vm3/ekhEeNhWqYXl0zHS5iu7gvzqDAvBuoI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hT4O5-0002LQ-8r; Tue, 21 May 2019 15:01:01 +0200
Date: Tue, 21 May 2019 15:01:01 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: Re: ARM router NAT performance affected by random/unrelated commits
Message-ID: <20190521130101.GC6577@lunn.ch>
References: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_060106_026238_0CF4CAA2 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jo-Philipp Wich <jo@mein.io>, Network Development <netdev@vger.kernel.org>,
 John Crispin <john@phrozen.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-block@vger.kernel.org, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I also tried running cachestat but didn't get anything interesting:
> Counting cache functions... Output every 1 seconds.
> TIME         HITS   MISSES  DIRTIES    RATIO   BUFFERS_MB   CACHE_MB
> 10:06:59     1020        5        0    99.5%            0          2
> 10:07:00     1029        0        0   100.0%            0          2
> 10:07:01     1013        0        0   100.0%            0          2
> 10:07:02     1029        0        0   100.0%            0          2
> 10:07:03     1029        0        0   100.0%            0          2
> 10:07:04      997        0        0   100.0%            0          2
> 10:07:05     1013        0        0   100.0%            0          2
> (I started iperf at 10:07:00).

Try looking at the L1 cache performance. For this class of device, the
L1 code cache is probably too small to contain the active parts of the
network stack. The less cache thrashing you have, the faster the stack
will go.

Maybe try compiling with -Os so it optimises for size.

Build a custom kernel with everything you don't need turned off.

Look at the work being done to batch process packets. Rather than
passing one packet at a time through the network stack, it passes a
linked list of packets to each stage in the stack. That should result
in less cache misses per packet. But not all layers in the stack
support this batching. See if you can find out where it is being
unbatched, and why. Can you influence this, disable build options, or
work on the code to pass batches further along the stack.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
