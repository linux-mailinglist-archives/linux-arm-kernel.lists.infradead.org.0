Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCFAF2DAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z5qSi38t9eQpBGdjNciuLQDtVYzVihI826F0xKg+Qfo=; b=kPYfz8S5IxrjPk8HMaWY9DuCW
	XUjEcYCWRy2+zlVOXmFebmxoQ9AI5sDFVbmzMN9Mdca+/gQFWqvN2kLHx7NMPGHXa5tTAuH7ZnXRj
	qPd9dq/ee+ROGoUYn1CdslcF9UazsT1mIi9xodrUJDsHR2n3FGxwqfIGuKxgt2g8rc5UV9G+UPyQT
	FXxkSsvF/zT4EZa+14YnNhfn6e4g9df7hGYqsiKEsVMvTWc6vS8ugDalIYuufvUpEqPSODX2Wu45b
	CjKX4wuEIypw3XD0pC54DHPqRjV6CMp6ytkcpRrrGMK0aLegLZ1JX52FAP8XbX0rYmFe1zmpVN+iI
	odDY5mwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgEr-0005Vx-Eu; Thu, 07 Nov 2019 11:46:09 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgEi-0005Vb-47
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z6Ao1AiXivPj3MfxhHYyl/DDaq+5beKZXJuch7JRGK4=; b=uVw6XDwVIWVAH1BiccKcvhrgT
 iZvhTxa2xOZ75pXBd78bvYcNXawV2ttrMHhV7Ax0+9wsJomQ3jC2vkhZvLg54iJS8iiiQP9ARDZAI
 egWInmN1v23ACOOVqRVqqxgZ4SZb1tUlaIdRx4vOdKN2U9z+gst+hf1KvEJw+S3h/bKD8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSgEc-0004ED-6r; Thu, 07 Nov 2019 11:45:54 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 503A527431AF; Thu,  7 Nov 2019 11:45:53 +0000 (GMT)
Date: Thu, 7 Nov 2019 11:45:53 +0000
From: Mark Brown <broonie@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: Linux-next-20191106 : arm64: Internal error: Oops: 96000007
Message-ID: <20191107114553.GA6159@sirena.co.uk>
References: <CA+G9fYvm_QEq+9e+dni1Y+bJswr9bU5=shJcC+wKjjOyiPsXXQ@mail.gmail.com>
 <bfced8c8-c64f-982e-8797-d48b5ec65291@arm.com>
 <20191106161705.GA11849@sirena.co.uk>
 <CACRpkdY5JObOobs7VW043QYGd_xufwnQDBJseKp+_QWv4kdzaQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdY5JObOobs7VW043QYGd_xufwnQDBJseKp+_QWv4kdzaQ@mail.gmail.com>
X-Cookie: I've read SEVEN MILLION books!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_034600_212765_65B40158 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>,
 open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 John Stultz <john.stultz@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3003946880695117825=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3003946880695117825==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 07, 2019 at 09:00:25AM +0100, Linus Walleij wrote:

> I wonder if it's worth to look at the static checkers like checkpatch
> to warn for this?

I noticed this due to the warning emitted in the build process so I'm
not sure there'd be much more chance that people would notice (though
admittedly the warning during the build doesn't suggest a boot problem).
There's hundreds of other examples in the tree that don't trigger
crashes for whatever reason, I think this one was just noticable because
it got built in.

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3EA+4ACgkQJNaLcl1U
h9CzLQf+KbYPYjkVbAJHe40TUPsnwY7KOUb26/ZeQ453ifWCAT3w6m9HQhekWyat
rcitUzd8ddkw6kZzrIiERvGJqT70xG4R2XGNCDNaS+XFNEHilcNDZszEUp14BzKb
kkDm/d+0nzYf1cXjacfvZKS6/YBSkEAAq+7vTq2y32/OgpPCz1O44Ayxsir1GlZH
mJg9899fdi0T7xJPQipLL754cwoqqjukLcyGGRrzVQavUdZVUk05vNVjG8Ce63uh
o5SbdUWJ4zUIREOa5kI2BbiZ8wYqOyLWu6c7Vm74sY4g0OtZUgOOqmW8uePAMim5
RFYG4AxId1mkVM7N8fnPs0iArsfnnA==
=jcxs
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--


--===============3003946880695117825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3003946880695117825==--

