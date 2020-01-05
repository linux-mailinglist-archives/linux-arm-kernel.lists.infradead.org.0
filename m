Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE86130966
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 19:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BX8KUqevaMc9V/71dORdgRPlmsJYZZcqX8IAwJD8aZw=; b=HupJ+VgjwxrI1V
	l71OB+701xbO/gtr+uShlQeRCMEsquFyiwLdnWsapwyuFdyMi4pPKPVTkR0OsCv1IveEpO88y/Xwc
	OVBjD2dWaCckTHA6E13m1TNjmoIW2AaQUw371m3tpMYragwrLnE9zmeM4ZVzrZuVKrx3MvdlI9UVf
	pDOloUMYOIJDusEXBEfwDTYXncFUkR/RA8tCvtYk7ZqLt6BkPYUgebLyzQCDtGWhJWj6yc4VYV1Vw
	0tLW9dyhTQthxYYKO7CmIzkXflJq80Y59Q5D2C9o2exIAVqGAOGfUQsOw/Mf+KetCdJriQDmn8DkM
	VLptMd/bon8Pf/LkTpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioAdl-00041r-Ii; Sun, 05 Jan 2020 18:28:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioAdd-00040p-96
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 18:28:35 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF62720866;
 Sun,  5 Jan 2020 18:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578248909;
 bh=4x9vC91olmd60ycX0+AK25GUmB4k/f+cxqTH4tCuww8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ExslCVI9aoGZEoasCewn+2z26EUJkgrLLXM4mFo8p8VKKO7R4I9kE/qBe2X93uG7+
 0bJdwQHlBwBT4aWDlPxzeDFTmH9rYUI0dEUnKrqJpPnb7WMtNDTnVhzLw4bSjv80gp
 bAcvqQfIGqLI7Rr/sj2DMWDyXkPLl41LK1Aghwio=
Date: Sun, 5 Jan 2020 19:28:26 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?QW5kcsOp?= Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Message-ID: <20200105182826.rnscz5d5pbtb72g2@gilmour.lan>
References: <20200102012657.9278-1-andre.przywara@arm.com>
 <20200102012657.9278-4-andre.przywara@arm.com>
 <20200102095711.dkd2cnbyitz6mvyx@gilmour.lan>
 <20200102104158.06d9baa0@donnerap.cambridge.arm.com>
 <20200104100422.z7iz4jiyj7kdvbtw@gilmour.lan>
 <42aabc62-4885-38fc-a6e5-0f057843d364@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42aabc62-4885-38fc-a6e5-0f057843d364@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_102833_361816_57CFB0C6 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 05, 2020 at 04:40:58PM +0000, Andr=E9 Przywara wrote:
> On 04/01/2020 10:04, Maxime Ripard wrote:
> >> But more importantly: what are the guidelines for using this tag? I
> >> understand the desire to provide every possible pin description on
> >> one hand, but wanting to avoid having *all of them* in *each* .dtb
> >> on the other.
> >
> > Pin groups will take a lot of space in the dtb, and the DT parsing
> > will take some measurable time,
>
> Really? Where is that? In Linux, or in U-Boot, possibly with the caches
> off? I am just curious. AFAIK there are some inefficient algorithms in
> libfdt (which trade performance for a smaller memory footprint), but I
> thought those would be called only very rarely.

The last time I measured it was in U-Boot (and for the FIT image, not
an actual DT), but the parsing time for a FIT image with a kernel and
DTB was around 100ms.

(and adding the PSCI and simplefb nodes was in the same order of
magnitude).

Boot time was very sensitive, and I had to remove both.

> >> And should there be a dtc command line option to ignore those tags,
> >> or even to apply this tag (virtually) to every node?
> >
> > Most of the nodes are (reference) leaves in a DT though. Pretty much
> > all the device nodes have no references pointing to them, just like
> > most of the buses, the CPU nodes, etc. And I'm pretty sure you want to
> > keep them :)
>
> Yeah, that was a New-Year's brain-fart of mine ;-)
>
> While I was changing the patch I figured that it gets quite lengthy.
> Also looking at the a20.dtsi, I see that *all* pin groups have this tag
> now. Wouldn't it be easier to introduce *one* tag that applies that to
> all children of a node?

I don't really know, I'm not sure the proliferation of tags would be a
good thing either, and I'm not the dtc maintainer, so I don't really
have a say in this :)

> Another thing I was wondering about: Would we gain something by not
> compiling nodes which have status =3D "disabled"? This is mentioned as a
> generic property in the DT spec, although it says there that the exact
> meaning is device dependent. But it sound still worthwhile, especially
> since we would avoid more pin groups to be compiled in.

I guess that would be good too, but the semantics are a bit different
so we'd need a different tag.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
