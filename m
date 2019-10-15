Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B41D7446
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l7CDv4h8bAYva7gR5h3QTOlYltNEq0Zjfo0MxhsmaSg=; b=fBkEov1wJ8/QSYKrb18NiGjh6
	oX+jiVsajAGGpjpPg2gz84N/A+KjmcEtkjV5Z1WOv8BwSBMXW8UTuPJAtid2m3BSLcpE0MN8rkttO
	CVGggG5/SyilrUu+2yXx5j71OFhxw4X8FfRuj/D+xeJvqDmyzz5C/E4AHtK13JOnebKzVL7kd8nSN
	D2x9GwbZ0D4HBePB0vLoPuP2LOie4bikd247YARqJdPJFOI7FUuBQgNQWRK+TBXjxaPO5zm2bb4dK
	7dIGTzKGzFsUC5BwTqY9HcmBtAiGcNeAfaRqUpq+IfnbCgzF/ULGB8/lP6IXqD0KVT3m6GAYZiaCT
	PoVOHuuPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKjy-0006dp-Kl; Tue, 15 Oct 2019 11:11:46 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKjp-0006dY-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:11:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jyqwbpgPH38QVb9gb8sryesFmn7GzhP74eJ85yXQfBQ=; b=Jb6nnfLnuhofmDi4AiE1yMQXJ
 /o3/VGeCQDzWgGcTDTUtkFC4+Fpr8HfaY9dUUKCB7b+jllxkOyHWIHCVDTn0URp421E8u+kUERNq+
 AUy4le7PuZfQvLsipTwqQHoKvXx7u2bNwZBUD7ThgK/Ht8GraN935YRZM+5lgPMDT6GYo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKjf-00020H-C7; Tue, 15 Oct 2019 11:11:27 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 701C427419E4; Tue, 15 Oct 2019 12:11:26 +0100 (BST)
Date: Tue, 15 Oct 2019 12:11:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH v4 04/19] spi: sprd: convert transfer word delay to
 spi_delay struct
Message-ID: <20191015111126.GA4030@sirena.co.uk>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
 <20190926105147.7839-5-alexandru.ardelean@analog.com>
MIME-Version: 1.0
In-Reply-To: <20190926105147.7839-5-alexandru.ardelean@analog.com>
X-Cookie: Yes, but which self do you want to be?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041137_431629_11774426 
X-CRM114-Status: UNSURE (   7.07  )
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, linux-iio@vger.kernel.org,
 zhang.lyra@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 jic23@kernel.org, linux-tegra@vger.kernel.org, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7783444321353056408=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7783444321353056408==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline


--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 26, 2019 at 01:51:32PM +0300, Alexandru Ardelean wrote:
> The Spreadtrum SPI driver is the only user of the `word_delay` field in
> the `spi_transfer` struct.

This doesn't apply against current code, please check and resend.

--n8g4imXOkfNTN/H1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2lqV0ACgkQJNaLcl1U
h9CHiQf9GnqkNc3cR7NIFRHuaNNvuhYAgTsUs8m4UlwI7cQ/XcISc7kD1fUMD3tu
By1lFV/xCEANfVBa8wDijwRyvK5RMcTXYFuPZAetNPoRb006+se0MZbPeukeTjlw
JSA7tlI9mnu5p+5lXHQxIIigZnVdcgCqujQ3AG3lPW3YUHt8BIrVJqPGNkvhBDkF
YLjLMMUvSJpskjMq9OLBCtKhevA7ZHMdvfuxJ22h5BQPsNZWZxZJv7QAMdhXA7VI
nkJjcxeyvBY0GzAz5vi3SJGlLFDAec1qvF16d7mOre/0bWCRTNML0gyIt0wNiwZs
80Dr9YLhjDBQmNejzh3MvVO6sStBxQ==
=wgwp
-----END PGP SIGNATURE-----

--n8g4imXOkfNTN/H1--


--===============7783444321353056408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7783444321353056408==--

