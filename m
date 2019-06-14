Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3705468BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xc23oeR2ye6V49oIBVeYQYcOtkfNRozL5zp6sqZB5aI=; b=JdGijuB+s7VNu6
	1AOQ7HjmZQP54iScBWFGq1Jo3iQLGTzaTLl7rh/AbOMmd4rNZiv74bN4vCVGtuPAa3JA/ei5cCEsJ
	YoH1w95JEuPPCBJuxmpoQqTOrgal+RauIlbSKvGrzoG462THH7hHT2hic/nPNC4DrsCnuR8n5fVzT
	jQb+fo5CUEuiHd4aPrvOXLl2HW6Ba5dbs/dC9acK9fIxL3Zg8AAI0MHshN6GxNlfM0GFC58Ujf+Kk
	45tO+z/8uAJUW4Hqu7RRDs1GBIMCH2dgeTUFd0IHcufpQjXiWAnzeFhTPvtx9HbNxEoCb+oN10N3V
	yUNDAuRk79D09VmX4qkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsf3-00030i-KT; Fri, 14 Jun 2019 20:18:57 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbses-000301-7m
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:18:47 +0000
Received: by mail-qk1-f193.google.com with SMTP id b18so2497146qkc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:18:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2S0DTzr7T25H6ahTWfAr0eKoReCAR3ggo1mfN8CFCHQ=;
 b=egDgRu4+IntTRA8PY+xHZVFyCMTSP0uw0CjMHqKwcwKY67M2HytPp0KkEu8r7Vdroj
 BVCocHO8ux5SWvrUWjck5UYtPVx5tbGr0YTNlluwd79BHqs0JC6f4njr+mj9VqRuAWMJ
 a0OnednYPHVNTuLRFE74tCLfPyKyRu7WEjGLr3X7DYwVr7F4uCK6V83yaWaMW9Hg05Ce
 ugeQrXOitGFL3/O0CxUvThi9evTELzcovWS0E1aeQp1Z7/wqjQqBAZudoXJHuHxBxtm9
 X1Ctc+cSSdjTS90g18cQJVMoqDtIe5JTzg5HUHcIuuw86kZ6UHywS0Hbmwhph6tEGrRj
 Dr0w==
X-Gm-Message-State: APjAAAWwCRIzjvSJZC0OpJLfbtmQLhOOU8ygdDGnYPHkhlYRaIMStSWI
 b7ym5+ZSnGAUZN1hLzo6Mg==
X-Google-Smtp-Source: APXvYqwsKNTd0AOI6kAgPfjhl2V5K+SFwP4wtJ8cEJEVgj35zYt85Q1VitdZH1kp+GJIOs7FE8KOVw==
X-Received: by 2002:a37:e40a:: with SMTP id y10mr20766206qkf.303.1560543525092; 
 Fri, 14 Jun 2019 13:18:45 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id l6sm1705339qkc.89.2019.06.14.13.18.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:18:44 -0700 (PDT)
Date: Fri, 14 Jun 2019 14:18:42 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 01/12] dt-bindings: media: sunxi-ir: add A31 compatible
Message-ID: <20190614201842.GA6768@bogus>
References: <20190528161440.27172-1-peron.clem@gmail.com>
 <20190528161440.27172-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528161440.27172-2-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_131846_281180_826300D9 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 18:14:29 +0200, =3D?UTF-8?q?Cl=3DC3=3DA9ment=3D20P=3DC3=
=3DA9ron?=3D wrote:
> Allwinner A31 has introduced a new memory mapping and a
> reset line.
> =

> The difference in memory mapping are :
> =

> - In the configure register there is a new sample bit
>   and Allwinner has introduced the active threshold feature.
> =

> - In the status register a new STAT bit is present.
> =

> Note: CGPO and DRQ_EN bits are removed on A31 but present on A13
> and on new SoCs like A64/H6.
> This is actually not an issue as these bits are togglable and new
> SoCs have a dedicated bindings.
> =

> Introduce this bindings to make a difference since this generation.
> And declare the reset line required since A31.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/sunxi-ir.txt | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
