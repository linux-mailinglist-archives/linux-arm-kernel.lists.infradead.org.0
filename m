Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC3C1C7AE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 22:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBEQIWefTyvxD2HWonqr34fWE1J+3sAt4pr/e4UQRvM=; b=QxP0nmAb5Fg4To
	QBJpyl69lmfVlnEKKi0dVDIMbOsydRZBmNIJ/MdJZVuk9yxRIy3DU2kr5cuLzhBzUZrxgtwGRVQP9
	VfldLkdEo37JYr9FS9xfs9gwxG6tM5f/GQ/ynx3u9ywAKkMtFApEYIWyyF5vT1cGNzKxSRNMXNhXO
	H/aldSGD8A0iu9akTd6aCgJyObFLlDN4jsduB26YaI4S5YoxU+uPa/jOVm7nqHX+OcGsYSgU2zDId
	d4yuDDFK+4MDNZgw5fBMnN9tPT3URfYC3YE8RvbXcVwWNoIVUkHv0BymS5ZeK8f3wySqTE2ekqAmW
	W0J4EpEXnsCrlTjUF/1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQJ2-0008EZ-Tm; Wed, 06 May 2020 20:06:12 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQIu-0008CO-Cb; Wed, 06 May 2020 20:06:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id e20so2426958otk.12;
 Wed, 06 May 2020 13:06:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B63JfAS5DnOPIn359Mu4SF2juiHItV8fI+NFsKVSGD8=;
 b=F8UCK/S0A6p3pRVN27NN29+0MLbYCeqpcJ9cjbTTK97QJm7EF2ZWuendxGbqYyurWh
 s8TJuCGPKhbZF2xeV3k8iLiBRLx9a9MuOg1dq90mV6cPsTJqoA0+LGYxF9bCTQHuFcO0
 1Q/aDqJUMCJhsupNYNBwi3WxO5ZYkJ1Jo0FfQYiyKFXLt2XsXXbZFP18rhHLeim3AFTz
 0C/wvhstmj1jKa+UospTbCK45KgyR2xGGoeR89Yji+5Ojo5pYHmdW3xdvrFxOOCQJaDt
 dsIulfU8XXKzNm4vHW4qhwoL4GaCwZ5jy9xSL2Zh76CbQthRIXALOh4XPEhnbsF1XvVx
 paEA==
X-Gm-Message-State: AGi0PubiHV4HFA36JLQcaWm2QK9pkblHxuQpmJDVp5VaNXjA5QLPEHwJ
 95+VXZKPOSLfWMkSEK4pnA==
X-Google-Smtp-Source: APiQypIici0Rg+Y4p7bwcYXH235wYgoJGR0SXXaIzkdixkSakfukZtIjV7CDVl+EVrcArRIbhPWfrQ==
X-Received: by 2002:a05:6830:1e39:: with SMTP id
 t25mr7785497otr.114.1588795560432; 
 Wed, 06 May 2020 13:06:00 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a22sm774402otf.42.2020.05.06.13.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 13:05:59 -0700 (PDT)
Received: (nullmailer pid 31500 invoked by uid 1000);
 Wed, 06 May 2020 20:05:58 -0000
Date: Wed, 6 May 2020 15:05:58 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: power: meson-ee-pwrc: add support
 for  Meson8/8b/8m2
Message-ID: <20200506200558.GA31434@bogus>
References: <20200420202612.369370-1-martin.blumenstingl@googlemail.com>
 <20200420202612.369370-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420202612.369370-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_130604_428955_D510D80C 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 22:26:09 +0200, Martin Blumenstingl wrote:
> The power domains on the 32-bit Meson8/Meson8b/Meson8m2 SoCs are very
> similar to what G12A still uses. The (known) differences are:
> - Meson8 doesn't use any reset lines at all
> - Meson8b and Meson8m2 use the same reset lines, which are different
>   from what the 64-bit SoCs use
> - there is no "vapb" clock on the older SoCs
> - amlogic,ao-sysctrl cannot point to the whole AO sysctrl region but
>   only the power management related registers
> 
> Add a new compatible string and adjust clock and reset line expectations
> for each SoC.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/power/amlogic,meson-ee-pwrc.yaml | 74 +++++++++++++++----
>  include/dt-bindings/power/meson8-power.h      | 13 ++++
>  2 files changed, 72 insertions(+), 15 deletions(-)
>  create mode 100644 include/dt-bindings/power/meson8-power.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
