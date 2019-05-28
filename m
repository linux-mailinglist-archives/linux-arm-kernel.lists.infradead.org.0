Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73952BDC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIUYU0qLklJxUzMJJjnWysre2/VfZyiiJtLUQmhxa30=; b=AaE6YgvskoaSJA
	9OVPNSqoUzj+/B3qoMKrjzAC9xNY6J7e7AmKR73Hpv3w3whtqy9MbxXRE5+LgSPkgsG+Z/kv5PyG1
	JAqsUjCI07im4LzIPJA9uLmpHhvPKScxkIC5lM6poPn8U9aK/UJ664TWpZtRfsUDzB1Ncpwdw4/FX
	upLP5H8mRz7PHiSiUfiNcBzabLgfZbpfaUIWMwMqQevRb2q0eMH6HfkMImitVZ3IZdnIsTvMJTy7A
	uDt2FIeGCGXE7/ICL51Bwcj88oCeD9uZAM/w0FMHvXnUq8qWmqQPbQ0SApvQ7s6UCf4ZXsPN3dVWT
	IuwtY/N8HXyzxSQyQD3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVSsH-0001nQ-OB; Tue, 28 May 2019 03:34:05 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVSsB-0001mt-3t
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:34:00 +0000
Received: by mail-ed1-f66.google.com with SMTP id g57so14645295edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rvzFBTjaElqc0TlPvT5ZP31SDS65m0GKWeHyTHmPU+A=;
 b=U349YIX3jXTU3m3B4FZQbMDqe9Z4SWsAFCvRZDBnEFfUsVUNNdFJyWVQ4XvIsOWXME
 YkWFMs+2uWL7NLTvqUyL+sG4FMTg1rosqkRVZehe/Tpmy9dAwjTNMF7a6hAhF6uvnZkc
 eoOkBN2URN35AwUEDtRCgGdDbg9yLXxGPyIazlQxPOjegh5VKh/ZuVI2Nq7xhQh8D8pP
 7ksjauP9D8Fyv9ObJHuG4TnMer1Prua6mWXCtaw6Lr+ttQ8jr3GP9O1+RADf0ubWD8r+
 79K0SinHLPHaeJ1tNV5dlcA8kEBBsKJTinCUHfd+0FUwjwRl2OL7EgsfEHgr82+nC26T
 QYYg==
X-Gm-Message-State: APjAAAXaWKLU5FGceSIATKziHQ47N7TvBYpx0sH53KKJtNNE+mcPm90c
 U5VdE6DRVPja1uM4/Br2M+KNy0AHr0g=
X-Google-Smtp-Source: APXvYqzyKnoIxKiY/WWN/FS8kQ4cixqAigroHzcUwuAUQ8s2NSTq7K7hZXuYreNFCqnznZjOMVvhhQ==
X-Received: by 2002:a50:b854:: with SMTP id
 k20mr125763518ede.224.1559014436172; 
 Mon, 27 May 2019 20:33:56 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id a17sm3758673edt.63.2019.05.27.20.33.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:33:55 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id d18so18515817wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:33:55 -0700 (PDT)
X-Received: by 2002:a5d:49d0:: with SMTP id t16mr14186512wrs.324.1559014435157; 
 Mon, 27 May 2019 20:33:55 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <bd3004d8e2d52c96abbc6cc9ca51b8fea510446a.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <bd3004d8e2d52c96abbc6cc9ca51b8fea510446a.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:33:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v64qDdrejF_9p0s+S0jXj=JuCx1QpiThniurrPzg3ua6ww@mail.gmail.com>
Message-ID: <CAGb2v64qDdrejF_9p0s+S0jXj=JuCx1QpiThniurrPzg3ua6ww@mail.gmail.com>
Subject: Re: [PATCH 03/10] dt-bindings: rtc: Convert Allwinner A10 RTC to a
 schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_203359_160676_093F7A46 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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

On Mon, May 27, 2019 at 8:00 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The older Allwinner SoCs have an embedded RTC supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
