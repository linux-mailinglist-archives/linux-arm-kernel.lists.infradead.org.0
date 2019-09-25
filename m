Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAB7BDC9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dEyl9oDqKNjViJYrRnE20Ey7M6WD7WxuWNKFram6sR8=; b=JN9v6YVbqD99CBhdmXoLyGSOd
	M8BYuMarjXIXo9BPfqaySC5BP1490JGYneznyEKU1HDuBRdENOckOAgC5e6jG5hOWg0vzW7qrj2l3
	M35xs0nIuu/UEjfHp1XHXc9zpyxGqSUFfiYBxiAaHdwpvD44HTRZUKuNOPaP+Rfv+Xrgvt95/UOlb
	304pBSmal5rf2kwby10/mHiPESkqxvXIVb5u/3Vm45GZ9rSVaQ2aRwUVySE04h+8MDK46rd0sAA75
	krixsT8NothM+GTn3mrJlPB6dns19ALdQ8dbOJAXyFPB1UzFLz7ykv0abrI5D2951FBZVwu+dqUu3
	yWyaQm1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD54n-0007Oa-4M; Wed, 25 Sep 2019 11:03:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD54H-0007OE-Fq
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 11:02:46 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D52872082F;
 Wed, 25 Sep 2019 11:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569409363;
 bh=t5aOuh6J+On4+Pn59tRyXi6l/3EnNBN8n3FvtMFOYN4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P5emlFats5ujg3ZZYd0V2tMJ2RZIMqZFw+QhEeiLJxnByTx2otMU9uaJ7RtVuIull
 KthHZvt7DJ9qPJ05HVsOKdXOlgJcXwZ0ft7U3xdlAk3Ga+lR9BixXPcMMXhe1+JenO
 MGg8OnSYNEA9/c7S47pzceth/Ep1vWB2TyoS1Q8o=
Date: Wed, 25 Sep 2019 13:02:39 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sergey Brutyan <sergey_brutyan@ehayq.am>
Subject: Re: ARM core blob list
Message-ID: <20190925110239.yu22bhkdw5t63mc2@gilmour>
References: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
MIME-Version: 1.0
In-Reply-To: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_040245_563749_8CAB1276 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7681797212531617592=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7681797212531617592==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x4kr3o3xnjv5v7l7"
Content-Disposition: inline


--x4kr3o3xnjv5v7l7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2019 at 02:15:37PM +0400, Sergey Brutyan wrote:
> Dear all we are company of hard/soft design and integration mostly based
> on ARM cores.
> We are currently working on Libre Linux development for ARM based SBC.
>
> And ready to put professional effort for having complete blob-free Linux
> kernel, as we have done research there is most problem with bootloaders
> and Mali or PowerVR GPU units in SoC.
>
> We are looking forward to cooperate and=A0 now have several need of
> information.
>
> Can you send us list for blob drivers for this SoC:
>
> =A0=A0=A0 Allwinner A20
> =A0=A0=A0 Allwinner R40

Aside from the Mali that you already mentionned (and wifi, usually,
depending on the board you're using), there's no blob involved on
those two SoCs.

And the Mali itself is being worked on as part of the lima effort, so
it shouldn't be a problem for very long.

Maxime

--x4kr3o3xnjv5v7l7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYtJTgAKCRDj7w1vZxhR
xSOpAPsEdjA1yioJoXoqflghEgDyi7+fzuWD7XSx0MAu4QlcsgD+MQszCTIldNcM
/r6fj2ehQQ64QgpKrcMcriNMtT0bHQQ=
=OGUG
-----END PGP SIGNATURE-----

--x4kr3o3xnjv5v7l7--


--===============7681797212531617592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7681797212531617592==--

