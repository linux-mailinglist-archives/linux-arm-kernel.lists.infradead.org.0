Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB90016B5DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ3bHcr63QYFcZMV++iUPtLHHjG6woUi4qbW61WZ1H0=; b=Ir/4VrLGDBauwa
	5FGp5RI5mhVaGj52iIrg+eKKI7NhzHEV4iD1DgVaLufOGG9znKM1xJQ6dkNBp3H7BfEtXR5uVY8ij
	kp3WX3X6PykqD8LuaFJC4CaExTEOQyGs8ZPDUkyTKI5b0rKR7Wd0CoTMF9tnDRHy7meF0yh3GZyRj
	E9AWM9bdeOT/EGbhK7+26xgneY0ejl7b3eN9VIOr8V/JdqcaV7zdq0VZKiP+oEXQMYLXpYNHUB7jB
	gI+KgCREdQhBmCS83x1HbiWiWA+VPBDQx2cpVeiYadEf/iyTN0XIq1NpOyZZnjtGS4sfwo+X8qKLr
	jlFIjiwfhnOwSraIHSzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6NKq-0003mm-7a; Mon, 24 Feb 2020 23:40:24 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6NKe-0003lz-Sj
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:40:14 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id DFE366C6;
 Mon, 24 Feb 2020 18:40:10 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 24 Feb 2020 18:40:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=3+7oIYy75eyNJFA+Gxl240s+7FvhCpt
 LmGW8I9hc6zc=; b=vYiAcpOR0t7KGVWY7hgh9uKy/VGeza1MpdZ2dKeiJpfgOdq
 Sala8CAoleHamfa4bqeWxEHIMixNWXwUiTy5/sFfbGdDmNfUoX+1sciR3devM0wD
 olVPelGp8f+n6AIFaPe8c0cq3mGEocaAwm/EoEKHs4tSEefXOsW8G9T0zf+JCPj7
 GuVN/p7be69hH3IcHwkTvmmSbB1siDfYUkr4cSpgu7jUMrwXKpqy1L6+Ke2KI3db
 t4XuVH8MwO8m1PFMxADOQ0xo1l3qzpK5KgVRESBNrihvrV9z2JjAHi9o1XdAtIS+
 0mnwQqa6htnzxWK/eeiRau9cQ8lJa31OrWpizDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3+7oIY
 y75eyNJFA+Gxl240s+7FvhCptLmGW8I9hc6zc=; b=RPEZ+3F5AfM8pcpim0OtAW
 0j+AlR+6UkaJRCS4Lnq27od9CbsUK6/1/WYwHVT36OBEG9PQIXENYJ6xxCYzEBtR
 nzEZVw03UPzy8JlfKHpxcthF5TC84vnSKRsAhhYAL7vYW9et4Ohg0HMB4sDSgMR4
 6Dphk/Tsr0DHXZQ/nuUj1Ez3xoqq/3dRXEyKfGVcsf9JJxL8HqCD8hpnd3EjT24A
 nEyRm4NapwJSpQAWOhQzDDsqBEbV+o0J7qda+Dk2pf51dGcbYJ/OFF1ZLCBnD6a4
 D/+cCDlTd6KeemJJG4oRX+3NCGAHXKyKjzmGwaWZEj7EgGDEmRUApCsY/iPcT8mw
 ==
X-ME-Sender: <xms:2l5UXndW9NloQ7HJPBXX-BJqaRObODb2-N9Wzs1xMbl19FVpWts-OQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledugdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:2l5UXoHWZ7A1vbsnFaiqBisHgfsxXj-3ZGzJQsSCTrfZHiVLimDtzQ>
 <xmx:2l5UXquGQNWqXeRIxlynYkWuE3Ge8JnzgAy6TgTntkJg8GZQ0UhGSw>
 <xmx:2l5UXqo2GgXk0sLo4y7VJSrm6jvM8n90cjxJm1xvM-wdqBRDSJao3A>
 <xmx:2l5UXlGfqHR3pORqV-mPDcjSY1hLgnETHMwBkhzaLG7JdFEeYtedPQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 1A1F4E00A6; Mon, 24 Feb 2020 18:40:10 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-947-gbed3ff6-fmstable-20200220v2
Mime-Version: 1.0
Message-Id: <c5d15783-4e4c-426b-9df0-ee8efc57cefc@www.fastmail.com>
In-Reply-To: <CACPK8XeLWZT-VvuErtz6oE1tv1dhwwOnpZbV7PVr2PxgT2fopA@mail.gmail.com>
References: <20200202163939.13326-1-linux@roeck-us.net>
 <CACPK8XeLWZT-VvuErtz6oE1tv1dhwwOnpZbV7PVr2PxgT2fopA@mail.gmail.com>
Date: Tue, 25 Feb 2020 10:10:06 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Guenter Roeck" <linux@roeck-us.net>
Subject: Re: [PATCH] ARM: dts: aspeed: tacoma: Enable eMMC controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_154013_074573_31C98916 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 4 Feb 2020, at 16:24, Joel Stanley wrote:
> On Sun, 2 Feb 2020 at 16:39, Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > Enabling emmc without enabling its controller doesn't do any good.
> > Enable its controller as well to make it work.
> >
> > Cc: Andrew Jeffery <andrew@aj.id.au>
> > Cc: Joel Stanley <joel@jms.id.au>
> > Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> 
> Thanks Guenter. The description in aspeed-g6.dtsi changed at some
> point and Tacoma was not updated.
> 
> > ---
> >  arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
> > index ff49ec76fa7c..47293a5e0c59 100644
> > --- a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
> > +++ b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
> > @@ -132,6 +132,10 @@
> >         use-ncsi;
> >  };
> >
> > +&emmc_controller {
> > +       status = "okay";
> > +};
> > +
> >  &emmc {
> >         status = "okay";
> >  };
> 
> This node is redundant, as it is not disabled in the dtsi.
> 
> Andrew, should we add disabled to the emmc node?

Probably. Also the nodes are badly named, partly because of the structure
of the IP block. 'emmc' in this instance isn't the actual card, it's the SDHCI,
and emmc_controller is a 'parent' that contains some global state which
applies to one or more SDHCIs inside the IP block.

We should probably cook up better names.

> 
> Or remove the label completely, and just have emmc_controller?

Maybe this is a better approach? The eMMC IP block only has one associated
SDHCI, so that would make sense.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
