Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8891E58A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cTV67+ms5PFKC8Ng8NQ1OvC3Yg7WD1Sd5CGqAQeNbG4=; b=T5I5bpqBq4cyEGM5lE5gWy9Fl
	qNGXSI7n8s8YFGGhZDn0DEL+1CfIaWBygzwGQDZgiibMvWjOBGLoIrFRd+xEDtD/nffPpB61fl1h5
	7qOrpELLR9ZDqVqUx5h1TGASi8vh5VORz/R5lfukAqWhwVMnurVWuPsr5nCdVxn6d65FE0rP54DXg
	2SK8GU6f2+UBc3g7sp6THHoXVtzHDvt7aPBvGBathAtAqpsvXfEJaSH8if4VYXDNv3znrLLK9Rlp5
	kk6Q0R4ci2E5rd1BDTdJNK+xLwbCo+HVRFMiWz1vbPEtnZ8Lu0QqDGBe2BVg8x421dg0M92+Pp4yt
	yPGkCaz8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD0R-0007Ve-T8; Thu, 28 May 2020 07:31:11 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD0H-0007Ui-Su; Thu, 28 May 2020 07:31:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B1C135801E3;
 Thu, 28 May 2020 03:30:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 28 May 2020 03:30:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=DzfmDTRER5Rc6vqd8K3tdl/h7IL
 LPrzRW6G6nM/VnN8=; b=Uo/3TSRDGuNYFTVIWjo5nW8GLeNnjf4YCBm0RvH8OIa
 d9NQOKxlUg1FESR6IAXM5mj3dCtfSgJ52b9QgX4BbQXpaWRZ0V2mj5pbElDNg9xY
 WoBkTMIQyU/2uLCVme027EGhgYmAZ/kBGpvEUjaTK8tB8zh7qLFjUq2y9M7CQlM5
 MD+a0zkII7ReHXvr3Myih7oiMCzLIr6qJSbkdU96GdrU2l4xHKx0zu9/9B+e9Nh/
 lH2L+GyXcRjyXo0v1AxKmSNI6EF6GfjfH7d6FDHnMymDy0hH5jhxxXgSNGIWnmZI
 Dq68N3mnkUh8ZEoFVa0f+C8rDUU8HPjXpGGWgHElAbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=DzfmDT
 RER5Rc6vqd8K3tdl/h7ILLPrzRW6G6nM/VnN8=; b=KJHyh6XqKlTQ4MP0B3XhzN
 YCyIFUWT+oDBebBgN3cMKQVzEx6whQoljUpQimvyyMAUdxHNajzjv1Eb6YfSvxem
 Kz+iXJhMpOpKhzTHpkOkRjMEVzADfZLY+cFKzpJbQxpOcmDfZlIKouu8MTaOnwDa
 b4zKDMS9u1OPxxiV65/Et3WpQ+XDk9rQbMJuPZVmi9Ge6EXdzLxWcD5C6D85TWyh
 i65iIRKZS8OVmdVXgZEv0KZwdYv6exg7SwCRISRFiD/SiqzrDgGwpm4kLxFEKEil
 Q8izo1OUn4kMo6xOquuuYDXVcBbgRiqAbztXNUGaU+tzRVfiGRRSTDWokeT4Qz1w
 ==
X-ME-Sender: <xms:sWjPXoONJgJEwoEq_FYCUe_RM3crKMcoo7E-FPok9IxHzYT67Q46Rw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvhedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeevveefffduveeitdegtefhhfetueffteefffdvheevvdehteethedvleff
 gfejvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdeike
 drjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhep
 mhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sWjPXu8OSORrgT7dwCMcLRO_66K0n8kL-N8hkR8uECjCsK3NZ3NpZw>
 <xmx:sWjPXvRtze0HzvnWIkUsiiK-OMC0eioiyU_5C_9VzsvjpWy-KMqdVQ>
 <xmx:sWjPXgt1FAvnCaJsnGRpBcolBHLPyMjUSIl2wixGr4MHY17_SwWhmg>
 <xmx:smjPXo7uLD9f6nuRyVwYhByDit7NnBfwK4Rpk_3NZeXwPXg38J9vyQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 32F0B30614FA;
 Thu, 28 May 2020 03:30:57 -0400 (EDT)
Date: Thu, 28 May 2020 09:30:55 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Drake <drake@endlessm.com>
Subject: Re: [PATCH v2 00/91] drm/vc4: Support BCM2711 Display Pipelin
Message-ID: <20200528073055.znutrhkryzu3grrl@gilmour.lan>
References: <20200427072342.5499-1-jian-hong@endlessm.com>
 <20200428162152.ztsqp7nxqbwqrm6r@gilmour.lan>
 <CAPpJ_efvtVzb_hvoVOeaePh7UdE13wOiiGaDBH38cToB-yhkUg@mail.gmail.com>
 <20200507172158.cybtakpo6cxv6wcs@gilmour.lan>
 <CAPpJ_efxenmSXt2OXkhkQ1jDJ59tyWBDUvmpyOB-bfPMDENQZg@mail.gmail.com>
 <CAPpJ_ed9TMJjN8xS1_3saf5obQhULJSLNgQSAFxgiWM2QX9A7Q@mail.gmail.com>
 <20200526102018.kznh6aglpkqlp6en@gilmour.lan>
 <CAD8Lp467DiYWLwH6T1Jeq-uyN4VEuef-gGWw0_bBTtmSPr00Ag@mail.gmail.com>
 <20200527091335.7wc3uy67lbz7j4di@gilmour.lan>
 <CAD8Lp45ucK-yZ5G_DrUVA7rnxo58UF1LPUy65w2PCOcSxKx_Sg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD8Lp45ucK-yZ5G_DrUVA7rnxo58UF1LPUy65w2PCOcSxKx_Sg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003102_296329_66B23500 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Jian-Hong Pan <jian-hong@endlessm.com>,
 Linux Upstreaming Team <linux@endlessm.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6581883508975204231=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6581883508975204231==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3roh2l2ctvp5d3wy"
Content-Disposition: inline


--3roh2l2ctvp5d3wy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

On Wed, May 27, 2020 at 05:15:12PM +0800, Daniel Drake wrote:
> On Wed, May 27, 2020 at 5:13 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > I'm about to send a v3 today or tomorrow, I can Cc you (and Jian-Hong) =
if you
> > want.
>=20
> That would be great, although given the potentially inconsistent
> results we've been seeing so far it would be great if you could
> additionally push a git branch somewhere.
> That way we can have higher confidence that we are applying exactly
> the same patches to the same base etc.

So I sent a new iteration yesterday, and of course forgot to cc you... Sorr=
y for
that.

I've pushed my current branch here:
https://git.kernel.org/pub/scm/linux/kernel/git/mripard/linux.git/log/?h=3D=
rpi4-kms

Maxime

--3roh2l2ctvp5d3wy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXs9orwAKCRDj7w1vZxhR
xWNfAQCCSr9BEd1oYBuyc+wf4o1Fm9s0OrK6oNnc5glpsNR6QAEAmnvx5c11Eczw
/TJeEz41Q44p4bi3Fmipemloq5mY/g4=
=elb0
-----END PGP SIGNATURE-----

--3roh2l2ctvp5d3wy--


--===============6581883508975204231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6581883508975204231==--

