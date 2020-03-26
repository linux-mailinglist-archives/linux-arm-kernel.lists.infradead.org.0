Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1407C193C08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 10:37:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ddma/eVT2gP+MeRdyx//gi2MsSlLNOSNot6WbBDqFe8=; b=uneGIrekAFHpPwFQv6klF/S2Z
	ctmpsg8LKd1wAU6CUV6LWU8fFLzaIuWTI4ktbAacUdD2Zo0kI9q5XWGeHnMYWSbq2LzDiSxe4EmCR
	m/Tn7lkApor4RsUMpTdENrjZEOipMIavRpPirL5Ql/u7wmUN0w4s+W45EIMEUdEaMuaDyUJ+RtHza
	jvL1s8bKJZylHeCtOMfODCJixqsPa8zQeHHbmwzCHDmrcz2RD137eiKAW+8xj55eSZo9rQqh6KVvV
	cE5bZ9rA6SGqi+ig16HWaear8mQ507oZl9nVetKXYkuvjfHoXzqv2gBnjypy5swAuRYslxPVkNtuS
	rlspj9J9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHOwa-0004qf-9e; Thu, 26 Mar 2020 09:36:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHOwM-0004og-J5; Thu, 26 Mar 2020 09:36:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id n17so5638670lji.8;
 Thu, 26 Mar 2020 02:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=KWNJ9nKqdX2PYz2rRTz5fzXvUp45Mc3ytYvD3OtT0eE=;
 b=g2VcgcN9pYclqWggLp7CVml2ARuue1zY3ZGNd0Nz9IfJ18RRG5X/PKdmetO4U9l9LY
 WhtGQasEFMiqy3Qzk9DkCR5j67NkRPP2ZchKPr/hJ6Ba4c4AzQ8BikkPIyaLlH2zC9+t
 IE4SEkSf46fR+ridPgoJNr7mu50wECxASwNRJBia9nKSWj+mGnkt3kYS7Ix8duZFbG7L
 QewWqyhDFLmpFvIgXjjyCaYWA/Ex/zkm6iolWFieXcejNzMnIwY2xHMCfu/Trj6NYSNH
 Gjg6w03dbJ3gN/YlWrKMCKh4535RyNeN//pKfIoJ0GwK7lfStRNMdOEWfSUR2DhDM3Ok
 rthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=KWNJ9nKqdX2PYz2rRTz5fzXvUp45Mc3ytYvD3OtT0eE=;
 b=kb0V8LZ77SRntKSJtvGHx28h/30hSV+Wt1kV6Rm7Yrghb441uQxe9ieHzjJHCOqSYa
 PUCtKuUf27cV4sIfy6ocuvm5DTMxrl0qDySlWpTW6NtFtYreVU3iU0B/W8hg7mTq6PSX
 QWFFTlja+344EP7eBBk6RMMPYtzIDHLsTMlTuJMua3dJ4eAcy7jSODxgPbEuwYAeKyVu
 UGogOMpqYvnc4cB26+4kXX4mn3RPjA8ynaJ+5CURs0EOcZ6LKvUw65pzMpF7kI8DjRu4
 jR6ZY0N1dAngbzeDiyAEF7SuHD3PkB9KQj40xK2xAdw9RPPSgVQaoTJbbU03gD8u54tM
 JUnA==
X-Gm-Message-State: AGi0PubCixRd7RaAD1KCsTpL5Pg4Z8xJcfVsSfOZ3kywTJflGXf6C9yz
 G+BR5BIvUTfY0z+1GGET9zU=
X-Google-Smtp-Source: ADFU+vu3vZ8AvLNRzSZLJOZzi/DjZPgsWfluY5a03XJz/5PI9hSC8DSZ5HGxQHx+PXRxeE6OqJN8fw==
X-Received: by 2002:a2e:a412:: with SMTP id p18mr4848583ljn.39.1585215399334; 
 Thu, 26 Mar 2020 02:36:39 -0700 (PDT)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id x128sm1087236lff.67.2020.03.26.02.36.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 02:36:39 -0700 (PDT)
Date: Thu, 26 Mar 2020 11:36:32 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions
 for the Scatter layout
