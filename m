Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AB52C658
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5dkeYxolBSP0JUTkv7+gA1acaKJPyyFmI4NuywxqIA=; b=Ssiqo4RaLK0cLr
	5vr1wPYbml4Dh5FMbTnJycWn+uKZY1gVCnVMAPkL4euPbkwVnxw3PkZVfV+ijbsNKHNRQ+egbCaWa
	9KhGyqKO4XY6I+GdE/grl6AcBddlKppUnCe3FtXKElKKGv9cw1qWBDp+0Ul8m5P+4MwdCtiPWYS65
	EOvrVyQZBkJ8J0d3e40pBE9SwgU9280rnpEITWq1PO5pTDThW8hgzm5Wn4C7hu1hj+RoAAcs+s/+4
	az8ZpXbhfkTu61UXOE4SwuvpY/IcHu6QFzhvJQlkPtmGC1moe/rNlXnLhCxKAth+ScM/r98L2hfoS
	Fhphjbv1iMJhmCN4VN0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVb62-0007pN-Qg; Tue, 28 May 2019 12:20:50 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVb5v-0007p0-BF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:20:45 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6E6FA200017;
 Tue, 28 May 2019 12:20:26 +0000 (UTC)
Date: Tue, 28 May 2019 14:20:25 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 01/10] dt-bindings: rtc: Move trivial RTC over to trivial
 devices
Message-ID: <20190528122025.vv4oyt5cwetj2hzp@flea>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <20190527120626.GM3274@piout.net>
 <20190527121832.lui2n6vhlemlqy2z@flea>
 <20190527160657.GN3274@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527160657.GN3274@piout.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_052043_538603_592A1770 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, May 27, 2019 at 06:06:57PM +0200, Alexandre Belloni wrote:
> On 27/05/2019 14:18:32+0200, Maxime Ripard wrote:
> > Hi Alex,
> >
> > On Mon, May 27, 2019 at 02:06:26PM +0200, Alexandre Belloni wrote:
> > > On 27/05/2019 14:00:33+0200, Maxime Ripard wrote:
> > > > The RTC generic bindings has a bunch of devices that have a pretty simple
> > > > binding, with just compatible, reg and optional interrupts properties.
> > > >
> > >
> > > This is not true, they all also support the star-year property, this is
> > > why they are not in the trivial-devices file anymore.
> >
> > Ok, I misunderstood the binding then.
> >
> > Should we create a separate file for the trivial RTC, on the model of
> > the trivial-devices but supporting all the RTC properties?
>
> I would say that this is the way forward. Note that all the RTCs
> support start-year but you will have to check for the other
> properties.

The way this will work is that it's a two layers thing. Patch 2
creates a generic RTC binding schema that will match on two things:
  - Schemas including it directly,
  - any devicetree node following the node name pattern.

The point of that schema is to validate that every node (or binding),
if it has those properties, the schemas will make sure that it's the
proper type, (and if we would have any) ranges, etc.

Then, it's up for the driver schemas to do a more on-point validation,
with whatever constraints they have. They can choose to restrict the
set of properties, or not to, it's really up to the device schema.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
