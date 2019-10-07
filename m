Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A35CDFC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oLWL2mtVcvqfoo+F6mRo9N7edw+Q4RMLb3rguDAEDLc=; b=Vx9+4cNw+MpylW66F5VqBPlkY
	bYc45SDHCp+1/y6qxxo4eWJopGqVn9b6wKNTP3AuQp4vC1nQxtjC1zNzTcE897YglSahb4i7UrVjr
	sDsd1RGB5Pv/Dnj4unDkwvk7GWS08eCd4Kl7FRUo2JBAvvgQWw+3FR5jbaY5F64S5ZAoAcrCMvt1r
	jKfHREG4zEu4/EA2PfLEX4Q60FFFZR8GwXexzh/lNeV7LkHl5Gf9jqy1XGg3aXfDvcJbq8V23Ci9C
	oomsB7AxKObkk4KaPGS3XFhD+biL8R7AYk6I+7fpNPBkB3+w7oKyKf9ut1fscua22y2mjgmhESWgd
	wITfNbdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQl0-0003v9-Bq; Mon, 07 Oct 2019 11:00:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQku-0003uj-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 11:00:45 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E1D920867;
 Mon,  7 Oct 2019 11:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570446043;
 bh=2hAjkYW/sfqFwCOnRXqcJFaaj969edeRaZ+eZJxXYHI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CqacMOAjiY9jXabDsPJfVFjUbmireDFbYDBflbIRNIeoFdqfxFDFMVmxqSxYVuqJM
 MhlOiwI3o9iS1qxGhlo03ndHoIsQKVSvoayywiTF3JDXgyNm5d8cALyRFsiODGQwXv
 c57dKe6UpQn8FQ0u1XvCUKzjj4EW+K0ogPe6qYR4=
Date: Mon, 7 Oct 2019 13:00:40 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 1/3] dt-bindings: media: Fix id path for sun4i-a10-csi
Message-ID: <20191007110040.2mt5uxroos3hz6ic@gilmour>
References: <20191007102552.19808-1-alexandre.torgue@st.com>
 <20191007102552.19808-2-alexandre.torgue@st.com>
MIME-Version: 1.0
In-Reply-To: <20191007102552.19808-2-alexandre.torgue@st.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_040044_309255_2CD053B4 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandru Ardelean <alexaundru.ardelean@analog.com>, netdev@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3880490267575008863=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3880490267575008863==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wtovumvb4os5l27j"
Content-Disposition: inline


--wtovumvb4os5l27j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alexandre,

On Mon, Oct 07, 2019 at 12:25:50PM +0200, Alexandre Torgue wrote:
> This commit fixes id path of allwinner,sun4i-a10-csi.yaml location.
>
> Fixes: c5e8f4ccd775 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

I just merged a patch addressing the same issue earlier today.

Thanks!
Maxime

--wtovumvb4os5l27j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsa2AAKCRDj7w1vZxhR
xR8JAQCMAvM7SXG96je2bRTkUdjCkS6bG6EOoW4hgbX9bxr8cwEAmc4iiWubk//+
S/jhKMDsvRBYt8C8CRty0bIvFTuRdQg=
=+t0N
-----END PGP SIGNATURE-----

--wtovumvb4os5l27j--


--===============3880490267575008863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3880490267575008863==--

