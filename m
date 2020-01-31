Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0671714E8FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 07:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tjv4AOGBrFZR0PFlv7C4MdKmUHOdolAFqb2C0YS7+cg=; b=JlQFJoEQb0zzWquv+JYGaqLK9
	rfL2NYcstpLxNWJ9nu1Tcy2x1kOL/PwnJsLFMACgbfiL0goi6ZJcpThWUGzcu3LHAn3pBMWk0Uqc6
	9sx7HDqSErZQdOm+LWG6/GK0b0kOdCdleAPTCKLVzkeLIPitboVe++OXZ/I2SOLtQPiLAE1dp1fnK
	6kbhS0CfjHPiGm6LvclNkFgoiSYoX4Ikijuuy7mdYSVHvN8+EjoMgIwsa+he2T3xwuJEbclqukVxr
	FPzBsrKQMr/OvH8tVST+ca+BOlqrpt+jl2WFzvTHP/g9aeFF0xSOW1JAwi8bXXq8KO+BNXAkt2GkX
	vRIAhhl9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixQEm-0004q0-HP; Fri, 31 Jan 2020 06:57:08 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixQEe-0004pK-6j
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 06:57:02 +0000
Received: from localhost (p54B333AF.dip0.t-ipconnect.de [84.179.51.175])
 by pokefinder.org (Postfix) with ESMTPSA id 721C42C0830;
 Fri, 31 Jan 2020 07:56:55 +0100 (CET)
Date: Fri, 31 Jan 2020 07:56:55 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 5/6] i2c: i2c-stm32f7: allow controller to be wakeup-source
Message-ID: <20200131065654.GB1028@ninjato>
References: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
 <1578317314-17197-6-git-send-email-alain.volmat@st.com>
 <20200130083927.GH2208@ninjato>
MIME-Version: 1.0
In-Reply-To: <20200130083927.GH2208@ninjato>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_225700_395246_D0C7F7D9 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1056936816586026472=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1056936816586026472==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline


--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 30, 2020 at 09:39:27AM +0100, Wolfram Sang wrote:
> On Mon, Jan 06, 2020 at 02:28:33PM +0100, Alain Volmat wrote:
> > Allow the i2c-stm32f7 controller to become a wakeup-source
> > of the system. In such case, when a slave is registered to the
> > I2C controller, receiving a I2C message targeting that registered
> > slave address wakes up the suspended system.
> >=20
> > In order to be able to wake-up, the I2C controller DT node
> > must have the property wakeup-source defined and a slave
> > must be registered.
> >=20
> > Signed-off-by: Alain Volmat <alain.volmat@st.com>
>=20
> Applied to for-next, thanks!

And I will drop it again because buildbot rightfully complains:


> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>    drivers/i2c/busses/i2c-stm32f7.c: In function 'stm32f7_i2c_suspend':
> >> drivers/i2c/busses/i2c-stm32f7.c:2199:44: error: 'struct dev_pm_info' =
has no member named 'wakeup_path'
>      if (!device_may_wakeup(dev) && !dev->power.wakeup_path) {
>                                                ^
>    drivers/i2c/busses/i2c-stm32f7.c: In function 'stm32f7_i2c_resume':
>    drivers/i2c/busses/i2c-stm32f7.c:2218:44: error: 'struct dev_pm_info' =
has no member named 'wakeup_path'
>      if (!device_may_wakeup(dev) && !dev->power.wakeup_path) {
>                                                ^

wakeup_path is only there if CONFIG_PM. Please fix and send a new
version.


--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4zz7YACgkQFA3kzBSg
KbaWShAAsD5Gaj6lEFcuVH415Va4PzT6S2H3CUZIfq7iTBdNKWV8nvABcAaS18FA
WY9qmpili5WRVugYU+1X4rxzEnSPiO6Sx5s9HGZHPefRlr2B99BknwPRCRkwWb6g
vGNROAZh+qQuTayJ2UH33dSGtjXQ09KH4uDrIeRBoxWRuOlhxOe1FBmwudzEC4UM
g3nCUq94rccym19fNkWxATy1RCwd2LZF4RRjj2CQLW+o41hUa/Vtb953oxjKPZHo
p6lNncLSls4myb0yyqLEfnyFgOaopM7kOaTsgZAElto7WptLPtrcv0M6pCuZGeQx
jFEqtZqSGNQsnlv4kZIei/Cnwp/zP1wgsHblLH20w1AuKAwq0G91kysEIH6OYak/
HUL09BSJ25ZVEKDOonq/bIVPlxSvO5C0SYkq+YjgY5ojSCWWLF8ThkUCayynCEu1
qsLn6oY7bB/8qqpiqPb+rx6M5ZuLLz3RKQmv28WuV2Oyl/KPgjtBXQ4KDG8l5fxI
bUGHLyMdiyGFoK64lppvjAWp3WSsN8IvcVfRrl7HfTgZ+iGONbCs+ZYVQ9Y3i1gw
APQl4R/vack7OumxG6wFjRvEpPDfwDvaR6A4yxpi62mp+YwP9NZ93pduvhqrF/DB
XMvJqyy4aMLZFDC1ioWldHX8FuFEXLqc2BULX/o0S92ZKSRYVc4=
=wM4/
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--


--===============1056936816586026472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1056936816586026472==--

