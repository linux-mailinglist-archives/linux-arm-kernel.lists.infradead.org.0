Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564F21A80EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U67xfgQRr1TzcGJphMZXsW71Y49i/FY4Kbndcws+RTA=; b=NObZ4LRpz+jRL9F8vTTNxjfTc
	6BIrSpJshh1lM99QUF6Ju9WDWBhSwAS6i2uLsWqeGUvfGOTm1aXojz624sGG2pXdMIWet4rWri5ac
	ThlqXBebYTvQNoTnz7xpBS4URU1SVrlrYKNeagAeg8WNjF0Z5K2Jq6wfvWjqlT2RA7KHz8k7FoHz9
	QtL/4GY8lRizbn0/hOzKjW0hAsBYOoqcJ6P1NsQyomDc+a2XIgMcGYutUsqX9zhRa6px8yguoZcdt
	Bf9jmaq8FGQQiK1KsR2Urjs+aFH30bQvt14EsnxRew+Fu/ABLNXQwdrmk7LtmPvA5JTrv+l0cZykf
	AL4tuKDwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jON7w-00026X-Nt; Tue, 14 Apr 2020 15:05:28 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jON7o-00025V-3k
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:05:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id j2so14722309wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GRU+kcgoobFtz4hoc9alUDOZ5JZB4eIWqC87J2PCXRk=;
 b=iozrSE+ODjo7phmX5XfdlosqNbo3t0TMdHpJDlWfJjQxD2Be7dmyGsm7HEJ6G8eywm
 PmFTKHyhBUEbIY5HJdcE15H4TP5fottCSv3hxGVeLOnSe16rwy/HSbKHNBRUi/OomcMz
 FBDzQC+XGB7EmSd9xYEoOz5agEmD3EnjI3bkJToa+FaYB+yMQ7cFPBncjRIhhd+XxYRK
 nrPNWSzXfJPuW5FtyYjIH94QRZKewR/7LFug3ZxX4wRne1OkwKj6x6dm4I1zyuj4J+is
 LXupCb2NXql0fFVUnWwXlteqAoLQ1uyICAqX/o2VfgWau7PVCynypm8Uwwla/2ztowYu
 ggHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GRU+kcgoobFtz4hoc9alUDOZ5JZB4eIWqC87J2PCXRk=;
 b=G/sfDCtQMLLi07y8Taj4pFJSAloU9YWO3o5saV5dv8hVdArLXAyFzkDuGYMYXfhQcD
 B9qWaJvpZ5XAh5oGOspR8EugVfEBPRIEevPQUNxuA8qTe/KLNXuWghwjouYa8ud1b6M6
 3potDCizapgW5AwSzNL20AbGlUdXNJ1P/B8ZBj9EA9DCzJRCGplnPMv1lc3hqFqONXcJ
 /RlX7W70+JqGyXDw5EomDMYMDc3hvJljfIu1yKtUJ/3lHBtsOkmSN1lY9LfMOKTtpAsz
 IWCey57N5cQBUlbcbd5iwYJQ35oz8uSzQojrJAjei06/d7z8J16awndADGDtlCNpiAmd
 Ml7A==
X-Gm-Message-State: AGi0PuYpDW0Pv5nDFK2SIuG0nOxBU6psXZYnO7NvcLUXWVhq9E2DF7yr
 kGvovGUaLHFUfkFsjtZ29DI=
X-Google-Smtp-Source: APiQypJRZriRxHLKGFufZX51wCytt4lINIlsGHllnqqM/+6Wbga72x1sO/I+opanZVnZSJ1d8zqA6A==
X-Received: by 2002:a05:6000:1287:: with SMTP id
 f7mr8495019wrx.345.1586876718789; 
 Tue, 14 Apr 2020 08:05:18 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id g74sm19229868wme.44.2020.04.14.08.05.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:05:17 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:05:16 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200414150516.GL3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <3e518dfa-cb3d-e2ce-a9b8-5e143e02fc61@gmail.com>
 <6976796c-6972-328e-3e9f-60c1737cf0e2@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6976796c-6972-328e-3e9f-60c1737cf0e2@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_080520_155417_2FEA90FC 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6817736749206469243=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6817736749206469243==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ms5iOKSBOB9YS8zC"
