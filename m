Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B620E99E89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 20:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfmAKy8srCtAzAeG8jdq1LVU3FAJOmw+baxoHqLK2S0=; b=UhU1UZ6brGESyd
	Io7ooPuFBIG++384SoJQMXfPrLW0m2lXt2yvsMzXUIf0oDqQtI24HNKGJw2TEgKxdq1O9xsu6ngph
	cPVj1btSF85AvvTraI0hZFLsbjOZYSsFH7+i6od9/6n3c/kPBlaCTK/CNzYmu+yolBKhJ13H8jmG1
	I33osZuTUlVZ3eK8it6B/+aI2K6LqB5lW5vzDFgX+XzkuqdB4zAoRlDYKZAma/ANV8aJNUgtsBzA4
	9KFd587SJbktXjvsfJNz+OPehBtUuN+0fJ8LpqgZ2x5yOodkG0H8cyOoOubw2a5KA5wysTBt0kay2
	ytkY//3gGeMdKiuRgN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0reg-0004Ty-QX; Thu, 22 Aug 2019 18:17:50 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0reW-0004So-9U
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 18:17:41 +0000
Received: by mail-wm1-f68.google.com with SMTP id i63so6690441wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 11:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Nmm5xSsdg+3DXP0y9SGhbKr0D2Shw9KeHFgV8+AhiWw=;
 b=mnMeYUK6IaUeeLkOOiI+2Axo4GOkVNvBJ5149vk4oSLYDEDK5nyrcrt2Q30pCVBwZk
 h1kBAudu6OWID/3v8ikanW3KZMX6sIhG2QIe1kC+UEhRdBxw4gmb71Ft7d8olASDj6yz
 ItStUzdSct5aCI5f7tRFFTBZZfhuioImGcfT2aLiHeQPHiAInXBY3vgkAF3Zbrwe6v6v
 3N6KhC3c5Hv1Vab0y3KsrYqRXUvEia9hKWRwX2tl7fw12bMeStqQ98i6pIO5M5VO6rf1
 kVorW7lMsIrFFIwaRRST++lrzC9BfYMdK0zUEBHje5CnJuswjX3OAp4Ww3qWA+9auHze
 1T+g==
X-Gm-Message-State: APjAAAW96xzQHEbKDJWtyGG/pX3tjsXekqTc6RqEj9KDWZXNfOWqBSNR
 h5KOK+yfjtMn0UPbcl21QSY=
X-Google-Smtp-Source: APXvYqyu9GgxoCnAVdYS6e/5Pmk9monb4AeTFRrT53+dWP0KeFzokynTAzs8v5+CLNpGA1a1MvCqvg==
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr387786wmh.65.1566497856962;
 Thu, 22 Aug 2019 11:17:36 -0700 (PDT)
Received: from kozik-lap ([194.230.147.11])
 by smtp.googlemail.com with ESMTPSA id c11sm216987wrs.86.2019.08.22.11.17.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 11:17:36 -0700 (PDT)
Date: Thu, 22 Aug 2019 20:17:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2] soc: samsung: Select missing dependency for
 EXYNOS_CHIPID
Message-ID: <20190822181733.GA10900@kozik-lap>
References: <20190821150711.31398-1-s.nawrocki@samsung.com>
 <CGME20190821153936eucas1p22cd1a6105806cb5ad7b43252852fec05@eucas1p2.samsung.com>
 <20190821153926.12297-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821153926.12297-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_111740_333032_F93F47E4 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 pankaj.dubey@samsung.com, linux-kernel@vger.kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 05:39:26PM +0200, Sylwester Nawrocki wrote:
> The chipid driver uses the MFD syscon API but it was not covered
> properly in Kconfig.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  drivers/soc/samsung/Kconfig | 1 +

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
