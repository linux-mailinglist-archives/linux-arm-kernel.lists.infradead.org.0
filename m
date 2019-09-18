Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3C6B63D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5YLD1Ruds4BIDkYJw4rLXc5DJLYN3b++24Hrp239l8=; b=rHnExNV86teFh+
	iAo9pu6F9cVovCVd+oxd9Kp4uatu5lUVDfR+dnQfTxm85vW6CGmoV8cGoI0buySIwrTWImmpbvrYq
	e4fuFctfrBDj9LBb50L8yUbWCLK4NZ5MKQRwZNDmT9cldAJ6m1Lsyqv0BmBpC1QJ/CEItbzZpmiY1
	Hd+s+67DATKUQzZNx+puwJowS4sRx1BhdAZhigcoQqGOeyaYEdm32yY7gBmNXrV0vGSUUmNntZ69G
	SzdeyxKReDB5jO/xLJlvbBB1JhNqJ8zJzkEraj8fG3AwBa9zjNj4nfEgi7yg+5J1xg+x1ObQ1MOz2
	FCYU9j3Aw9iZaqIBNoFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZX2-0003ni-Iw; Wed, 18 Sep 2019 12:58:04 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZVN-0003Sg-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:56:22 +0000
Received: by mail-oi1-f194.google.com with SMTP id t84so5828457oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:56:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9z2gkQffuOGMGL78pWa03VnRChChH9T41AS/dVzZHSw=;
 b=g/f/kvcIjnBNN/ljWVky2OUGoe4s4d0jxrVMj8ihR8KiCYWKojlGBFaumX2ydi/2k9
 BCVYDCBkH3CYo0svRufntn++GNXcPkd4gGWxwzEON9cGmPVTiq+5u/Q5onSj+ee3291E
 pT8psJfN8WrWPcw4O7L+4uWAG8UkcScrLbbf43/U7Ofbggd8R/oGb8X5r8jU0lT3LGx2
 tBRla0484xyn9e8TUFNg7QUfmEwoKc4Pv39CnlHAKRSHyvvyPUq9rkp4x5bWA4KEbXin
 PHDG1FOeT399/QI3FsiVKJ7erh1ioW6FjPVn085BNnHrTVgLG7qICCr1Hp8NWvY06Wni
 TzXg==
X-Gm-Message-State: APjAAAWebCpzV+9wKkfnNBzOpO9MpbQnNjC6FPYchgrX/Fx/8m2gP4JA
 Qo1YUz4O3cfKoJ1jrHRAKQ==
X-Google-Smtp-Source: APXvYqxyqJqx44Na/6zs9v/Q7DffiYnZflmnCo24kvOLEqFzYYmo99uC8KAM0TN40xe5W6QKO83t7g==
X-Received: by 2002:aca:b909:: with SMTP id j9mr1957210oif.4.1568811380352;
 Wed, 18 Sep 2019 05:56:20 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b5sm1769265oia.20.2019.09.18.05.56.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:56:19 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:56:19 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 03/11] dt-bindings: arm: samsung: Convert Samsung
 board/soc bindings to json-schema
Message-ID: <20190918125619.GA29595@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-3-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055621_449107_59671A8C 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

On Sat,  7 Sep 2019 11:19:59 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung S5P and Exynos SoC bindings to DT schema format using
> json-schema.  This is purely conversion of already documented bindings
> so it does not cover all of DTS in the Linux kernel (few S5P/Exynos and
> all S3C are missing).
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Make Google boards latest revision as const.
> 2. Split secure firmware into separate schema.
> ---
>  .../bindings/arm/samsung/samsung-boards.txt   |  83 ---------
>  .../bindings/arm/samsung/samsung-boards.yaml  | 165 ++++++++++++++++++
>  .../arm/samsung/samsung-secure-firmware.yaml  |  31 ++++
>  3 files changed, 196 insertions(+), 83 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/samsung-boards.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/samsung-secure-firmware.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
