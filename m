Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B4B63E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iABjj/bb2bvY39nzGryW0OeqCqOMEKfcHcMJBmAzBLs=; b=fng42PY5wIZIkl
	VQ3CJJ7ml9fcw/nMEPrtF8Owwt3FjqPjDQTcY/PJHvKEBQBGoPxP5bwmRguSaFD7VThWCHfv7u8id
	f5WzyWiz3ka/7kiTTUdAxlHX+TDbKKzBavNgCt3Xuclv9Datm2dkKhnfxeu+19uolaemspXgzUz/j
	ttyJocZuycpEzCeTd7l4QKsIQu1yJaRnFYxnc/9eDCXbPonI57jbt0je5azH34qLsWAKbOFNb8+8k
	FPAeyx0Bjl2xsXMWB/1LbUVuYibMJ0Y2zMGj/ycB+KgudYKF5BXBb4Mc3bEvtyNfztFTwIgbr8cOO
	FnaU9OD/ZQKcrWxmJqAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZYG-0004kc-GR; Wed, 18 Sep 2019 12:59:20 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZWk-0003rx-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:57:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id c10so6205241otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sZlslgtiFxMqojw+XUrTC/HDPQuvlA94agJki/73aPc=;
 b=ektYtENT0fagQaumUDKyvBnPe9qLEIBPa9/rFv60XQjsGRCQJICffcjW92r/+gIvES
 YCV5YMCwHOO7D4ycEQm+kQaBN5cQvLNYFNbcU3MH/q6ysUsjFygIShBgxV4DgdsgMygt
 /fe6FpDGGfyAnw/mYPP82I9tySQDRK5ZqCuroY/9bVlfKSqWMFEIuLMlH554SceSliT6
 gJwAc0Z356hWw6M6ck82ZuQExoWG2j2qSWR6bqvdA9NbhAFlKXbAAnLwkV5eDsspqXG3
 WwshI92cku/RGJL++9Ju9qJwdTb3ISqguY4WZ7tDXDpgtHIDpkzWNxmTIR3uFNiyCHVv
 vCzg==
X-Gm-Message-State: APjAAAWTdBXHn8OdASMvMvdV9dLg3kuQQBr03/Fxnexj2TONQJuEhcnx
 L8069qnlrzb8FVKPsT0pnA==
X-Google-Smtp-Source: APXvYqxAUad55lZRPH+OnFwtM1Ee0BRdn+Zwa1RD0ynMPv4EPCSUXSQNM4bNX8Nhsplcu6KDI8xt5g==
X-Received: by 2002:a9d:4582:: with SMTP id x2mr2593436ote.159.1568811465379; 
 Wed, 18 Sep 2019 05:57:45 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 2sm1562037ois.43.2019.09.18.05.57.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:57:44 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:57:44 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 09/11] dt-bindings: rtc: s3c: Convert S3C/Exynos RTC
 bindings to json-schema
Message-ID: <20190918125744.GA391@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-9-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-9-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055746_403774_FCF00323 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Sat,  7 Sep 2019 11:20:05 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung S3C/Exynos Real Time Clock bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Use deprecated property instead of custom select,
> 2. Rework clocks and clock-names matching for specific compatibles.
> ---
>  .../devicetree/bindings/rtc/s3c-rtc.txt       | 31 -------
>  .../devicetree/bindings/rtc/s3c-rtc.yaml      | 85 +++++++++++++++++++
>  2 files changed, 85 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
