Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0231717E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LV2BFQtKZaODSyi/A5MVIhXR9wkytaz5QsqlXKdVxDg=; b=n41y6wJYGJ629i4bYReYX+1U3
	L9hee0tonPeC77jFMd2uymSiil/kIXOO5pbdYF9HETvaDiVvyeC23mkp30M4/hvCn688D5q6VpmH2
	7nvt5CGIwzDxNlT5B9OoMb3S0CkFJAumg53AIUDgeE8qC+SBQk/qye/e4cIg2qRVxFyNjlqOV8c/u
	3b22aprZ48v9t30vz60RKgRriGPudbU6zkfDXHOYGQAlXLkXs2gNQyg044yGilPEIMTytry7e97DF
	DSJL1d5FpZIPjEpDlWNj2pFn6tikI95PkvLaUh7RKPLP0f0DYUXbgfD0e/MeVAl0b9ANRzC68vlks
	lfpZC5QVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ihs-0006CH-C2; Thu, 27 Feb 2020 12:56:00 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ihh-0006BR-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:55:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 60636220C7;
 Thu, 27 Feb 2020 07:55:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 27 Feb 2020 07:55:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=EsLh1ElVWcPMN6QEUKEjRZC4EEK
 YwHmgnVppcHj4F4c=; b=nLEb1dECBO6hZMBDokjWOh2E3TgBmY1oxWqwFTdNXq+
 d/NWy/0BXqO/W/rfadUWUBVpmdAr4K4Z0PN0z31KtrMAvs1HVa9sacge1dh11o4y
 dLLIDNCDGNXaNzsGl1Cxnkykk1aXsEfuXQY+2p2gnA0BNbalrQTxfviLREQddWRF
 +oBJCmKYVIhGp1/rPvd6uxdZ6NdfFvHwTnbXYz6/cnh73Xs4WD17u2UHU4EsxVAj
 N5kSymrK0qDd8yDPOPBHnDuJDxXA1rBzX/gFLAjRYKDcvD1GaTnosqPQ2OWDhYbo
 n1B/r5RiZQXJtpaDqnjWf9EHl94NMKk28kLPiorOsjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=EsLh1E
 lVWcPMN6QEUKEjRZC4EEKYwHmgnVppcHj4F4c=; b=VLX6OF3r+dVjSenAdqsozN
 efj26IFFopT/I/Uv+dPH1+trEebkWT44ed32Lz35dh8P1DEr5P8YOpp5c/Q4u27X
 08jZ+FVtXBCvPcyeukNO6CHA4DHoGEjZ+gxGtuvdmYHEBkL3ZEqWimnUZmJMyeRT
 7kXC0uawYbYEzGiWItsMLaok2/H+UA1xM6B3xuuNKrSbloFsjyXdotwuCxwDopUx
 zXYMr9unYTdFx2cEZHU1VMyuEXPMeQhyT8VVh3Kcm+5d7tEA2DhQtkJ9C0CPsCab
 HNtnA6QWFq/JPhtc53DynzW3MRXOLxXtLpqyeg4ny3H461dYHNUc4rwo/FWoRIyg
 ==
X-ME-Sender: <xms:UrxXXvS-QYkKD4c-XkJKc8O-fBZ5wbBV2-2kiV2HV-XD87sQ97dWQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeigdegiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:UrxXXqV9S4DI_kFbZFkDKHzoZU9sTkM1-rjWpSmJPWznUSypm1p1AQ>
 <xmx:UrxXXgSgrzqsbgRMjYjjhJqIPLy0PaL9BRaTahhDiIriBMNOlfR6Kw>
 <xmx:UrxXXtv6m8GJrPrBqxFBQMz5kJ-eAkLqjORwfFCXl44kriaspXHbLQ>
 <xmx:VLxXXvmzBMa2NVri2yVvR2_19kBX13niJkMQCzPeS5JFUmoY4mC3JQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id AB4EF3060FD3;
 Thu, 27 Feb 2020 07:55:46 -0500 (EST)
Date: Thu, 27 Feb 2020 13:55:45 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Mans Rullgard <mans@mansr.com>
Subject: Re: [PATCH v2] ARM: dts: sunxi: h3/h5: add r_pwm node
Message-ID: <20200227125545.ynzmwcbs6gqqm4ys@gilmour.lan>
References: <20200227115526.28075-1-mans@mansr.com>
MIME-Version: 1.0
In-Reply-To: <20200227115526.28075-1-mans@mansr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_045549_646979_2C0EA8B9 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4329341063047502854=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4329341063047502854==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7rb5t2q5bd2tfoz6"
Content-Disposition: inline


--7rb5t2q5bd2tfoz6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 11:55:26AM +0000, Mans Rullgard wrote:
> There is a second PWM unit available in the PL I/O block.
> Add a node and pinmux definition for it.
>
> Signed-off-by: Mans Rullgard <mans@mansr.com>

Applied, thanks!
Maxime

--7rb5t2q5bd2tfoz6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXle8UAAKCRDj7w1vZxhR
xcTXAQDy5uVx/AsVCJdyv0LVkS82AGvP61hYpI7z6iB/82Ar4gD+PmcwHsBHmKWW
INLYhHsvJkK7fO13YhEWs9ZcqYlRdg8=
=01S8
-----END PGP SIGNATURE-----

--7rb5t2q5bd2tfoz6--


--===============4329341063047502854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4329341063047502854==--

