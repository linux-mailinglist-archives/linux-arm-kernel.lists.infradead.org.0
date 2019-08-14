Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34A98D792
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 18:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9i9f+1b8Vq7eAw1dvWs0kBkD40CJyUwDFeEtefBK9+A=; b=mldlRzO1z20/RdJLNYcLgAlY0
	m1g5w7ZD7rbU5dc3KpOMhT7XqaK5GMzgNj5UO7DVJVZeWuuRg2uPzdGIRTK+Os7CRrsD4IdZxdsVr
	tkLiw4rUD9Psms+1jpez6uCFhUI9QwhjtR/ig75oPy6iRWix+cHi09eORYwGdBcu3k679uyXt+YgQ
	0yZmu+45BMSHT8zx1icZYetrtT7jSGPeu1g0uMdeScLuFc7sE/JzsVLa0+qjAdYhdZdsNMxOUyJjI
	Vxfva0nh6XALj8EL6J1cgIv04btT70gJBW6LoWve+2fEQbv/dWYF63+zSHIX2axBN8M+XlAuEEoi8
	/N7wmGjNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvjg-0008OS-2T; Wed, 14 Aug 2019 16:02:52 +0000
Received: from mail-ed1-f97.google.com ([209.85.208.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvjR-0008O6-Pb
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 16:02:39 +0000
Received: by mail-ed1-f97.google.com with SMTP id h13so7519619edq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 09:02:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N5PiNYs9rwvJ2b7sA2wzxZTOX0Qpr5nG48J7qpZBsCM=;
 b=tBT2h77AKuYac3Y/Qcro+ofXru5xCRLhcZd1sGFWg2RF8/YH58h/t/o5eZTB1dXvua
 CNJuSfvVehVxb8iQjsk//zGUL+7xC5YeR8Geyi/+e6lu9CT50OYWZ8iYxQmCzjt5naIo
 LWnhqmQBa7Hah90pyKGJhPPfNqo4alaMa/q/TRtAzUaHFFwix2iD4x/kL2mmpLE9Rv4Y
 Ja2ouB0sG6XHC8CXinNIoM8yGsfoOHQsvztLhw8Svsz2NcNzxWMxAFaW9FnVyd6ywtfp
 DKIpEsfVTV2NKhnMYt+F7WL+OIndsaTzFB9YbspyzKCtDlob3DvtIqt6T/1ydmfqLfnd
 GlXA==
X-Gm-Message-State: APjAAAUn+bgFIqmOx0Ms2hz9/cdPSjrroD3OI3TT3azZ7ORdIW6j8Nzu
 tq4zHYXLEQIqtzNhncf2WW/4VNTEY2Zge6t7w7DfNp400plgL+8PPbQUReKjDKyfng==
X-Google-Smtp-Source: APXvYqwOGlicYd5BQ/iK6xqIrdKSetnXWRlRyzduoJDOUJM8aOxTqe+JQZVfkW4mCp5Z7EBQAuN15UXOWCSQ
X-Received: by 2002:a17:907:447f:: with SMTP id
 oo23mr260201ejb.193.1565798555877; 
 Wed, 14 Aug 2019 09:02:35 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id a2sm3704eds.28.2019.08.14.09.02.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 09:02:35 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxvjP-0006hD-Cx; Wed, 14 Aug 2019 16:02:35 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 7EC992742B4A; Wed, 14 Aug 2019 17:02:34 +0100 (BST)
Date: Wed, 14 Aug 2019 17:02:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Ali Burak =?utf-8?B?UGFyxLFt?= <aliburakparim@gmail.com>
Subject: Re: Best representation for TDM devices
Message-ID: <20190814160234.GG4640@sirena.co.uk>
References: <CAMTEBE0mPY=44txPC2G+Cb=NqeH6Cqesar9Vkq0afXBv4dUWHQ@mail.gmail.com>
 <20190801114807.GB5488@sirena.org.uk>
 <CAMTEBE2L6KXH6JW2Z_6RSKdtFJc9ncFvfakwW_Vm88BCGC6aeQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMTEBE2L6KXH6JW2Z_6RSKdtFJc9ncFvfakwW_Vm88BCGC6aeQ@mail.gmail.com>
X-Cookie: Bridge ahead.  Pay troll.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_090237_832913_E7D4D613 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.97 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2a01:7e01:0:0:f03c:91ff:fed4:a3b6 listed in] [zen.spamhaus.org]
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
Cc: maxime.ripard@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6782717515425485367=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6782717515425485367==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xjyYRNSh/RebjC6o"
Content-Disposition: inline


--xjyYRNSh/RebjC6o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2019 at 12:53:24PM +0200, Ali Burak Par=C4=B1m wrote:
> On Thu, 1 Aug 2019 at 13:48, Mark Brown <broonie@kernel.org> wrote:
> > On Thu, Aug 01, 2019 at 01:43:06PM +0200, Ali Burak Par=C4=B1m wrote:
> > > On Thu, Jul 25, 2019 at 03:01:12PM +0200, Maxime Ripard wrote:

> > > Hardware is a custom board I designed with 4 PDM output microphones
> > > and 2 adau7002 devices as the codec for PDM-to-PCM. We want to do
> > > signal processing with this board. Therefore having separate streams =
for
> > > each microphone is crucial to the application though I am not sure wh=
ere
> > > we should implement this exactly.

> > What is this processing - are the streams from these microphones
> > logically related in any way (eg, is this a microphone array)?  There's

> Yes, it is a microphone array application for speech enhancement. Thus,
> signal levels and physical time delays are important.

> > probably going to be some overlap in the input signals at least.  If you
> > need to for example correlate different microphones then that's
> > relevant.

> Yes, we correlate different microphone signals in some of our algorithms.

OK, in that case I'd recommend providing them to userspace as a single
four channel stream - keeping everything bundled together as long as
possible to make it easier to keep the processing synced up.

> P.S.: I am so sorry for late reply, the thread went to my junk box someho=
w.

No problem.

--xjyYRNSh/RebjC6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1UMJkACgkQJNaLcl1U
h9Avbgf/bQDWVlC3LLk0AR6M23tbqVJTf0lO2CETc8q/t3+Tu/Y4ARnqVK5QcUMy
NeKGuZtDXOWw1RFiKet0M0sxqBBbhYVV+vLvuwKSoZB/ziyGbbayJn/B3YrGMm5T
73BoA4y+w+Dfc8zQLQKUebVzgvhnH9q3+mk4oPwZ0tLm+bVvSmNCPC8i2XnGziaT
cJVm5bNB5pOTito4ek8k649mpj7P9SpVXhmdFTfaKiUCp1xlAWr0v6Yic5Op5cnv
0MVel7egXkfjClzO8iFv0M6NeHhy1NlV/shm2LcX5xLSy27cWUDoltN+BxTE4M6u
3NTrTEkmEt41hiQaOAn9r0uCRgQL9Q==
=WLfz
-----END PGP SIGNATURE-----

--xjyYRNSh/RebjC6o--


--===============6782717515425485367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6782717515425485367==--

