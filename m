Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3E5200C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 09:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VgwVRVIcvyr09M0oD7iXaYsIy+TweZBmv3oW0WQ9j+w=; b=fZpQMYrrXwW2dcQEjc+8l9eUY
	3ObIKa5c89NNVWPfTch5tn0quHT8EElMHcP0Q8Sufm5sodLMg/pxEAdI5H/a6jBrjazJY/GxB1WvO
	cU6RvOJ3ZvTxHC1ZA69n8zmOrh1TuV7TTaa4QJwotzXaihxi6Noxqw1nr+4EjmWEUNByLtONVaaDm
	eTyQ7EqhChsblnW3xIG5I/beWeDLB2Y8D8JGX/GgwW6JelRSolfhVCMFn4+jj/0UFOZWaMYIt1itF
	J0mtLqgPhvCJV5+2SwjUBAMybPw9DaQbvwi9L0v4VPnleiP82TZXhUNdTZc4VYOjN6im5OTHs3m0x
	RPwKvqIcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBI5-0002pr-K5; Thu, 16 May 2019 07:59:01 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBHw-0002oW-Mq; Thu, 16 May 2019 07:58:55 +0000
Received: from localhost (p54B334EA.dip0.t-ipconnect.de [84.179.52.234])
 by pokefinder.org (Postfix) with ESMTPSA id 3A3302C04C2;
 Thu, 16 May 2019 09:58:49 +0200 (CEST)
Date: Thu, 16 May 2019 09:58:48 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
Message-ID: <20190516075848.GA1033@kunai>
References: <20190508071227.18609-1-nh6z@nh6z.net>
 <4174B26B-4E3A-4CCA-A5ED-BE62A3B5E66A@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <4174B26B-4E3A-4CCA-A5ED-BE62A3B5E66A@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_005852_887797_B5D58C00 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, swarren@wwwdotorg.org,
 team@nwdigitalradio.com, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2971374227558525926=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2971374227558525926==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Annaliese,

On Wed, May 15, 2019 at 10:37:03PM -0700, Annaliese McDermond wrote:
> I=E2=80=99m just following up on this since I haven=E2=80=99t heard anyth=
ing since I submitted the
> v2 patch a week ago.  Wolfram, does this look like a sane approach?  Stef=
an,
> were my changes in v2 acceptable?

There is a bit of overhead involved, but conceptually it looks like an
elegant solution to me. However, I am not an expert of CCF. Grepping
through kernel sources, I don't see many clocks defined outside
drivers/clk. So, I'd appreciate if we could get some ack/feedback from
one of the CCF experts/maintainers.

> I=E2=80=99m happy to go back to the drawing board to change things if the=
re=E2=80=99s a better
> answer to the problem.
>=20
> Thanks for everyone=E2=80=99s patience with me trying to work through the=
 proper
> process.

Thanks for working on this one!

Kind regards,

   Wolfram


--r5Pyd7+fXNt84Ff3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzdGDQACgkQFA3kzBSg
KbYQWg/5AdfmRi/ctOOZd7sOQgmD0lEnr9/6ymkWQRAGt5Q9ydawpT6Naol0J+wP
3V/a6n6NCsrzRl+8U2SfV6TUPIPGhEz32NwWx3rnbPSG0JKJcoWA3rkPbnZOFWzh
/4jojbUzI6TJQiOpizOKzGex+Pyjb1mo3oSw7mgYPQ13wHISa4gZdy84fjGeQeUf
2XGHQqkPJII47O4inWLXGc81IQfnWld1CGgY87EgY7YgzmwYXDqH/uzfnxVo8CTU
CU5UNiPBnIgdcC9zbkajNqIbPn5OXbZ2AwnNekIXKzAseJcjfciAAJKyo4Wrx8Aa
5HkbkCYxl2FudXhJLhNv+aEl2wOgCi17aujJgMYseDZlfPPL7NZYJ1KSVIbCdam9
XrkOb1ukxbdu4jh+bzQSRkmQoPlcPCV1UVvJOU4yvSzpjqzUKIwqY1OLLAJDvZh2
qNPcI52UWiv1NQLyYflcHWAgweQl7DmxMOVbF8P4FGvkIfY2AJhor1i05KbNzdW2
QMaOjAEE5EHhSARBK2365kfucjpcib3tDrVC+pZsE0uISVUp1Eabs8JeAu+1Vy2Y
HI/3R1BfvgIjhnwv1jPAdD1qND0dD0px5PeQ0Sl/vqx4eW597pHNxUUItHcUpKfU
QhXINFxHkoP45ozosW2YyrVfHFPKDGm0Bf3ZnZcqev5A+GaDQSM=
=XauL
-----END PGP SIGNATURE-----

--r5Pyd7+fXNt84Ff3--


--===============2971374227558525926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2971374227558525926==--