Message-ID: <20200326113632.6585cf7b@eldfell.localdomain>
In-Reply-To: <a385e2f6-52fa-e195-15e0-2132befc9f35@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
 <20200325085025.30631-8-narmstrong@baylibre.com>
 <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
 <b1386ef5-c3e3-c07b-5982-e3f02441b431@baylibre.com>
 <20200325154921.2a87930c@eldfell.localdomain>
 <a385e2f6-52fa-e195-15e0-2132befc9f35@baylibre.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_023642_655056_99DD7091 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ppaalanen[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mjourdan@baylibre.com" <mjourdan@baylibre.com>,
 Simon Ser <contact@emersion.fr>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6973364256822134992=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6973364256822134992==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/F2Ih.eNxkQvUVkW9+CfEnKJ"; protocol="application/pgp-signature"

--Sig_/F2Ih.eNxkQvUVkW9+CfEnKJ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 25 Mar 2020 17:18:15 +0100
Neil Armstrong <narmstrong@baylibre.com> wrote:

> Hi,
>=20
> On 25/03/2020 14:49, Pekka Paalanen wrote:
> > On Wed, 25 Mar 2020 11:24:15 +0100
> > Neil Armstrong <narmstrong@baylibre.com> wrote:
> >  =20
> >> Hi,
> >>
> >> On 25/03/2020 10:04, Simon Ser wrote: =20
> >>> On Wednesday, March 25, 2020 9:50 AM, Neil Armstrong <narmstrong@bayl=
ibre.com> wrote:
> >>>    =20
> >>>> Amlogic uses a proprietary lossless image compression protocol and f=
ormat
> >>>> for their hardware video codec accelerators, either video decoders or
> >>>> video input encoders.
> >>>>
> >>>> This introduces the Scatter Memory layout, means the header contains=
 IOMMU
> >>>> references to the compressed frames content to optimize memory access
> >>>> and layout.
> >>>>
> >>>> In this mode, only the header memory address is needed, thus the con=
tent
> >>>> memory organization is tied to the current producer execution and ca=
nnot
> >>>> be saved/dumped neither transferrable between Amlogic SoCs supportin=
g this
> >>>> modifier.   =20
> >>>
> >>> I don't think this is suitable for modifiers. User-space relies on
> >>> being able to copy a buffer from one machine to another over the
> >>> network. It would be pretty annoying for user-space to have a blackli=
st
> >>> of modifiers that don't work this way.
> >>>
> >>> Example of such user-space:
> >>> https://gitlab.freedesktop.org/mstoeckl/waypipe/
> >>>    =20
> >>
> >> I really understand your point, but this is one of the use-cases we ne=
ed solve.
> >> This is why I split the fourcc patch and added an explicit comment.
> >>
> >> Please point me a way to display such buffer, the HW exists, works lik=
e that and
> >> it's a fact and can't change.
> >>
> >> It will be the same for secure zero-copy buffers we can't map from use=
rspace, but
> >> only the HW decoder can read/write and HW display can read. =20
> >=20
> > The comparison to secure buffers is a good one.
> >=20
> > Are buffers with the DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_SCATTER modifier
> > meaningfully mmappable to CPU always / sometimes / never /
> > varies-and-cannot-know? =20
>=20
> mmappable, yes in our WIP V4L2 driver in non-secure path, meaningful, abs=
olutely never.
>=20
> So yeah, these should not be mmappable since not meaningful.

Ok. So we have a modifier that means there is no point in even trying to
mmap the buffer.

Not being able to mmap automatically makes things like waypipe not be
able to work on the buffer, so the buffer cannot be replicated over a
network, hence there is no compatibility issue. However, it still
leaves the problem that, since waypipe is "just" a message relay that
does not participate in the protocol really, the two end points might
still negotiate to use a modifier that waypipe cannot handle.

Secure buffers have the same problem: by definition, one must not be
able to replicate the buffer elsewhere.

To me it seems there needs to be a way to identify buffers that cannot
be mmapped. mmap() failing is obvious, but in waypipe's case it is too
late - the end points have already negotiated the formats and modifiers
and they cannot handle failures afterwards.

> >=20
> > Maybe this type should be handled similar to secure buffers, with the
> > exception that they are not actually secured but only mostly
> > inaccessible. Then again, I haven't looked at any of the secure buffer
> > proposals. =20
>=20
> Actually, the Amlogic platforms offers secure video path using these exact
> modifiers, AFAIK it doesn't support the NV12 dual-write output in secure.
>=20
> AFAIK last submission is from AMD, and it doesn't talk at all about mmapa=
bility
> of the secure BOs.

To me, a secure buffer concept automatically implies that there cannot
be CPU access to it. The CPU is not trusted, right? Not even the kernel.
I would assume secure implies no mmap. So I wonder, how does the secure
buffers proposal manage userspace like waypipe?

Or, is the secure buffer proposal allowing mmap, but the content is
indecipherable? Maybe they shouldn't allow mmap?

I think much of the criticism against this modifier should also be
presented to a secure buffers proposal and see how that turns out. If
they have the same problem, maybe you could use their solution?


Thanks,
pq

--Sig_/F2Ih.eNxkQvUVkW9+CfEnKJ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl58d6AACgkQI1/ltBGq
qqfv1g//d/m5shjV09aO55+5dizEtNZQS5y+iI9nVhzwBaiiaWEHq1dQrBza/73Y
gy3Gh0ML0Al/kUy9oQYdYwKhlAiO/Hx1HEPxANiqCKkikf7mhnTftkLUXuMrGA38
O/+vq1v+srGKLpAznNXNE5qIl98/yWP3MJXTe7Kenl4hUrIjZLz3bx8+93WZvpOZ
Tbh9uJuTouKTeQ//Yt7EG2wpkERQv21wGGFFOdSPBLkl3O/DiyDP50WKHEqVzBNB
CWFdQgFMi+k/MVxB7xDswMxxwzaDRcFfQpUCF441mYsV/glMrH5gVbbaT7T8ZTfu
azojy8CRM5ZbBB4wdd98ta75EL9PkXnNQBW6SVdZsT4i2utoc7lq0bLkDdrpIicC
1E7Zuxmu/wQ9Pm7Kob+2ZqvFKR7Ey9thbeSsoZlzX7hgpO1XfgHramWPkR/eUh5x
3hczryq9Zenlkv1EzOHWGUUsUPaiJh0HW+9Yc07h9WTuGkOgJkkP7Ll0R0hNQxiv
1DAkBB5SBE+DSDyUXpd0ucZMTr3v0Fin9SxeeX0rQIKfUWNoyYn+QTnD/xYmtTqF
3JrP3swNnaHKLB2p25K4N32ggHamAl0Roc0ohPlh5Z7ZleVW95va5ttP6jdawObq
6R1xVH6EsJ0wtsGjxNvRO2Bod4W6v2UDcM/IjXHA0WWwm4bar2k=
=zAly
-----END PGP SIGNATURE-----

--Sig_/F2Ih.eNxkQvUVkW9+CfEnKJ--


--===============6973364256822134992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6973364256822134992==--

