Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD0B1ED626
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEhS5dPuwKLcv/04JQFTMXUZX15MBo0lGIk99tef6Z8=; b=nxXmDTJp4ydQhA
	sHqgPeK5CJ1wylgwqAnowa1Il5rYJrnFvciMMzHwFt3HiO34uNUAtJKXfFmq90RU/4Klj3JjT7DzR
	JlPYAiLC6ghn1WDA6ZzaQgziKGuQ9eX+jYtfwB/saIA9nvuX0UUmf86zyMU4ehnMAn9s/K7jAFAz2
	2WFvaG/tEWb0U/n6IVHG+WOhdIuY9Z6a73nOKiN1QS6swV61Cgq35CkVmh0WDoltNI8tOar3zKNyG
	JteFGcph0vcRF4vBSNvMj5LNtuX8Fo3u9un+d9M8vBWnz03gnlpD4Bf3v2c/OHm/DlGjkLchtAmkO
	R8YumIgmg1YOVLBsWhpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYAp-0001vB-5V; Wed, 03 Jun 2020 18:31:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYAi-0001ui-6q
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:31:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 022D931B;
 Wed,  3 Jun 2020 11:31:27 -0700 (PDT)
Received: from bogus (unknown [10.37.8.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 948313F305;
 Wed,  3 Jun 2020 11:31:23 -0700 (PDT)
Date: Wed, 3 Jun 2020 19:31:20 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200603183120.GE23722@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200519012927.GT2165@builder.lan>
 <20200519034055.hfvifqz442yfduhg@vireshk-i7>
 <CABb+yY30nmbBUzYG62xGEbrr7107h_Edyq3jKPheZAQ0Cvr9Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY30nmbBUzYG62xGEbrr7107h_Edyq3jKPheZAQ0Cvr9Yg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_113128_293864_872EC286 
X-CRM114-Status: GOOD (  26.44  )
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 11:05:03PM -0500, Jassi Brar wrote:
> On Mon, May 18, 2020 at 10:40 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 18-05-20, 18:29, Bjorn Andersson wrote:
> > > On Thu 14 May 22:17 PDT 2020, Viresh Kumar wrote:
> > > > This stuff has been doing rounds on the mailing list since several years
> > > > now with no agreed conclusion by all the parties. And here is another
> > > > attempt to get some feedback from everyone involved to close this once
> > > > and for ever. Your comments will very much be appreciated.
> > > >
> > > > The ARM MHU is defined here in the TRM [1] for your reference, which
> > > > states following:
> > > >
> > > >     "The MHU drives the signal using a 32-bit register, with all 32
> > > >     bits logically ORed together. The MHU provides a set of
> > > >     registers to enable software to set, clear, and check the status
> > > >     of each of the bits of this register independently.  The use of
> > > >     32 bits for each interrupt line enables software to provide more
> > > >     information about the source of the interrupt. For example, each
> > > >     bit of the register can be associated with a type of event that
> > > >     can contribute to raising the interrupt."
> > > >
> > >
> > > Does this mean that there are 32 different signals and they are all ORed
> > > into the same interrupt line to trigger software action when something
> > > happens?
> > >
> > > Or does it mean that this register is used to pass multi-bit information
> > > and when any such information is passed an interrupt will be triggered?
> > > If so, what does that information mean? How is it tied into other Linux
> > > drivers/subsystems?
> >
> > I have started to believe the hardware is written badly at this point
> > :)
> >
> H/W is actually fine :)   Its just that the driver is written to
> _also_ support a platform (my original) that doesn't have shmem and
> need to pass data via 32bit registers.
> Frankly, I am not against the doorbell mode, I am against implementing
> two modes in a driver. If it really helped (note the past tense) the
> SCMI, we could implement the driver only in doorbell mode but
> unfortunately SCMI would still be _broken_ for non-doorbell
> controllers.

Should be fine as the specification is designed to work with only shmem
for any data transfer and mailbox is just a signal mechanism. I won't
be too worried about that.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
