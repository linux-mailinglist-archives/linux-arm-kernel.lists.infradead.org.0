Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9DB136D05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBUzu3KwmP4RYlCue8huTFkVX7ZvFCCiR+neuwf7ZrY=; b=oVnzGPmJOzpqJy
	XjgjQRDp8KXDaZ+zGDKTFNjktARiUesmjrzeJMHQKlprD9CVDToUT23ed7zyfF2NJgZELnjpkw82d
	7TzkEHIo3S+E+6Fx6yTBVBmJwBC8nybkrOeSyOYDvAzqQiK/Hcop3jmw05xihqMl6qiKHK7Fy4LJ4
	qLDqvOFQXOgXk1ZYFAU5/LNgQejR4V/u0N1mYBPqKo2rxldux15OuJi6tLgZxya/fZO8UsyiITQQC
	tSWeyWNgpfdand4PxfRD6wdbFJStESV/QNlirsbgkolUoACwyeDJxuApovMK07Vp0J2D7DC63MHll
	QVIdDvF2HTg7slQ4i7tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptOA-0000qn-3i; Fri, 10 Jan 2020 12:27:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptNx-0000qJ-H1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:27:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C9B01063;
 Fri, 10 Jan 2020 04:27:29 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E69F33F534;
 Fri, 10 Jan 2020 04:27:27 -0800 (PST)
Date: Fri, 10 Jan 2020 12:27:25 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200110122725.GB45077@bogus>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
 <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_042729_606689_2E51244B 
X-CRM114-Status: GOOD (  19.58  )
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
Cc: peng.fan@nxp.com, Arnd Bergmann <arnd@arndb.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 03:04:42PM +0530, Viresh Kumar wrote:
> On 09-01-20, 09:18, Arnd Bergmann wrote:
> > On Fri, Nov 29, 2019 at 10:32 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > The SCMI specification is fairly independent of the transport protocol,
> > > which can be a simple mailbox (already implemented) or anything else.
> > > The current Linux implementation however is very much dependent of the
> > > mailbox transport layer.
> > >
> > > This patch makes the SCMI core code (driver.c) independent of the
> > > mailbox transport layer and moves all mailbox related code to a new
> > > file: mailbox.c.
> > >
> > > We can now implement more transport protocols to transport SCMI
> > > messages.
> > >
> > > The transport protocols just need to provide struct scmi_transport_ops,
> > > with its version of the callbacks to enable exchange of SCMI messages.
> > >
> > > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> >
> > Conceptually I think this is fine, but as others have said, it would be
> > better to have another transport implementation posted along with this
> > to see if the interfaces actually work out.
>
> @Sudeep/Vincent: Do you think we can add another transport
> implementation something right away for it ?
>

Even if we don't add new transport right away, I would like to see if
the requirements are met. I will take a look at you v2 with that in mind
anyways. We need not wait, we I want to see people think it meets their
requirement. I will also add couple of guys working on virtio transport
for SCMI when I respond to your v2. Thanks for posting it.

> @Peng ?
>
Peng, Did you get a chance to try this with SMC ? If SCMI was the only
usecase, you can try this approach instead of mailbox, now that no one
has any objects to this approach conceptually. Please use v2 as base
and update us.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
