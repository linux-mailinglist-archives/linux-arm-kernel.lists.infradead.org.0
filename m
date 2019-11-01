Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FFDEBE58
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fQTyKMBPNmuz86sxU6GGV8BJb1P/DqBdwaQwh72/suk=; b=PXIAPY+Yb+r8wCwAIWhUghzst
	p9HkFX9b7h4+GgrWagD3JEIIk2FAOUES9MAVbxRhPl5UIMLHUfcVVMKQo1MJe3Em9YevucqXyEWlx
	4wQGCGlyNrFrlg/HXXO1effr51kvGs/ODyI5i/gr27gr9InAggtkDMYpKaZKSIDNh4SiA+jy0cWtF
	gLhQxRRsvhvmNSeiY+x0GzSDizww4T3I1BuH3PD8YglOJ2z3KPRKGg6gxcb0FYrgTtlRDpeUxTb7r
	74pkx3SscHGhn7iaBZCU1FuLH/Xu5wTWw1vdDYj8HRFqERfWtcO0KpyDrjwC3rwEjmio6S/4/dj8g
	aCNEhnoKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQR8Y-00054C-Kw; Fri, 01 Nov 2019 07:14:22 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQR8Q-00053d-MY
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:14:16 +0000
Received: from methusalix.home.lespocky.de ([92.117.33.203]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mna0x-1hjAHd3m8D-00jaQS; Fri, 01 Nov 2019 08:13:53 +0100
Received: from falbala.home.lespocky.de ([192.168.243.94]
 helo=falbala.internal.home.lespocky.de)
 by methusalix.home.lespocky.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <post@lespocky.de>)
 id 1iQR82-0004RY-6g; Fri, 01 Nov 2019 08:13:51 +0100
Date: Fri, 1 Nov 2019 08:13:49 +0100
From: Alexander Dahl <post@lespocky.de>
To: Nicolas.Ferre@microchip.com
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Message-ID: <20191101071348.niwyn3w3ybxoltvg@falbala.internal.home.lespocky.de>
Mail-Followup-To: Nicolas.Ferre@microchip.com, Tudor.Ambarus@microchip.com,
 kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
 <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
 <c4af6562-16e4-026a-3c54-bde1d4f1b5c3@microchip.com>
MIME-Version: 1.0
In-Reply-To: <c4af6562-16e4-026a-3c54-bde1d4f1b5c3@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Scan-Signature: 581c7ffa71bd056d31bcd0d50462ce09
X-Spam-Score: -2.6 (--)
X-Provags-ID: V03:K1:WBLEnmQMPjEV9crY81Jev7gs7Rfynb5aDzsMkqjkqtWuu7x0geL
 8dt1eW8xGt/xzHZe64kwFvtbmeWE5o7c14JNA2mX4N/5mfWDAk67/j/JnUPIGoa7eb8DeVu
 8qwWi2sF7lmj1zIOpN0Pir/kbdmiT4q1tOoJVBemjBb4SfNgAM9svlInPylqfNKDMaH4XYG
 gT+mj0vJtMMLKWtOXxNLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:whaqN/2jMMI=:TzEcq5xTmE8Q9frtCf05sM
 am5lW74H9lR8cSKSQi3WrqNV982kDntV1jqQlycJ5izzKYMZaUf9I2bIevVnCpAkjX80EWUQA
 XL39ap5L2Q+BxtVQNdPEX1H5KwCZdy72HYzlrk0RqXOrGXtFFv4DLQANgEKRKdEgmmp/IFi3W
 rIfJFGaE0ro0PoToTMPrx3APW4oSnVSeCzsuo9l0aMu1NohH/jW/nlbgXBATt/9u128hH8g9m
 nrDZSFyC5SMF9dC/lNV+IQSxARkYaYwhfXO2BXygVieTs7AVcoLf6nMDTaolI7N4SsX0IKwzd
 y/VO//tYaK6ksNtDVi8DjA0gMtLRIFV7IrO9yUFsjPt4grMokKHUZ1UQohkJHD+KYGs50vQkP
 bRqaJRhFWdzvZhRYmcMLBqucZPK2BJgZHuuWMtUMffX/4hV2oIBHW2/tEENn9mTqVpiSCi0A1
 x/Dla+YsbuJs+LwxpV1ieXht5aRsAPWzCN2P5OOMMwQG6Cl2Fztcc8bu/XxxUKNc4VG+p4DBv
 C45LWhgNwJb+zIPLk25yEyKxbGel7wbZjChknWXeaELLsjPo2xqUue0/q3eZXSa9YSVSnBVWc
 11OeVuMF5WpVKwf5cmKrLatSaU+yyEKKJrHYvaXQVeTFyQRxKI0GB8qHSpqbOed9WsVBjTy8B
 y/gyaSd4OeYBIhZfksylp0xNBKfOlk2/TIDDRK+ysi4Wo5mltYbq6CD7hiOiCgjzbFfL9oM0b
 zQddtl9PebOOEPftivxIJp2FG7IUkCPXI9/U6BFfktruR0DmOrI5Bwt7bRK7Sq0fMrS+Qo7WY
 w9E8TstlfgV34neTWkr8+U/+bHWcBBuya/qZQmiSn56xzDHSSijcKKxLWttnb/e7SRzlBW198
 0kNoHiqYmdtXrC8V48eA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_001415_036955_05B69AD8 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 Tudor.Ambarus@microchip.com, Ludovic.Desroches@microchip.com,
 thomas.petazzoni@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5877770264144721145=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5877770264144721145==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v37vbtfyxweicvu2"
