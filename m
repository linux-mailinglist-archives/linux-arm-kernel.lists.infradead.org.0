Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB2D182883
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0TC2UM3R9w0Ltz/3EzoM6uZLy6MfJpjG6fwBoaN8yA=; b=Y79a/bMxHEZjK8
	HVm3nkM+94M4KrR1bVrRYsRgEGkkRSgSxi31P7tPEld4cgBiPRuPT+1yviOaHWtFxB725txW816R1
	Oi4l7bPHpDlzx5J5JX2Kh5FlTr0xUVhSPnPcpISadIhjMIkP9Ias1NUlTsb0/S4AhhV8VN+NzymnI
	T/JKqWVX6uG5VNNb1+eDL4LQrM8/8fzbSj5DAFbp7RrR0GWAbu8wYnBag6wKjAuB3ndiVGQk2dfW1
	f39tff3DxUjrMIuL68UXb5MARaqeZAmaGgY5AvwnddSA+iqZejPk3JdOmtBzyHkr/G8XlfcmEGNK6
	TWTVlFxoqqeGQmcfhfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGZ4-0002wj-3N; Thu, 12 Mar 2020 05:39:26 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGYw-0002vt-Qa
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:39:20 +0000
Received: by mail-ed1-f65.google.com with SMTP id i24so2007086eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:39:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GyEctpegj5STeTjjZ2lmve0OwmDxyLCYf/jINEN4q7Q=;
 b=hUsrE9zSQQVB5UxkB7ewEsqfLTFpZvmamy2o17KAqvGKZq/EzHMTgzIjYqEm49ej6q
 Mb0ddMWa4sAlAqVsFjmlOOmCHRSV62pM8OA4PEuW1+7NXgjMLkzc4N7ZGdPBdNKfGfvP
 XykNGQV5ikJf54dVUMcJ0mEvQPv3Lq+8xWH2RsJ0ObzzTCl5D2Hst9jI2i4rDp2ir88V
 KOrMvgDBWM09KCWzT4wQUYbjKKWyGUWrfNNESM8xKHqMgqL1AsDgWcg4sQc79FQB/5a1
 A0wd3KXtxFCNl5bvveevNutG+Jl2ySS/vmj4vzq3YWjG3o5Qhw3UcLt4Oda1JFKIJX9N
 LKhw==
X-Gm-Message-State: ANhLgQ22Q97nA3qNW18UYYrAKKsi1JYUaGGWl3SmEJAYEFBhYpjvmj37
 dLKH9GnhJlRumiq2WQfN9B01VKsIsrY=
X-Google-Smtp-Source: ADFU+vtee8/WSvRp5vn9zyxK5Tz//do5VdgIp0sglr5ZF6CI2s1UK+QXaDvG7xY5g4DJ3uEFSCssbw==
X-Received: by 2002:a05:6402:17c6:: with SMTP id
 s6mr6027921edy.117.1583991557010; 
 Wed, 11 Mar 2020 22:39:17 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id q3sm3955828eju.88.2020.03.11.22.39.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 22:39:16 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id 25so4688051wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:39:16 -0700 (PDT)
X-Received: by 2002:a1c:41d6:: with SMTP id o205mr2669040wma.122.1583991556192; 
 Wed, 11 Mar 2020 22:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
In-Reply-To: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 12 Mar 2020 13:39:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v65mTzDo3hBWydQtEfVs1hnw7URWA4HCWRfs3if5MeadtQ@mail.gmail.com>
Message-ID: <CAGb2v65mTzDo3hBWydQtEfVs1hnw7URWA4HCWRfs3if5MeadtQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 0/3] crypto: sun4i-ss: fix SHA1 on A33
 SecuritySystem
To: LABBE Corentin <clabbe.montjoie@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_223918_873331_C4908F97 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, linux-crypto@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 11:28 PM Corentin Labbe
<clabbe.montjoie@gmail.com> wrote:
>
> Thanks to Igor Pecovnik, I have now in my kernelCI lab, a sun8i-a33-olinuxino.
> Strange behavour, crypto selftests was failling but only for SHA1 on
> this A33 SoC.
>
> This is due to the A33 SS having a difference with all other SS, it give SHA1 digest directly in BE.
> This serie handle this difference.
>
> Changes since v1:
> - removed compatible fallback
>
> Corentin Labbe (3):
>   dt-bindings: crypto: add new compatible for A33 SS
>   ARM: dts: sun8i: a33: add the new SS compatible

Merged these two as fixes for v5.6, as the driver changes made it in v5.6-rc1.
Not sure if they will be accepted though.

ChenYu

>   crypto: sun4i-ss: add the A33 variant of SS
>
>  .../crypto/allwinner,sun4i-a10-crypto.yaml    |  2 ++
>  arch/arm/boot/dts/sun8i-a33.dtsi              |  2 +-
>  .../crypto/allwinner/sun4i-ss/sun4i-ss-core.c | 22 ++++++++++++++++++-
>  .../crypto/allwinner/sun4i-ss/sun4i-ss-hash.c |  5 ++++-
>  drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h  |  9 ++++++++
>  5 files changed, 37 insertions(+), 3 deletions(-)
>
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20191120152833.20443-1-clabbe.montjoie%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
