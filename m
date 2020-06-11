Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741481F6531
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2DPtHVgJP3iYKJxxyuA/z0jZLUAcngHb6Hde1aIb0Y=; b=kdu2AaCfczxjJ/
	8D9NeKBCDJR/Cs7DZkQktOBpXwiReowU3qU3UwTm9yL40ZIJPJruLmZ2TxkEaJtde30s5BgAvJpp4
	kkvFesSJhKtqm9erJQQJsHXwS7/57VC1nbBJ+9M3mZXt4scMInm9fMrZAzIFc3h1sa+InRgtFxxDd
	KKfjnRVg1dY+vZeZpbpK3rIvoLzcSVVzGa4r92oPVW8x1pkM7jqMJ/FQc3o0vdZOa6Pody/N4P4Ym
	ipsi9e+9BRp6jaa2CZ6NV+ObicqdGmuGz8TvfdyB3pr6XdObZOBj2YtwfpFM2QKAn62Bz3I/VT054
	HIgeflOeH5gLwRdADCSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjK0x-000186-1G; Thu, 11 Jun 2020 10:00:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjK0e-0000tJ-VO
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 10:00:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0A6231B;
 Thu, 11 Jun 2020 03:00:31 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92CE23F73D;
 Thu, 11 Jun 2020 03:00:29 -0700 (PDT)
Date: Thu, 11 Jun 2020 11:00:27 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200611100027.GB18781@bogus>
References: <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
 <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
 <20200605045645.GD12397@bogus>
 <CABb+yY2YZ99NjHYNi0=KLGFDsVUeJmqiJD3E25Chwk-THJV4iw@mail.gmail.com>
 <20200605085830.GA32372@bogus>
 <CABb+yY2TR7tuMx6u8yah6mO2GwZ5SWYOO80EQRL-i=ybgn=Wog@mail.gmail.com>
 <20200610093334.yznxl2esv5ht27ns@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610093334.yznxl2esv5ht27ns@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_030033_106546_9B1A04C9 
X-CRM114-Status: GOOD (  31.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Devicetree List <devicetree@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

Thanks for summarising the thoughts quite nicely.

On Wed, Jun 10, 2020 at 03:03:34PM +0530, Viresh Kumar wrote:
> On 05-06-20, 10:42, Jassi Brar wrote:
> > Since origin upto scmi_xfer, there can be many forms of sleep like
> > schedule/mutexlock etc.... think of some userspace triggering sensor
> > or dvfs operation. Linux does not provide real-time guarantees. Even
> > if remote (scmi) firmware guarantee RT response, it makes sense to
> > timeout a response only after the _request is on the bus_  and not
> > when you submit a request to the api (unless you serialise it).
> > IOW, start the timeout from  mbox_client.tx_prepare()  when the
> > message actually gets on the bus.
>
> There are multiple purposes of the timeout IMO:
>
> - Returning early if the other side is dead/hung, in such a case the
>   timeout can be put when the request is put on the bus as we don't
>   care of the time it takes to complete the request until the time the
>   request can be fulfilled. This can be a example of i2c/spi memory
>   read.
>
> - Ensuring maximum time in which the request needs to be serviced.
>   There may be hard requirements, like in case for DVFS from
>   scheduler's hot path (which is essential for better working of the
>   overall system). And for such a case the timeout is placed at the
>   right place IMO, i.e. right after a request is submitted to mailbox.
>

Agreed on both points.

> And some more points I wanted to share..
>
> - I am not sure I understood the *serializing* part you guys were
>   talking about. I believe mailbox framework is already serializing
>   the requests it is receiving on a single channel with a spin lock,
>   right ? Why does the client need to serialize them as well? Is that
>   for avoiding timeouts ?
>
> - For me, and Sudeep as well IIUC, the bigger problem isn't that
>   timeouts are happening and requests are failing (and so changing the
>   timeout to a bigger value isn't going to fix anything), but the
>   problem is that it is taking too long (because of the queue of
>   requests on a channel) for a request to finish after being
>   submitted. Scheduler doesn't care of the underneath logistics for
>   example, all it cares for is the time it takes to change the
>   frequency of a CPU. If you can do it fast enough in a guaranteed
>   manner, then you can use fast switching, otherwise not.
>
> - The hardware can very well support the case today where this can be
>   done in parallel and (almost) in a guaranteed time-frame. While the
>   software wants to add a limit to that and so wants to serialize
>   requests.
>

+1

> - As many people have already suggested it (like me, Sudeep, Rob,
>   maybe Bjorn as well), it seems silly to not allow driving the h/w in
>   the most efficient way possible (and allow fast cpu switching in
>   this case).
>
> > Interesting logs !  The time taken to complete _successful_ requests
> > are arguably better in bad_trace ... there are many <10usec responses
> > in bad_trace, while the fastest response in good_trace is  53usec.
>
> Indeed this is interesting. It may be worth looking (separately) into
> why don't we see those 3 us long requests anymore, or maybe they were
> just not there in the logs.
>

As I mentioned in another thread that non-dvfs requests may be prioritised
lower when there are parallel request to the remote. The so called bad
trace doesn't have such scenario with single channel and all requests
from OS being serialised. The good trace has 2 channels and requests to
remote happen in parallel and hence it is fair to see slightly higher
latencies for lower priority requests.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
