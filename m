Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6EB1F7781
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hzDnicSZfEo5RgoVIXRqHLFetn6RSyvNfCn4DmAhRuA=; b=MjjFm3QEaVKRmdaHMVKnghUB5
	3cqQMf65XaUizkxwiVSvrfSvu4Bp8f0sicdDxU/wrfdMC8TSqCU2ZZqBY7BFEUcNtr+6kzm4zrMmI
	5YwDQndNr91i8cV+gLefiijayjv2kNa5/2SylWKqUptfygCg8iPGEFjHmMfpU+Hgn/IuLwGJ98yfh
	NHN5TdSVse6ZaO8cZ+HneYA9Lvhtkew9s2ElDyF2YYAgJaaVeuVHLMRRxgn6i+6nxo/toeVq4Mxwx
	7c05XxnL3zNpKqUJJZc+UAeON9N1HV9OkyYJhGAmZKMu9q3NBt58PvLj/Zld6Nn2xRgITg+gmMAhq
	b0brnslmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiDY-0003fQ-Rl; Fri, 12 Jun 2020 11:51:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiDQ-0003f9-1M
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:51:21 +0000
Received: from localhost (p54b33104.dip0.t-ipconnect.de [84.179.49.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED897207D8;
 Fri, 12 Jun 2020 11:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591962679;
 bh=4SU7cE5K1zuUDgcSqNx4a6863ycbWxNzjj6+RY5JyS4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BkdqVphjX1fv36AiWfuo2mhxrD9X8RnCZZRgbLw6LVw7pofACnD2PF9cW8ZQXuUEo
 vF6eZ+/C5O4ujSsMH+4vPZfQgQb1EOa7TQ/ofyezZIhqzglD8/VdscYUTZSnV+tk/4
 V6wgTeI0gGoYt77aXLKX+10YRZe/Ece1AJjYAedk=
Date: Fri, 12 Jun 2020 13:51:16 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612115116.GA18557@ninjato>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
 <20200612103149.2onoflu5qgwaooli@pengutronix.de>
 <20200612103949.GB26056@pi3>
MIME-Version: 1.0
In-Reply-To: <20200612103949.GB26056@pi3>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_045120_102017_BF34A8CD 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4680881878999719373=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4680881878999719373==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> This basically kills the concept of devm for interrupts. Some other

It only works when you can ensure you have all interrupts disabled (and
none pending) in remove() or the error paths of probe() etc.


--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7jbDAACgkQFA3kzBSg
KbYmdg//RW9DluIKVfF71z6Q72EfwO+kHdqZsli+39eCQGi+J2lBHJpJXsWzim+B
FXD88zlC2PC0Jg/svBtzq9t4FfmxA/YJH/rwUrr/2f6HYR7dXLfxFJDc+o2j5hFX
mgHPY9Ol+5l8R8jBDMO87i5Z/Dk8CRcEoiIMnfpnbFjhRdlR3hNxfwQV0u+yLQ5A
bHfcm3trfqSZooJtfAwoxY0LsrgAcStKVuNKqCS9676Vr5ah11BFGKaklQYNEWRG
0t5Xnkf6QSVbIHfVj20h70nvTPK4YP+quTs2GDcl/pYXESIduY1qxsbjfSXigi3H
27Dbu+Vzu1gLaoem3zFgxefBl6JdYsBmoQYPPGiOmayseWg2VTDJrHpgTs7eu2uM
6o8d3MA4g56sQJocsGSOMvStqu8xEVJ/V5kt6lDR0j7Ue9rhtXZRiDw6/DW3Gmro
s1BiEX3UwvwXqdGK9z1j+q/skFd3noXVY/goYsxqwwoyO+uMnhy6tW7HCJvse8e+
ojfwLkXX2Lu4+12+MnDhWEsa/jCEL2ozQC0tU594l5FLU5VYQCetAM7XnUfbDqDF
B17Ro5HH5+WhaAWwUkWUO5jaVtRe6w0e9P2ChQocQjktjoLNzVPXX8x2vzGGQUrl
CaGs+J26V4mod0xqhOZkACLpdBUJwb0Ji2/C1ewgBxXkcLofM+4=
=6fqc
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--


--===============4680881878999719373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4680881878999719373==--

