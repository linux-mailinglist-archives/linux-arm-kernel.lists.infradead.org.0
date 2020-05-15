Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2331D5510
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZZbRDtPj7c1ewpJbuHc/HwXc0sK5b84eIgWMkU2X1nU=; b=RvrdMw1i2Gkru3S25bsC2nTUw
	nNWUTneNDU1PoSZuEnA8Xw6Hi9tiG4lg0pxFyTvOpZQchuFeGCtJCT63u47xSSjm6HrHZ3gmEtLdZ
	dF/UYYO/Xl1Se8susulhkeOKsRat4nWu5PPRVgG+bQaGETfKBhBIRZmKY7BgGxu+VArYipPjJwQwh
	qjgVjwqc/Nrj+/nYC8ZCEijRgPjIkJ6hLdZRMs8j4/Sns7BPZXoNEvFwc8XUjddAQussjWNmcCq70
	ShRxGT/REWgkwDkdCawJ2QicRBigOyFRGy34GNi+CsgBPZzigFpNZ9yfjNaRMQu0oLPveS4IQv0Fm
	X42nKlIpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcZG-0006dw-Pd; Fri, 15 May 2020 15:48:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcZ9-0006cu-Fw
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:48:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id o14so2764335ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 08:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=fY7QOXGBh0lpGAIxCDNmsPeDdy5A2yrYmjB29nGWprQ=;
 b=CzAwOlmtrTHtfOLwXGDNH5mdDHhccw59oErotMjJWD63gA06itD516Lis1jro+RomX
 rWSuJCMxcBDxPWHz7qreT9kpqMXF8kKog0eBUJMb0gh+2XcxW2PoKlC8K/SlS0In1xMX
 VeUKn6PfTd2RqrZsZ/tfAIRyQ8MA2ekL2dpbQNECN/FWTByzmQzHy5eDWcMMs4cQBi6K
 n7zp28LSe085flkXj1CFfxnGLFfDge8y+dMpMh0EUNMYCnKPlF0pDIcua1ipmZ07/cgX
 xgJw8W6DxA2qU+O99Vqh54qemuGtqwiLVJ90AYmykxQ/LC7SPrwGpZLlbBNEVHqzjEmQ
 2wkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=fY7QOXGBh0lpGAIxCDNmsPeDdy5A2yrYmjB29nGWprQ=;
 b=BMukXH3tj50Y0WtlmKeVjvmx4d5dPZUy+08mn6yKrrzeSMzn/23ygsObCFQ6LQkYna
 QLne2OvDXUgvPrS/bxCMOrmbbBMuKcsQeV5UYWZkx52Pj1cSLPkvSOM+ZUXpGwGUO9zg
 FGlbLdZd1YFWt9zvmpLKgXTP3Ka91JYRGejywO3LnU2x+gxp9SPF11Uc/dYy34IR0eOP
 9dP7sfwNXM21e5IUXkGNwz2nKRvpbsUTtxy+02+ZY2vPSvCW/4XUf5KJQhtxAqWuuOjH
 tfbgt14scLDGj+HF9ENJyQfM3z/hR1B8cjlKcwgnK/OM4ucG24MCny+2yWrTjrLtnDuI
 uimg==
X-Gm-Message-State: AOAM5337UhgoXJ99YTDQGZ+5yG4bREOy3G8yZPjrMeoU9IHyOpBJpZGk
 bO1q27dOOrrVjbyyI0OQjv4=
X-Google-Smtp-Source: ABdhPJz/P6sVSzkBIRzmjJBZsgaxl0KCNezmjR0txnFFdP+igtkidAQc14vrHt6s01x5lNq9mKCAPg==
X-Received: by 2002:a2e:7807:: with SMTP id t7mr2735173ljc.151.1589557680369; 
 Fri, 15 May 2020 08:48:00 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id b8sm1519077lfq.70.2020.05.15.08.47.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 15 May 2020 08:47:59 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: cristian.birsan@microchip.com, gregkh@linuxfoundation.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/7] usb: gadget: udc: atmel: use
 of_find_matching_node_and_match
In-Reply-To: <20200515111631.31210-2-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
 <20200515111631.31210-2-cristian.birsan@microchip.com>
Date: Fri, 15 May 2020 18:47:54 +0300
Message-ID: <87a7292o9h.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_084803_532297_7913D954 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: multipart/mixed; boundary="===============7238774176127464199=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7238774176127464199==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

<cristian.birsan@microchip.com> writes:

> From: Claudiu Beznea <claudiu.beznea@microchip.com>
>
> Instead of trying to match every possible compatible use
> of_find_matching_node_and_match() and pass the compatible array.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

please rebase on my testing/next

checking file drivers/usb/gadget/udc/atmel_usba_udc.c
Hunk #1 succeeded at 2098 (offset 46 lines).
Hunk #2 FAILED at 2074.
1 out of 2 hunks FAILED

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl6+uaoACgkQzL64meEa
mQaUtRAA3SxQzSLjX4nXtqmtPbL5JtWzIl4VGUcv1DxNrv3yVahSwJtl5VTvyDVC
41lnQFiq10ZqUaaf7GTDcBsVJmLVsBcNLy8dPkL+5Y+HK5bkCIi9l3fVV4JAg12q
J1QtMxXrIUuiGUGsq8S2LIQBVxfMyZh6yf7KYGqS8mMAS79KxQEs05aRLyFRWbih
Z5PCYoR0K76PP7lkomrbeOepvLxjD939KHXV9cqMVZHTfmzcbVGDIFreomtktQjt
Y5VvjaXsANuQIf+14nUPcGB9qkO8GPOJ9ftbXQahRgHm9l4BDbAcHPZaubS2hY04
Ww9dBOH89s7mrbqlXfcWNNrcv9EmfmqM+Ayy3yTA5eAt4Ot94WRX1vsTa1uTtr1Q
FJs/z3JY8IIt+wsV9k0xzC1ZKJmm/L7DGliisdEZpZiTV1kLLshVMEuZCEiR025c
usbBr4iPJHU0pOJL4B6KLuF9beI23QtlRtu+1gGUkCpaIFfNHiyGs8MsQ9RKcpp1
6l0VnHnqEJtRWgfG2OvwMlJIGzXSrLw0owSpbMNfnOeuFTScahj9pPaaAfeG5+qb
HpaO52O+OPB0sQYC7LZUDuz7x0u3wegNcUIXl+bsbJRfbG7c8ceQeNSGtoZKe73Q
0GHb3F6rgaRDGW2hyI+l9V7hDREY8lgR9hRa/4SKngpKdcFcnls=
=T2cw
-----END PGP SIGNATURE-----
--=-=-=--


--===============7238774176127464199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7238774176127464199==--