Content-Disposition: inline


--v37vbtfyxweicvu2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hei hei,

I know this was already applied, but let me add some comments.

On Fri, Oct 04, 2019 at 03:25:27PM +0000, Nicolas.Ferre@microchip.com wrote:
> Well, I'm sure to not know all the applications of this feature but=20
> surely unique serial number (per single chip) is very useful while=20
> wanting to identify your system precisely: attributing a MAC address,=20
> pairing with one service or user software, generating unique keys, etc.

+1

> What I don't know is if there is special API in the kernel to use it as=
=20
> several vendors seem to expose it differently (/proc/cpuinfo being one=20
> other option). This one in nvmem /sys file is surely a valid one.

With commit 9aebf4de2203 ("base: soc: Add serial_number attribute to soc")
there was added a member serial_number to struct soc_device_attribute.
As far as I can see this is part of mainline since v5.4-rc1.

I saw some patches for i.MX on this list recently, which also got
applied, and which use that mechanism. So there seem to be at least
two different ways to access this now.

FWIW: I was working on a patch for exposing the sama5d2 SN through
that interface. If anyone is interested:=20

https://github.com/LeSpocky/linux/tree/wip/sama5d2-sn-squash

One thing I noticed on the original patch: there's already a header
file for register offsets in SFR block: soc/at91/atmel-sfr.h =E2=80=93 IMHO
this should have been used instead of defining those in .c file.

Greets
Alex

--=20
/"\ ASCII RIBBON | =C2=BBWith the first link, the chain is forged. The first
\ / CAMPAIGN     | speech censured, the first thought forbidden, the
 X  AGAINST      | first freedom denied, chains us all irrevocably.=C2=AB
/ \ HTML MAIL    | (Jean-Luc Picard, quoting Judge Aaron Satie)

--v37vbtfyxweicvu2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwo7muQJjlc+Prwj6NK3NAHIhXMYFAl272ygACgkQNK3NAHIh
XMY4Jw/9EDzM9J4dh3cqIwcjnak2+bdiD+NiKTGnZ2bWkEpQFLe+GFI6CHYlYPs5
J/hfPCqRm0EjA699R7z1VBvnU2YDafkQ1NoTSY6XReMBwS3iVUTamO0NY8rRxLag
Ubn5+2B6vGukpQtadjad45XvzsUdzRp6SHtJFwIRJLAXMSuHrIm7b+3dJeDzQQ8p
ryFzQQpNfvC5BZniu4OK5KLZZ5yHKBIH6ILWMQwKqcZCjl511vbe3aI3BMJeWJD5
0rXZKFwwMF04f5Z0M0skZ5kUCBjPrB3bKNgRGpesZRtErBQRfbKXMg5ix0AHdoPA
jTNfG8kX9aZS5Wq85E3WT7J9L7JlSHBw8J/hyZ/AFQzpWQKr2OqyC69iPCYgM66Y
LlRGVc/JjZ86FwTywrHF5j19eyJ5klcjK0XsYHpDVyB1OOfwDpDgjXgABivS+Otq
sY3TYLHzNAZNG9q7ZFc7N8xr/x2lW046KU0VBZpQz/YAuciGOsISH1A3MIt1VYKe
i5PYaLaSqHMS/z5M9JQ5H3pJQmusZMtgxbJRTdGTRM+bl9Fqdk+6hWEuBAXFAkPy
eos728Q/2wqav6SYKtswbjGIT7HU5Sn2/7o49eFwcqnKoGGqx3k00jols2deHufq
ZmEcaLi8ST4D2iosmoYFk4QpAA+azd1nLzlSXC1d/nja/IwxNLQ=
=BraD
-----END PGP SIGNATURE-----

--v37vbtfyxweicvu2--


--===============5877770264144721145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5877770264144721145==--

