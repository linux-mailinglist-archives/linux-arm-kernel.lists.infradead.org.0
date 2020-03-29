Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E97196C83
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sOeykItQn6Eg/uv/CMfy4gZfEHtzEQ5FRYvAhpQ2M6k=; b=PnUqWo0bfd/ZTn0knbX1G4ygw
	etrF+3O6tXzTjvUOusm8KRcJF1F2j7KlZRhZ20iY3tTS3MCTxM+iw9io5Y7mGL/eFTLL6KiwP8ho+
	l9Pvf4CkI0cDsZlKOTZT6Tm36uWYbx6xDeduKqkLfRtoaDUFzHsGhAQALC2kpJcRNLmlrzR0WMJll
	ajKbN8Ka05hNLk/Eq1KD+yFW/lqrQgdHi2ON6g4ayOqDtCcJ5fJQRUnyM+DN1590zb1oGFtxuXN0m
	oQBEAf9xnaLGqgIktwyfLbgRBPyiAJGu/NcdBbjBNhAAsqyf4xfhKwFjK7FxvSB+G0ZfUOEwbvSfy
	NSJF6ZWAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVJA-0001Hd-Et; Sun, 29 Mar 2020 10:36:48 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVIy-0001HA-Dh; Sun, 29 Mar 2020 10:36:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id t17so14733475ljc.12;
 Sun, 29 Mar 2020 03:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=cEsIe8nn/S1lT0wrpqG10UN56pPApRKTKN29r4c4Uu8=;
 b=ZKWeswJz2TjBGfAJe3HbiPdCAr3SAOh2sPYa0TzzpncnDPFVrILal0hxoCJog0t8uW
 Ksu4ct+oISI8eYATUgwqFuctJVD+KM7iKyZxVXe6YYDS4CZdzrQz1vO69vhpLgDNTOnC
 hDj0hOnVAqkxHlO8Xmejq8lhPxTij/tFHZdUk9SoBRTyC6c4LRMIGBl5EBpvcy8zXG/u
 fRTlspMAYfdgBtudbe90nhcleTSmtaNEOLtkQwXErND9RjiUQAyk3IZv0FB6ev9pfkWG
 uRLIRt55E0sMNw78VnDLg9bTubhpd4oEruWQPDd1RTBqejrRw8hMrd52fbX/Y9hPVl3I
 intA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=cEsIe8nn/S1lT0wrpqG10UN56pPApRKTKN29r4c4Uu8=;
 b=d/YCYsG4n81juTajP85kt00hE7qxyEOaN9KdTNxHdaLzdCf3rRWuW8vLGENPH/3eRF
 E1oo+pCqa5rPRjS1FDTJmfJhFBjqtwcIWUTReR5RxWwTAd1KIklV+BKNM7DT77Du1SN8
 PAAOClt5KP5WZJoSvKu1WvQRlqFsSkespS4xTtZdtHIF7wpMcuE/5B3SHzLiyb7HLwhp
 x5mlqxSNXlf24VVXtNmyNSe1WHqlclAONyAarVwvvYHmeKP/Mlp0vE8RLPwkxO1j0MBR
 OX0DFKqHG/My9LbswjgXj3Au8ERzwoQsQqsQd+j/JuPTyOkp7uKAU92HVbF7xiEIVs5g
 z7Kg==
X-Gm-Message-State: AGi0PuZZNhA2S//Bfw42wSnvjzHpw22tzRbETcgfqiierknGCjw2fnPi
 Aw8iuTGaU+fB4PmtBtNBUAWnWPt6xMh9Yg==
X-Google-Smtp-Source: APiQypJThIFhVwSBsidNoBC3qKZrQY2GoxPRqD+WnxsypL80S0UNgy5WV/AaIIZEVzJM6IJFC8PXkw==
X-Received: by 2002:a2e:8954:: with SMTP id b20mr4134503ljk.176.1585478194949; 
 Sun, 29 Mar 2020 03:36:34 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id k3sm5332976lji.43.2020.03.29.03.36.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Mar 2020 03:36:34 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>, kishon@ti.com,
 khilman@baylibre.com, martin.blumenstingl@googlemail.com
