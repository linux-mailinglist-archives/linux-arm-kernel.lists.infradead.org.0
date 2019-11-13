Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAFFFAEF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:51:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGUEJT70zfo/H7W1Xu7csVIaZg8wc9Y9aMQC7IS/YrM=; b=sUR3d+MjWKps7f
	Hjw9CeqiLGS8y+ViFyRuaoBa91Q171sVl1AEyyak9G2btScbfv7QaVgAaNkFvdCV2ehfMUhsGS+B2
	U0XVpyF+a1hDo5NkSVSRsqlRe1iwwxghMDVu9yg+xnWbGKPy+g78yUDN+H6bizFNAeaZQvHMmLr4/
	ho7jt0yAYzMjJWpNeJeyDv6r2ObdBA6cGeh0LefSTp5cii39y2W0PH5srktvvB368D4CMtN06E50j
	A8VSs7cRA/dDhtTa6i+Xb4tRWoPU09gooSSxLC1Ou60+2ghTzvmLKAdfDfSeRvAdR+DVtTHgzaTix
	6Bemyb5BUsiMX4GEimRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqEv-0000sZ-BK; Wed, 13 Nov 2019 10:51:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqEm-0000r2-RV
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:51:02 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUqEf-0004fz-G4; Wed, 13 Nov 2019 11:50:53 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUqEd-0005zF-K8; Wed, 13 Nov 2019 11:50:51 +0100
Date: Wed, 13 Nov 2019 11:50:51 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A
 with CS3 SDRAM
Message-ID: <20191113105051.3fexzhvnb6d4nicv@pengutronix.de>
References: <20191113102729.29303-1-geert+renesas@glider.be>
 <20191113103919.GM25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113103919.GM25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_025100_892493_4973FF76 
X-CRM114-Status: GOOD (  18.70  )
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, Eric Miao <eric.miao@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

On Wed, Nov 13, 2019 at 10:39:19AM +0000, Russell King - ARM Linux admin wr=
ote:
> On Wed, Nov 13, 2019 at 11:27:29AM +0100, Geert Uytterhoeven wrote:
> > The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).
> > Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwise
> > the system will crash because it will try to decompress a zImage or
> > uImage to a non-RAM garbage address.
> > =

> > Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com>.
> > =

> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > No idea what to do with the rest of the comment, or if this breaks
> > existing platforms.
> =

> We occasionally have discussions about this - the last one was a big
> one in Edinburgh, and the answer is we can't change this in mainline.
> They've also come up on the mailing lists as well.
> =

> I'm not going to rehash this old argument yet again - the comment
> details the reason for it, and is there to prevent exactly this.
> =

> If someone is silly enough to come up with a platform that violates
> the documented 32-bit ARM booting protocol, then they can't expect
> the kernel to bend to their platform's requirements at the expense of
> already merged platforms.

While I agree to your conclusion I think the last paragraph isn't a
valid justification. The "32-bit ARM booting protocol"[1] doesn't
mention an alignment, it only states "The kernel should be placed in the
first 128MiB of RAM." And if this is done on a platform where RAM starts
at 0x0C000000 this results in writes to [0x0b000000, 0x0c000000].

Best regards
Uwe

[1] that's Documentation/arm/booting.rst, right?

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
