Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACE546B46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tSYMI4Wrz5ecB6tjoVttGymaWVHw/kfjJ4PP60rWyeY=; b=enKWQdsBq85VKCAqXgxFJ59kI
	A+uG575JCQopS6+PIYXDap8kLS+zXqdp4P+00GDFvqFjSoD+CFkZiSyCAhu12wNJnonkcQKHexT+U
	WPkBCBwx5VbKE7CLBqIhdbV+SeAp1WTco6LV5YYnK5SnDknZeX/ijXx2eyhqk5fIPwvtA3+8ikqpb
	6tcrW+yRUTeBEKcaHKbbB53z2bVSU2KDP4JEmp15QLuiJ8BYu6wYleIy2IxXBktKNLhdFKDHdAUak
	7mMw8y5wFIkZhIKQZ7l/xKJCcvMDEoPnWf+K/LaM01OabgaPcnHilOokT2SBlZArnjvqnvtT/7lxG
	XHrDoeuHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtCY-0007op-2X; Fri, 14 Jun 2019 20:53:34 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtCP-0007oT-0J
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:53:26 +0000
Received: from localhost (p5486CF81.dip0.t-ipconnect.de [84.134.207.129])
 by pokefinder.org (Postfix) with ESMTPSA id D46602CF690;
 Fri, 14 Jun 2019 22:53:22 +0200 (CEST)
Date: Fri, 14 Jun 2019 22:53:22 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] i2c: i2c-stm32f7: fix the get_irq error cases
Message-ID: <20190614205322.GA17899@ninjato>
References: <1558020594-1498-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1558020594-1498-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_135325_673727_E792D8AC 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alexandre.torgue@st.com, pierre-yves.mordret@st.com,
 marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org, fabien.dessenne@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1848730776849603886=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1848730776849603886==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Fabrice,

> +		return irq_event ? irq_event : -ENODEV;

Maybe -ENOENT instead of -ENODEV? I mean you have a dev_err there, so
the driver core should probably also complain?

You could also shorten the ternary operator to:

	return irq_event ? : -E<whatyouprefer>;

However, both are minor nits. If you prefer to keep the patch as is,
fine with me.

Regards,

   Wolfram


--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0ECT4ACgkQFA3kzBSg
KbaP8xAAiUUQ1YDf9eeO9qQ5B7FKo7kXJ7iUA/RbGjfpC5zhjsoVgb7DdHvc7npe
PSrQ21fAXNJtFz4N1CcQ6A38C2/IYZ+A2NnmwNyzMhqL5W5Ah2gPl6UP7S6USF4J
4NnHw0/0eeH7/i+F13uiVGJudC+MVesWYPZgOBq9GGqgwxp7IztsjSOliBDRkC6c
6RtdlqXD0UfUt60sxIJz/Oy+SYRKc0V78KUeybe7+fT5gisBfF3E1Zs3OZFieupk
BIRuhXDNBQUTb7Cy387Zh4Im2uEzUb1qBIqC3azfJhNVyMm9fyiFGgysXNhkgEJ5
1CKiXadTzhYJQJUpxNDmYQcmk8t/cM69R9NKBXou8XCeutIbe4BA6myz0U0hz1Np
E7iBJ//LJpXAptZErq3n2VzDFHKKFWn4hyIJKI7LOZIdO2t/I/6wzJPMKxHJSOTv
soWDgPcS/D1to1Glq4+CPqwNicEXLm5q1H18UE0SjBskFaGwCwyjNFAvwwjmhJ4f
73uuuJBC3Oq2W/JqnYY+IFcue4GO/VS6ZughqW8iebSmwaoArzN00L844leXDkHN
0dBGj3bT/lcLrR+d7jLsWeHt4t6J0dTJAkIxBivl+dK2nta7NMalnqp6cFp/nHfY
R8KQhpWqlKhaoFGQzW1XiLNlKq+ZPC4MGq3h3thFOc9Z4lo96KA=
=VE/8
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--


--===============1848730776849603886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1848730776849603886==--

