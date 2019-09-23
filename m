Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4966EBB0F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPFAqvTfIXoDnuZhUQe0pFroTzp6kcEhVIXokdHBcFI=; b=bALiXl48UISWOd
	mTN8N/JKxpB+jv9snbaVs+KCiS9CZ+wWJeGFhZU0FSln1g4q6yL4A7Tpzr9RzDsj6nTD4EuN24Hxv
	BVl91s+6p3XZSBkE7FGZjrF6e7InoiGLguBGeChYVxuMblYbBqqN2jdtHQXTZWyzXcZHlvRC6DPqU
	H/3DZ/hb2qlnGT4M8N1XHlTr8yvS1GTc0+cgIArgoNm2yOxe/gTuIkRkGhBpSRya2pHfL7RqliL/b
	Bf2K/rwhYfttjGH8ToglNMMBm1oVthd88bIYAXkr00oHH8rVIxnlMPa6XI46R9kxujIhX0xyhO1sZ
	o3bNm5WqeB3aM7Qnca/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKKa-0005m3-EO; Mon, 23 Sep 2019 09:08:28 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKKL-0005kw-C8
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:08:14 +0000
Received: by mail-wr1-f67.google.com with SMTP id l11so12999552wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tmMoz215KHiHYt4Ll2Ro4BC6di5AJcGWo8A7DQ1dHmY=;
 b=HGRl91J8ZD1uRXo+9OCOufS3BTu8trYOlZ1h85V1upyCQt52JfgCIJdj49D2Q1uOMW
 RbMSP0NmwiRtmOyfq4UTxnEx7rF98fCpvm8PIRiv1XDoxqGJj3BdSQRybk69ixGp3Stj
 VQ0NWNHgzdJjG6ukjPHc+h2Oyg3Y7FcA6QqGufDfYiU1hflhTC12K5CfaNmzwhYYsDA2
 jTDH3v5jrWUMtzIKH/weZQPEb58toR+84S0Uq/jlHUYqbmSeLjgjlIed7rSsRjfsNvzh
 41Y2HhbZn0xVi0cQQCwcxOycVQxaQVXsk9Fm4FxdPOYNQ96fM+eo6k69PMOfIRWLvJWz
 3ycA==
X-Gm-Message-State: APjAAAUgStOz2ZJj/v7sSelLFp7HPrLN6Sy9X1to3JUkLrbjo4aBlIOI
 zp0ENz6ZQrBk3iKf8zQKw+k=
X-Google-Smtp-Source: APXvYqxxz7xafqgEfOSFCn8V7BM7y8g8X0JT9J5mDxENqXlljKM+EhY7wNQyUH3m4B3AzLz2RugrKg==
X-Received: by 2002:a5d:49cb:: with SMTP id t11mr12649575wrs.158.1569229691633; 
 Mon, 23 Sep 2019 02:08:11 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id a13sm21942066wrf.73.2019.09.23.02.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 02:08:10 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:08:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 02/10] ASoC: samsung: arndale: Add missing OF node
 dereferencing
Message-ID: <20190923090807.GA4577@pi3>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130315eucas1p2a31543214fedcdfe86196f176f554a35@eucas1p2.samsung.com>
 <20190920130218.32690-3-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920130218.32690-3-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020813_411415_1DD6CB08 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 03:02:11PM +0200, Sylwester Nawrocki wrote:
> Ensure there is no OF node references kept when the driver
> is removed/unbound.
> 
> Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1:
>  - rebased to beginning of the series
> ---
>  sound/soc/samsung/arndale_rt5631.c | 34 ++++++++++++++++++++++++++----
>  1 file changed, 30 insertions(+), 4 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
