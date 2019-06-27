Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C3557B5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8F10RvnHtRP76PTfVRK3ytxVIrTIsYZfv/gB3NVdRLQ=; b=oOuQi3XVQWo1jV
	TVtYJZXQJjj6Udhk8tosdwgIIb/oI5LK0PqQq7rGU8VfMdwLEH6iBWvIAJfDJONNm56eModkQH6ej
	OWX/6vxNyz4z/qBoVTwP1SZibMX4xZcd8MLeoO3cjcDJBIw5OTKPggKSj/PjnsyMyLQwP0nYHpdUI
	JDHZnFNHE8vnH1qn+j+BpDKa5rSskW8X1BkY5AWvdZWVN6vSGq4eyDqh+x7yh9KOtugA6bfcdxnBV
	3NPFZ4nDgccSWa8Gm7YVGmpIQ2P7ZbaifEYt8QY3ztPLgITdkx2roggQeFqvxH8WpLYCa7P7iAIRD
	dwqVa8HQCiw5koLO9yWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMw4-0006rT-31; Thu, 27 Jun 2019 05:27:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpY-0006ep-Nz
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4b7/ubf4vkLlp5qWHvN/PAs6ZU1PXb8yUcJaPeC8pO0=; b=O3TtIHYs2u496NgVo2A7OUspE
 RzHHWAuyobrM0e50bn3PYhdDiOnOfMmKayO90EB9ZbXgOBmNowH6zh8Ppgnp9OHlXA3D/njYqOSxG
 YHUVTXsCe6yTMfYIQ8fMn62yl6Y8TrIWk8Az6h8vbyKSC0DMJTaiNAF2c3Di72Uiaw9z6Ce5WKYc9
 AnYTxODwoGVWIqG/qGFzgN5IIXGYVJlNcQj0+09DeoP4QyQsQGesvatWTr2dMk6TwVfmAV4axgiZD
 lBvdzkbP7J8Sbg0cEd2IV+fFoYEe5qf4HDYSWI6TckvpkhKebP8WwlyjG36o0hDhUjFq9VfxfTkNB
 j6gRqRuuw==;
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFo-0003cN-5Z
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:35:18 +0000
Received: by mail-lf1-x141.google.com with SMTP id a25so471943lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4b7/ubf4vkLlp5qWHvN/PAs6ZU1PXb8yUcJaPeC8pO0=;
 b=M2wbLo02ZzOrDWU24SdeShWDHCx/81xRgD4TyEGEyUnpFg4i2x2UzC6RrRixuGgxJK
 1dMZq90FPT5UWZr/T5V5V8AOs2r8b5xCJZ39dRIIMLgW8LZAS9Zw90eau7rwEcYgYJTf
 BUAQRXASfuNPwsMKAkTiS9rGTmNPErAKZntfcOW1/VpVBhrjJWxmTZ0EGXxkEpZ3IkFW
 xVkbU+ZlqNwtIq2DrZwa3S3UB1W4/7rSRWCkNAX2k4sgM8x5OOdtOZtvC5k0JhDcCHYd
 wln1vAV0vaSAPZdNYW0ns/XFjj8lEqc7y1hdHAvQ8bMk9NmhIZUwZi9Ik96Yd3ZOxC6v
 jhqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4b7/ubf4vkLlp5qWHvN/PAs6ZU1PXb8yUcJaPeC8pO0=;
 b=e5wMaOLvC95J1u4fn2fmE60xvko2Ah8JVlCyEZ+NLILUILn1vwLiZPh0mkRraMBzfh
 bqxPOC17jM484dLjmbA0Nvac3yA5RVW6Rj5DiFCoVU3723w0d02MwojdeJ7ClvPaI/YF
 wNtcytwFdJOJ5SGxcdfSKudWOVBEjAGxq/fxezFi8MefNjCqPEQAZXsawjblwEirOOKc
 9o4W37aTflOsFArhvHCPpK2cySBhk7qp/2kBnXDDNx9V/+i2/hgvn5MphJ7N4mzJWLm9
 6n5p9lUFRJSBGnCJQMPKoWv9CLvWX1mWN/qxtIi+fAIGmtUXc4gjvkdz28aTbxEODDcx
 WdTQ==
X-Gm-Message-State: APjAAAWBMd2pvzqDFxd6Wi4kLaedV3K6jwgLdt33MyMW52F8xkPO6lUK
 6/LCwqZW0dvmjWEeXJ6KNWhnEA==
X-Google-Smtp-Source: APXvYqzEmmjAqWcvkiOXn6f2836spzpdCg++jHRsx5lH/kBQMzgDxjtikA2wbs/Sy3cv5yJt0oSAPA==
X-Received: by 2002:a19:ed0c:: with SMTP id y12mr605234lfy.191.1561602834392; 
 Wed, 26 Jun 2019 19:33:54 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u18sm106626lfe.65.2019.06.26.19.33.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:53 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:23:29 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 2/4] ARM: dts: exynos: Second pull for v5.3
Message-ID: <20190627022329.cr3iungll7n3r2sp@localhost>
References: <20190625193451.7696-1-krzk@kernel.org>
 <20190625193451.7696-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625193451.7696-2-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033516_226866_5361E55C 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:34:49PM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> On top of previous pull request.
> 
> Best regards,
> Krzysztof
> 
> 
> The following changes since commit d2cac68e0d9b038da7207c0b63e1399c4f9f60c4:
> 
>   ARM: dts: exynos: Add ADC node to Exynos5410 and Odroid XU (2019-06-11 20:37:21 +0200)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.3-2
> 
> for you to fetch changes up to 13efd80acaa4cdb61fde52732178ff9eb4141104:
> 
>   ARM: dts: exynos: Add GPU/Mali 400 node to Exynos4 (2019-06-24 20:03:42 +0200)
> 
> ----------------------------------------------------------------
> Samsung DTS ARM changes for v5.3, second round
> 
> 1. Add camera flash to Galaxy S3 boards,
> 2. Fix PMU affinity interrupt warning on Exynos4,
> 3. Improve regulator configuration on Odroid XU3/XU4/HC1 family and
>    Arndale Octa by disabling unneeded regulators and adding suspend
>    configuration.  The suspend configuration brings significant reduce of
>    energy usage in Suspend to RAM (e.g. 120 -> ~7 mA on Odroid HC1).
> 4. Add Mali nodes to Exynos3 and Exynos4.


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
