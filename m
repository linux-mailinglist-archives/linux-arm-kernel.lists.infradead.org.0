Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AA11ECD77
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 12:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OEtBsr4+LEefjolzP7RmyUlng6Sw21DZdAoIjFasbyo=; b=f9CvCaq7nH+3w35C1ub3v3MT4
	6Ndm1PPXwWBWv5TY8BOV3Ld9q/ZHXO9e/Xz+zEPNI568wRXHNFThK/FuTt/UdDRL1lOn8vDpOgN7O
	3Sxv7eQeKYEvkPN9MVxF9EEHGQngadYe9Npb6DhrXm2FOO0B59r4bOPF4+6LNwBYHv3CI/jEVUces
	Mx9nezwghL5Kr4kM2CNpm4i5NT7rY7G6YRdGfGQu6uwUDgjLslL3L0uOjGnyhJjj4epFV8z1DAD9O
	lIyfZkk4boeBhTbKt3j0YmV6i1a0ck91NCOMltak2gQaVjO4u4fwwNqZ9aHztWpwjAvkg7R9WeOWl
	8ICrnDd1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQaH-0002is-UP; Wed, 03 Jun 2020 10:25:21 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQZn-0002Zx-47
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 10:24:53 +0000
Received: by mail-ej1-x642.google.com with SMTP id a2so1563815ejb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 03:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mHuuilN5PeoLnfQ2P8d9476VX/JV13yz7q3OCUc4CrU=;
 b=cyIbH34l3hLBPdQEjpMDJ81LWALNHKWcwH1dqOWfbTjbHdQRXQKI0nyoqrqrkeOO4D
 bHRli8mV8sDqVuoZqxwIvA7WIdoTvgf+5Lu0AU2wzD74biEZ8AbYFnHik2ED0Eh4FND2
 E2ztNVkwOzVY1ktXxrIvQVF+Yq5lJj0e5ypFNOK1LC6Z3UwXgzvV/xsP0eL20M4bAyK0
 l5k8WMmdY6hVyuzq3/HqzGsZVps7072x9dRkL4mQUV/wsSjSLxiS5Y5lsydEd3CyZ0nB
 qJ5am8CRPOjKSMVU6bKrgqo7RYpjIOlAEPXUaxh9u6FNlQHS8GsvD2qdJbYhtB76uHw8
 NLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mHuuilN5PeoLnfQ2P8d9476VX/JV13yz7q3OCUc4CrU=;
 b=YSV9rmQBuZ7yZqZB9Wiq0HbznRmHSeOWpqANQjetI4jz0JDmihr1xGqFh+Hi/foqkC
 WRb8pVKTFhpGcKxvH+FWKDhWxvzirDChhf7MhkMQ03mugQGRO2+tO+/1Lxg2UtIxktMS
 +RdslO/Xswf5sybkVfPLzhzDku+wVWrJih/VlD7JL6brajypZu9vkLGL8eeXcIILPCo6
 G6aeveEWziRzHbHPd9cfH432rDi3auyzhB3ZEaHuLtQfH3FCefrsMZRf6tiPJELiSt/G
 i+AMXya67nwG76is5jGp/hAeg2mGUarZub6U9Iu54tSsekr9ym4YVUzJoWnznDHcUP71
 C6YQ==
X-Gm-Message-State: AOAM533pEhCo130PmYWtj567CaGoGJr9jxUkzvg6AJ4B6XETCwMkya8I
 NMJCqfOG53H13qp5TBVMYVA=
X-Google-Smtp-Source: ABdhPJz6sO9c9wCaOw1iZZFLjWWiVLQ6C/10yybaHF7w8NpT9T3jfsYHGIRfWbAc+ss8xTGep0C+0A==
X-Received: by 2002:a17:906:480f:: with SMTP id
 w15mr6169857ejq.430.1591179888922; 
 Wed, 03 Jun 2020 03:24:48 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id m23sm967855edr.86.2020.06.03.03.24.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 03:24:47 -0700 (PDT)
Date: Wed, 3 Jun 2020 12:24:46 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200603102446.GA3478467@ulmo>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder>
 <20200514193249.GE279327@builder.lan>
 <CALAqxLVmomdKJCwh=e-PX+8-seDX0RXA81FzmG4sEyJmbXBh9A@mail.gmail.com>
 <20200527110343.GD11111@willie-the-truck>
 <20200602110216.GA3354422@ulmo>
 <20200602193249.GC1799770@builder.lan>
