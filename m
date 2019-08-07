Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6588A84B23
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nnxv5C0Z7hp1WGI1wezAc6hXGwXsWbK2+6n/vWHPNxE=; b=VJc70WvpVUu+Dz
	NA2zzk7RajRGCbMG65KsKczNVVOlFMeat90bu0CPF/TMb3CN76LzZpO6MsFl0t9L8h8wtjT2L+7Uh
	/zbzoYNIHfrh3UEbXGN98rNSyU5RVfbCxV3l253Jaq06G8KGQ1M5xqJrc3irdxZjTXtIi0iTvvX1B
	DXcmbfZv1fSmSnKR558uz/lrUD1rj79CJBq32YA3JG//gVxzaGqsmzcGaCdk9Yb9lnZJ1ncwnC2U4
	vmtuj7BY0RcnU++DVzBixD39dZQHXMPFKduMYGHovAVMV6lNx+61E1y2oBcXTujWel+6yg252yZaU
	EBOtyvkzCsG/pB5RYdYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKdF-0004bk-QT; Wed, 07 Aug 2019 12:01:29 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKcu-0004bN-7H
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:01:09 +0000
X-Originating-IP: 88.168.111.231
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id F0835E0003;
 Wed,  7 Aug 2019 12:01:04 +0000 (UTC)
Date: Wed, 7 Aug 2019 14:01:04 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Message-ID: <20190807120104.ssj5cvx4hwicufrv@flea>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_050108_417130_7012E643 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Sunil Mohan Adapa <sunil@medhas.org>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 02:25:17PM +0800, Chen-Yu Tsai wrote:
> On Mon, Aug 5, 2019 at 8:58 PM Martin Ayotte <martinayotte@gmail.com> wro=
te:
> >
> > Fine for me too.
> >
> > Thanks .
> >
> > -----Message d'origine-----
> > De : Sunil Mohan Adapa [mailto:sunil@medhas.org]
> > Envoy=E9 : Monday, August 05, 2019 1:25 AM
> > =C0 : Chen-Yu Tsai
> > Cc : Maxime Ripard; Martin Ayotte; linux-arm-kernel
> > Objet : Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
> > A64-OLinuXino
> >
> > On 04/08/19 8:33 pm, Chen-Yu Tsai wrote:
> > > On Fri, Aug 2, 2019 at 2:47 AM Sunil Mohan Adapa <sunil@medhas.org> w=
rote:
> > >>
> > >> On 01/08/19 6:49 am, Martin Ayotte wrote:
> > >>> If my SOB could help here, I don't mind since I've done the commit
> > >>> more than a year ago for Armbian ...
> > >>>
> > >>> Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
> > >>> Tested-by: Martin Ayotte <martinayotte@gmai.com>
> > >> gmai.com is likely a typo.
> > >>
> > >>> On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
> > >>>
> > >>>> Thanks. The patch looks good overall. The authorship is a little
> > >>>> confusing though. If it was initially done by Martin (CC-ed), then
> > >>>> he should be the author, and we should get his Signed-off-by if
> > >>>> possible.
> > >>
> > >> Martin is indeed the original author of the patch. Thank you for
> > reviewing.
> > >
> > > I'd like to apply this patch with Martin as the author, if that's OK =
with
> > you
> > > both?
> >
> > That is completely okay with me.
>
> Applied for 5.4.
>
> I reordered the tags so they make more sense:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/commit/?h=
=3Dsunxi/dt-for-5.4&id=3D0834887732df5af41b59b2e4d530fc1f5478965f

Sorry for being late on this, but it looks like the eMMC, NAND and SPI
pins are conflicting on the A64-Olinuxino design.

There's no configuration with a NAND, so we don't really need to worry
about that, but if we merge this in the main DT, we'll prevent anyone
from using that DT on an olinuxino with a SPI flash.

I think we should just create emmc and SPI-flash variants of that DT.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
