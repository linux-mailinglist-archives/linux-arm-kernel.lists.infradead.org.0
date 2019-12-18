Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EEC124483
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLTfrdNCbVmVazPN5JUfxuJvgLp9zuMXL0hxvLjaVIs=; b=R/TQFl3P2TwUvq
	IHhEqSUu1Bwo+FA5W/0QUZxJc+J/2S0cpgjoRdz1Q7V3qzFYGq8hFQdtvLaQLqvJm/tlWPVa3IymO
	etwy+lUDWre2D4gAz6ScEtxjTajuRQhUvI44soHtJdSEfR5LAuIwbv/U0i2ip+bT2Z7PcI8W88X0R
	BKonrf8Edub+zLGQFHVKokxoAYeb+qaxZF/vkvnY4qoV2uGbUnOYjHBQfKxbgPecaPMcZPbQoXJzf
	lZKzaTFRJJG0rQBC8NmWbK5mwoZLfSxArwp71one0X4mj9KmHZ6DAxUztjYLt1VjIPPxZAKcQxZqh
	X/PiJ1degd8iow/aMusQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWXJ-0004hH-K6; Wed, 18 Dec 2019 10:26:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWWn-0004V1-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:26:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA48E30E;
 Wed, 18 Dec 2019 02:25:59 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DDE7F3F6CF;
 Wed, 18 Dec 2019 02:25:57 -0800 (PST)
Date: Wed, 18 Dec 2019 10:25:53 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 00/14] cpuidle: psci: Support hierarchical CPU
 arrangement
Message-ID: <20191218102553.GA27906@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <CAPDyKFoTKAs-sFZWNgY+Ym8-hQ_Ks2Qa+g3EtgfMPhEstHTddw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoTKAs-sFZWNgY+Ym8-hQ_Ks2Qa+g3EtgfMPhEstHTddw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022601_970001_6FB7A65F 
X-CRM114-Status: GOOD (  14.15  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 08:36:38AM +0100, Ulf Hansson wrote:
> Sudeep, Lorenzo,
>
> On Wed, 11 Dec 2019 at 16:43, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > Changes in v4:
> >         - Mover the check for OSI support from psci_dt_attach_cpu() to the
> >         caller's side of it.
> >         - Add comment in the code about using the deepest idle state as the
> >         triggering point for the domain state selection.
> >         - Folded in a patch to enable support for CPU hotplug.
>
> I believe I should have addressed all your provided inputs for this
> version, unless you find something new, of course.
>

I have marked this for a review before this Christmas, Lorenzo is off for
a while but he has mentioned to me few things to look for. I will do so
before Christmas for sure. Sorry for the delay.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