Content-Disposition: inline


--Ms5iOKSBOB9YS8zC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 11, 2020 at 11:39:08PM +0300, Dmitry Osipenko wrote:
> > ...
> >> +#define TRIM_REG(chan, rank, reg, byte)					\
> >> +	(((EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> >> +	   _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _MASK &	\
> >> +	   next->trim_regs[EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ##		\
> >> +				 rank ## _ ## reg ## _INDEX]) >>	\
> >> +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> >> +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _SHIFT)	\
> >> +	 +								\
> >> +	 (((EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
> >> +	    byte ## _DATA_BRLSHFT_MASK &				\
> >> +	    next->trim_perch_regs[EMC ## chan ##			\
> >> +			      _EMC_DATA_BRLSHFT_ ## rank ## _INDEX]) >>	\
> >> +	   EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
> >> +	   byte ## _DATA_BRLSHFT_SHIFT) * 64))
> >> +
> >> +#define CALC_TEMP(rank, reg, byte1, byte2, n)				\
> >> +	(((new[n] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##	\
> >> +	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _SHIFT)=
 & \
> >> +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> >> +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _MASK)	\
> >> +	 |								\
> >> +	 ((new[n + 1] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##\
> >> +	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _SHIFT)=
 & \
> >> +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> >> +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _MASK))
>=20
> What about replacing those barely readable concatenated macros with a
> raw values?
>=20
> Like:
>=20
> TRIM_REG(brlshft_idx, ob_ddll_long_dq_rank_mask, ...)

That's just going to move the complexity from the macros to the
callsites, isn't it?

I suppose I could spend a few cycles trying to make this a little more
readable, but to be frank, the complexity in this driver is already so
high that this doesn't really make much of a difference, in my opinion.

Thierry

--Ms5iOKSBOB9YS8zC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V0SwACgkQ3SOs138+
s6Ef9w//fxlmCh7FtrH73REQqtD+jRwwLCO5WMC+EHjBY4EUR5lv5mZnrA0uIaBc
FNV4X8OExlN0dMsbYdRTp9CJO7Q8IPggLgaGJQOrR55cT+K8EUXhUPuRPyt83PNY
2x5zUNxRJzxmVqH8OUrknejB/2bedly4MvLNz2rDo9orQVzGRCW05kl9sQmLTl+k
ieyYqweSPPRMw/tgomH2tAz5SaQqnXvv6OK/7JD0Ic9eFBjm2R526wNThK5Tmmzm
jpKuyQv6tksZ5QqLouZHvJIBxN54gF55p57v5SY1LFoj+8Aas1GtdbO9ioKvM86L
OveTWkfYxQUHMDITXcpvnCP3UJOWygeuqxb1azRphChylfgtcppQN/od2ms0AJ0t
femDyT/oDOUbNtwau0hUpckUD3Iag0IkBxu5RKa0aOzQwtxqy0uAL1Oi6qbmYJnN
gzy0PfSnDJqUsIuVxt+S1fKZwnMsCFeGvvqe8IH04drmxLbg1z3OqbCJeBV3xNyg
mK1tsOoFIBnr8nf7ZHODgp5etjxFofaSHV5Ox8oFhNutC+hpmLi5/rQ90P5Jxu/L
3qUkOEGo+MzCMXiUEgJmKjWFLdTxlAQxH3Kq8KnjaedTBgU9NVKvJr97aTWMo/NI
hq9dUvpBJcU01rW0hwcuoeEFOO0ntQo4RzH9ugOBZLQ/Wx1/24A=
=ktP9
-----END PGP SIGNATURE-----

--Ms5iOKSBOB9YS8zC--


--===============6817736749206469243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6817736749206469243==--

