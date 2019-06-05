Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642CF3549C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 02:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+qqt4wZA3sxBzvV6OfP+5y4XqSJ4i3BB1t1r9Rcb3o4=; b=FPy2UoiebzYIUPtyUEucjD5Pt
	AcZOXG46T/6wXC2AdpRQOGH1pCpn0EfJ8tZ8Lvg+eXExx9wZgX+T/qba/zoD3lBDePCTx4PnbQuPf
	QkCUiPUibNsRLJnGCEgc6egUGUDJUy1UT/MonLDSRqSsB2S73PhVXHNtHN14JtJdbBsCF3MJTh8mG
	hlHBw4E86M4TjUPuYy5q5YaFqyblh9dmymbflRpyHVdKzx0xK5WvbG8G0GSh3Lo65diP3DMxpEQOI
	l/xs3Flz+UtZVZsLwVONP0Ggze8ozSYV8FUWK66sGhIVv2/aXwydq157jbpozViaIwr3x55eMwzcM
	DAO0pVl7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYJOn-0007mO-Tb; Wed, 05 Jun 2019 00:03:25 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYJOh-0007m1-AY; Wed, 05 Jun 2019 00:03:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 34DD110A288F;
 Tue,  4 Jun 2019 17:03:18 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id olrx2v55qpgq; Tue,  4 Jun 2019 17:03:17 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id ED6F010A1128;
 Tue,  4 Jun 2019 17:03:16 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 7398A2FE3AAE; Tue,  4 Jun 2019 17:03:16 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, stefan.wahren@i2se.com,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 1/4] clk: bcm2835: remove pllb
In-Reply-To: <20190604173223.4229-2-nsaenzjulienne@suse.de>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-2-nsaenzjulienne@suse.de>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Tue, 04 Jun 2019 17:03:16 -0700
Message-ID: <87k1e0zynv.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_170319_429185_0A2BB805 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============1299002827466724163=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1299002827466724163==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Nicolas Saenz Julienne <nsaenzjulienne@suse.de> writes:

> Raspberry Pi's firmware controls this pll, we should use the firmware
> interface to access it.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Acked-by: Eric Anholt <eric@anholt.net>

If someone ever has a non-rpi 2835 to support, they can resurrect this.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlz3BsQACgkQtdYpNtH8
nuiUNhAAuusJeKijdAnVBRXypIxS17ZxosYDMGrz1+WmREQHh631IDfVAqcMvVQt
OiXSpnJRSxZlqQt0ADMIu9khMLDekk+2k8BO5T84+86H4Hb0WIAswxV44lOeo5UR
vNqVi/tuVVudMhAunv3i8xdK+2S+jx7yQ+1mv9APcBFJ45jQfKqlIirPsJ7Eo0Sj
6yT2hutyzuhtepG1u6L8HvDYYbOoeuuNP4xh2u2z2pW1ZM4bjS89zDBsiRHOIW9l
dJhN1zTObyO1S4QbiMNobNyE+vsjBf/X5jH/wOvxioswgVmlCUSbgUtUtw8Fj4I8
wWmpprgXDWtOk8AsXE6t6IDHPv+4xZEOxR6e+ViQqfex26qq6Van0LXTO6TfC3H1
A1F+SOG0e0HgyX2Y302k06gWAIvl9b03lZ5ixZFj4mLDJxXDXaLLTezYmNj24O76
p6iAB1npEZnT0Olqw3K5Bexpj6XDdZImX0maFd+nA3Zg0W7xNqaqDialuhBmuatK
lYyER2Fr23h0LOTSMfR9tCYzZo+jFrG4/0nNGN3vCRA84XaAtQXDrNfbFR94MuHr
5MSv0HfzYrziJVjZJOaMKtbwjnNKU2RnnDuX6ZklP4ANCl70+/fvT8dgabEMFCA4
d2pwStTbLeYA6b9MkZfyX6e5cO9b4VWvnhShEotiecpMfU0LC9o=
=UhPx
-----END PGP SIGNATURE-----
--=-=-=--


--===============1299002827466724163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1299002827466724163==--

