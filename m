Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AFC133077
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 21:15:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOnx0CNf23zYWL5J0JV9No2LDQtpHPd1pCHHs7ciIIU=; b=ENy2CDrUjZgkbG
	701wXFEZ26fp0FvNUH3LAtj60Q/WPXZjLSRFb0Lvmr4dNSt5EO4dYcLFWilklF6Ld/2S7Rcb78u5B
	I6Ziz3cLQuZZMPH1DjxKCgrQkZ/fK6I10kIaNohtCIoIQHys1DOLGBrOQGDvqy8jjbDIbH1qa1n0u
	ZGWKTLsUc3ua2bw1OcuJ+qUKHeZh6/n132aFae6HSCEHd74sKHD+87JCQaOg6fuOhGkMcstgZwJ5p
	6d/RYadTGUCCWHCf0pPQSmsNBAYeI3zlTjZm+uuAhgBZv3O4zveG3rnve9+2s7U2dNEZ5EkgSQZUs
	fB/ySxQiU3gGKUkyNNEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovGE-0002vW-RQ; Tue, 07 Jan 2020 20:15:30 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovFk-0001XK-Q3
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 20:15:02 +0000
Received: by mail-ed1-f65.google.com with SMTP id r21so703937edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 12:15:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RezWGX4/KzRhjUL8C/w2qwO9LCJwafyvIRxk+EkpPaQ=;
 b=WcgWa1XUOYUfNw65W5+pItE3wmCYsM5cn08pWWzZ5lxdHY49pbpHIMfoS+WfWNEK7M
 dXJVaWY0QukJA+piCmK+7i59Ah2ZJ1M2uJKMrPMu67DEHU8j2lshYNSuWGIIX/8kDl1Q
 OpAgTuqtYm7jFT/w+tL24RTvpsfi/otA0AyT+TWpZ9NvT4IOk/cZJ4nUBGHl+bs1mTDQ
 1VScI9PtmGk6CuMYJPna0nmCgmS9ZZx/BEahdx7S7MecJyPYgJ01YbpP25fC+59RMU+I
 MzfVjAm7pl8LlBmuWRvQRWJyejGIX4d+5swyrc+umgXTItCCb0dBrMgGkMPYqsHryJp5
 LWaA==
X-Gm-Message-State: APjAAAVbADSBXMeDaYEdUKfOJsQlYS3C5pKQmyzCcgfZ8FUdnKmt71Le
 0Mw101Ow4A9wKbGyjZAdcMPIWqnP
X-Google-Smtp-Source: APXvYqw6e4hhOXHOzwm4STWo1T2YNVmlHVOtMiLI34CH3pgDXDvwEbqN3AaLJCk+BtY7g6rkS+l7hQ==
X-Received: by 2002:a17:906:2cd6:: with SMTP id
 r22mr1163948ejr.313.1578428099440; 
 Tue, 07 Jan 2020 12:14:59 -0800 (PST)
Received: from kozik-book ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id cw10sm10946ejb.56.2020.01.07.12.14.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 12:14:58 -0800 (PST)
Date: Tue, 7 Jan 2020 21:14:56 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 05/20] soc: samsung: Rename Samsung and Exynos to
 lowercase
Message-ID: <20200107201456.GD8636@kozik-book>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-6-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104152107.11407-6-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_121500_854156_32C46B55 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 04:20:52PM +0100, Krzysztof Kozlowski wrote:
> Fix up inconsistent usage of upper and lowercase letters in "Samsung"
> and "Exynos" names.
> 
> "SAMSUNG" and "EXYNOS" are not abbreviations but regular trademarked
> names.  Therefore they should be written with lowercase letters starting
> with capital letter.
> 
> The lowercase "Exynos" name is promoted by its manufacturer Samsung
> Electronics Co., Ltd., in advertisement materials and on website.
> 
> Although advertisement materials usually use uppercase "SAMSUNG", the
> lowercase version is used in all legal aspects (e.g. on Wikipedia and in
> privacy/legal statements on
> https://www.samsung.com/semiconductor/privacy-global/).
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/soc/samsung/Kconfig                 |  2 +-
>  drivers/soc/samsung/exynos-chipid.c         |  2 +-
>  drivers/soc/samsung/exynos-pmu.c            |  2 +-
>  drivers/soc/samsung/exynos-pmu.h            |  2 +-
>  drivers/soc/samsung/exynos3250-pmu.c        |  2 +-
>  drivers/soc/samsung/exynos4-pmu.c           |  2 +-
>  drivers/soc/samsung/exynos5250-pmu.c        |  2 +-
>  drivers/soc/samsung/exynos5420-pmu.c        |  2 +-
>  include/linux/soc/samsung/exynos-pmu.h      |  2 +-
>  include/linux/soc/samsung/exynos-regs-pmu.h | 16 ++++++++--------

Applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
