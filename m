Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E6A19F41E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5SfjYIw8Fj5b1kOPkHHDeYVqKVRzxe5neTd2SHxYxnU=; b=FdtDTfhLfMNAaDvN+Tl8BPC7A
	RwTRwDWGzNISZ8QwOG6QW1ixqcRKN0p7xRpAtydZWvRVQpNhhaTeyogiRiikreUQi64ISQie8dsAB
	vVlrFMxZ/CihdCgKdW4oav48UaQmOgVxExJoV/FNYGcR2JfEPLNSu6KRux6AxEhkC/BY+xolpmUO+
	8YOvdqqasnkaEd5+n7n2L21aOUtTnF/zQqeoZGbfGxJ+HOcTSHEWFhsRkqAlF3WUhEoBQM2VXmObx
	Jc8mM9tQ+3C2I6aqVnMMIfNF072p9JeMOneHevwpUBdAjIIltATQrTiH6bsWTATBNB3LgxBI6v1td
	ql8ijZNtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPb1-00008h-5P; Mon, 06 Apr 2020 11:07:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPas-00007o-VD; Mon, 06 Apr 2020 11:07:08 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31DE6206F8;
 Mon,  6 Apr 2020 11:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586171225;
 bh=MW0KG31dJrppaZHP8FQnU1F/hl4SWfSAkuygfDdzRsY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vYBvA3+sGFhq3yTKh+ucCBVysSRVEhv8kbTZ7mUax4BlKAv3D4fK5qjUXj7Z5gLgl
 TISEdcdQC4Yw6kKUo0xsMd21GDTjBeoWPMIjRqPbpl8tuQjZBP5dWfsAI/LfpptVzJ
 V/SAs1M5qygo+k2m9swv+YpL4hpf8/q5LkRknr1E=
Date: Mon, 6 Apr 2020 12:07:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Message-ID: <20200406110703.GA6837@sirena.org.uk>
References: <20200404115225.4314-1-jbx6244@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200404115225.4314-1-jbx6244@gmail.com>
X-Cookie: Serfs up!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_040707_033028_AD4DB8BC 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4972987774012645929=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4972987774012645929==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 04, 2020 at 01:52:23PM +0200, Johan Jonker wrote:
> Current dts files with 'spdif' nodes are manually verified.
> In order to automate this process rockchip-spdif.txt
> has to be converted to yaml.

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6LDVQACgkQJNaLcl1U
h9At1Af9FC3z9FsNzTwUOLATMox+yRod2jIFEGJXPViju4E8V2EuoclTbhXAgNQ+
HpPLozVdeSMKzCNs57EAKph0W6rKpkaGz5R9NliqRohe0OiQpnIhftVJMHawgqCl
0e0hzX3E+R+1hOa6R2BDTdTHuA+xk2oni8V6w/MW4LVuZZ13fl2Pxa2y5dOdp+ER
woZL3J56Q1b6NkKdYWyCMZgj/GfOb8FFVfC0Dp4BTQh0VO0V2KvwCdklmWXqYC8D
kkHkggw+t/98qhSUrBu+L4FvXYwc17OzhJszkbJWGLoA83ogbf12Nqm4X2ftyteA
p+R0xiHc+axQuwhe8ch0Ei0ZBAJxvg==
=VqFs
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--


--===============4972987774012645929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4972987774012645929==--

