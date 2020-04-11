Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C951A52B4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 18:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DDbcFBKWQSyhikuqQj9q7BF+pGGZWeT0heALEhe+M+A=; b=Ss4AkEFlo7eVJr8aQZ3R6KuuU
	ENXYLSAaoULf5UAgKzuTtwYXCR/DNFvG/ptrL6nVq7+9UddIgwqTq+bIT+kyteZaqA3MnClM0GxmV
	ghDdpdBv9DC25wi/4p0ikQc2gvIlwERhADrqUoXquXJsDdg9PaqAfWEnTkyssX0U2TjiV/4ADutrk
	EMH0OK6iq4UGhDErPpHzRDPvSmnVy6bnfWEm6xjLcvTP6b9y4OLFae00iKDbJ4PPeMiBm4RpXZnD3
	qimHfevc6L6MFt2kiCJdL4i8gLOfuT1Z02nYhVa70eo4c3ufMJct5o6b6dwsCYnclVZZMOeLSAUSX
	4VgmTdKNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNIZj-0004Ik-Gn; Sat, 11 Apr 2020 16:01:43 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNIZc-0004I7-IT
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 16:01:37 +0000
Received: by mail-qt1-x841.google.com with SMTP id q17so3526024qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 09:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zhRskEKtP61k0yqbLaLsqJL1DLZl52yNBvZ6bXRfLCM=;
 b=fNxHgv832WDYysIX0jD9QPCDscvmTf43PY81UgQokDRgCjw1x1ogToIhqT4QwC1E/D
 jQV+i9/yOZevJrfP6URcG91dfGR9MznldAw4c9lwIRLy4K+ZkuSns4XOT1z3VBwCqQmU
 XzTzVOGpvddRB382w7EZKk580NNwa5C89GZQQwQRRhXGgvtshGQX/A6MFnVfeYIDEOkX
 dynKyb2bw0spA8bBE2buTF1e2TQArisyj26LhuTWPO95DRiiSIuwlSkiheCCjTpnk4Pp
 lfMpv2u4xMOoIH+aZxcBEnjjJB/c0PWEva93mmt67JDYMVjP1vdZqgNOTnWVAdisd9Bd
 qadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zhRskEKtP61k0yqbLaLsqJL1DLZl52yNBvZ6bXRfLCM=;
 b=UtcBJugyrpUXVotlHgveOGpaO+yLsGKnYjVOaXT0BDW5YMm5ZVzjL/WBsZErRK2BU3
 mjUUYzOPw1Wyi1Lb3pFlpCUQcthvE9ladOpyt5VqNZAX3f6lRloo4OBSC98GXlRrzBAv
 /5gkX7bfrtkRMHotpmeJmtKtPe9XLsALhVnAw4dyDhiOHJDWQnY7p5WfmqXoYYRGxsrU
 Xh/P2LllEKEgNBEiwgKy7KTYSdI09W0kG/CMn91hwzYcia2AjHaWXsMiAPmUoKv4q3kx
 joNcCtHX2hcgzhxR6kpQ4i3Lb4LdQOoNsUtHhMRePrgr1uqEja6OpvqetBLL5FwShvcd
 WPBA==
X-Gm-Message-State: AGi0Pua9r0koKhkgFBmfLUw09rz13xBKHGOdIzPn9M7kJlAFl6SYpgp9
 41keSg95qNqOmajcddqJhwY=
X-Google-Smtp-Source: APiQypLVRG/zAWgaDeXS+aPd3v3rXiHthdj4V64zP9c4KydlcwVH+GkllKXLr6/Q5Q4sF7pMJNhTqA==
X-Received: by 2002:aed:3b75:: with SMTP id q50mr4232741qte.23.1586620893939; 
 Sat, 11 Apr 2020 09:01:33 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id o13sm3853059qkg.111.2020.04.11.09.01.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 09:01:32 -0700 (PDT)
