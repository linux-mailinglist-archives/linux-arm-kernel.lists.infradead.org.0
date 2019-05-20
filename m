Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F2523243
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjGOZpArssdqC5FSzJ0lzfgDqFeI7+0uDbrGm4mF8QQ=; b=NGCYgTkkRV9eDR
	jfU4nRlICfDL98jrQwHbsep4gMyK6sv/6IxbesB6GRBPMXhhS+k6WiUmNMoCYpSv0Q9AZVq8xyhkM
	+h9yJoc5VmmRPh21BylpkK5IhLM3b/bKNjMnBGuTdbDR8tkCwDYvd+tTamlG2c0/7LARH4UlqLEyQ
	f1frT4mSQRe/EAEk/S8dEzP1tTKIa+yW4XICdinVdCPMeGUamBVdyC/06KTM/g3Wl0LXMAkVZGdPV
	zwpWAzmu0xhD56xY7xd91WOY8rd6J2tZEwIew1k1C6XBNubRE7Vsyqn5w4pBA1yt7np34XkmLT17o
	8+jSUJ7q/9U8hCPN3uWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgQH-0006v0-3v; Mon, 20 May 2019 11:25:41 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgQ6-0006mF-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:25:32 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D1FF325AD7A;
 Mon, 20 May 2019 21:25:25 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id C18E19404D4; Mon, 20 May 2019 13:25:22 +0200 (CEST)
Date: Mon, 20 May 2019 13:25:22 +0200
From: Simon Horman <horms@verge.net.au>
To: Biju Das <biju.das@bp.renesas.com>
Subject: Re: [PATCH] ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig
Message-ID: <20190520112522.7u5g24nxm4g66yiw@verge.net.au>
References: <1556025203-59961-1-git-send-email-biju.das@bp.renesas.com>
 <CAMuHMdVzMt0Bq6Nyky2sSRKn8pB7srG1BTeweERFNJtrTUj+ow@mail.gmail.com>
 <20190424093315.6jg7muf56d2toxl5@verge.net.au>
 <OSBPR01MB210316C686F7DFABE8013357B83C0@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190424110700.4q7ymsj6y62pvbji@verge.net.au>
 <OSBPR01MB2103E36FDF7A5A38F93D37B9B83C0@OSBPR01MB2103.jpnprd01.prod.outlook.com>
 <20190426101239.syq534l5awlinzb2@verge.net.au>
 <OSBPR01MB21030095151CBAD62DF6F7F7B83E0@OSBPR01MB2103.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB21030095151CBAD62DF6F7F7B83E0@OSBPR01MB2103.jpnprd01.prod.outlook.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_042531_030340_1E2F11A8 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 10:14:26AM +0000, Biju Das wrote:
> > Subject: Re: [PATCH] ARM: shmobile: Remove GENERIC_PHY from
> > shmobile_defconfig
> > 
> > On Wed, Apr 24, 2019 at 11:11:43AM +0000, Biju Das wrote:
> > > Hi Simon,
> > >
> > > Thanks for the feedback.
> > >
> > > > Subject: Re: [PATCH] ARM: shmobile: Remove GENERIC_PHY from
> > > > shmobile_defconfig
> > > >
> > > > On Wed, Apr 24, 2019 at 09:44:11AM +0000, Biju Das wrote:
> > > > > Hi Simon,
> > > > >
> > > > > Thanks for the feedback.
> > > > >
> > > > > I missed to add the dependency for this patch.
> > > > >
> > > > > This patch has dependency on
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi
> > > > > t/co
> > > > > mmit/?h=next-
> > 20190424&id=5d8042e95fd471d0e342cf14f127194f1a867a01
> > > >
> > > > Thanks, but I see the same result with this patch applied on top of
> > > >
> > > > 5d8042e95fd4 phy: rcar-gen3-usb2: Add support for r8a77470
> > >
> > > That is strange.  Have you ran make shmobile_defconfig after applying the
> > patch?
> > >
> > > I get the following result with renesas- devel-20190423-v5.1-rc5.
> > 
> > Thanks, I also see things working fine with both
> > * [PATCH] ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig
> > * 5d8042e95fd4 phy: rcar-gen3-usb2: Add support for r8a77470 applied on
> > top of renesas-devel-20190423-v5.1-rc5
> > 
> > I think I can go ahead and apply
> > [PATCH] ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig
> > once I rebase my branches on v5.2-rc1, agter it has been release and
> > assuming it includes
> > 5d8042e95fd4 phy: rcar-gen3-usb2: Add support for r8a77470
> 
> Thanks Simon.

Likewise, thanks.

Now that v5.2-rc1 is available I have applied this patch for inclusion
in v5.3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
