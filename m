Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84B81DB565
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 15:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N6EOfCwCpCnhzCSqVFqvYjXIwrB5ObAhOAwSw63cktA=; b=dOFW6nGHxfkQjmc7wqPcWuI/E
	mYlKnbwUAwQDf7I5jvVtEVz1SW0COn/ypBvIhufBtHCGUbDZFRtFG0M9ZWZhEEuL5uXp2+GiwUZXa
	2PWLVM50AcowAcZF8uOZgAHUteX7QqsxAivozfDTsD8Xncq0A69XwlHltqdd/z5Wa9fGT937smxEo
	+mtKPxjoU11yEjlCmai0VacBQSqGyIracxZq8eN3L1ym5i5vUzPi24w6m8vIhCfSm7APx+fz7ziCB
	91zShSSkoZnOgon+eQHHiaIltk7GaJ6OW4MibHKyhdJNybkx4Kenl1Gq4WZqzHSh6OcqSlOX7ehGd
	Af/JCs3+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbP0d-0004FG-Qv; Wed, 20 May 2020 13:43:47 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbP0V-0004E9-FO
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 13:43:40 +0000
Received: by mail-ed1-x542.google.com with SMTP id b91so3116163edf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 06:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=h59qBA70ccgJYgPSbgtDIOfg5Wc3La436ik9+lkAxFw=;
 b=agrseHPYKmVDUxXLset3XicNJHpIkMFU5OHTpx1lED4Hf4QOMSMea3aSV82pbnvG7Q
 CqVhuRF6wLnSgrRzV5FOIT9Cs1IPxkW9SK4cY2GGO5X2kHbFUg3zcuxI6JQDo5yGEUvS
 D3GYa+YnrmFAVkP0MnnSbB+EETv8axSnqaxcpQaqVfkOQ5kXm4rOWnP/OP1k1Iyz7p9S
 g1dEpajED2IvCQbf2ag0Ar944ycE35c5MQ+c7EvP0He6bkqFPYPgUTsi6XpX+fujJpIr
 1odOyFpQARRnMOS3K6umhjlo2t3YijnUM+3NrFE1rJo+5IVsDERXQxl4c5Su+MYMMM6p
 Sx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h59qBA70ccgJYgPSbgtDIOfg5Wc3La436ik9+lkAxFw=;
 b=SCL7KGXP/Hq8bEGkifOpIU6kQ66xgyslxtb347/5yNdJtT5HkYHuHA2ugBxEP2leRG
 8zi0pGTI/+i37+Zee/jw1ECnIiFD0mmLRyh7q/wf0K8g9mVCTo8WmLf3n/uvQdPeU3YT
 +m08GO5YqWHe40NBiNNqUCC6BRCAn5lk/n+2GM2bGkbe3aXDgjKktHk8ezHHEPx56U+l
 gtfUX5DVRf18Gjgoianu8KYxQ1QcEpqPT6NybcL1jPOmt4OC2JVRaiJCRIZJ/cqcjc3e
 iyqOjcNM6yNrYaxvyYQlH7ep7kOM1/wZQ8PD+2jfSZjbuhh7bZcJLQ0mDr/4PMpWQCIz
 4t5Q==
X-Gm-Message-State: AOAM5330W/6BMNbp/QWlCfQ0dAysUsl5nAnPjMNg0ahjV3dqiu4vcVa3
 AuXNdKmOZysqouFn8+bK83o=
X-Google-Smtp-Source: ABdhPJwSlZJ1cQRFJMbMaVagTuIpwp5Vu7wc2K8JIQda40UPgtYN7OkqLV2TEoE5kMSsB+srCeYTZQ==
X-Received: by 2002:aa7:c3cb:: with SMTP id l11mr3279208edr.364.1589982217868; 
 Wed, 20 May 2020 06:43:37 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id y18sm1910144ejb.87.2020.05.20.06.43.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 06:43:36 -0700 (PDT)
Date: Wed, 20 May 2020 15:43:35 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL 11/11] arm64: tegra: Device tree changes for v5.8-rc1
Message-ID: <20200520134335.GA2147362@ulmo>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
 <20200515145311.1580134-12-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200515145311.1580134-12-thierry.reding@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_064339_511497_9EBBF62F 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============2763940002297800491=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2763940002297800491==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 15, 2020 at 04:53:11PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
>=20
> The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f31=
36:
>=20
>   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
>=20
> are available in the Git repository at:
>=20
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegr=
a-for-5.8-arm64-dt
>=20
> for you to fetch changes up to 74265112c60be0209817c682ba68661c05da1d38:
>=20
>   arm64: tegra: Enable VI I2C on Jetson Nano (2020-05-15 16:28:58 +0200)

Hi Arnd, Olof,

Actually, can you hold off on merging this for a little bit? I'd like to
send out a v2 of this because I noticed that...

> Thanks,
> Thierry
>=20
> ----------------------------------------------------------------
> arm64: tegra: Device tree changes for v5.8-rc1
>=20
> This contains a couple of fixes for minor issues, enables XUDC support
> on Tegra194, and enables EMC frequency scaling and video capture on
> Tegra210.
>=20
> ----------------------------------------------------------------
> Jon Hunter (2):
>       arm64: tegra: Fix ethernet phy-mode for Jetson Xavier
>       arm64: tegra: Allow the PMIC RTC to wakeup Jetson Xavier
>=20
> Joseph Lo (1):
>       arm64: tegra: Add external memory controller node for Tegra210

=2E.. this patch contains some leftover changelog notes that I forgot to
remove.

There's also one fix missing from this that I was meaning to apply for
v5.8 which will enable suspend/resume on Tegra186.

Thanks,
Thierry

--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7FNAMACgkQ3SOs138+
s6HMZA/+MDhiKjzKLTBXaFCViGhljWnkYbbcdtQ9879RRMEWQr2nvsaDt0gA5cgK
iPfID6QX2ozJdm3frwXd+fetK9Q7bre/WBR6/mc8YvZ5wywG/AFGbp9u0Wfy5+KG
6yLJHH56oyxZfl+eiKOkjo95ighOEpN5F2u5UCwDJDxMRSnzk5XjVRIJ+rzQUpMh
Og5v7iW8HkIf+QGXOFKfj2gXOA4WQODFj+HEQ0NU84vQ0DQMEtcfuR+/zcd0NN17
qSGwwXqSpOxEcrxo6xL3qmAZR8AQCW/ol1X3tSsFhIkIo/8HMiBcs6Ye+bLdjj6i
G+HBcW8cOPYep8tpWDZEcYYQot1i9GQ+MSu5Bcf/2Lp3YIXlvUEUG/IGUpnrcUr+
LDN9bPl2QbUCcBOomlH+JbwoFWzHbqY3vmn0SxokzSiOISzcEPAA1w3BdrNo/9Q8
p/oPMb5sp/8WaS8VKOrDOSjFAOhT7GIee22DavViP5rOz51GhLdU+QR8JREkYEbU
AJvNeTtq7bHxp1N4np6T19ecteoYi7GQd0PEp8r/v3lq5IifAV78aqrTN5zVSyfM
J01Fbe9QylyVAltrfcjG4inIJKMaI6SvVObP9k98oeAG0/eR47yP1ClkA2tCgzBG
pia81SqLe8vTmEqVjyH042JwIYjZSSpWFO1eWYtH7PaODZnCD1A=
=AGae
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--


--===============2763940002297800491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2763940002297800491==--