Date: Sat, 11 Apr 2020 12:01:16 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v2 0/3] Atmel TCB capture driver
Message-ID: <20200411160116.GA95806@icarus>
References: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_090136_635702_9B9572D5 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1327496242870367217=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1327496242870367217==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2020 at 04:13:58PM +0200, Kamel Bouhara wrote:
> Hello,
>=20
> Here is a new counter driver to support Atmel TCB capture devices.
>=20
> Each SoC has two TCB blocks, each one including three independent
> channels.The following series adds support for two counter modes:
> increase and quadrature decoder.
>=20
> As for the atmel clocksource and pwm, the counter driver needs to fill
> some tcb capabilities in order to operate with the right configuration.
> This is achieved in first patch of this series.
>=20
> Please feel free to comment.
>=20
> Cheers,
>=20
> Changes from v2:
>  - Fixed first patch not applying on mainline
>  - Updated return code to -EINVAL when user is requesting qdec mode on
>    a counter device not supporting it.
>  - Added an error case returning -EINVAL when action edge is performed in
>    qdec mode.
>  - Removed no need to explicity setting ops to NULL from static struct as
>    it is the default value.
>  - Changed confusing code by using snprintf for the sake of clarity.
>  - Changed code to use ARRAY_SIZE so that future reviewers will know
>    that num_counts matches what's in the atmel_tc_count array without
>    having to check so themselves.
>=20
> Kamel Bouhara (3):
>   ARM: at91: add atmel tcb capabilities
>   dt-bindings: counter: atmel-tcb-capture counter
>   counter: Add atmel TCB capture counter
>=20
>  .../bindings/counter/atmel-tcb-capture.yaml   |  35 ++
>  drivers/counter/Kconfig                       |  11 +
>  drivers/counter/Makefile                      |   1 +
>  drivers/counter/atmel-tcb-capture.c           | 394 ++++++++++++++++++
>  include/soc/at91/atmel_tcb.h                  |   2 +
>  5 files changed, 443 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/counter/atmel-tcb-c=
apture.yaml
>  create mode 100644 drivers/counter/atmel-tcb-capture.c
>=20
> --
> 2.25.0

Thanks Kamel, this version applies nicely now. Fix the error messages
Rob Herring pointed out in the dt-bindings patch and I should be able to
sign off on these.

William Breathitt Gray

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6R6b8ACgkQhvpINdm7
VJJT3hAAtJGYMWuStziOpn3oiehL6iBN7av6JLXQ1xaNk4DP0R6MyU0qGUQJCH27
Cbckx4xNpwUmPK+7tV1NISlzXjBj9hEt3cRoPjf3Sd6Gw2x/F4GDSzbbcPot9KOD
jqQL6HqJ/n9YPv/UYr5NtJ5Joh312TCf0mPdJ//GXWRCG7AzHa6b5CrBfz6bWb4x
ylK0myhYbPEs5ViHlWSC69TUs+rrRqRgmIyJSBuaSukB0JYXFsj7BOMmgV7ymr9t
91Qvf43jmzsXy0F4/lpp5u5d0DliHPhMk7J9LTILIECs7AvOxKB3D0mJSEoq++ws
hugZXe1vbo39+gzf7QD1hEkVHOTwnWSG5wXUXxmjDpPqt7Ic9h1fu+mP3Nd8OLFx
PmCeKyqBgkdQxUAb75Y+YObrgTDnBiWtnn391K0kpwy22aPQ10RzZYSCHY8pBvrB
rkYsQs+KzHgH+/YtGkkohmPAialRUXEdMaGfIC/ZAggQdExxhdgtIEO49gV/yDL/
+Cp4MDfoBlomK4oLX3m1sagP9/Fzh+6yREa2EBajPMn9ZQ692Sy4hQCXfE1pFCs6
1IXRuFXRZFETnyvT+SWcDxbizKYCVm7yCrA0M55tczJvoaDQOC93/i4hNf2aVMaT
glv8dfI+2oNtO+AUclf7F1EX3izFvCqvUD89nuxhKZxfHbKkmJA=
=rbCt
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--


--===============1327496242870367217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1327496242870367217==--

