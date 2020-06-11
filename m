Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F561F63CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zj5HoUfFU8waxgMnJjzmQ6/IQlSgG2qKAm9YGvTnD0A=; b=nlzMTOi+DUWlTt
	XuxP/XqrksSOJ+1MJpjdYNYuXeZ3ext13Khwng2URMnjDqB6N+c/lBPKq4Gd7+SoO8wCmwH71nwRa
	kOiHo0ANNTiPKuWAk0FeHySuSn7ebWFV0zAYarLj3O1Fk+n93MKPYpuR3TV/W3JF1gIbPJ48M7Qph
	Cn1WqxELCVadTd1VppO2x5c1jp+yNAUUGFKfAkiMqLj+z/BZa5W6bEW76xrRiUyxVaYpdoMg+asyj
	c9pKCaDMy5idxQjzMTAjA9G/9OTNerzAU85wyDhSIXELkmJ+/vOHjAlUgoZ1YyyyVXWyybfuwAd7C
	MdiwY6pkL/dxqAJToa0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjIlE-000429-7X; Thu, 11 Jun 2020 08:40:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjIl5-00041P-Ef
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:40:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 143F21FB;
 Thu, 11 Jun 2020 01:40:20 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BA483F73D;
 Thu, 11 Jun 2020 01:40:17 -0700 (PDT)
Date: Thu, 11 Jun 2020 09:40:14 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: fix timeout value for send_message
Message-ID: <20200611084014.GB7357@bogus>
References: <20200607193023.52344-1-jassisinghbrar@gmail.com>
 <20200610082315.GB2689@bogus>
 <CABb+yY1T03YLwiFvBykxsAHQ9Kpu=r1nRTuaP3Emf5dP=Upm0g@mail.gmail.com>
 <20200610155629.GA7357@bogus>
 <CABb+yY0pQYD7DTf=MNpVPB7F2PESiWyTYj=ftRHDPkKMOobRVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY0pQYD7DTf=MNpVPB7F2PESiWyTYj=ftRHDPkKMOobRVQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_014023_534693_9260F8ED 
X-CRM114-Status: GOOD (  15.03  )
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
Cc: Rob Herring <robh@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 09:45:55PM -0500, Jassi Brar wrote:
> On Wed, Jun 10, 2020 at 10:56 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> [I admit you can write bigger posts than me, so I am not going to
> write a passionate response to each of your paragraphs.
> Let's keep it to the point.]
>
> > > > >       if (xfer->hdr.poll_completion) {
> > > > > -             ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
> > > > > +             ktime_t stop = ktime_add_ns(ktime_get(), 500 * 1000 * NSEC_PER_USEC);
> > > > >
> > > >
> > > > This is unacceptable delay for schedutil fast_switch. So no for this one.
> > > >
> > > Increasing timeout does not increase latency.
> >
> > Agreed, but worst case you may be stuck here for 500ms which is not
> > acceptable.
> >
> Not acceptable to who, you or the kernel? :)    Now that you said you
> are fixing the scmi's fast_switch implementation.
>

Sorry, I meant to disable it for single channel implementation. I am not
saying we want that on Juno/MHU.

> Even though I don't think 500ms would ruin our lives, but ok, I will
> make it 30ms - same as you did in the 'else' block. And drop the other
> change.

I am fine if cpufreq maintainers allow that in the fast switch path that
happens in the fast path.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
