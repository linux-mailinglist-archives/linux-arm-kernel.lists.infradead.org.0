Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12848108F07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 14:38:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBCWnRcQg00ahud1jRPg5kUqpTLrGN5fuGQQZF4qw8Q=; b=Y8K05cOA30aneV
	uXo0J6/1voyk84thPaUu78384KXl+U4dThwQk+PA3hs6LUeaJAJn0V1CaAmZoTgTFDhmAdO6mdmXJ
	WKUk1PlJDebDrszvL7umb0CdYfe1S/Zt+7ew4uPwfHjiz6cuPUDohWzKDDHUbUVV38rwKo+BM2xLh
	vzuLEi4B2JXEv3jNBqaDBWNRXit5Ib6qw8xnhmW/n8h6eu3ET7t9/eXwdwhaLYRRkVeFCVii1WerP
	k3y9sDFvWycFGvP0of8DVjJ3E8xkIMKb0g5MQlb1+Q3xTG2++FSdgdiAWQHoETSwAHo9vNgPe+Tk8
	8/Hskbj9NePKKBfAMN1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEZB-0002NN-RL; Mon, 25 Nov 2019 13:38:13 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZEZ1-0002Mb-Ip
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 13:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iVO+CFyKdAbmAXju99HzrtWINdnWqXd4ouQqZQnSQvc=; b=fiQ9YBB/hSo8uJJBQ0xbyC0SJ
 4SjorX4fJ+YbzhLDrCpbu8fQMbxPc7P8HJ855cFcnJeJG4mRyHha8NFB2UO6WROLIvmdBIkKAcVm0
 ml0JebgN+rS+UqdjhIJGYIFh+1uAJnIO1HBusMt0+B8TJuvE0ZkhHcSxYzkkWp344lAsF/1gnHTGD
 Al26t+QS3P2wMVJZ7kJqIhnVtOdX9W0glwxpkIOXI32qaBZLFgMFZAJz1CxS4uSm91EiGz4+pgYFx
 69buvLxxLLtdrTeAVYEP06S3dBOO04wzNcO+aQMoboi7JpCn+DaXPWC5PQKzurNT1UM7aohsSrbZi
 Pf6nPTUvQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:32786)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZEYr-0007zV-2p; Mon, 25 Nov 2019 13:37:53 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZEYq-0006i3-72; Mon, 25 Nov 2019 13:37:52 +0000
Date: Mon, 25 Nov 2019 13:37:52 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
Message-ID: <20191125133752.GS25745@shell.armlinux.org.uk>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
 <20191125125530.GP25745@shell.armlinux.org.uk>
 <c7414301-da0d-cd4d-237d-34277f5ee1d2@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7414301-da0d-cd4d-237d-34277f5ee1d2@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_053803_621009_246D71F6 
X-CRM114-Status: GOOD (  15.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 02:10:21PM +0100, Marc Gonzalez wrote:
> On 25/11/2019 13:55, Russell King - ARM Linux admin wrote:
> 
> > It's also worth reading https://lore.kernel.org/patchwork/patch/755667/
> > and considering whether you really are using the clk_prepare() and
> > clk_enable() APIs correctly.  Wanting these devm functions suggests
> > you aren't...
> 
> In that older thread, you wrote:
> 
> > If you take the view that trying to keep clocks disabled is a good way
> > to save power, then you'd have the clk_prepare() or maybe
> > clk_prepare_enable() in your run-time PM resume handler, or maybe even
> > deeper in the driver... the original design goal of the clk API was to
> > allow power saving and clock control.
> > 
> > With that in mind, getting and enabling the clock together in the
> > probe function didn't make sense.
> > 
> > I feel that aspect has been somewhat lost, and people now regard much
> > of the clk API as a bit of a probe-time nuisance.
> 
> In the few drivers I've written, I call clk_prepare_enable() at probe.

Right, so the clocks are enabled as soon as the device is probed,
in other words at boot time. It remains enabled for as long as the
device is bound to its driver, whether or not the device is actually
being used. Every switching edge causes heat to be generated. Every
switching edge causes energy to be wasted.

That's fine if you have an infinite energy supply. That hasn't been
discovered yet.

Given the prevalence of technology, don't you think we should be
doing as much as we possibly can to reduce the energy consumption
of the devices we use? It may be peanuts per device, but at scale
it all adds up.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