MIME-Version: 1.0
In-Reply-To: <20200602193249.GC1799770@builder.lan>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_032451_207453_A96493FB 
X-CRM114-Status: GOOD (  42.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, John Stultz <john.stultz@linaro.org>,
 linux-tegra@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: multipart/mixed; boundary="===============6945935338634799342=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6945935338634799342==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 02, 2020 at 12:32:49PM -0700, Bjorn Andersson wrote:
> On Tue 02 Jun 04:02 PDT 2020, Thierry Reding wrote:
>=20
> > On Wed, May 27, 2020 at 12:03:44PM +0100, Will Deacon wrote:
> > > Hi John, Bjorn,
> > >=20
> > > On Tue, May 26, 2020 at 01:34:45PM -0700, John Stultz wrote:
> > > > On Thu, May 14, 2020 at 12:34 PM <bjorn.andersson@linaro.org> wrote:
> > > > >
> > > > > On Thu 27 Feb 18:57 PST 2020, Bjorn Andersson wrote:
> > > > >
> > > > > Rob, Will, we're reaching the point where upstream has enough
> > > > > functionality that this is becoming a critical issue for us.
> > > > >
> > > > > E.g. Lenovo Yoga C630 is lacking this and a single dts patch to b=
oot
> > > > > mainline with display, GPU, WiFi and audio working and the story =
is
> > > > > similar on several devboards.
> > > > >
> > > > > As previously described, the only thing I want is the stream mapp=
ing
> > > > > related to the display controller in place, either with the CB wi=
th
> > > > > translation disabled or possibly with a way to specify the frameb=
uffer
> > > > > region (although this turns out to mess things up in the display
> > > > > driver...)
> > > > >
> > > > > I did pick this up again recently and concluded that by omitting =
the
> > > > > streams for the USB controllers causes an instability issue seen =
on one
> > > > > of the controller to disappear. So I would prefer if we somehow c=
ould
> > > > > have a mechanism to only pick the display streams and the context
> > > > > allocation for this.
> > > > >
> > > > >
> > > > > Can you please share some pointers/insights/wishes for how we can
> > > > > conclude on this subject?
> > > >=20
> > > > Ping? I just wanted to follow up on this discussion as this small
> > > > series is crucial for booting mainline on the Dragonboard 845c
> > > > devboard. It would be really valuable to be able to get some soluti=
on
> > > > upstream so we can test mainline w/o adding additional patches.
> > >=20
> > > Sorry, it's been insanely busy recently and I haven't had a chance to=
 think
> > > about this on top of everything else. We're also carrying a hack in A=
ndroid
> > > for you :)
> > >=20
> > > > The rest of the db845c series has been moving forward smoothly, but
> > > > this set seems to be very stuck with no visible progress since Dec.
> > > >=20
> > > > Are there any pointers for what folks would prefer to see?
> > >=20
> > > I've had a chat with Robin about this. Originally, I was hoping that
> > > people would all work together towards an idyllic future where firmwa=
re
> > > would be able to describe arbitrary pre-existing mappings for devices,
> > > irrespective of the IOMMU through which they master and Linux could
> > > inherit this configuration. However, that hasn't materialised (there =
was
> > > supposed to be an IORT update, but I don't know what happened to that)
> > > and, in actual fact, the problem that you have on db845 is /far/ more
> > > restricted than the general problem.
> >=20
> > It doesn't sound to me like implementing platform-specific workarounds
> > is a good long-term solution (especially since, according to Bjorn, they
> > aren't as trivial to implement as it sounds). And we already have all
> > the infrastructure in place to implement what you describe, so I don't
> > see why we shouldn't do that. This patchset uses standard device tree
> > bindings that were designed for exactly this kind of use-case.
> >=20
>=20
> I think my results would imply that we would have to end up with (at
> least) some special case of your proposal (i.e. we need a context bank
> allocated).

I wasn't talking about implementation details, but rather about the
surrounding infrastructure. It seemed like Will was suggesting that
there's no way of conveying what memory regions to direct-map from
the firmware to the kernel. But that really isn't the problem here,
is it? What we're really looking for is how to take what we have in
device tree and use it in the ARM SMMU driver to create an early
mapping that will stay in place until a device has been properly
attached to the IOMMU domain.

> > So at least for device-tree based boot firmware can already describe
> > these pre-existing mappings. If something standard materializes for ACPI
> > eventually I'm sure we can find ways to integrate that into whatever we
> > come up with now for DT.
> >=20
> > I think between Bjorn, John, Laurentiu and myself there's pretty broad
> > consensus (correct me if I'm wrong, guys) that solving this via reserved
> > memory regions is a good solution that works. So I think what's really
> > missing is feedback on whether the changes proposed here or Laurentiu's
> > updated proposal[0] are acceptable, and if not, what the preference is
> > for getting something equivalent upstream.
> >=20
>=20
> As described in my reply to your proposal, the one problem I ran into
> was that I haven't figured out how to reliably "move" my display streams
> from one mapping entry to another.
>=20
> With the current scheme I see that their will either be gaps in time
> with no mapping for my display, or multiple mappings.

I think you would inevitably end up with two mappings for a transitional
period while you prepare the final mapping that you want to switch to.

> The other thing I noticed in your proposal was that I have a whole bunch
> of DT nodes with both iommus and memory-region properties that I really
> don't care to set up mappings for, but I've not finalized my thoughts on
> this causing actual problems...

Can you be more specific? It'd be useful to understand all of the
existing uses of reserved memory regions in order to make sure we
accomodate all of them.

I'd be surprised, though, if setting up mappings for any of these
regions would actually cause breakage. If a device tree node has a
memory-region property it means that this memory region is eventually
going to be used by the device and if the device tree node also has an
iommus property it means that it's meant to use the IOMMU for
translating memory accesses. It's therefore very likely that the memory
region will need to be mapped. Whether it needs to be a direct mapping
or not might be worth having a discussion about.

> > Just to highlight: the IOMMU framework already provides infrastructure
> > to create direct mappings (via iommu_get_resv_regions(), called from
> > iommu_create_device_direct_mappings()). I have patches that make use of
> > this on Tegra210 and earlier where a non-ARM SMMU is used and where the
> > IOMMU driver enables translations (and doesn't fault by default) only at
> > device attachment time. That works perfectly using reserved-memory
> > regions. Perhaps that infrastructure could be extended to cover the
> > kinds of early mappings that we're discussing here. On the other hand it
> > might be a bit premature at this point because the ARM SMMU is the only
> > device that currently needs this, as far as I can tell.
> >=20
>=20
> For Qualcomm we got patches picked up for 5.8 that will cause the
> display controller to be attached with direct mapping, so I think all
> missing now is the lack of stream mappings between arm-smmu probe and
> display driver probe...

Can you point me at those patches? I'd like to look at them and see if
they match what I have planned for Tegra or if we can somehow converge
on a common scheme.

Thierry

--Q68bSM7Ycu6FN28Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7XemsACgkQ3SOs138+
s6FWZRAAoSuPu0jtfyFXzjuxfpxQzuTdqjCht0ISIMPA5WI1CBAvCHwLLxo5FS0z
BPlOun2m9CGKwkAIxUF6UQxs4Do5VR0pS5PHEKkPdm21gJT993B3ZMXA2mNxsmti
MOUwoTB3UKlVHiNjMCGpxHGRhf+1Kwhw21pBAK65Tq0HVbuZNGtH3wm6+YTJhn4R
g7gZiV3u/Ecbp/4BW7oda3JJVgis2oiZpp0UuT6eNoWxj5cG4ERFXF2p8m+PLC4n
guGOFRvU30Gu/kel2H5/YKZARUUuzn9raUZBuXR1X7JgW+jlZYy0bx5WGW4VWkKH
ub7XyfenTZmtdaAznYQd2MqJSPJRvP6DZRIggUDU8IDHIpnYt9Ob/Hh5krfuwfRY
c5tUZLAmJYHPbGWTQhoIAF3lYP2sNSuRxcyOe2HeRsNxeGQcpr1em8fOBiewhpMW
klLGCq6WA9K5F4iJ8H3DlIex8M1dMSbnScp3kOEXA1Hl8jGqAbehUL1F+uh5Wuet
MyfyIzOIqkFDzd1R4+o/u8IxNkZ/CbprZo62Jcck8WJ/6RkqQJV9w19lDXc7dX2S
azyKgi024YcJlL8Y74GKhJ+1dR1WP8SzGx1VNxdlmPiqJOCfe4OXSHLk28PG3cpo
0jDlClbWcpdRPTfUKNthZ3k1+uHR60QQ/2EloiEClvTQKzTABVM=
=vUM4
-----END PGP SIGNATURE-----

--Q68bSM7Ycu6FN28Q--


--===============6945935338634799342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6945935338634799342==--

