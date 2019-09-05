Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE8AA9E0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dfxiFYK3kvnAlDneIKwUqVkPPNp6AEl0M9k7GyNKx0U=; b=ZImXXYvVa3JmR89Swk7ZwGoii
	CVf/Q//KNteM5sDsd/83z2WWH8xgVmgJtVe5jZjJtnynZ0f4J7yIn5nZXdiUJSLTq4JdQS81LVJDo
	VqO43zvApgOTq0VtcHHWLd4s87fd3hdkrXCskzDGFhMIXV/5CYVpDYQForp+r36E1Gl8GdvZBRxcP
	wwVJ+5BFTLuGzI894SzKfr56slbbbS00loYKhJtgMR8lqSGz/R1nTwCeGRfsgC6/3iQYH3GVYRSk3
	RxXhDv3AuGNjqZtJ05L90X1VmMhYkekvQ2OXBvlddC+q2QwfKrpI5ywI/4icopdrrLVeuUYYFhw/4
	SmS5Uruhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nsr-0001V7-QN; Thu, 05 Sep 2019 09:16:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nsJ-0001Jt-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:16:21 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id 9698D2C0509;
 Thu,  5 Sep 2019 11:16:17 +0200 (CEST)
Date: Thu, 5 Sep 2019 11:16:17 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Message-ID: <20190905091617.GC1157@kunai>
References: <20190904113613.14997-1-lee.jones@linaro.org>
 <20190904203548.GC580@tuxbook-pro> <20190904212337.GF23608@ninjato>
 <20190905071103.GX26880@dell>
MIME-Version: 1.0
In-Reply-To: <20190905071103.GX26880@dell>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_021619_812725_FB0257CE 
X-CRM114-Status: GOOD (  16.86  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0698838446927595607=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0698838446927595607==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="R+My9LyyhiUvIEro"
Content-Disposition: inline


--R+My9LyyhiUvIEro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lee,

> > It looks like a workaround to me. It would be interesting to hear which
> > I2C client breaks with DMA and if it's driver can't be fixed somehow
> > instead. But even if we agree on a workaround short term, adding a

So, are there investigations running why this reboot happens?

> > Is there no other way to disable DMA which is local to this driver so we
> > can easily revert the workaround later?
>=20
> This is the most local low-impact solution (nomenclature aside).

I disagree. You could use of_machine_is_compatible() and disable DMA for
that machine. Less impact because we save the workaround binding.

> The beautiful thing about this approach is that, *if* the Geni SE DMA

I'd say 'advantage' instead of 'beautiful' ;)

> ever starts working, we can remove the C code and any old properties
> left in older DTs just become NOOP.  Older kernels with newer DTs
> (less of a priority) *still* won't work, but they don't work now
> anyway.

Which is a clear disadvantage of that solution. It won't fix older
kernels. My suggestion above should fix them, too.

> The offending line can be found at [0].  There is no obvious bug to
> fix and this code obviously works well on some of the hardware
> platforms using it.  But on our platform (Lenovo Yoga C630 - QCom
> SMD850) that final command, which initiates the DMA transaction, ends
> up rebooting the machine.

Unless we know why the reboot happens on your platform, I'd be careful
with saying "work obviously well" on other platforms.

> With regards to the nomenclature, my original suggestion was
> 'qcom,geni-se-no-dma'.  Would that better suit your request?

My suggestion:

For 5.3, use of_machine_is_compatible() and we backport that. For later,
try to find out the root cause and fix it. If that can't be done, try to
set up a generic "disable-dma" property and use it.

What do you think about that?

Kind regards,

   Wolfram


--R+My9LyyhiUvIEro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1w0l0ACgkQFA3kzBSg
KbZwIw//V6IiIveJDn0aD/OW1kfJryDVHjJc9G0mc7e95Zv5IY4F77vlM/3CreL9
Af8mavqJNEfLlkVymEEVTAt5PqfsdhPd1Ttd54GEByAk7gFtXtbHt8LpkY2Sqn6p
gFdduWs32IP/JG6iQpi0Ee9CeLKhU4me95zYWcky93b2tdBA7+G7nZjD/+WL4OyB
32xbzQgElDmo0WiphV6jwpYpISbIcmpaeTTmFYSAs0UMXBbGV2aIN+Ji/mIko/Lv
BtZtPegtsBK+8DyuxqsRYwI6vpyoMf6RTBe0GnkpRVYeMJpuaGxEsNAkc8YpdiF3
f7rdd/EMf0mrONo37R6ZpYmxMAP/IJ7pBUYnpDffPRNDiXEhXfBD+DruIc//UcDi
GAtZXEOgpBAu9ajY0EUUqXkqgKYx6KeTdAWklCYBNt4/E9IaIvp9A+o4K0O19PI0
ArjbIhqNKKV70VytmD9DyGhzC248OYpkyY9A9emMSgeU8JoL2UsgbMzvAnykz3gc
d0xVBP9b37pTrpkvaQHY6kH7Jkso/5HgSFzS81OiAqmmBt1TrazTT+1FN02brO2G
KvnIbw0p1nwwbH3s4L0G6ejee2wf0Jjjki0rJi8Sy4WMN5K5pcVIHo3eTTtlhIr/
BI5zFeZg6eu8RkalM5glGaFpO1KWV27kaRx+INA1LdndZ+3RZmA=
=UyFF
-----END PGP SIGNATURE-----

--R+My9LyyhiUvIEro--


--===============0698838446927595607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0698838446927595607==--

