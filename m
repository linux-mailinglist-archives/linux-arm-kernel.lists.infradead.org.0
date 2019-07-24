Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86C872F27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uJp8nwSeTF9XhxZ9cJXiRnkh+9INxvemJpohNC+JdM=; b=Nq720s0+8E2bS3
	XIjvx9S+JcM7nZPdufRmiRmhkXtvNJQHmN3tlq2oS74qNojiIVKb+U00oO0Hdi8jD2zI85KB8hMA7
	1SxzrT71FvObP2lu14KPs6nUjos1XC7stAjvYQkVg+5Nm+F59N7t8Vyfa1L08yMGhPqAhSz2tMePJ
	srgC/VsY5HY5d/bQFYI2mt6pOHW5YbeKuH1V8bnPnUfTjhrD5l3e6B02b3SPGK6Y5tsS40kvpE81r
	S+Goj+/sTMBNsc2HxlvEFOEm9+iN5B8TGNP9rmZ7p420Vh9f86Vw5EgaESdIQmsjbuVZM3jHjWpP2
	gPO7oscH+BUfRWRHf/Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGg0-00074g-Ou; Wed, 24 Jul 2019 12:47:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGfs-00074L-Hz
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:47:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2729A28;
 Wed, 24 Jul 2019 05:47:14 -0700 (PDT)
Received: from stinger.cambridge.arm.com (stinger.cambridge.arm.com
 [10.1.137.189])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 219043F71A;
 Wed, 24 Jul 2019 05:47:13 -0700 (PDT)
Message-ID: <4d576e9cc749fc47b57f9bc64a082aa791e9780c.camel@arm.com>
Subject: Re: [PATCH 0/3] RFT: PL111 DRM conversion of nspire
From: Pawel Moll <pawel.moll@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg
 <sam@ravnborg.org>,  Liviu Dudau <Liviu.Dudau@arm.com>
Date: Wed, 24 Jul 2019 13:47:11 +0100
In-Reply-To: <CACRpkdZhYy6o9xMD42pQm-MCZUi0EpXs1uwQg6D-B4NXpyMHWw@mail.gmail.com>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723181000.GA24663@ravnborg.org>
 <CACRpkdZhYy6o9xMD42pQm-MCZUi0EpXs1uwQg6D-B4NXpyMHWw@mail.gmail.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_054716_639744_08D02DB9 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-07-24 at 13:28 +0100, Linus Walleij wrote:
> On Tue, Jul 23, 2019 at 8:10 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> > On Tue, Jul 23, 2019 at 03:37:52PM +0200, Linus Walleij wrote:
> > Do we need to support arm,pl11x,tft-r0g0b0-pads before
> > we can obsolete fbdev stuff?
> 
> No I don't think so, the only in-tree platform that was using it was
> the Nomadik and all it did was to switch RGB to BGR and
> I already handle that in the driver using the hardware
> feature to switch RGB and BGR around instead.
> 
> Right now I just check that the pads are there, I might just
> remove the check.
> 
> However Pawel added this binding and might be able to tell
> something about if there are platforms out there that really
> needs this. Possibly Liviu knows more.

It was only there so the fbdev driver could figure out the output mode.
I take that DRM "pipeline" now takes care of it, so I'd say that the
moment the fbdev driver dies, the binding can go along :-)

Cheers!

Pawel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
