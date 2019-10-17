Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44764DAFB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJuZDI8acQth4lqFOCwzmZeXPmFV6WYbRCRG9XKjLKg=; b=ZCgZk2sjA+LIo0
	REkdOiGX5flAHW4E2+OlrA1y6nHEhhpD/kqDQGrwaXO0pbnSE+fximFES9AjYu/a+clgapsbS3vwu
	CtBtb0tkIXBgUIYi/VgYwtqP6jnpMZutI6CYtkzsv4DcDPPMrGTiNsXPTEP1T2S8ZhQ0y1xDjydU1
	+urLV6Okla0lJPSP27IqIkS2abczHV44d5WXKxWYT5BHRCuOSvVDLF1nDSEtzgunJW8YDUEvqnv1w
	uJgj5wfoO/dMI23SiCEqZnATCAuXjAux8rXytk+jGmWt51RuRB+XYs+LiOGQSTBpdb+06+RlbIowr
	orVa1c0Pns5hLMZ3530g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6cO-0000nc-Mq; Thu, 17 Oct 2019 14:19:08 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6cG-0000n0-EJ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:19:01 +0000
Received: by mail-oi1-f195.google.com with SMTP id k9so2276705oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 07:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vBnB+M7MeMjHtBV/3UgIfk1bQ4OQXkYxZtSD9bLiIiw=;
 b=YMVqEPb8UeiS8g+id/sCoUUuZA0G/AoyO95Iv6ZnE9TmgibvHpMLqJnVTpiTrOAC8G
 DsfidMvTs55I5SSl3itjaaQZr5dbrHZ4HpnxWwNGCj77fvnAzKgu9YKpMswfzM0rUnj/
 +F/SFeR0SX2kiEVTqgFSJucq0gc1s3RnYDvNoEuLX2mbzGpsKU1UKhtpB9Q5DuLghhg4
 eN1WkVVIlOCuDXfvQkjOcINYB4Ul/+9wDoL4I4/ovM0qnpYVAw3Rb4HE2Uoq0CVNfZRh
 5MYY2nyKQwuwjEbi1SNI0Litv2WwXQ7zaRyxMadmbiHEed+x2X+FxH6RtyGFmJ5kTCKg
 6Tvw==
X-Gm-Message-State: APjAAAUciJpl9Iof6sCzcoa5UqI8r5vhbmQ8+1+TWzIme9V5AAD+Bm07
 EDzr1euiEuoXJ/CIig076g==
X-Google-Smtp-Source: APXvYqwaOguDWjHAKjE7AWREkIBbr2Yeq2vvJPgI6fWhcE6lyU2zTIaG3F0EzOUbwG9aXEHyckG1Aw==
X-Received: by 2002:aca:370b:: with SMTP id e11mr3318457oia.96.1571321938730; 
 Thu, 17 Oct 2019 07:18:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i4sm620307otc.37.2019.10.17.07.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 07:18:57 -0700 (PDT)
Date: Thu, 17 Oct 2019 09:18:57 -0500
From: Rob Herring <robh@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v6] dt-bindings: arm: samsung: Update the CHIPID binding
 for  ASV
Message-ID: <20191017141857.GA8828@bogus>
References: <CGME20191017092953eucas1p259c1e03eb2cb4d19aa48eaa2e3cca2dc@eucas1p2.samsung.com>
 <20191017092939.25899-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017092939.25899-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_071900_480488_7E5D4E60 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com, krzk@kernel.org,
 robh+dt@kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 11:29:39 +0200, Sylwester Nawrocki wrote:
> This patch adds documentation of new optional "samsung,asv-bin"
> property in the chipid device node and documents requirement of
> "syscon" compatible string.  These additions are needed to support
> Exynos ASV (Adaptive Supply Voltage) feature.
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Depends on patch ("8d0daa4c89c9 dt-bindings: arm: samsung: Convert
> Exynos Chipid bindings to json-schema") already applied to Rob's
> dt/next.
> 
> Changes since v5:
>  - removed uneeded allOf from 'compatible' property section
> 
> Changes since v4:
>  - converted to YAML
> 
> Changes since v3:
>  - none
> 
> Changes since v2:
>  - corrected patch summary line prefix, the patch moved in the
>    sequence
> 
> Changes since v1 (RFC):
>  - new patch
> ---
>  .../bindings/arm/samsung/exynos-chipid.yaml   | 26 ++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 

Applied, thanks.

I dropped 'select' because I fixed the tooling to ignore 'syscon'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
