Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72FFEFCFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AjUu7NCiVswNbkf4LsJuOIIi2GjVaJ38Qy1rsPGfox0=; b=qyHvwNLvicsSiytTgpymkxjF+
	eOaD6fnrTtVqIXlBWHZywF7HZcR/qWu0c5p1NdunckYMOKo0fYRvZU1Y4mLGGwXbipjsf8Dx/nAYf
	kO+Dh5PLFqGev2aOGsYdEmOpi7mxyGb/2Q9YEgJbRyKuQrje4DKdcC+1Q6aoIyf2MNBn3oCutkKBS
	/P+XE4iwX+5+B/qnDQN3NEhjK97kgNwmfVcxaZhtPolRvxfMzfkMS8b+1tHGu+0QLrLUx3c41tta8
	7kEttyCeJGGJwN/pwiK5KiitYE+jfaEFWbpQWoSW3JJ7IIbp0OqhN7sWDtVNYvXT1V7dfAANPxkvD
	mdmLY7RzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRxhv-0006v2-9U; Tue, 05 Nov 2019 12:13:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRxhm-0006u6-8N
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:13:04 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EBB0222C2;
 Tue,  5 Nov 2019 12:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572955981;
 bh=JWS/W12mO5mZnVekHBlBRWdp/OyxyevSv6Q+ELpnlrU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aLmcy2/AKCk2t6xgDQoAy1nY4Ek0tqRtHPXm4rWHPNePK0vNRJKHOEn7o4ScYu0sG
 1dqNlW5P9pwItakBxyQGi7DaXBee/eHA2LbGYwuvNbaZeLl6saOhR6w2sn/pix8egS
 9624DrSLmY4CgCyAIm4qsaoBu9mYzpidLVmYgdgo=
Date: Tue, 5 Nov 2019 13:12:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Remove useless reset name
Message-ID: <20191105121258.GH3876@gilmour.lan>
References: <20191101115629.253930-1-maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <20191101115629.253930-1-maxime@cerno.tech>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_041302_317037_0B98681B 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============6171906542045666424=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6171906542045666424==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+sHJum3is6Tsg7/J"
Content-Disposition: inline


--+sHJum3is6Tsg7/J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 12:56:29PM +0100, Maxime Ripard wrote:
> The TCON TOP node in the H6 DTSI has a reset name that isn't described in
> the binding. Remove it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Applied,
Maxime

--+sHJum3is6Tsg7/J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcFnSgAKCRDj7w1vZxhR
xY9+AP9q94T3l65q9jmX07J/okEu4u8sHqbhni0nkb4d9EyIEQD/aAcYnNUuBCUw
NDz5M/3Wbu0iokDrRmyOpFX8ksCzzgA=
=10Dq
-----END PGP SIGNATURE-----

--+sHJum3is6Tsg7/J--


--===============6171906542045666424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6171906542045666424==--

