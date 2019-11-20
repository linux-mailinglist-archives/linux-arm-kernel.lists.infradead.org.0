Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A9010409F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:20:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n692/7wG1u1z2MamNUsv7lpElV8WQIGwV7zHDp0KRtA=; b=Ru7ZBdF/Skrnuv
	1kDpzEvopQK1p2c064mBSi95/vz8NCorfsY9+ZaDIfwb9mwcovuj4xrD+Ut09vutqxFUOXq0+ox8u
	XhLHeJhsT4MkLDoGnTFB9WP569kETIUk+rzbd7HZuFSdPukAQTxN4XbFf+XbHyYJe+62lb1bCS3GD
	rxPWxtEZhpGP8hTkbCL4G4/M9fLLQ9C+a3LM8c0wYahdtMGnd2g1+Hredie2RzZRoIaSwz+omqDge
	5xQIVK+lKbB/+WCpbXwCnPMYkspTXy6BGAmUosQ5a//9fNRO7kWJ1ni6EeDQNlWGOfXl6e9KTxfZY
	8lXicO/9RZ1AoCYN1YIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSil-0002C7-0i; Wed, 20 Nov 2019 16:20:47 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSic-0002BP-RA; Wed, 20 Nov 2019 16:20:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574266825;
 bh=bxZXK4jBYOL5HZciNl+I4AQKYqmjhu0pYOZ1i9Z/OoM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Qn5sDZkrEU+j1jcx+kYmtk0WukmyVj9yeK5sBRxSqWQY8wwuSmM0c6UBXqkxip2oG
 FI9YvdS4O2dAkn/BSORui0RLFirwfDBPl8i/pYb03/g2Fu8GNEVij/BtLmjnm/8CoW
 /MG1cvs49rxyIe/XyeAYNFeuM/8JWfnTak/0yAeQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MiacH-1htBcc20uN-00fnOV; Wed, 20
 Nov 2019 17:20:25 +0100
Subject: Re: [PATCH v3 3/4] ARM: dts: bcm2835: Move rng definition to common
 location
To: Stephen Brennan <stephen@brennan.io>
References: <20191120031622.88949-1-stephen@brennan.io>
 <20191120031622.88949-4-stephen@brennan.io>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <307960ba-0c01-1590-551b-2190a54ea350@gmx.net>
Date: Wed, 20 Nov 2019 17:20:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120031622.88949-4-stephen@brennan.io>
Content-Language: en-US
X-Provags-ID: V03:K1:x3VLRf8GmImn+EPZjvIVhfId/7IfKu1RrJ9BQzHaYGGKSw0bb09
 d6oSlm3vQNJT3WAIyZSlUBY9hD0zaZduPoXWLqWpZXQWvST1PYzXg/aUy6yCmPoCKA9VgXG
 NqDmrZcbwY3KMnkvLeS2+3sstYZy1wQFzLKc9zuF1/7/UCvoxx86aY3pR8QtQscgpty+UTl
 topjqXqUmwp8/M+h70sKA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6fbkE9d3JpA=:/2o0C5CqgIV8IPoFApQNss
 +eRU0v2zdC1o4JjackG/gOZQu+89WNB+/LrNarG1RKNqSYRDn477tVpP9sn5jLa3v/u3/owHQ
 Aaid1dlCvEJs44TIo3rVPukrkVfqHReVfjhuIXDe/vG3H6a6Y5WWCMxMRYMRVe5BWqdS60LGl
 GHPd2+OXfQ8wEDQDLRyQD1XywhNTlprizyRA7ZyVSl5A0Gdk5kqzJsjfZWCPHwHYd3j0yDZYe
 +hFxHphf31HAtbvxRcQm7r7WxHGUoCvm4syBtC3vjWDZSfjmK3mqn7ngQxlyxyw6ncUUi02Sg
 LRptIgViLiuEaOOj91aoVA2wnaR4XT1L0aCsaiYIvWzKe0PuU2+GhEzVAgp796yH92aOEmUUf
 MnvmoWXDB+5XyUg9y69k3HehBOgXsAkcLFO5Lhk0apUv273xI95xufVXhJzhHCXbhLsYT2pWO
 fBniw+o36eN1Eknph3GO3SkxoDgicaSgSF7PGRzedpN7LjzwbPPsJQLbb3tkmdotVMGzcC3Qr
 MSu/0KCzoiw14gFvI5CorhR08yEQTk1qPG9yJLIkzHHyz7wGF3Ru18LBljidiLWYnLd5iNwju
 J/+Q9YR1r3njNlIvyvLAspmRsA2Wll99kVkH6XhdrZxxdwMIDSP7eLTdZHIfoss1V+uOePeJl
 SYcPPwlNm7YQqjK5WuztQdJYkcv1sOWOTPPt9lgxbj4KUVeXSi3z6dT6pW1mvzFXtceNrTDGr
 MlQeosWhXFb0jdpxvgnPq0kAxGuTotcZlb8pTE5LnsA9ha1iL+vuNmSMDhCMoVBoMfVgpwvJE
 74VAxdXFi3iNflUKdnvMYItMR+na8exnfjsxKTn5sPpSL6G7cIXtACZeCxTIwl8BjptmwDVUA
 GMdRVIVkHjDlLwvS2GDKMT/36l/L4SzmlG4XhaIHhwltXdfnXqheHJ1B6XgvFRlv/WnG4Xqes
 BV6SbjGeDw3oyOEle4DR3eIM4nno3Zf/M5JFZ7RoNbV9cECd+HvFN4xB1mLWpIrfTwUcXBv9z
 r9A7XvwDoIJkVEU6q1RxRAQ56/dah+itmG8FjEIp7yVmvsbb3RS9CxwUDEh+WnPSJfohp3Kw8
 Bls5AGlHLIF3OFS6vSzD1cUx8rGjnl1aoyyLAoe7M3Th7rtTVBFDsfkHTwPpK0faLtmMU8rvD
 YL9+5yNmppQDOpt2jga6v6+xEx/mj3BfVtVwnzynu8otKEjDVYYtNIHc3Pj5C7HiGNuss7Gaq
 4JGPpBsDaCrmRXiwIcu1j3VrdyNvKonVP3t7Ez4FVCA6vs/xtXq/0U8mUusQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_082039_172612_1DEC5AC5 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 20.11.19 um 04:16 schrieb Stephen Brennan:
> BCM2711 inherits from BCM283X, but has an incompatible HWRNG. Move this
> node to bcm2835-common.dtsi, so that BCM2711 can define its own.
>
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
Acked-by: Stefan Wahren <wahrenst@gmx.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
