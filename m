Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A06CCD304
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KD2yx7DY2DbrcE3YOhLBt83eGhcJpHzF86pBdPhUUw=; b=EylCwcpMr97JJA
	N5uLer/dJGqIGJJyJgH/5knXsH0R/W9vq2wqdUTYFBCCVwMEZxbUy3KcoBEPAzCG+Avq+GZhNO1vx
	zcLQLF8AbUgQF8zEiiRh01d2XIDBamtUKidHnnZtdL9lRTkvAfEvDcA3na6lwSrQYwTESyrk4gM0/
	xTkO2ef9tX6Pl6fb/vCin6dRHmnuJe8RGN9A1Cqz6k0M+foXJI3hQM2S/dkT1GlhYgTstBAyjWB59
	YwN07ShPP04ISIsrh9evakvnDjxYtWvtONY2uQWjnI0CESVtOYsihfCVzxras71zYci/EpXUN/qEs
	9AYpbpU22602nNPxQHbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8lA-00086V-If; Sun, 06 Oct 2019 15:47:48 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8l3-00085z-C0; Sun, 06 Oct 2019 15:47:42 +0000
Received: by mail-wm1-f67.google.com with SMTP id p7so10068981wmp.4;
 Sun, 06 Oct 2019 08:47:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SBpRb6qd+48zQK5uPLn0YvEluIoUY9o3FhFhGA6TXtY=;
 b=ajwMrKqGGs+MSWgpQfn/qD44uavgYXu08qxi+o2dPt2G5n0vFweYdR8/OJ3wLzaK/f
 f+NL/UMT7eg+pOjTs3b6umOrQaKw9eWOP/jHhopdSpgSrFZb+cGuVaPQLRSKJGD0RDiH
 RBm8UQwfG8zDvZIVpobqT5Ut3LGcFNJHu1Bueovpg1peleJFfqLMk0myApAvJkMEBdMj
 U6RUY6nR9YxxE7+hPr6HdfU2bI2+776A4cwSjrrqU6ou1Ccg+lZHZltTV1s0FC2vcDVu
 NnnwoTC8Td+xoyQvcM4AaEFr0hXuxU3ZmBIRNZjQsGQGIslGt9OQAMDnerUd2YDrdX8I
 Mdhg==
X-Gm-Message-State: APjAAAVN3nktyLWNOJZstNhsKVJh+2GsAZj4W8SKIS/b6rlV99K1v/fI
 BuekligCLJbg9sUr1ACAi/w=
X-Google-Smtp-Source: APXvYqwiD5w33vuIYv9624AWG0k3vsCYtE8uO59mkpTJi1G/TZQDv7OS1UJvxH3zuwZ0w6XxIwuUIQ==
X-Received: by 2002:a1c:9988:: with SMTP id
 b130mr18139392wme.164.1570376858781; 
 Sun, 06 Oct 2019 08:47:38 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id o22sm31539882wra.96.2019.10.06.08.47.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 06 Oct 2019 08:47:38 -0700 (PDT)
Date: Sun, 6 Oct 2019 17:47:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-amlogic@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 3/3] ARM: dts: exynos: Rename power domain nodes to
 "power-domain" in Exynos4
Message-ID: <20191006154734.GA29365@kozik-lap>
References: <20191002160632.11140-1-krzk@kernel.org>
 <20191002160632.11140-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002160632.11140-3-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_084741_409730_1409EAA3 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 06:06:32PM +0200, Krzysztof Kozlowski wrote:
> The device node name should reflect generic class of a device so rename
> power domain nodes to "power-domain".  No functional change.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/boot/dts/exynos4.dtsi    | 14 +++++++-------
>  arch/arm/boot/dts/exynos4210.dtsi |  2 +-
>  arch/arm/boot/dts/exynos4412.dtsi |  2 +-
>  3 files changed, 9 insertions(+), 9 deletions(-)

Applied.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
