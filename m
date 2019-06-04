Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1E03503D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 21:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EOcIbI/X8VakGYr/fJ7B5OMvCCWo53mIVSUSrEW+oho=; b=s5bvB+8/5lSOIeG+Zyp/mQW6a
	LKsX2s4lc6MtKUGi6YvXavlW1JHEbcsCwdP5xzwbGUaXyGDS/KaZyzhA8JetLeiftHrKfD6K5xckV
	XjMsuZrburI1bGm3rUcQtLESi6wL5TXAgQXPuLfeuNrwlmwcFqWX6RyF1YgVODqxZVl79QBn2DZJp
	38+mli/7RHTG/onik4BzaQ/kHXkjeAVEedpcHMdMlPhwIhy0KAXD9dUUbEZGr/gNcGTng4Em9C7A5
	VGRvUWVLJ7iKht8+ZYN+kpQDgmC2sLPVm3wuObJnsByKqExTwSFb1NJ6cRaQN4egMbqt7jvLtyyu6
	DAhhu2XpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYF5H-0002N5-RS; Tue, 04 Jun 2019 19:26:59 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYF59-0002Mi-R8; Tue, 04 Jun 2019 19:26:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 816BD10A288F;
 Tue,  4 Jun 2019 12:26:48 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id JbnoffimuG9y; Tue,  4 Jun 2019 12:26:46 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id C88F310A1128;
 Tue,  4 Jun 2019 12:26:46 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 45BC92FE3AAE; Tue,  4 Jun 2019 12:26:46 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Stefan Wahren <stefan.wahren@i2se.com>, Annaliese McDermond <nh6z@nh6z.net>,
 f.fainelli@gmail.com, wsa@the-dreams.de, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3] i2c: bcm2835: Model Divider in CCF
In-Reply-To: <31580e1f-60d2-f13b-dcfe-6bc6e75e9285@i2se.com>
References: <20190529042912.12956-1-nh6z@nh6z.net>
 <31580e1f-60d2-f13b-dcfe-6bc6e75e9285@i2se.com>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Tue, 04 Jun 2019 12:26:44 -0700
Message-ID: <87pnnt6tjf.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_122651_903203_53FB9D55 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: team@nwdigitalradio.com
Content-Type: multipart/mixed; boundary="===============2481001482613569044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2481001482613569044==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Stefan Wahren <stefan.wahren@i2se.com> writes:

> Am 29.05.19 um 06:29 schrieb Annaliese McDermond:
>> Model the I2C bus clock divider as a part of the Core Clock Framework.
>> Primarily this removes the clk_get_rate() call from each transfer.
>> This call causes problems for slave drivers that themselves have
>> internal clock components that are controlled by an I2C interface.
>> When the slave's internal clock component is prepared, the prepare
>> lock is obtained, and it makes calls to the I2C subsystem to
>> command the hardware to activate the clock.  In order to perform
>> the I2C transfer, this driver sets the divider, which requires
>> it to get the parent clock rate, which it does with clk_get_rate().
>> Unfortunately, this function will try to take the clock prepare
>> lock, which is already held by the slave's internal clock calls
>> creating a deadlock.
>>
>> Modeling the divider in the CCF natively removes this dependency
>> and the divider value is only set upon changing the bus clock
>> frequency or changes in the parent clock that cascade down to this
>> divisor.  This obviates the need to set the divider with every
>> transfer and avoids the deadlock described above.  It also should
>> provide better clock debugging and save a few cycles on each
>> transfer due to not having to recalcuate the divider value.
>>
>> Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>
>
> Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

FWIW, also:

Reviewed-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlz2xfQACgkQtdYpNtH8
nugysA//bZbeBZr4HJvvzsJhUkxzSPImOH4/xN2nzZVCVPXWro2fQXPC/WRTdl5K
/WA44cuxN/zAfFwzOQgPs3LRRQiddJZsiKMhSiZeu4+Wu9vQP4vCoFU6lZHoZzGq
XL3N29LzHldvQ4OY7wOsYDgPZrR1EKoP0nqeH8K/ayJ1m1bGVv0SypbdyAGRDPH3
t39/xMXBDhgLjFd8u5rSDObqVLDo3W6yJDyb4n7Jd61qomrIqCzwPWT6/P2cxr7o
70p85EcGXejuwPEez5SCbMY452e5LmHFyTa99aRf69KYEfXm9Ut6/uGjohlINIzk
isMZFI2wIKt7BKpjDep3LaQAlO+B5S7m21rqcHB0BT/yarY4tPdA1M65L+eSMN00
MVoCwpI4Xy9dN0R2YuXiwBFtGChXEcqwbct9TkBd49nbjQIslBQQUOgCWKWyfXwX
Qa/pxuXl8vVVI2F+ACFBPaM4EVt6mYS7Uc12PokM8XU2tiIWklzaPIjEQlI4LSVr
uj1cxcAc5aSbSfioenbPeNCYFO8AxlwtRdAIk4CQz2yD7PNmkzUnkqnKGyjOngCt
S026/jbBITOpIvGVEdeXzAfKTwkNsNqj2R2Bul5SSIr3u3pUxcUoTUhpFXnzf39H
CXJZTCowSW8/5Fk6UxQ4RFSfuVUXF8cQmjgkvL+8VLKITVTMBS0=
=djj2
-----END PGP SIGNATURE-----
--=-=-=--


--===============2481001482613569044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2481001482613569044==--

