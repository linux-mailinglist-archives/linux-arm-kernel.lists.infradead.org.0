Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E9352941
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/vouy09khSmOO5VeWI1JM5kJiOF0jN4M+zNFEDnytk=; b=qTvudLIupuKvmz
	cG4iPudu8Ef9sKxaKfFC6OLFvUPuJzjI6zUA9xwUp2ldHCNpUtLiHgXsQ6kdwC66HsvogIIjFWgUD
	sttQG5MIQ0CSOZqsznPduuVRgYiCgxQbogV2ME2s5ytiUysmuB3Ixg4zmPvt+D9iWv6WTOYtUpEYo
	cB3LNUFty/eDz91NJ/P8R26Te22MV/bseH3Ve54+hHTuQhfYMoTTbthbFh8ahikabFVueUgpowerp
	bV/jlOG0hfmdkt7ymepZ2y1J8kKmXvYiIk4qvpYjIcxVIpupFBU0DAXKtKicyQoc7VmwyZImFM/iE
	kV+Sg3rERI9fWEsGH/qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiW5-0008Qc-KK; Tue, 25 Jun 2019 10:17:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiVp-0008Q5-SV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:17:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LzpNVlJKLYzDBWmjft6hb5Lt+w3/1+2+74j5WYoUB5s=; b=OZ27eyAkJKiN5LjA4Mdnw/TaE
 0OSrfP1o5lxTgZZdykcVUq8nEnHcHsj/WlBBnLQKHmGkhu6q0jBVBjFFfAkUboDzBgBa0GAuux22m
 cMlmi8YLB7JVvil+PyiKYH4fiL2FVmMJ1GcPdNAZz1xP9i/ZoUtm6r7/18V2weMVRoaw0eXQgjV4/
 5xsYmluSNKbWCGk1wQpKqwKIi1NTjuJmAwMTonHsoLWk1rWe89Z8IvXSgHlynSHKbs4203ft0h7rv
 DD77iMGbUVY505jGcN1UFV0Ba9p3j6H7WLeR73xcWqtu8kG2mUrSFnq0ctSpcPpbvDAddzgFDvVHF
 uyCJ2qYLg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58980)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfiVX-0005kN-9C; Tue, 25 Jun 2019 11:16:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfiVT-00078Y-Io; Tue, 25 Jun 2019 11:16:55 +0100
Date: Tue, 25 Jun 2019 11:16:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
Message-ID: <20190625101655.n246vbwtupb4eoyz@shell.armlinux.org.uk>
References: <cover.1561452052.git.andrzej.p@collabora.com>
 <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
 <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_031717_928353_23AF84F7 
X-CRM114-Status: GOOD (  14.89  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 12:14:27PM +0200, Andrzej Pietrasiewicz wrote:
> Hi Russell,
> =

> W dniu 25.06.2019 o=A012:03, Russell King - ARM Linux admin pisze:
> > On Tue, Jun 25, 2019 at 11:46:34AM +0200, Andrzej Pietrasiewicz wrote:
> > > It is difficult for a user to know which of the i2c adapters is for w=
hich
> > > drm connector. This series addresses this problem.
> > > =

> > > The idea is to have a symbolic link in connector's sysfs directory, e=
.g.:
> > > =

> > > ls -l /sys/class/drm/card0-HDMI-A-1/i2c-2
> > > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/i=
2c-2 \
> > > 	-> ../../../../soc/13880000.i2c/i2c-2
> > =

> > Don't you want the symlink name to be "i2c" or something fixed, rather
> > than the name of the i2c adapter?  Otherwise, you seem to be encumbering
> > userspace with searching the directory to try and find the symlink.
> > =

> =

> Thank you for your comment. So you imagine something on the lines of:
> =

> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
>  	-> ../../../../soc/13880000.i2c/i2c-2
> =

> ?

Exactly.

> This makes sense to me, I will send a v2.

Thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
