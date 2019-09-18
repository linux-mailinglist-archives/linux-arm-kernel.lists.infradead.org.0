Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB97B63F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJFm+5zEKGm8Ts8/NoYxW+ejeigzXy73sJHRX4Lt/Ms=; b=gSWN1I+Fe9VhoL
	ezsN20EGNMgF5i9HzBija4b+RHJsl70mA7xkvf4zVjw2KeST+BWkm0KkDrD6OXgXkRakIEDToJnWc
	LT1S3PCxmCIVnJoleYFl21S5GvRsY4deH0idImuspoBFRzjfIlrD/7JmgO7+HUkJjcP9nqGTH7UOC
	SBTSVkjgG6mykSahAtT37oJ6m0bmEi66erzdHz8NzGy+l5vIpQBdAeNVGhRbIGTARSkdZ7i6YzkJv
	Jdp7wh3QY+jujQ0bOg/8zS6Y7HXn3OKBDnoWP6HSXGV8+zfYheWGfVWuPHHr27x5v9spGw15EWqdS
	zmXbNPsQ/WntYzD0cPYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZYu-0005LI-Ea; Wed, 18 Sep 2019 13:00:00 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZXC-00048O-6V
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:58:15 +0000
Received: by mail-oi1-f196.google.com with SMTP id t84so5833457oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:58:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mYqnfe+Q5UPF2ZJK02xFnTLmHoKTFGKAyM7F+uf5uvc=;
 b=he1LYN+M/hRt7EQNOUVOr9c6MxjmfXjDZig5m3FVh9TJ+AiR6oEzC3CrMw1qIt5zz/
 d1/0mBf2fn6CGk0F2xFvtzSwiByfEr4/tMHGnhNinHpcK3zbkiLGROpj6baKrx/NCGkr
 EUohotTrK1B9DddFaypEQSRtsBqogmeGMt1iEg8AAskuUkKu29nXD8tTBjPD220Y/15Y
 UWGw8EmWK0kyzaPiVAFcBPCmBYjjxHY9OqF8KM9mkgxBNxEAFZvIVH3qtbNjcM3sC5M+
 iqY5U6q+wukXZwPPtn5XsXN1QwH14wo448fejdacnnR5b5WZYCSymx8dlMGtEvZF8bai
 JFYg==
X-Gm-Message-State: APjAAAXbd753eEcvXbLsWWCY3ux5VVr/FM9DQOfv3pnau88Ddkv1GXnG
 GDq6+FFtr7KeYERuQjg9BQ==
X-Google-Smtp-Source: APXvYqyIMXemZoMhP1eYExCW+fV6KT9V9khvoo96S9b9SwUVlaKABqkERkIMDBERveI5ZHm9b/+G0w==
X-Received: by 2002:aca:6057:: with SMTP id u84mr2099934oib.29.1568811493414; 
 Wed, 18 Sep 2019 05:58:13 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t18sm1813962otd.60.2019.09.18.05.58.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:58:12 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:58:12 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 11/11] dt-bindings: iio: adc: exynos: Remove old
 requirement of two register address ranges
Message-ID: <20190918125812.GA1494@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-11-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-11-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055814_440134_8F791D6D 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Sep 2019 11:20:07 +0200, Krzysztof Kozlowski wrote:
> Commit fafb37cfae6d ("iio: exyno-adc: use syscon for PMU
> register access") changed the Exynos ADC driver so the PMU syscon
> phandle is required instead of second register address space.  The
> bindings were not updated so fix them now.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. New patch.
> ---
>  .../bindings/iio/adc/samsung,exynos-adc.yaml     | 16 ++--------------
>  1 file changed, 2 insertions(+), 14 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
