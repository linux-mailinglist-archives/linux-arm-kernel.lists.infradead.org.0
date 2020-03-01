Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5645B174A96
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 01:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iujwb5zAJ0o/NOLgT+SmiIdgeXm+3BaOuh8xn0hVLZY=; b=XKcanaOKnfHhofIaCNPRBjXhM
	CgOsDNbaeU1s+CRRLcDnX4ZOwp02nRuY8X0o/B7q2GHBDBaf3n7dyRzzKUQrZC/6XxUgdyN0RmdDp
	vDRII4AfT1hvyZvgcajXSuyK2urTMKyKPodFW3B3n6q5sPFGEDpZ6WsxMRTrGuOueB6Si46uLxlQ6
	c566fNFnbYrZc4HDplXTOe3Eo6kw0mSKk0GS8tR0do3kvMXv8uxpQIAsviv8VrpdOIil8rVynZ3Bh
	7eE20uXfvPU3/T0gldorJOzBT+filAax42ZWYv9DyS2s175dfI2wOo81Iufxl+5Fet7O1twADJSrx
	BCKkpGXYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Cmf-00048X-4c; Sun, 01 Mar 2020 00:48:41 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CmU-000475-BY; Sun, 01 Mar 2020 00:48:32 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 48VPlW5nYLz9sPk;
 Sun,  1 Mar 2020 11:48:23 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1583023705;
 bh=4nRI6rwZRJmJBCSa2D7NMwK+7ECxFcV3Jplu7f2M8vI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bQndGde94p9FyOTmTOsKt5AnSDdUQoxCwxy7l9+8ZpBXs+oyYGsT/USUpwwCYFUeB
 OAs2OK8w6ainF6Hb1E0AJ3CtUFbC/Gb0BjAl8V8sCSxedVthQ/5mF0cXHyhWH3URuy
 548JnLhcYrDjKtEwM62cZV7xhRlwqKtlLRSnogfOpYniYaEqqhZXM/iY1dM+4u/X/N
 6kc5DIlzx4Xg9x6Gdes2FktrED8OwRU/yMDa6+PP8t50g89z4T4PxnCkpVeVv3S4db
 oEtYHaxZc1SvKAmmMUypMuz3UqBveSsmjCegll5CS64Xsw+gfj6rEWt1n7xZ+786FC
 OU6eoFzkoU47Q==
Date: Sun, 1 Mar 2020 11:47:50 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH] soc: amlogic: fix compile failure with
 MESON_SECURE_PM_DOMAINS & !MESON_SM
Message-ID: <20200301114750.7d270124@canb.auug.org.au>
In-Reply-To: <7hzhd19vuj.fsf@baylibre.com>
References: <1581955933-69832-1-git-send-email-jianxin.pan@amlogic.com>
 <20200218080743.07e58c6e@canb.auug.org.au>
 <20200218092229.0448d266@canb.auug.org.au>
 <20200224101654.530f1837@canb.auug.org.au>
 <7hzhd19vuj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_164830_597967_F46325E4 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============1597174880311398702=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1597174880311398702==
Content-Type: multipart/signed; boundary="Sig_/Kf1.E4dLddnNTqvZx6GlV0A";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Kf1.E4dLddnNTqvZx6GlV0A
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Kevin,

On Sat, 29 Feb 2020 17:55:32 +0100 Kevin Hilman <khilman@baylibre.com> wrot=
e:
>
> I've fixed up the trailer whitespace an queued this up now, so should
> show up in linux next shortly.

Thanks.

--=20
Cheers,
Stephen Rothwell

--Sig_/Kf1.E4dLddnNTqvZx6GlV0A
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl5bBjYACgkQAVBC80lX
0Gw+KAgAhjy4Z4V15rVXk29DVizB7BmoTp0AHlbwyBOXdg1fqDDAgpSapQv/aaTF
t/kpWrI8HPqJIV33mTw9Y4ihIwM3w3hurf1Z3fal9lem4IITW6hlcuXG8jm1I0Zh
rMlvimE+P9nv7UYTDqgQx0+v7nw3Y0kxJTkkoRbtPMOBeX/mq3oEMqHmvyTRzjjf
+uqsMBh50kotDakasWPX47i7cULdhXg3BUd/lPYg7n1wJ179GLOl0F83CLmbeCtK
D5PxpxIZmQEvgFModR81zi8NPz46WCa1WeSQ0edqS2AYBe8p6FWYyEeBCmU2b2ER
xjSTCdXBgNDI8gD67V0Tx7Qs1++sjA==
=V59f
-----END PGP SIGNATURE-----

--Sig_/Kf1.E4dLddnNTqvZx6GlV0A--


--===============1597174880311398702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1597174880311398702==--

