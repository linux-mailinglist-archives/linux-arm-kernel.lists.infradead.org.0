Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D94D1C648D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 01:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4LJ6zsc/awUO+ExIIuHHFdt4PTSR6kbakI5AxvzuiU=; b=p5HBJVoZCtuijF
	h5SI/j5i0RmjlKybFJBgx84TXt49o6UG1DoyoQkAS1QbXu3HChyjXeZUV8tbLKFGLK4FU7CeQsLHj
	vUgwYTsBeT9hL9bAPA64jANWuh8IR9uzlxlitEi/+bO7xJ3syzY0u+dfTyUub+JSBY4IaiXiP63TZ
	TVas9KTuNsXCtkWsObqa8ntPuvPKk27KS8aLRJGBUyBErmWv+NkQHfISpWDmrcwifkT4L+FLZTaQL
	9RWjR952jfqm6fsHDFfweiIPX91LxJTOjAZ5iOdx7q6qNVx7vt+4Y7/GEnMGQAVUn6horw5VCqAyp
	0lAKWPRSXiQDN2ddC7kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW752-000482-W0; Tue, 05 May 2020 23:34:28 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW74p-00046f-FY
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 23:34:16 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id F1A6480A5;
 Tue,  5 May 2020 23:35:00 +0000 (UTC)
Date: Tue, 5 May 2020 16:34:08 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] ARM: dts: omap3: Migrate AES from hwmods to sysc-omap2
Message-ID: <20200505233408.GS37466@atomide.com>
References: <20200504230100.181926-1-aford173@gmail.com>
 <20200505184223.GR37466@atomide.com>
 <CAHCN7xJxg+uO4h2RcapyjormTMzXFwoMUOi7rh2hUsScJtK56Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xJxg+uO4h2RcapyjormTMzXFwoMUOi7rh2hUsScJtK56Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_163415_568887_6ADECDCB 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [200505 21:18]:
> On Tue, May 5, 2020 at 1:42 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > * Adam Ford <aford173@gmail.com> [200504 16:02]:
> > > Various OMAP3 boards have two AES blocks, but only one is currently
> > > available, because the hwmods are only configured for one.
> > >
> > > This patch migrates the hwmods for the AES engine to sysc-omap2
> > > which allows the second AES crypto engine to become available.
> > >
> > >   omap-aes 480a6000.aes1: OMAP AES hw accel rev: 2.6
> > >   omap-aes 480a6000.aes1: will run requests pump with realtime priority
> > >   omap-aes 480c5000.aes2: OMAP AES hw accel rev: 2.6
> > >   omap-aes 480c5000.aes2: will run requests pump with realtime priority
> >
> > Great :) Looks like I'm getting the following though:
> >
> > DTC     arch/arm/boot/dts/am3517-craneboard.dtb
> > arch/arm/boot/dts/omap3.dtsi:160.39-184.5: ERROR (phandle_references):
> > /ocp@68000000/target-module@480a6000:
> > Reference to non-existent node or label "aes1_ick"
> >
> > Is this patch maybe missing a change for am3717 for the aes1_ick?
> 
> I am guessing it's the same issue that plagues the am3517 with a note
> in the hwmods that stated noone seems to know which am3517's support
> it and which don't.  The RNG was disabled on the 3517, so I am
> guessing I'll do the same for AES.

OK, I have no idea what modules might be there on am3517.

> I should have posted it as an RFC, because I don't have the proper IRQ
> setup for the newly supported AES engine.  The interrupts that are
> used for the original AES are listed as 'Resereved' in the AM3517 TRM.
> I assume the second engine uses different interrupts.  I don't suppose
> anyone know what it should be?

Sorry no idea, usually the secure accelerator documentation is just
left out it seems. My guess the values are the same as on omap3.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
