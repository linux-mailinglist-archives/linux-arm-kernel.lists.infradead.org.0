Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1359C133066
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 21:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iS9edHAY1O6e0ifcuMMOjEMF6cPR1lYGrR3UwB4loDI=; b=rlCDeB3YoVdrHT
	M3pQQXWlEANKRde/mBmmZ+rtSNS/AfGktf/WtFFFok8cIX5TChnPSuMHtqbhQ3C8RN3POaLrTF5Uu
	sl3qPsyVBRQuaR6VjnOV+CA4CbVnmxPdb8YhxUUQGXSXR2o2E9uHx1wDwzwOGPrHksVITogDJPiPY
	4Apf+/3UYeff6E0H700oSIGLnpMqwv2y3CC4ARSNpOxcFrfXgQorBnRc5mLWbTzKpt3KeyVQt/A8e
	zHLRnx6amRSH7fyXmFe5M9egz8sTm+duTsQQYEvuOVlSmHh96KVPVPv8L7dLo4HVpcpj5C8e2Y5uh
	3rUGLmFQ+LOag9fK8BfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovF4-0000m4-9D; Tue, 07 Jan 2020 20:14:18 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovEx-0000ld-K4
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 20:14:13 +0000
Received: by mail-ed1-f65.google.com with SMTP id dc19so639329edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 12:14:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cj6OnC4YqYTNvb3pcEicnN54BEeDPq18S6hBvoM8yBY=;
 b=Rbfq4epMJsOnc1D5vkxgmqw/n0a1zL2dH6gYN7QqvS05hKHdxeXQ8OxKljIm00Nn8e
 lCw3dXxxTLByA7p1T/NQUGisRAkkNynayb5DRhkob9GrEaGwxQKfxDeBcREBuWWdW5Gd
 wELSTHt3BBOm3tzmDw5HrkdWdMXO7YqTOdlieu4AfjCdwgU9FBpFrgl+J1pf0x6QgBrw
 ikyYH/yNck5p1kNurHy0L19sbl0je3vmPn/L92Fi7/+OKidkEsrwFftqhE8SkVh/n9Sa
 8nFCPh3Icpwy5rpoXgOPhJ/DVxlSjTz6xgJGs0yetd26WpiUtKhGcK5R21+VB/sUvtyQ
 gUiQ==
X-Gm-Message-State: APjAAAWfLHfrp11rYdI3JM9+rR1A9bWIMIVLl3pK+zNXvzt6rZtMF1pk
 OoFfFKmBlvpRkSMy8Z1C5ag=
X-Google-Smtp-Source: APXvYqzcuGIUKdEaymd4zEMJHlaqst1TFGezEbWMzGdVSrPg5EGnVz+F/fGV2JQg1SdNlH9/iBz1cQ==
X-Received: by 2002:a50:f391:: with SMTP id g17mr1797161edm.52.1578428049704; 
 Tue, 07 Jan 2020 12:14:09 -0800 (PST)
Received: from kozik-book ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id f7sm12301ejq.38.2020.01.07.12.14.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 12:14:08 -0800 (PST)
Date: Tue, 7 Jan 2020 21:14:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/20] arm64: dts: exynos: Rename Samsung and Exynos
 to lowercase
Message-ID: <20200107201406.GA8636@kozik-book>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104152107.11407-3-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_121411_658681_149C6E67 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 04:20:49PM +0100, Krzysztof Kozlowski wrote:
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
>  arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi | 2 +-
>  arch/arm64/boot/dts/exynos/exynos5433-tm2.dts         | 2 +-
>  arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts        | 2 +-
>  arch/arm64/boot/dts/exynos/exynos7-espresso.dts       | 4 ++--
>  arch/arm64/boot/dts/exynos/exynos7.dtsi               | 2 +-

Applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
