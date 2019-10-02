Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E16C48C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 09:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrHum9KUxuawJOdORNza9RHtwgEdb2UgKMj/6+XS/+8=; b=ai4NFpooSEiKpN
	8S8VT3Dxq/XE8Jx/mOnQhMjIYrPmzao7cM8QOHsS2TnjZ2vQWiftGP727U+O2/CTjEIP4vKhNo1Xx
	9Q9UPXiofwYds/GQepOi6yNPd1lO+bq7dUQW39GCq6D4r4xYDWoJoZQO08ohXEj0OM8/UykQhQ2a4
	o/azV9Rect2PpP4HpW+0IpmTxfH+++tjbhjLj8rWzZ3WfMbrc6o0TKeFESIKG7lMAsu2qN+Z7FCiL
	M+5h/9PyBpHyUVGcQi+LUDt7tllcjKfa3s8/5DLtIYxeeSrk8EuIajgA8Si8GT2W5WzFo47lC+jKb
	iReZLAkycI5likqI1enA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZNK-0008HR-Gw; Wed, 02 Oct 2019 07:48:42 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZNB-0008Gn-Hp; Wed, 02 Oct 2019 07:48:34 +0000
Received: by mail-wm1-f65.google.com with SMTP id f22so5821045wmc.2;
 Wed, 02 Oct 2019 00:48:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uUwiwhPBSc6eZHDkUDyAm/N9CoHzCdtlpM4L3BcW6Vs=;
 b=j0U5Zj2r3TTgvpmgegpoouCOGI/KM+ULkzGUMuo4VxlvAb5frB5rI+eQLLoHqm9/Ho
 o1IwSY3YXq2yX+85eHJfaPnd5WWje7ZDwb75yhWgzZcVrjEh+NNvSqBm5m8oOKI3dwXs
 M96vEaTMITRlqTRVrh5YSQ6CZuBR11E1hi5ya37zoiWZfcCbSW/ZwqVAfRwkWHwuasql
 ea3goeZxCjrv4+61nA4xCg3zJOBZq2qAQOTw4i3+pwUgk1sUm+SrCCvhOlRHEhKmdFSy
 6Nu6GQ5hoqWDNKXEXEawuSAEm6ErjRGaVuaWHYZwB9Hqq24djXey6MNH2sRtuzHmzYUS
 MXxg==
X-Gm-Message-State: APjAAAXkPalBAXDftHdG+CI41rP8j3CyWeeT0vTlhX02UFkQynM2fy40
 J/NYTmaNQnddg6L8fUlSMmFIlezc
X-Google-Smtp-Source: APXvYqw/hPJSvkHymOuwy555wjGEibmOYvrrxzqTT/bFUufzfpe7zbAT7CsUQbeP3t/GED9kDBYwtw==
X-Received: by 2002:a1c:a984:: with SMTP id s126mr1828304wme.26.1570002511763; 
 Wed, 02 Oct 2019 00:48:31 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 207sm8289456wme.17.2019.10.02.00.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 00:48:31 -0700 (PDT)
Date: Wed, 2 Oct 2019 09:48:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: watchdog: Convert Samsung SoC
 watchdog bindings to json-schema
Message-ID: <20191002074828.GA6221@pi3>
References: <20190920162124.7036-1-krzk@kernel.org>
 <20191001222109.GA26050@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001222109.GA26050@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_004833_592318_B9D81247 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 05:21:09PM -0500, Rob Herring wrote:
> On Fri, Sep 20, 2019 at 06:21:22PM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung S3C/S5P/Exynos watchdog bindings to DT schema format
> > using json-schema.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Changes since v1:
> > 1. Indent example with four spaces (more readable),
> > 2. Remove unneeded timeout-sec description and include generic bindings.
> > ---
> >  .../bindings/watchdog/samsung-wdt.txt         | 35 ----------
> >  .../bindings/watchdog/samsung-wdt.yaml        | 65 +++++++++++++++++++
> >  2 files changed, 65 insertions(+), 35 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.txt
> >  create mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Hi Rob,

The generic watchdog YAML/DT schema is already in v5.4-rc1 so this can
go either trough you, or through watchdog tree.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
