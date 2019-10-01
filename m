Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7345BC410D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 21:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kH3FNY9uERtLLKYTyT6dMEDWupKC7kzEO/2KMFxOvmI=; b=USKTnuG8ZE0CxH
	jkWUqSoSFKqx3HPFZZR+xTsqP0yf0phf/328GnBMHTgmoxzV/c7afKUzfsd0TK8g3vvRCU+SlWSa/
	IKTVJ68c65lZiv7HLswgx2EfZxutWahRi1uBCY/DgWB+wZN7ZqEcBnJFq9sZjNAjTw+355BhfRPLL
	M6KAHYOWP+fbd9XxcPl7LJnAyX+2wU2z77pig6eKVGnhJFSyzKkUXvEsZU8euIN/L6zvIDcj0OquR
	0iPSneQiVGX74Qy6hj/HAkaDkFeNgEJxo3mn0Kjfymz2LfftS4fpnTRB0o0oNVLMsx4yF++Xm31Ku
	KHvKWvbe2VMdOrfak43w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFNtB-0000d1-IV; Tue, 01 Oct 2019 19:32:49 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFNt5-0000cL-8u
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 19:32:44 +0000
Received: by mail-wr1-f67.google.com with SMTP id r5so16862490wrm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 12:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ayUbWJsxkqD+mo0+GTLk1QtdaMyIPMQiVn/aJA6TKg8=;
 b=iBoF+IIhymJN2j6gTJPT8sAKYg2VvbOrTb/j2cUw3A5KQUpWgBa0t9m8DXW3/51SA2
 RuBO2F5Od/9qFb0Jn7IQzar2lb5f5i3PbU4TXQaOHZggIf8wOzRjT6FWQBJIek8WZf68
 WIDwXb18Ue1GXIncd2Fn69nBrqtVZnotSeIJic+Xig1wNnqidHaczp33ag2YETGBbX21
 ssRPmewJROFu6nKjpzI2u6OGbjdOWNbIG7woKd0Wqj3x0oYKd1fWu2gUVQ5tmHQRlChF
 42RdbOaRuOgVYnwIN6HbDeq+44Ike2TtUKcZz+fOno2fikAheC5aVX4Py+cf2mgxxEHg
 J2Rg==
X-Gm-Message-State: APjAAAXNKsJf0c+GDAxfV75dDIHxb0rjF2P9N/hzOYX5xTrBT7rDyPBx
 zWFX9WABpuJLgEpb5CSROi0=
X-Google-Smtp-Source: APXvYqwGswH3573Oay8QhO1I8alNz0mzREZr4xpskZM5gCgbs1QivesTORhlknY68JOJMjfr7TIqUA==
X-Received: by 2002:a5d:6411:: with SMTP id z17mr7835261wru.274.1569958360403; 
 Tue, 01 Oct 2019 12:32:40 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id f8sm2516442wmb.37.2019.10.01.12.32.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 01 Oct 2019 12:32:39 -0700 (PDT)
Date: Tue, 1 Oct 2019 21:32:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] pinctrl: samsung: exynos: Add of_node_put() before return
Message-ID: <20191001193237.GB1815@kozik-lap>
References: <20190804160200.5139-1-nishkadg.linux@gmail.com>
 <20190805162154.GA24769@kozik-lap>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805162154.GA24769@kozik-lap>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_123243_314489_F5AB15CF 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, linus.walleij@linaro.org,
 tomasz.figa@gmail.com, linux-gpio@vger.kernel.org, kgene@kernel.org,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 06:21:54PM +0200, Krzysztof Kozlowski wrote:
> On Sun, Aug 04, 2019 at 09:32:00PM +0530, Nishka Dasgupta wrote:
> > Each iteration of for_each_child_of_node puts the previous node, but in
> > the case of a return from the middle of the loop, there is no put, thus
> > causing a memory leak. Hence add an of_node_put before the return.
> > Issue found with Coccinelle.
> > 
> > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > ---
> >  drivers/pinctrl/samsung/pinctrl-exynos.c | 4 +++-
> 
> Thanks, applied.
>

Hi Nishka,

I am sorry but I missed the v5.4 merge window and did not push this to
Linus. It's my fault. I'll push it this time, for v5.5 (no need for
action from your side).

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
