Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49448B106
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 00:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtOrjiGehc9H1PX4KjKI3XsN9jp81ztxNh7w7av652o=; b=WUXM78Lp5C9La4
	pFPW9BEtRVNv2nDxkRFZH+O2zNOu8n2qhBiUA5tMEoezvwspCr9bpXIjBcYixTsk5Dbe0HpqmKb7L
	vGGjfukly36jmvQZ26lQKE4DaEJdVrU7hwwJGSQz2mTnvIOb0qi80/AxmXBDHCE1+t4NB6y0bBHcn
	QC3XIDyvRxfb4gOtioySVGowSFeU4uLhJpwYwwKMaXUdKadCYPc/6gQUGooZY0ZCexxIxONIlBQiF
	WAr6NmPo66VGSnDSi4AgOvyMFQDyWsU3sm3fXEGQ57NoFV1NwCHhbY0rB5VikRuLVjz4sWQqKryUP
	wVydhaiPnNjNfAMbuYpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hK9i4-0001vf-DQ; Fri, 26 Apr 2019 22:52:48 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hK9hw-0001vA-8N
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Apr 2019 22:52:41 +0000
Received: by mail-oi1-f196.google.com with SMTP id n187so4202495oih.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Apr 2019 15:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=vJM+zidfR9Cd+tBgnmLE+joxMOTQaIhVeEbiqiWTdow=;
 b=VcBIRaEpiQ5wFpGOX9elEjaLLy+sxgRkF0X/tcgXx9z7r6VUKsUAre2bVVgdcZUOhB
 JfQ43iWjpFlcU1g7Vc1qODtviJokEmZdrqdvs3g19SE7to++0oZLI5nDj4lLtCbebVX5
 XA1eddSiYci3OgP7DIRZPO/W10mehTyaZQqy1Q9rQQzMruMeBfqbA2K8KsjDiW7evOyJ
 HFoTdjWe5jsKS9VJXiPPoK4Qf/Wt/ninIoPBtrJAyEOcdhHkbLrUTUKj4GUw6WmdiMH7
 6NJpKpayIbqvHjGJpdpd1nPPUVQFyDduCOsZbOocMK8/7C5IH4+3nDwhpXVq+LCQg7qp
 CCmQ==
X-Gm-Message-State: APjAAAXNtWrbnDH1r7+SA1tObDXKvTmSMGgjRVQKPYZjkNZ/Mjb/TgfF
 OIJurcxQ6Sz1XJto1HPCrg==
X-Google-Smtp-Source: APXvYqyHs5uGUkGxtqnuYas8LrF6nuezxQoBbKWaPj/1j5q07cOVZqJFA8O2KsJR6k2Lo4T24PvhWg==
X-Received: by 2002:aca:bb07:: with SMTP id l7mr8824825oif.142.1556319159498; 
 Fri, 26 Apr 2019 15:52:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q25sm10583219otl.60.2019.04.26.15.52.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Apr 2019 15:52:38 -0700 (PDT)
Date: Fri, 26 Apr 2019 17:52:38 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 3/8] dt-bindings: gpu: mali-midgard: Add h6 mali gpu
 compatible
Message-ID: <20190426225238.GA17375@bogus>
References: <20190417173031.9920-1-peron.clem@gmail.com>
 <20190417173031.9920-4-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417173031.9920-4-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_155240_292907_AD752011 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Apr 2019 19:30:26 +0200, =3D?UTF-8?q?Cl=3DC3=3DA9ment=3D20P=3DC3=
=3DA9ron?=3D wrote:
> This add the H6 mali compatible in the dt-bindings to later support
> specific implementation.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../devicetree/bindings/gpu/arm,mali-midgard.txt         | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
