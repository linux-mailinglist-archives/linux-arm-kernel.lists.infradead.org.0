Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F397FB5C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QywphWv8Mx4gXwueGs0jOdNyveLsrqrBGTLcEpY8O2k=; b=VWYbi4y4VvJpeCxuM9t0PrpDS
	14pej1CS7mPRvbrn7Skn/atEtZx2dEoCud9hnQ1hLpVMsUBl/BqJ82bjc6mmSdQ2fpdV1MumQCM/s
	qckndHd9Q83Q+w1Ky9ci7i0juWd/wL7SRfFf6aaH3MfmORMWUa7UaoizYb5H5pq6g3CRHjNDHnIDw
	K3YHWLnXBYkw/4bRO6UdWVI2W8uJqyTZxT7R3V45p4CrD17WgIBvkJ+D2cRFOFJ6f7KIsCA4VDc0J
	WdvdkM0HtNA+bkv0V8+oLkl4kAW1EoxNqvulYIEOkTMawPJgWf1eam/ENfOdfuMRHOfS80n9fwMjN
	OzMx9sw8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvxA-0007hH-AW; Wed, 13 Nov 2019 16:57:12 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvwy-0007fY-SQ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:57:02 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 20AD68A425;
 Wed, 13 Nov 2019 11:56:59 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=pudSezJJWI5D7ZGH/IF+MpD7h3I=; b=uRPfX4
 vKo4OKXna7Y+91GWdi6TaykezvjDC7BBKE0E20ZisLzaZNK74KETZSOMRZywFzoi
 l2HDs4jb3gSXorRzIQ0hUgUJJ93qp+aVJQgkf2iaOmxBxxWMoGsdQ0Th8Ymx1VbX
 985h3+Tf56Zgsd2WlDFTdL2G5eFS9KxrHd0co=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 1894A8A424;
 Wed, 13 Nov 2019 11:56:59 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=QmE2jItILXUvOoeWFAt50Cg29O3nq4PJ382w4qPIZ4Q=;
 b=HMzWf0A677dZLOgP1Be2DX1oawuadBHmJvQ5Eq/d0mMpyexQDOQBop31VKK9KSB3sGffBh+kwqIA7ifhgVcPkxARGOyRNZLJUknRZeWmIA7ADg19QoPfk1y6cZ7M/qCp3z7tPAuka3RdI/ktMQhGQ9pIXLZXj4qfUrqPcKo2JuA=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id EFECC8A423;
 Wed, 13 Nov 2019 11:56:55 -0500 (EST)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 0E9462DA0227;
 Wed, 13 Nov 2019 11:56:54 -0500 (EST)
Date: Wed, 13 Nov 2019 11:56:53 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: =?ISO-8859-15?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A
 with CS3 SDRAM
In-Reply-To: <20191113104037.e45j37xoxeztvut3@pengutronix.de>
Message-ID: <nycvar.YSQ.7.76.1911131151510.7180@knanqh.ubzr>
References: <20191113102729.29303-1-geert+renesas@glider.be>
 <20191113104037.e45j37xoxeztvut3@pengutronix.de>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-1842071205-1573664214=:7180"
X-Pobox-Relay-ID: 996898E2-0636-11EA-95D8-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_085700_989029_CF5ABA0A 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Russell King <linux@armlinux.org.uk>, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, Eric Miao <eric.miao@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1842071205-1573664214=:7180
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, 13 Nov 2019, Uwe Kleine-K=F6nig wrote:

> On Wed, Nov 13, 2019 at 11:27:29AM +0100, Geert Uytterhoeven wrote:
> > The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).
>=20
> This wording is misleading. You don't adapt the limit because 128 MiB >
> the amount of RAM on that platform but because the alignment of the CS3
> space isn't a multiple of 128 MiB. So I suggest:
>=20
> 	On the RZA2MEVB the SDRAM's base is at 0x0C000000 which isn't
> 	aligned to 128 MiB. So to ensure the assumptions of the
> 	decompressor are valid the used alignment must be decreased.
>=20
> > Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwis=
e
> > the system will crash because it will try to decompress a zImage or
> > uImage to a non-RAM garbage address.
> >=20
> > Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com=
>.
> >=20
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > No idea what to do with the rest of the comment, or if this breaks
> > existing platforms.
>=20
> I would assume that it indeed breaks existing platforms. So maybe bette=
r
> make this configurable, default to 128 MiB and select it to 64 MiB on
> the affected platform? If the resulting kernel supports also other
> machines a warning (at compile time) might be a good idea.

Better yet could involve fetching the actual physical RAM start address=20
from the DTB when present. This 128 MB mask was just a shortcut to keep=20
things simple.


Nicolas
--8323328-1842071205-1573664214=:7180
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--8323328-1842071205-1573664214=:7180--

