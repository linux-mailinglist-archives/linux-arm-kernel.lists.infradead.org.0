Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F801D3081
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T6YUMCLiqXjA2lXazV1+JuQ6YtkSWtobNMWJXslBXvs=; b=U4cbQIrF2DXGdYcFTQZnxj1HZ
	puhINt/GHdDKgOZje99K4hetCR+7wn2s2IHtQSvkNuFre1XzmTfMhFKPdsTKb1zttD1rmTGvSv2Bn
	llHmvcKp5yyK4PJQHTBKZBlZzioBXTlq1rnultYZQ+hnSWXeKhiY9E3s515gB7DieXLMytPhEV9JH
	Qa0EC3awcjJFbr5wTyxGdMIh8dohmsUthvc856oVNRu/0k4obNwlhAiCAmUmcgJVxZ7/FOAfXfJam
	V/fdK2afGwnh1isrztckNZT2BSUjqcuBbEe9jQTQYH+hpdK3kMqUR6F7ThrPS7PbTtH4bFfsCc4+n
	bmDsgvncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDTC-0003dd-Lc; Thu, 14 May 2020 13:00:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDT3-0003cz-El; Thu, 14 May 2020 13:00:07 +0000
Received: by mail-lf1-x144.google.com with SMTP id r17so2535836lff.9;
 Thu, 14 May 2020 06:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ROR9+95dsTUL1CeIysEpgW1DhBAJL0UZ2A95+lwDUiw=;
 b=KO6z1RYlRErR/eWlNzvzQ1S4WAxi9GPRDFuqfPtP3FkEatHRkZJJYMDLbVWyrzKM05
 kdvUfgzIXmLo9llmPsA0bTlpcoZPlGa1gQ1i1M3P2LWLtEY5ERlIUn+AVfptSlpLbwVI
 8TT6ZW7OHWOzgTPcBdcMCweELyx/ku0oW8s0fbHOiKfYMSDGHJaGcVwKSpYVVg6mEI9p
 IseVRHYjX7nj0CCb+CDXaxSmi8RCuNUFUnnvPBkx/33a3PNl4IzvkfzHCPM/8KeTdf1q
 AxOnnkTEJH1IWW99opQOR1zBslGDQ3EMeU4aMmxxT3o2eaiXj6SPSxUT6BfOnoWNMlm9
 HZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=ROR9+95dsTUL1CeIysEpgW1DhBAJL0UZ2A95+lwDUiw=;
 b=a4uQCBqiFHLxThOdLx1GX55B1NIEW0qO1J091QhHIB5ZaI/Hheh5CNLedbz8qujfD9
 I2ze6X1kExw4sUNsjoOa/rFOxf0+u28oo2HMEw7rTZJl5vl9Dr3y5VUWvBPPzEtFVr52
 CYTye6SLYdi0gObQnYBXXrOnCqPH+yS1tvyNVvxgeneEfdJsSK334IsuFwgi4MHE1jvv
 nSpaYrsNzCSg4A8sChpXYmwR6lzPUKRWRuVJAvCeE4l3Zy5i7/8ymPaJErXvGX+rqEFz
 tIrpoctUkvnmYPA7x0kF4N0xeObRNbFOBn7GVR0jvmCBWewQ9iFbiBxMhGjcYngXkghd
 3EJg==
X-Gm-Message-State: AOAM53117uPsL+TDuDUWllaX8peSEaLWXVTIhM2NLpGoNPUfmlYK7oFC
 vCHHmSqmf4J3KP2yxx4HKIY=
X-Google-Smtp-Source: ABdhPJxNerIfBcvLmQHYutWMRmJg9p7efJMIVDi65EtZZ3Y4oVoOZUA65oO9+bwhonnVNLfMWyzKiQ==
X-Received: by 2002:ac2:5999:: with SMTP id w25mr3194661lfn.196.1589461203516; 
 Thu, 14 May 2020 06:00:03 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id g3sm1894755ljk.27.2020.05.14.06.00.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 May 2020 06:00:02 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>, kishon@ti.com,
 khilman@baylibre.com, martin.blumenstingl@googlemail.com
Subject: Re: [PATCH 00/13] usb: dwc3: meson: add OTG support for GXL/GXM
In-Reply-To: <8404c7a0-fca7-9e28-b65a-312ed09ecdd3@baylibre.com>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <87369rfo7l.fsf@kernel.org> <87r1vm4xyq.fsf@kernel.org>
 <8404c7a0-fca7-9e28-b65a-312ed09ecdd3@baylibre.com>
