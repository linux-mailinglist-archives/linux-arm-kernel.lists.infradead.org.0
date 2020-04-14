Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A979D1A837D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mqq7hJ3Z5DLcTVkQlQo+byCYaGOxUyiMZtVXgzd2h3c=; b=U68UJ2gCHr9RBPbIDbwlCOXTU
	SLMiIOj0N6mtHAYaXS6AhVSpGO5cyUVRuPjfn2jkvD2/JgTTf+j5MbLMnNIpl3bZ32C4dXqcRXAUZ
	hFrVIv8qh4bJjZ5kePH0p/jekwlAfsnAGxVap4ySZQ/ZZSodlegP7DBl02LO2mwLqs63Nns2lDN5z
	CO9T2I+KgHdJdBgbM2zwfG0oo8KtXnBk8zZVfyPIKcbi1U95CkEcJFPTZ3VoI5iQdNK02zXnuxUQb
	4MVdjLH6IX89sw1VyboipkgJO44MsywRLbBYOIzgG8DXl1RLxtOosCO8e3nJQ0cfPEr7zbAkHWwab
	GqrsQqDVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONgf-0000EO-P1; Tue, 14 Apr 2020 15:41:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONgV-0000DX-0l
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:41:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so14496207wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4KIJ7Z8QHneV0X1Aw4cw4TnPAzva6UVqk+ohip+aCHA=;
 b=k0QPf8PxlgXVPpJeiGFRQvzeNwPtNMq/M+I+z3/RCveZTGKN3Jp4LnWp3yGCLYnF0J
 p36x6AQsPX16Y8kvI5oKO6rgAdrdaJza5uJQZRjrSB1R05vNVHhmyqpaL5xUzZCYO+HO
 CsIaVwf+5l/Ohau25PHYSI/DNF39ETHOkjyW8O92rdHb7+nWHJCw9R413+c4H7z2CW32
 WB+HLHuC5RhYC58wVLvLAX/OreOkCQbTVVLdIXXmg1lCpaiM/tfk9Jgkull45zTq58LQ
 TpKVGYxSBLRT+7YcnvUIDF3JT5fZoQV75gH0Ji8aReL24iA2Mf86LtRD7joGMJbGUNwL
 tQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4KIJ7Z8QHneV0X1Aw4cw4TnPAzva6UVqk+ohip+aCHA=;
 b=jS9jPJpYB+hOGTB/4fRb5+8aicUFXd2jZyFpQXak6EOjtgx5oF047ajzVvHC4esM8u
 HBCkmTikERVLZOio1LM7HkTgSiNs0JghoSISFvmn1klGNbXhAfubGmYf6H8GMk8g+m1H
 M7Zow+CZ+IitHdpGlbabhFMn0CeYh0QOxBTaec7yMuqVDOH0qiFfuouO+GweFIdkZOBQ
 QSRTcDsMQuBNb8KrhkCsI0+fGGKOTC3DBJz08QiD2N0zzwLDVoaOTd20bPSS/XAR7b0w
 O6gfa8gOSgVvfBJCgzcUaI/AtP8wb1MG7YOpBIibPDYwvKuQDd3d2gp5PidjdNJVEnn3
 nGBg==
X-Gm-Message-State: AGi0PuafsRI7VGH8GuY+3kQMw2GLP8BTY/lUk7vLQeAlGnuVnpN97Ql7
 F+ftmokMkFRC6Ksht7Q/xH8=
X-Google-Smtp-Source: APiQypJyzx/6HOKMI1u7Om4PgjL1eVsXXm4Nj7wfOsqql9qJ2/n8u8KebAVlElgJl6KhF7QVc8mSCg==
X-Received: by 2002:a1c:a794:: with SMTP id q142mr476428wme.4.1586878869402;
 Tue, 14 Apr 2020 08:41:09 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id h2sm971602wro.9.2020.04.14.08.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:41:08 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:41:07 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200414154107.GO3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <fae8e1f5-753b-b2ce-d14f-c6e8b2061fdd@gmail.com>
MIME-Version: 1.0
In-Reply-To: <fae8e1f5-753b-b2ce-d14f-c6e8b2061fdd@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_084111_083398_33305FF1 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Content-Type: multipart/mixed; boundary="===============6995828985114394957=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6995828985114394957==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TMgB3/Ch1aWgZB1L"
Content-Disposition: inline


--TMgB3/Ch1aWgZB1L
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 11:46:25PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > ---
> > Changes in v6:
> > - use __maybe_unused instead of #ifdef'ery for suspend/resume callbacks
> > - take exclusive control of EMC clock during suspend/resume
> > - move EMC driver changes from clk patch to this patch
> > - make the driver buildable as a module
> > - remove unnecessary suspend tracking
> > - remove duplicate register defines
> > - add tegra210-emc.h for Tegra210-specific registers
> > - detect number of channels, number of devices and DRAM type at probe
> >   time and store them in struct tegra210_emc, remove the corresponding
> >   function parameters where no longer needed
> > - properly clean up on failure
> >=20
> > Changes in v5:
> > - major rework and cleanup
>=20
> I happened to notice that the patches have an individual changelog only
> by accident :)
>=20
> Next time will be nice if at least you could mention about this in the
> cover-letter, or move (or duplicate) the whole log in the cover-letter.

Given the amount of changes that seemed a little impractical. I can try
to give a high-level overview of the changes and perhaps mention in the
cover letter that there will be individual changelogs for each patch.

Thierry

--TMgB3/Ch1aWgZB1L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V2ZMACgkQ3SOs138+
s6FVCw/+MTxlJhCzaf3mRbl2CqipZNHLKX5jAJK8K1SPWAv0fTVLuIKTFNVz1KY3
wuxrgDZT+97eeXS8w7J0B83iLgKEeX5hCepqnOzb716x9sU95XgAfQUZsHsJhBYQ
hjQycXgvlRXLMpEsbHuA87JT4ILV2DsxSngVdbK8GaKCZSkfj0g5Ov8g2H8SghAs
Tv4POtJpUnDWR0ypK8+1o0OzFS7vuy6ctew+8wTAnEqTW8I4bd/RCFMCBqhD+4oS
JuchrTdRRy23tQ3h+QxXhXHxXA3IsZiGzaQ5PL+/AKkebj6k5UR3GgnowBnJyB5m
/i8TQDHGGrw2MPW3VrTKKI5gKqpUYPBKOZirL+MEdY02jOmaUcCkA9cSfKyFPidf
pOfGPi5LhuNmkEAChJItWNJaRALrNcKjcKqV38xeMT94ji/1jAA8cjVPukMs/Clr
kfKba0UOAWTVDZDp1MnxQrNK1E+LJN+hE2qPpKLB2ZI4H9UaKR9uATh/JhmxcnJp
wJB25m9eHTUymsuAfenvL2nwBoato1jHeYiitEkntbfD6ybAjq0PDCotq4/2bBWU
VwoMjKVEW6FgL+LYTAbLAyDva0ckCp07aEVZzXBeOhFVtd2BuQP0PLvfDbDcsBnV
37mhZq5lYyKiL93hNyb/GGwm47r+bcNMl+zRvGTHXQf/ifMdrqo=
=l66T
-----END PGP SIGNATURE-----

--TMgB3/Ch1aWgZB1L--


--===============6995828985114394957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6995828985114394957==--

