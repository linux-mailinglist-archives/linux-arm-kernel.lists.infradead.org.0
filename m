Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82FD2BDE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kicr6eAOSI+wFpvR33HdpktNn+tKqx/mTcWqwniF6Zg=; b=E7jN1176mBWFXG
	FhhzB+uPfsVWUCYaBzi1o5GVF7tnbGg4345hFCKfy6bYH4HCPO1eKR4ECI63ae1zdsfemtUpP3LDG
	QyGTFW6pgx60ZcGV/ZZVczMhjIPmwdWQEnq2MGMznHCj/vS8o84XIERT+wBKj6KeaIx6+FK+eLXpD
	u3vdtQGpqZ1sQ8BIQziPVjWgVEIRhl8/d8/0fY5isrbVkGNmCkg9ogL0ac8BvMC65kwCvIunm8vHJ
	iGyRBvRc6o5SGN24u/nWC3dVN7V92WUTF/IJxPQhTC3OkFPvYxSDvORSNLAm9a6jk5OLQhHhINiro
	07ffIZdLgWazZaMgumuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVT45-000795-BZ; Tue, 28 May 2019 03:46:17 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVT3w-00078J-A1
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:46:11 +0000
Received: by mail-ed1-f67.google.com with SMTP id w37so29502961edw.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:46:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4SEwU4Hy3cIfuDLFnw9kA0Guwr5r77r5h+wWMUlBBnA=;
 b=DKA/UyqvszoIHCE5Vsmc4HqrxYkF6yRmAcMfZXEZ/acrytNM+DUjMTKz6F2fzT5pZw
 epON/bXC2IM54LPbY6TuJWKClcrYdNTSpsVQe6puoZD8hmlpT6q7fPwrxx5oPxMKscdG
 mPVJzsKcwOCXbXB34BQI2BcQSFJTUgSx0WeTALP5/VSc5g51v+2NChb9Q2f50kgkNh/b
 ZZ/tr1PzrVl6zonz94niWYL9v1cJHi66OYeynDPT9pG5LwGHrJhSoGUA5/4IQ57Bnb3I
 YPQ4Mayw8+4fVIaIVg3DTR9XGhrCZzxZiY8wOoNdMC2EyGOxIH0rqqpEJ8LGscKLi6qE
 uOCg==
X-Gm-Message-State: APjAAAXi0aF8H/DXxuCXcI7WQJJK3VvKVOuAQYERS4l8zCVPeLB904Ag
 kihL2lFABzaWooEmnvef2wXpen4R0rY=
X-Google-Smtp-Source: APXvYqwyGJMZtDUcM2156LZ5qcG0qW3ThCs9hMRIjlfWujJRhVyf8SkxKT687yyUuNqvX8hC1hjXsw==
X-Received: by 2002:a17:906:2acf:: with SMTP id
 m15mr83702912eje.31.1559015164918; 
 Mon, 27 May 2019 20:46:04 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id r14sm3868840edd.0.2019.05.27.20.46.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:46:04 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id f8so18552377wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:46:04 -0700 (PDT)
X-Received: by 2002:adf:9c8a:: with SMTP id d10mr23572420wre.9.1559015164084; 
 Mon, 27 May 2019 20:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <8be02c659fe4191dbf1d3c8dcb1ded8ff92e2dda.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <8be02c659fe4191dbf1d3c8dcb1ded8ff92e2dda.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:45:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v66M=VWdN-MTAe3qN1B8vwNHjfN5jwjzZBkqiCh7xTvnzQ@mail.gmail.com>
Message-ID: <CAGb2v66M=VWdN-MTAe3qN1B8vwNHjfN5jwjzZBkqiCh7xTvnzQ@mail.gmail.com>
Subject: Re: [PATCH 05/10] dt-bindings: rtc: sun6i: Add the R40 RTC compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_204609_514439_DB2004BB 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The R40 has a pretty different RTC compared to the other SoCs we've
> encountered so far, the most important difference being that it now has
> only a single interrupt, compared to the previous SoCs having two.
>
> Let's add a compatible for that.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
