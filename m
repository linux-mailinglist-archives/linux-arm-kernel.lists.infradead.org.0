Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F4D168EDF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 13:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9RMY4fm1pIiksoNa1nuJ0Wq04Zde7KC8jLAlOS/7dRA=; b=FOStfqw+TU+q1w8xywcp98Wv3
	xj7IXNGDVrmJyLf2woiQhUbYZT0egg5qh9AW48Ibsi3y+szJqYwnjuFbSUQYQnKoOQgiWKOSszI3H
	GNIyq6zTDcHoy86Xm9aL3IZSQg/PGmdiJOLSsChJtX032y4NOaUdxJoUSK28y6XmbYhUh8lyh8vqH
	u9UlJRQdogHOhDmTv14U13Q1xW4GmfHYtVGxvnSVjI7ZPVszVRsotWG8XV8on4dkrS4IMTIDUMhb7
	4qNCs61B0+HXqBzuVigqV+g4vORViksf9BtCxyJTjpnOk+5zlC9Elnze3P7QBsTgf2bTqH5NlG1F/
	mmkabHWFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Tz3-0000EX-8i; Sat, 22 Feb 2020 12:34:13 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Tyt-0000EG-7f
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 12:34:04 +0000
Received: from localhost (p5486C6B7.dip0.t-ipconnect.de [84.134.198.183])
 by pokefinder.org (Postfix) with ESMTPSA id 2BC192C07F9;
 Sat, 22 Feb 2020 13:34:01 +0100 (CET)
Date: Sat, 22 Feb 2020 13:34:00 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCHv2] i2c: i2c-stm32f7: allow controller to be wakeup-source
Message-ID: <20200222123400.GF1716@kunai>
References: <1580752328-26009-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1580752328-26009-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_043403_425994_17C4B3CE 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1911362942078674378=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1911362942078674378==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Il7n/DHsA0sMLmDu"
Content-Disposition: inline


--Il7n/DHsA0sMLmDu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 03, 2020 at 06:52:08PM +0100, Alain Volmat wrote:
> Allow the i2c-stm32f7 controller to become a wakeup-source
> of the system. In such case, when a slave is registered to the
> I2C controller, receiving a I2C message targeting that registered
> slave address wakes up the suspended system.
>=20
> In order to be able to wake-up, the I2C controller DT node
> must have the property wakeup-source defined and a slave
> must be registered.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next, thanks!


--Il7n/DHsA0sMLmDu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5RH7QACgkQFA3kzBSg
KbbVzBAAqGtkUF4TZxt4ODn2bDGGVNG9F6i9rjjyI5ug25RWTB+ROjLWYiY/bhb5
aD74gBZY53Ec+Oux/YKTbTXPLdDZDWJch34GZSa/qGJzgOjWOOp0CzNN0pX+pxBW
VBhyTL9JP0UIMXypSoTc/1toTIrw6GBmT7j+/l1egUQWERrqzyEnkO0AG9hsSdy+
9NWnRmF4E4BqvBvguJWv5LxKut+fk4cimN1r09kc8Fu/D+2O0rsOwk6h2PWPEtWw
jxBQDQm6j7tChzipyzmUOQmNv9uG2fNxoIqdgl77y9b3bpRPRi6zjHlEpYU4Q9PP
frijrpx432VHOdR83b9Als8S6XV6rK0MffKtiw6dBwnljkwPsPmnrKAePHwBFW6j
mftKGaSEBFaiA1NfUJQJFvQovtUhJtHnQ4FafWoAv9UdfJEs/P/styAj7xMQ6Z/i
0q2c57ntHfCoXxBNTRGuiG+jw35avYfWH5yfvjQhUr2H6bDXWU5SLcnuhPraWSWV
3JqQuz8eGCig/FP96ZUsb3o1PIsNsQjFIZT81H9Gqc8FvS6wf1SEqvUHClVMvz1w
XY/hFcwAifYIOVKTIjoEYB7xdyV9Pql9d2gKeCwCzMVIQ02ULc+QDdgWJa0Cffjl
L57oZYPgRksiZPh0hS7QdyMaf2WA1vFNLIA8+sJ80xHBtEGop+A=
=+Wcg
-----END PGP SIGNATURE-----

--Il7n/DHsA0sMLmDu--


--===============1911362942078674378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1911362942078674378==--

