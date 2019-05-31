Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453B43131A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Fxv8tbMuH0eBXYTWwCK5BZR+vbhiEu5ipMuiB8bmJU=; b=aGIzbq0eS7zCg8
	XysVg6PtoxzwEW1wHFx6F+dOM1FGQ9rQAyQQrEYNrnPz62WjJJli6KbqnEXo2s7+hN+pbWyxMl1GW
	XqHevfttcfwhAe7QLdamh5IMumgx0CjAvn5duqWH92uxe0JFOrg2djMrT7EBGjQj9xKT5eq23YzmC
	CWdVpg1G3Y8u7wrgOH7qRkZpz1OsR9UgfTjUmN16TDPUq26yZIZsexGoRQmm8sLKZ0Pzn5DZN9zyU
	TUfvzN4YqkkwiqrnWm01hROJyHZ/dl0kXmjo9N+k/a+nRP7uiCeXKzTNIhx0YEX2tu2uvC9shyduL
	n4PPkjYjW21XpWN2kkqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkmm-0003vC-JO; Fri, 31 May 2019 16:53:44 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkme-0003tz-23
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:53:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 893B3A78;
 Fri, 31 May 2019 09:53:35 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E00553F59C;
 Fri, 31 May 2019 09:53:33 -0700 (PDT)
Date: Fri, 31 May 2019 17:53:26 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Message-ID: <20190531165326.GA18115@e107155-lin>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_095336_113631_A077980F 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mark Brown <broonie@kernel.org>, Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 11:21:08AM -0500, Jassi Brar wrote:
> Hi Sudeep,
>
> On Fri, May 31, 2019 at 9:33 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > This is my another attempt to extend mailbox framework to support
> > doorbell mode mailbox hardware. It also adds doorbell support to ARM
> > MHU driver.
> >
> Nothing has really changed since the last time we discussed many months ago.
> MHU remains same, and so are my points.
>

Yes, I understand your concern.

But as mentioned in the cover letter I did try the suggestions and have
detailed reasoning why that's still an issue. In short I ended up
re-inventing mailbox framework with all the queuing and similar APIs
for this. Worse, we can't even add an extra node for that in DT to
describe that. It can't be simple shim as we need to allow multiple
users to access one physical channel at a time. We have use case
where we can this for CPU DVFS fast switching in scheduler context.

> >
> > Brief hardware description about MHU
> > ====================================
> >
> > For each of the interrupt signals, the MHU drives the signal using a 32-bit
> > register, with all 32 bits logically ORed together. The MHU provides a set of
> > registers to enable software to SET, CLEAR, and check the STATUS of each of
> > the bits of this register independently. The use of 32 bits for each interrupt
> > line enables software to provide more information about the source of the
> > interrupt.
> >
> "32 bits for each interrupt line"  =>  32 virtual channels or 32bit
> data over one physical channel. And that is how the driver is
> currently written.
>

Yes, I understand.

> > For example, each bit of the register can be associated with a type
> > of event that can contribute to raising the interrupt.
> >
> Sure there can be a usecase where each bit is associated with an event
> (virtual channel). As you said, this is just one example of how MHU
> can be used. There are other ways MHU is used already.
>

Agreed and I am not saying that's incorrect or asking to remove
support for that. Future versions of MHU are making it more complex
and the specification classify the 3 modes of transport protocol in which
the new controller can be configured and used.

The choice is left to platform based on use case to get best/optimal
results. That's the reason I am trying to convince you that we need to
support all those configurations/transport protocols in the Linux
mailbox controller driver. As you mention one use-case of MHU, the word
transfer with 2^32 - 1 options is optimal for IoT use-case where as
doorbell mode is optimal for heavy payloads. The newer versions of
MHU are designed keeping both configurations in mind and the same is
suggested by h/w teams to
various vendors.


Arnd has similar suggestions(something like patch 1) to deal with such
configurations/transport protocols. Please note I am referring to
different transport protocols and not message protocols(SCPI/SCMI fall
under this category)

> Patch-2/6 looks good though. I will pick that up.
>

Thanks.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
