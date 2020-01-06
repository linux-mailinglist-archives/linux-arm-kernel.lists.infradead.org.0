Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FDD1310F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 12:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M37Ur3/KGUax4E4WjE1FJ10leuHdHqmA9LCO1MhZnpc=; b=D0Ub7vbckAtMc7
	Ca27KqIEYuUmp42McJLURYg6zC+QAAt/1wckOKhFsxlssRExnDsHNysm3Koje27F7Rbpu8pH2+WT5
	+snvXq2K6uhg3hj5j7MQX+f+x1bs8rq3/93bgTRe31WXc+T7qE4jan2CO6eQxGN9HgCnVN0fIs3zU
	JMiZD1+e0xHiyqvVdmGAYM5PUSC8mKEPMQkOH5RBk3XjvbqYPe6wjbUv9ieMyvZLTkrhBAaXSCpC0
	1IrTbZPkXtUrmEgZf5pmlyPXdBjhQx/QRCHI6NP45GT+/DRRGkGwui8weeL2yl86eIfrGK3agtgmM
	C4kWGmhFTfaKozXC3KJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQ7V-0001Ab-Ow; Mon, 06 Jan 2020 11:00:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQ7N-00017b-EP
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 11:00:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF869328;
 Mon,  6 Jan 2020 03:00:15 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC7843F534;
 Mon,  6 Jan 2020 03:00:14 -0800 (PST)
Date: Mon, 6 Jan 2020 11:00:07 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200106110007.GA54466@bogus>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CABb+yY0qh-qWJWxEaB9_XxmiFb=xP0hOxpm1j54seeT3dMKt2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY0qh-qWJWxEaB9_XxmiFb=xP0hOxpm1j54seeT3dMKt2w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_030017_529620_C31BB945 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 02:09:27PM -0600, Jassi Brar wrote:
> On Fri, Nov 29, 2019 at 3:32 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > The SCMI specification is fairly independent of the transport protocol,
> > which can be a simple mailbox (already implemented) or anything else.
> > The current Linux implementation however is very much dependent of the
> > mailbox transport layer.
> >
> > This patch makes the SCMI core code (driver.c) independent of the
> > mailbox transport layer and moves all mailbox related code to a new
> > file: mailbox.c.
> >
> > We can now implement more transport protocols to transport SCMI
> > messages.
> >
> > The transport protocols just need to provide struct scmi_transport_ops,
> > with its version of the callbacks to enable exchange of SCMI messages.
> >
> We can either add new transport layer between SCMI and Mailbox layers,
> or we can write new transport as a mailbox driver (which I always
> thought could be a usecase). Right now I am of no strong opinion
> either way.  Depends, what other transport do you have in mind?
>

To be more clear, this patch abstracts the SCMI transport so that mailbox
can be one of the transport. The plan is to add SMC/HVC, SMC/HVC over SPCI,
vitio based transport as alternative to mailbox. These are neither added
as mailbox driver nor transport layer between SCMI and Mailbox. E.g.:
we either use Peng's SMC based mailbox driver as is or add a new transport
independent of mailbox framework here as SCMI transport.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