Date: Thu, 14 May 2020 15:59:52 +0300
Message-ID: <87wo5e3c53.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_060005_519336_3E88F9F1 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5797094896787070444=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5797094896787070444==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Neil Armstrong <narmstrong@baylibre.com> writes:

> Hi,
>
> On 14/05/2020 12:23, Felipe Balbi wrote:
>> Felipe Balbi <balbi@kernel.org> writes:
>>=20
>>> Neil Armstrong <narmstrong@baylibre.com> writes:
>>>
>>>> The USB support was initialy done with a set of PHYs and dwc3-of-simple
>>>> because the architecture of the USB complex was not understood correct=
ly
>>>> at the time (and proper documentation was missing...).
>>>>
>>>> But with the G12A family, the USB complex was correctly understood and
>>>> implemented correctly.
>>>> But seems the G12A architecture was derived for the GXL USB architectu=
re,
>>>> with minor differences and looks we can share most of the USB DWC3 glue
>>>> driver.
>>>>
>>>> This patchset refactors and adds callbacks to handle the architecture
>>>> difference while keeping the main code shared.
>>>>
>>>> The main difference is that on GXL/GXM the USB2 PHY control registers
>>>> are mixed with the PHY registers (we already handle correctly), and
>>>> the GLUE registers are allmost (99%) the same as G12A.
>>>>
>>>> But, the GXL/GXM HW is buggy, here are the quirks :
>>>> - for the DWC2 controller to reset correctly, the GLUE mux must be swi=
tched
>>>>   to peripheral when the DWC2 controlle probes. For now it's handled b=
y simply
>>>>   switching to device when probing the subnodes, but it may be not eno=
ugh
>>>> - when manually switching from Host to Device when the USB port is not
>>>>   populated (should not happen with proper Micro-USB/USB-C OTG switch)=
, it
>>>>   makes the DWC3 to crash. The only way to avoid that is to use the Ho=
st
>>>>   Disconnect bit to disconnect the DWC3 controller from the port, but =
we can't
>>>>   recover the Host functionnality unless resetting the DWC3 controller.
>>>>   This bit is set when only manual switch is done, and a warning is pr=
inted
>>>>   on manual switching.
>>>>
>>>> The patches 1-8 should be applied first, then either waiting the next =
release
>>>> or if the usb maintainer can provide us a stable tag, we can use it to=
 merge
>>>> the DT and bindings.
>>>
>>> it's unclear to me if this series is ready to be merged. Can someone
>>> confirm? If it is, can you resend with all reviewed by tags in place?
>>=20
>> Are we getting a v2 for this?
>>=20
>
> Yes, even a v3 with reviews on all patches:
> http://lkml.kernel.org/r/20200416121910.12723-1-narmstrong@baylibre.com

In that case, can you check that I have applied everything correctly in
testing/next?

cheers

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl69QMoACgkQzL64meEa
mQZ7CBAAjOVQDtFwDKrzgDZRhyR2kgFRKf9TzlbXviaZij9EeWPBy1HaR0b+/2eX
SgIO6RsGUiDD0dBt92WLGnvIxt2JecaAdUNbjUzQBeIkuvEyAuJq0M3qkaMLUU+h
6t6yJZBfO+MyOoFzUS7o+jKQn96KrQLHxcUB69ubZChlNHJUG5nBXpJ2D8xeehnW
Jz3VvJRqBTtN6X8Cgox6e+X7xq42E+VJz9/vwEqQuMA8R85Ay+fxKbX20GdEj0+P
8mhZVbe/Anwpksh5RDLAYeP6tOwz5XeAxotB6Iav81HY//gw2HwVuLdhG4t7sm8h
lfzOa/MkbeoLwT2NacYaZ6eQbBWNpe0+JhX74FL08/P+S5JiHw/DoejbYJL4u8v5
vfA9kWfkrgEQem/MxNAD8dI+HtFMAnNemLsXMATSrNepVNJiEFACyR9fPA76tf1A
OPd9sztw4TMDhVi7rPFjnkRYacG7eNkY814OI39975lRc2VI24GjkzBELJMILhqo
u6EFJcd5vUJcsE47LNyn+hnEFZdkzjxnDXRIJhFfHIyuHaBWYF7chXbkj/TohCQi
NnLdxEIHnHTXLsD+zN79KNx+UB+4JmRoMVyGlipjaGcgiPWTark9gXyxqOzJNYGG
Ag7n5Rbxrlh80c2pOZnK4dHKjpUSLf8pcbXgK4rvLr5uWZEvT9A=
=1kRq
-----END PGP SIGNATURE-----
--=-=-=--


--===============5797094896787070444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5797094896787070444==--

