Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBB59F4BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOlj/q5rNcNP2Z7q79iC+zBnhgRvf6cPW6GTfbmR2As=; b=V+3IV4Wy0t6jI2
	WCLqyUMcH4/CL6JApzypWY4j4YHVNUO8VdIWEalgqcT3SUiZGSFiJS/sfRhORAV/I4DJKgnCeyQxf
	iG+DLcaXmO7k+wrOyQI8OyncV6Ayar1wVyDcbfX9H7pj2pTIOe1QWyiRnlHx2OkPNe9iQB2ngCCD0
	Dpk/g/0jnCLAXam4Alzs1TulA37VxzlMsm8vQn+Nj5BgGWDGHdIbIw442Gv5HTSmcRcHPrMjBc49z
	mKVKIulE2/UDkhyPWaAGsFNLQ34NRKPlf/sdJTxnPzDkywfs5JkHshNy0z7ydJ8SrXETpeZNG7vg/
	qvcT9dPoTPEeyNd2+0jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ih2-00041u-EN; Tue, 27 Aug 2019 21:07:56 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2igo-00041P-Bt
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4hoDFeBBZSTSJHVR0wNL11+v5DVaTl/jtF0wjfl4NCU=; b=eD60P4gLOy3/3eTm9dcokjeoY
 bq4UILtFjH6ADIwUW8ytqD8EOyeEisr+itgK6jpSf9rWltAtUR3J5kaJu+7IBSuCzTD0Yu2lUpFDo
 +tR549c5HiuH7QG7w82gOWwgYk/BSsS/vNrhvpvtY9CDGn4Eu7W3CUBcC5xLLjnnak8XpLoU0Sz6P
 Z53zHAQ4qQ0wRJ1wqxPfBNfHKpO9oQVa/3RSk2sH38cRX59ajsRr+zRmb0K9ibC521V2rgHbZNB3U
 RXvpl0WbTOWZQzU7SaPJSQALvmr+LZ6vByrQCzeYdzaEDAo9jxq5/+SdxIUeWqCG4WRRhJ3pfNKaz
 pEj5rDhRQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55350)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i2igQ-0006kX-Q5; Tue, 27 Aug 2019 22:07:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i2igL-00062p-Mt; Tue, 27 Aug 2019 22:07:13 +0100
Date: Tue, 27 Aug 2019 22:07:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Message-ID: <20190827210713.GO13294@shell.armlinux.org.uk>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
 <20190823104621.GY13294@shell.armlinux.org.uk>
 <20190823105020.GZ13294@shell.armlinux.org.uk>
 <836653f04f526333e8dbd45361329731f8dfe2ea.camel@alliedtelesis.co.nz>
 <20190827091336.GI13294@shell.armlinux.org.uk>
 <b1e2e5b325b3c4453e2ed63c17e1e11d6b24f099.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1e2e5b325b3c4453e2ed63c17e1e11d6b24f099.camel@alliedtelesis.co.nz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_140742_409537_723CC72C 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "patches@armlinux.org.uk" <patches@armlinux.org.uk>,
 "gregory.clement@free-electrons.com" <gregory.clement@free-electrons.com>,
 "bp@alien8.de" <bp@alien8.de>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 08:56:05PM +0000, Chris Packham wrote:
> On Tue, 2019-08-27 at 10:13 +0100, Russell King - ARM Linux admin
> wrote:
> > Just send the single patch to the patch tracker - having it against
> > 5.3-rc is fine (I don't think anything has changed for a long time
> > with that file.)
> 
> Done 
> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8902/1
> 
> I'm still not entirely sure what to put for the KernelVersion tag. In
> hindsight think I misinterpreted your comment above and set it to 5.3rc
> (where you meant a series based on 5.3-rcX should apply cleanly). It
> probably should have been next or master because it's way past the
> merge window for 5.3.

Think about it as "which kernel version was _this_ patch generated
against" - it's a guide for me to know which kernel version it
should be applied to.  The nearest Linus release (rc or final) is
generally sufficient.

If it doesn't apply to my current base, then I might check out that
version, apply it there, and then merge it in, resolving any
conflicts during the merge.

It started off with a different purpose: when we had the older
development system, such as the 2.x series kernels, we would have
even x being the current stable kernels, and concurrently we'd
also have x+1 as the development series.  When someone sent me a
patch back then, it was important to know which kernel series it
was meant for.

I decided not to get rid of it because it provides useful
information when patches don't apply, and gives more options
than me just discarding the patch with a comment saying it
doesn't apply.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
