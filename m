Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282AECF97A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pPEMZgNME9F9ihNRMXCS/fy+9HATa5vmrP3T/I1R7MU=; b=eqrHhmpGAE5D54XGhSYOjHQMW
	yVBrdtgrTtrvh65Evaut0fjyw6pdWbeJipmBplqq73DsXS1udLE/+o5KyjBnLIcPxdN18vzmhtCGL
	7aKftNDuWjeT3TkDZC+nlvC6bp2EwlkSUzo2kZP0IYt8doWKLp92VGNlxt8hpQPzdEcyMTvktn/At
	4VG5J2UYFD2CvqhEe3KOL++ZFmkkLgw7eyDaciIzkX7aGy3s8hv+MgAfIScSX1AMwHsOOVCcVvaha
	bQCxVa05KY8XgjlaMMTs/90RlUVOj11AT+8CMMDhAFBz6EFnl0vSz1/8Gvsknlf0PrSWrOkmYT89L
	YRS2eGE+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoLW-0007de-O6; Tue, 08 Oct 2019 12:12:06 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoLA-0007QA-Cs; Tue, 08 Oct 2019 12:11:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XnGLjmPea/2MBiFxRMNh1Uce2kBW2+LZpU9p5w1o46E=; b=AOpRW42gTmGp/m6Yvu47Dceyd
 HQa4Zq6TwpJRor+NhfzFAupU+9W7r11iNLdBEvTs496e0AiuAjxYsE53JB+Idv+HC7Ap4EXDOLM96
 QZ6o4JrOJbLBuUfcr3yItn5mgCCHpbsgUzbQ8Zrl+xFVwyZrlnHW3oICCnWqUqQ2vA8Ls=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iHoL1-0008FT-SY; Tue, 08 Oct 2019 12:11:35 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 215612742998; Tue,  8 Oct 2019 13:11:35 +0100 (BST)
Date: Tue, 8 Oct 2019 13:11:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Re: [PATCH v2 4/4] ASoC: mt8183: fix audio playback slowly after
 playback during bootup
Message-ID: <20191008121135.GH4382@sirena.co.uk>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-5-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1569580317-21181-5-git-send-email-jiaxin.yu@mediatek.com>
X-Cookie: Do not disturb.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_051144_509244_A406AB41 
X-CRM114-Status: GOOD (  10.75  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, yong.liang@mediatek.com,
 lgirdwood@gmail.com, perex@perex.cz, tzungbi@google.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 eason.yen@mediatek.com, wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: multipart/mixed; boundary="===============0454874288407044750=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0454874288407044750==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gTtJ75FAzB1T2CN6"
Content-Disposition: inline


--gTtJ75FAzB1T2CN6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 27, 2019 at 06:31:57PM +0800, Jiaxin Yu wrote:

> +	rstc = devm_reset_control_get(dev, "audiosys");
> +	if (IS_ERR(rstc)) {
> +		ret = PTR_ERR(rstc);
> +		dev_err(dev, "could not get audiosys reset:%d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = reset_control_reset(rstc);
> +	if (ret) {
> +		dev_err(dev, "failed to trigger audio reset:%d\n", ret);
> +		return ret;
> +	}

This means that we're going to be incompatible with old DT bindings that
don't specify a reset controller.  I don't know how widely used these
bindings are so we may be able to get away with this and I'll apply but
we shouldn't be doing it, the code might need to be fixed to make this
optional if people complain.

--gTtJ75FAzB1T2CN6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2cfPYACgkQJNaLcl1U
h9C3vQgAgs/NciVNbX5yhkOJpscZQdjIcphQ+vTFVbzD6Lve7ubMPRDHKDTnJis5
SBzLgKfpjz+jOKtQaLf43hbnbt3ysqb6OtPbksAhTWkP6Ba8haD/hl8rgpdgQmqr
g+O2wiaiqRa2TsSL7A325WO+UBSPfbMabkWPF0MAtZWXclvUY8PSt8TixhP7DRIX
ryvcXlv51QVrRxIyNG/oSSKw6+wqNco5t894qo6Ca6I277zpR5f9gtEt19sqiqW9
pKGSu3ma/B9i7uEmrpytoBfPGdl+65X1DQq1DRb1A7D5phUuSKeFwQidnptm2Phr
0C6SxsX4Y3qTydnI7JMV241vAHiuGQ==
=JJJV
-----END PGP SIGNATURE-----

--gTtJ75FAzB1T2CN6--


--===============0454874288407044750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0454874288407044750==--

