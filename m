Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DA0A94B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 23:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L7BjBasuE6W+aWxS5eMES6lFcMRWfzrmT7cZdhkbku8=; b=QprRAte+Q7PH7N1e7kQqNK3Yc
	2ZDypn5ELVD4rXLsy34+OU/u43syywR25hmP3Sd2OC2UUYBv7Tg9HMXPeZWclWCN8hQ6J7I/Y4dm/
	y36USWKK7JqQdN11dkk8G1bwiKUkK1XMGS4VrohLeb/EiBGKDJomahICYQ7mj4noGv7POIGkQ0r/y
	nBzgypaiZUpPK3Sn/mPRtgvNi64XGVqbZ0W9kViujhW9u5HP9TsHQ7gaBuzqiZ8XPKDKX3N+JRWzB
	DpFLUkZAAxgm2Ppy87nxTkppgBsVRvV4S+RzepMUuFulALHZY60uIiPyG54HqhTrbOwsEq6g+7z61
	c1v4RIOyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5caE-0006Xj-TO; Wed, 04 Sep 2019 21:12:54 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ca3-0006Wv-8G
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 21:12:45 +0000
Received: from localhost (p54B337F1.dip0.t-ipconnect.de [84.179.55.241])
 by pokefinder.org (Postfix) with ESMTPSA id BF8B72C4F2F;
 Wed,  4 Sep 2019 23:12:39 +0200 (CEST)
Date: Wed, 4 Sep 2019 23:12:39 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] i2c: stm32f7: Make structure stm32f7_i2c_algo constant
Message-ID: <20190904211239.GC23608@ninjato>
References: <20190815055857.1944-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190815055857.1944-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_141244_250302_425955E0 
X-CRM114-Status: UNSURE (   7.32  )
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5789920604182025648=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5789920604182025648==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yVhtmJPUSI46BTXb"
Content-Disposition: inline


--yVhtmJPUSI46BTXb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 15, 2019 at 11:28:57AM +0530, Nishka Dasgupta wrote:
> Static structure stm32f7_i2c_algo, of type i2c_algorithm, is used only
> when it is assigned to constant field algo of a variable having type
> i2c_adapter. As stm32f7_i2c_algo is therefore never modified, make it
> const as well to protect it from unintended modification.
> Issue found with Coccinelle.
>=20
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Applied to for-next, thanks!


--yVhtmJPUSI46BTXb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1wKMcACgkQFA3kzBSg
KbZtHRAAhUQXfvaGpBOwnt6QQ5sO9+U8ZeiPYL2IqsqOwOBGhLpWReFjilAKXk2o
8x/xXEaituqT7t2Z/ECReg5oTMQESJBVj3hnbknunZX7etJGj9pbQGDsV9Ou0lPn
gm4JjLPiC12KM9xv1si8lTrYQJp5K14stjXHSE4YW8Xu1W4SQ9lJSHpm+SvtfFIv
6Ddi2F4XIRhx7JYyN/XDW0ABXpJMd4FayJ6G/N+vtd5N2KT9Ee8FdEcjFKD/7Vec
J050E9XXNBYHBfjtvksGwEYxBHdltnsZlmmTOB4fKvmA7L1PqqoTKi4prhGL3Hum
BnitzpIhFP1hjIyIHiOCQWGW0CvN7mmlu13vUaGJnvpKkb3vk+HSxGgxVu3kf8Hp
MXmysO8ZUUOXe8ZLWSCTiqniNtQjlrFujnmYC5CR9q4KLBKZc18ef1GaGoLmHRom
rYo5B4nMZdWntuyVsPK0UzTDJpt3KEFSHqBqJqmBRJGGiIFV8XdyHSmjt0MWLMqz
If4rX7JmgShYUnpoCTM10Y/vwDBAEQ2tXqfhH+AfzU/n+bA9f0Hr+Tqy3V+LASxl
Gp8jQqL34fs7yXc7gswe0t+PSaXM/SVelCTI3M6YIT1IZ2vVLzaowYdIMoTyFLZr
/g0zgz7p8BHKMxnNxi2bhFXKPo6Ary+Do+H+Lx1xOsgIn/UIiR0=
=Tqt8
-----END PGP SIGNATURE-----

--yVhtmJPUSI46BTXb--


--===============5789920604182025648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5789920604182025648==--