Subject: Re: [PATCH v2 00/14] usb: dwc3: meson: add OTG support for GXL/GXM
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
Date: Sun, 29 Mar 2020 13:36:28 +0300
Message-ID: <87v9mne9cj.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_033636_465737_DE497A70 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: multipart/mixed; boundary="===============5520006312546206017=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5520006312546206017==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Neil Armstrong <narmstrong@baylibre.com> writes:
> The USB support was initialy done with a set of PHYs and dwc3-of-simple
> because the architecture of the USB complex was not understood correctly
> at the time (and proper documentation was missing...).
>
> But with the G12A family, the USB complex was correctly understood and
> implemented correctly.
> But seems the G12A architecture was derived for the GXL USB architecture,
> with minor differences and looks we can share most of the USB DWC3 glue
> driver.
>
> This patchset refactors and adds callbacks to handle the architecture
> difference while keeping the main code shared.
>
> The main difference is that on GXL/GXM the USB2 PHY control registers
> are mixed with the PHY registers (we already handle correctly), and
> the GLUE registers are allmost (99%) the same as G12A.
>
> But, the GXL/GXM HW is buggy, here are the quirks :
> - for the DWC2 controller to reset correctly, the GLUE mux must be switch=
ed
>   to peripheral when the DWC2 controller probes. For now it's handled by =
simply
>   switching to device when probing the subnodes, but it may be not enough
> - when manually switching from Host to Device when the USB port is not
>   populated (should not happen with proper Micro-USB/USB-C OTG switch), it
>   makes the DWC3 to crash. The only way to avoid that is to use the Host
>   Disconnect bit to disconnect the DWC3 controller from the port, but we =
can't
>   recover the Host functionnality unless resetting the DWC3 controller.
>   This bit is set when only manual switch is done, and a warning is print=
ed
>   on manual switching.
>
> The patches 1-9 should be applied first, then either waiting the next rel=
ease
> or if the usb maintainer can provide us a stable tag, we can use it to me=
rge
> the DT and bindings.
>
> Changes since v1 at [1]:
> - Fixed DT bindings to take in account usb2-phy2 on GXM
> - Added comment in patch2
> - Fixed patch 5 and moved fix out
> - Collected tags
> - Lower DT patch changes, switch p20x-q20x port B as OTG by default

patches 1-6 are applied to my testing/next

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl6Aei4ACgkQzL64meEa
mQaamxAAwuHxU4drRBYL0UhnH4ujHmfw9zVuZeEVjxAf0eTeCXjxw0u76bgZlbm1
z407kK9bU2znxIUFAEtYZ8SNuPQcnGkEkJBRIAKr9sBlcoqnVl0I6UCCgpAhZh0P
/Mkpea+QjUrtIgojPkyM9xnxi42+JwBT6S+rGqgq9KulVVC5TzNWTY5b3IvlJinW
7OruoTHahtfiVqSi5DOzzNRsWvX6R6JolMq8wsa1KOQiVnlB0GTLJFqf8TKrZgWn
/PQpbbhk5MUnDgUTIaOWYbfcJrUZd4yt0kkgH8tO3jIH8getvK3JKgZcrsQQ2em6
gmXrQ+o64TaJ+5RFNMJknhcMfnB5jKCAWj8FVHB2P/wOFt1eHu6XOIxBozraEkYW
OEa+3RNEFilashPRbm7plsHlqQX98HpliM2+p7mtcgTjWKJeDRMiBc2RXqd8SKcp
U7kwWYGv6BZ/EVncImIHgVJ2uTvriB+yeUuMVrZU8u/Rr3eRaOHikb/KJANh00k/
UlpxS89UD2zAd+HT3BqVYuzvtoKJOYO8z0d6DlvV/bzaxSOpWoIFNEL8tGjGDRtu
R9HlOcqhoi3amtqVFMR+huIB6ZQIcilLcNA+1mzxwq0qXyVNA+oyY2dskRhgoV+t
kFZs/a6g4e5bN8HxaWdDeEdWgts/Cmz+A4PfCTsD26XKggaw8f4=
=uyGs
-----END PGP SIGNATURE-----
--=-=-=--


--===============5520006312546206017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5520006312546206017==--

