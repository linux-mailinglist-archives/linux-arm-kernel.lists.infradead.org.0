Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFB057E6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/emV+8HwT4TAiH+JC/ZkjdX61kb+ofz7setmOWHNh2Q=; b=HOmWIOP0Ykc3GZEu0WZIrEC6V
	rDOmwYb7ga4qlr22WFd+ydz9jWKYprtpzGP8qg/EXDzPp7EtSsPtsTHJOaa73SiRH7QtXtEwdNcKE
	T4UG/plVvVFBSSywe89620dT7yKkMnptRMbmwzcX1WSjgBZsvtBouQxJfV23XfUIYI/u13ywebzYY
	gTPSSG1pCRO+K432eAG0k7n5mMF/zz40uxRzo4P/8kpcmyU0kN15giBKG6eVP9RgRvAwT48fOWkE9
	cfiT550INjJeSJHCHgVF2nPqTX/7d1wfsTjxWOsKgWXJnP2t6NDkisqHrxxDHL7leLJXrLj85l9oH
	f0pc2NCBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQ0h-0008U7-Ka; Thu, 27 Jun 2019 08:44:03 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgQ0O-0008TI-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:43:47 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 850BC24000C;
 Thu, 27 Jun 2019 08:43:31 +0000 (UTC)
Date: Thu, 27 Jun 2019 10:43:31 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.3
Message-ID: <20190627084331.hwklaymgv6fubgah@flea>
References: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
 <20190625114119.tgxsiwstd3pfm64i@localhost>
 <20190625123219.hwg5vjz3qocxavn5@flea>
 <CAOesGMhXVnNuEKHPBo6s9GBWrKAiX8zFPSt89cQRYNS711ymvw@mail.gmail.com>
 <20190625145541.55c4mszwphx4corj@flea>
 <CAOesGMhBSCnmN2S4yHLMZ2CEefaSFXG4VsegCtFuHEKWcghLEA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOesGMhBSCnmN2S4yHLMZ2CEefaSFXG4VsegCtFuHEKWcghLEA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_014345_109854_05421C9A 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Chen-Yu Tsai <wens@csie.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2907537999041226315=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2907537999041226315==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f2heddmkvs3u4y77"
Content-Disposition: inline


--f2heddmkvs3u4y77
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 27, 2019 at 10:09:53AM +0800, Olof Johansson wrote:
> On Tue, Jun 25, 2019 at 10:55 PM Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> >
> > On Tue, Jun 25, 2019 at 02:36:30PM +0200, Olof Johansson wrote:
> > > On Tue, Jun 25, 2019 at 2:32 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > Hi Olof,
> > > >
> > > > On Tue, Jun 25, 2019 at 04:41:19AM -0700, Olof Johansson wrote:
> > > > > On Fri, Jun 21, 2019 at 10:08:08AM +0200, Maxime Ripard wrote:
> > > > > > Hi,
> > > > > >
> > > > > > Please pull the following changes for the next release.
> > > > > >
> > > > > > Thanks!
> > > > > > Maxime
> > > > > >
> > > > > > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > > > > >
> > > > > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > > > > >
> > > > > > are available in the Git repository at:
> > > > > >
> > > > > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.3-201906210807
> > > > >
> > > > > You know, there's a timestamp in the tag too, no need to encode it in the name.
> > > >
> > > > Yeah, I've switched to some tooling to send them instead of doing them
> > > > manually, and having a timestamp was the easiest solution to avoid a
> > > > collision, but I guess having it down to the minute was a bit
> > > > overkill. Do you have any preference on this?
> > >
> > > Main thing for me is that I can't tell from time timestamps if it's a
> > > respin/new version, or a re-stamp, i.e. if it's something I should
> > > care about or not.
> > >
> > > I.e. it doesn't carry any useful signal for the consuming side and is
> > > mostly noise.
> >
> > Ok, so you'd prefer something like <tag>, <tag>-2 if there's multiple,
> > subsequent, PR, and <tag>, <tag>-again if the latter replaces the former?
>
> Yeah, that's what a lot of other maintainers do and it's something
> that's been working pretty well.
>
> Sometimes they use -v2 at the end for respins, i.e. dt-2-v2 etc. I
> recommend deleting respun tags so we don't accidentally merge them (if
> we didn't see the follow-up).

Ok, I'll adjust my program to do so next time then, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--f2heddmkvs3u4y77
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRSBswAKCRDj7w1vZxhR
xc9pAP4+uGUlyjtj2f9p7kzmSSV2W/csv2jP+A4ElNeGQCwLPAEA3B+IPbgz9Uan
HBgdbOktDNCEztwd/vE4hS6OY60IxQw=
=BktP
-----END PGP SIGNATURE-----

--f2heddmkvs3u4y77--


--===============2907537999041226315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2907537999041226315==--

