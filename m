Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0033AC8BA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rNPmD+lXAjzdThS3GYHFakddstOqEBbZeXDZOTVrLc=; b=mLsmZ5r5iw9Raa
	76Bp92ernNzrY8Af2I/upR2V84cVi29mbraHiyKzmPBbmMPEJjutDLj5jLwdZp5f2SfVGlU+ahEDH
	1iaVMZWbXuz9o33iLj0GXj3kH6yqly9+DBWnmMXjXDIOrnBdBBRqVlRp9UMLohUR+znxvKSdNngqs
	883nt9j/R/ne7mAT3l5d8SSJ0XPKNKErocqehivlmIVMyHYAEZf5WVqZYIB1RWNxFirDrnkm/jTtZ
	URnx8dAmw8AltZK/cGs6IQAu396FCVdkM84c62nZaG9tJwfvHN16Xfty9Y24dhT0emTgVjZQO+FdC
	OZRcS4lUn7LSu9uu+a9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfsO-0004rd-29; Wed, 02 Oct 2019 14:45:12 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfpY-00039j-MB
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:42:18 +0000
Received: by mail-wm1-f66.google.com with SMTP id i16so7513487wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 07:42:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zjyo+RChyczV0/eg5T2YT/WXOsDMQxkL4AjVjOH/ZWQ=;
 b=HCNocqviiSoPMwz5Abgo+kjITkn5+1UNImoy61icA/+aQdP3m280RrAZ6k4EUXhj1G
 +dl81VmIKUj7xjqVLqRJBghLKHfVIsStzl7qRnDApfOgxzFxMDj9w7bJcR6KRX79sUK3
 PvgOY6T2BlcecNF3F60mLAwjm56+5V1VkjOO403be05LXmNVX6hbFKg07c+pV3xE05i8
 r0pEeouDBcJQPnB08U2rmxgUZnu/vjBqezLS1f3fvudVkMD6XykvyziUXR6Du3w9Vk/Q
 J3ccPXw40zkTFfGNw1hSARXBZSCA3O1o2LbAuOGsf5ui4bsKZVgMeR5u208sSsJTkJjo
 wzDw==
X-Gm-Message-State: APjAAAUYctBMrd52ZIaLCAOyJ+cs3exZaINUQcRflFi+0XlJZQ4qL1AG
 9O0P7DPmyLtSpeD+ehhZhHg=
X-Google-Smtp-Source: APXvYqw/q15Ex1aluyAWrCmSmp8ebyZKx9I38m8wSwWqcDT1DRpshz5FSYSiSjQmwsSdItJLt7i88g==
X-Received: by 2002:a7b:c152:: with SMTP id z18mr3112710wmi.70.1570027334811; 
 Wed, 02 Oct 2019 07:42:14 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id c10sm31210030wrf.58.2019.10.02.07.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 07:42:14 -0700 (PDT)
Date: Wed, 2 Oct 2019 16:42:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 09/10] ARM: dts: arndale: Add audio support (WM1811
 CODEC boards)
Message-ID: <20191002144211.GB15898@pi3>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130324eucas1p118bfab45306a29752bf4c1cfdd8f61a1@eucas1p1.samsung.com>
 <20190920130218.32690-10-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920130218.32690-10-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_074216_759851_0A5EE66D 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 03:02:18PM +0200, Sylwester Nawrocki wrote:
> Add sound node and the clock configurations for the I2S controller
> for audio support on the Exynos5250 SoC Arndale boards with
> WM1811 based audio daughter board.
> 
> We need to increase drive strength of the I2S bus, otherwise
> the audio CODEC doesn't work. Likely the CODEC's master clock
> is the main issue here.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1:
>  - moved &clock, &clock_audss parts to preserve alphabetical order
> ---
>  arch/arm/boot/dts/exynos5250-arndale.dts | 27 +++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)

This does not apply. Please rebase and resend.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
