Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB3DECF8A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 16:43:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M512Wbrh/Z39PcoxTobxN1Ovd2eH1A8VjVQbJMUoFIo=; b=aH0ItVz2j4mZSaZoI3f4K0c9O
	3wPprZ2nbmQjG/4tUMINhCoX8O2EZksq6COwyS/5WXHbFcwRDCcQgI+RKfVhf1cy77hPpTPVduQJi
	erj8fH9vJYBWqyUsjjuQ52CIfaBsWGOvb3jhYmj8V2XyFyX82/CeJEHNlInhGRrN41vVSqUmVsxWh
	heJngWJtW+JjQwfSBOWh3rpqeI5pAf+znRfr4srJtHeQKOeLgfJsfPK1GXffnZ2nwd86/2A0YgURt
	ZqxNZjPaXVyX4iWebcgKp2lAkDcv36HeGd48Xmedj38WoH7swNOhMOnmjXlcsN6pQrMzKSduNXQmH
	gPKIxDWmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvYF-0002w8-2Q; Sat, 02 Nov 2019 15:42:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvY8-0002vo-Ah
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 15:42:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7841D20663;
 Sat,  2 Nov 2019 15:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572709368;
 bh=3CS3IEv2L4GzxRj2P0NzvngghoWYJ5gWWZyNPhTAZm4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lfUd+NpkgCxrrKGOneVVfBmLi729LIeU+bctxhXLUX3sZWWsCAInrYL5DC+xjO4QL
 u+Rbqyxvodb9Qy1Ix+SmhyxBUmZlPK5+0uRD13pH+R5KEpKrfOsFyn7YvReYD9VPqE
 96S5cZVNZ4L8IK0W4ZUSBA7LWCSQE2D0LqeeTk4w=
Date: Sat, 2 Nov 2019 16:42:45 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Karl Palsson <karlp@tweak.net.au>
Subject: Re: [PATCH 2/2] dt-bindings: arm: sunxi: add FriendlyARM NanoPi Duo2
Message-ID: <20191102154245.gxvji3w2wnh5qzu7@gilmour>
References: <20191101205535.7896-1-karlp@tweak.net.au>
 <20191101205535.7896-2-karlp@tweak.net.au>
MIME-Version: 1.0
In-Reply-To: <20191101205535.7896-2-karlp@tweak.net.au>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_084248_389592_EFBDF20E 
X-CRM114-Status: UNSURE (   8.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wens@csie.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2825630901454413790=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2825630901454413790==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ue74xj2vtktduj63"
Content-Disposition: inline


--ue74xj2vtktduj63
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 08:55:36PM +0000, Karl Palsson wrote:
> Adds bindings for the newly added NanoPi Duo2 board.
>
> Signed-off-by: Karl Palsson <karlp@tweak.net.au>

Applied both, thanks
Maxime

--ue74xj2vtktduj63
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb2j9QAKCRDj7w1vZxhR
xaEzAP9KupnRjVKEivn/6aaHPJmtBXWewZ2OjKgUnRv4XQPMNgEA4F3idPR7gHO8
akyBGuXuWaXihn4ifxn14x3N+joakQ8=
=3764
-----END PGP SIGNATURE-----

--ue74xj2vtktduj63--


--===============2825630901454413790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2825630901454413790==--

