Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B577146C51
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTu8EhN9D0SLhUPfFFznedmLPIetX3bNYohRfvFvk5g=; b=LziRpY1EqQ+S2l
	y7un5ShVkucsl5V+ClhVUCYFikVpsmzBOA7fm4mVxo2p4ZCCxLDB4JQYzPBzFMU0964HpHuiQZ+dp
	5wOEM+aDlF6/lCWa2IlOU5DKz+WXxmNPoAIXryu4lMc4S5GMSRWQhxvBjuFIlSGoefqSJwmFM4ApL
	Dc9zQqEpjDpq7VWO8VJjrqaaegnh6q/0wV2QrRJ28tSIg73TCPS6AM8AizcvWUDFkgxGS08OY4w4W
	K1KkJIhuQs8lQM6aGpjnbrgwWwa6LL982Dgyna+R2wwl8/GfoUMsd7Edc49Va0/r3OA2LJ/YUlpIe
	kHL/HDK6v9yZwYiI2W8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iue5w-0008Q4-JH; Thu, 23 Jan 2020 15:08:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iue5n-0008PI-OG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:08:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40DD51FB;
 Thu, 23 Jan 2020 07:08:23 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 734A13F68E;
 Thu, 23 Jan 2020 07:08:22 -0800 (PST)
Date: Thu, 23 Jan 2020 15:08:20 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: dts: fast models: Fix FVP PCI interrupt-map
 property
Message-ID: <20200123150820.GB37953@bogus>
References: <20200123145112.22170-1-maz@kernel.org>
 <20200123150104.GA37953@bogus>
 <dcfc2344205efb0f9ddef615046158a3@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcfc2344205efb0f9ddef615046158a3@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_070823_836154_76F618EB 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 03:04:55PM +0000, Marc Zyngier wrote:
> On 2020-01-23 15:01, Sudeep Holla wrote:
> > On Thu, Jan 23, 2020 at 02:51:12PM +0000, Marc Zyngier wrote:
> > > The interrupt map for the FVP's PCI node is missing the
> > > parent-unit-address cells for each of the INTx entries, leading to the
> > > kernel code failing to parse the entries correctly.
> > >
> > > Add the missing zero cells, which are pretty useless as far as the GIC
> > > is concerned, but that the spec requires. This allows INTx to be
> > > usable
> > > on the model, and VFIO to work correctly.
> > >
> >
> > I assume we need,
> >
> > Fixes: fa083b99eb28 ("arm64: dts: fast models: Add DTS fo Base RevC
> > FVP")
> >
> > Please shout if that's not necessary.
>
> Yes, you're absolutely right (I'm not shouting! ;-).
>

Thanks for the patch and not shouting :), I will send it for v5.6, it
will get backported anyways with fixes tag.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
