Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6826C62DE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvLSKrDB1Jzkv2dEgf9pj9T0gs3jxADroLN72l9113Y=; b=QVpSIp4qXCj+O2
	nk/Ai5p0kRWeP/2nPNlllU7kTe+osOOQMTC44iKHIZ3eztqC6dUh5VxedEQYj1eVSauKU5WS04XcU
	HQJdY/qlTustsHFOXhw3sZAHUkhAr3ZAe2yMn/4Vj7/KYumIDDMy2LDLYAuyywB9ZA9+HGC/yJyfY
	4kKDunWjSTavEPhrRARFytYJcafZtS3dxM21yvW4OKE1PZKd28CpyaDwzZ+yQp77+2XDcksABJnpF
	nyAlHVK1uQyswltPQm/mw5sZq+u+57PMQ4u3vwRz9bwh74WL/NZ1IHF3uhpmk6zo0VImgAeVYrMwi
	3fL+Q/g9pgGB76hu9hhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfXz-0008CH-FL; Tue, 09 Jul 2019 02:07:59 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfXk-0008B6-8W
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 02:07:45 +0000
Received: by mail-io1-f67.google.com with SMTP id k8so39860321iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 19:07:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=sOFyghnaWCkeP99kSdegfFUM8v38APOnZEvvVvq8Sa0=;
 b=PFSQJaj3RKbDT2xrKxdVBaObCXm26UpMFr5B7igjLkNtA0CQ0kRtunh6SBOqk65S5c
 PdWAEK3rnuW1YOBeFEDIp1tQev2MJk8h1heGcjiewzo7xMG2khcQEnu6eWjbp2JmWQLk
 Bmo5XJfsnFm5Bfc7S0NmWQVkBgg4b0j4tgZs4zzywfpAggorW2Uau1pbFKkEZlT1ujvy
 zCVICfaOne73hg2hQFKJMJp6MMXqfe7KYztW0V+M63TAi9UgU8KiDturc0G9YTC0we/s
 yg1owwArJfDD55eGLwWyin7EGfdYCT7uNVKn4A3Eiy8z8f3E5gEK+42QF+qmz0OQATVL
 7bGQ==
X-Gm-Message-State: APjAAAWUGBNROvH0AwJ14EEocyNAhxQmblOxy4C+p0bvuvGFA+Bb49iB
 VmE5Tgi1/Xd+XqsPCr+23Q==
X-Google-Smtp-Source: APXvYqyVrio6/VxZnlDP+8LCmVQs+p5SsnEoXO5dtLDm0cb3oOaffvZnChay6QuFgHKpKN1JAYYShg==
X-Received: by 2002:a5d:91d7:: with SMTP id k23mr2331578ior.163.1562638063383; 
 Mon, 08 Jul 2019 19:07:43 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id k2sm15535104iom.50.2019.07.08.19.07.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 19:07:42 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:07:41 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 01/13] dt-bindings: media: sunxi-ir: Add A31 compatible
Message-ID: <20190709020741.GA21447@bogus>
References: <20190607231100.5894-1-peron.clem@gmail.com>
 <20190607231100.5894-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607231100.5894-2-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_190744_299895_841CC961 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Sean Young <sean@mess.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  8 Jun 2019 01:10:48 +0200, =3D?UTF-8?q?Cl=3DC3=3DA9ment=3D20P=3DC3=
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
> Acked-by: Sean Young <sean@mess.org>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/media/sunxi-ir.txt | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
