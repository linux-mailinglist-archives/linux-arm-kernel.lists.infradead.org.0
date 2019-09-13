Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEC3B1A84
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NEm014lLfyL1OVFY+Ke2a5wiLUvshAdb+vxNB8umu6U=; b=XNgMbzAqc1abksKcZE5KB7FAB
	wmgtSzPsHG5OBzRXbcZwaP0ftrsTNzVDih0qQv4GW1qxKpR8cipVfiMTQLKannkBG4++G1EEQuVMj
	/JoYmGPdo4ojhYu83qEWIsYrlClrQB5iUdlMhos4Dww9p1glUt9j4LfnUlqwhwDFs+THTHehdfZlM
	w1JcSbcJUoleT0Nb1176AgYsTw+wMphIz47RIoVPblPJYfB02YkZ8y5kyRWr8t5Uil11Apd+6QEg+
	c3A/ESP6FxWyePqKWFQwfMLNaGD18MJ+izaGy7IcSAR6ODujRXTMSfdd5WWwIzDcgOvy4uYLHT7WZ
	1zmZ8zDpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hcj-0008Ji-Ed; Fri, 13 Sep 2019 09:12:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hcM-0008IN-P5
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 09:11:52 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B3F320717;
 Fri, 13 Sep 2019 09:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568365910;
 bh=p8ElB8Aq/U3hjyZXMGOgnjC0h/U5HmudSOrfDOExeHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EzPOzQImqLu7IKPdWDOO5mwe1aks2dtIVoOmsrQIUoCpiDCzu+d6we1r+52KzTPpB
 vTcoXiq8naAAUDFDVIgLfkGkP8GuRYfZQ6Vo98NuYWTGVOB1fc9lUWkbcUeOKif66j
 rfgduUXVR2Od3qSE4P4sZplhFxQ/tujy/R9c5bQg=
Date: Fri, 13 Sep 2019 11:11:47 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/6] media: sun4i: Add H3 deinterlace driver
Message-ID: <20190913091147.42nsldzxwzfjoiak@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-6-jernej.skrabec@siol.net>
 <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
 <4613446.95M5L3lKvs@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <4613446.95M5L3lKvs@jernej-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_021151_007822_3D5F9FDF 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2425147432547615220=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2425147432547615220==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="42vjgwlldb7pcwy6"
Content-Disposition: inline


--42vjgwlldb7pcwy6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 12, 2019 at 10:43:28PM +0200, Jernej =C5=A0krabec wrote:
> Dne =C4=8Detrtek, 12. september 2019 ob 22:26:47 CEST je Maxime Ripard na=
pisal(a):
> > > +	clk_set_rate(dev->mod_clk, 300000000);

I just realized I missed this too. If you really need the rate to be
fixed, and if the controller cannot operate properly at any other
frequency, you probably want to use clk_set_rate_exclusive there.

Maxime
--42vjgwlldb7pcwy6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXXtdUwAKCRDj7w1vZxhR
xZY3AQDJluLkTUto07z1kgxJ+9CJnbEOdksi1vAG8DSbW/o52wEAyBtJ8MHD4t8T
GgYWgCtcAKeCFH1IT/6EICEM21kyTQw=
=aoHD
-----END PGP SIGNATURE-----

--42vjgwlldb7pcwy6--


--===============2425147432547615220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2425147432547615220==--

