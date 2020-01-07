Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E4C133070
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 21:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLwSZGji1dw6i4S629JuC0dM0MKUWLIdBir/epR6dxQ=; b=Ch7O0Ea552PFJM
	EXbxebdrL7lofXDYyKkeR+Dwb5I+9/juLEZWGE3yJ1Fv0W4F98Zd5BeqFq8tK+0RNbjfiBcAgaQ77
	Dbq4f4yKNxDhYxovOpRoJmTZWSfDvqQVV2tSkko1SWcoWhIDrpFU/5INUhzwRNcSIsYsTZQGg+j2N
	jh9gR9IrZw7U8M1O95yhQT9myIYwFEIr+4xQhNudruhTcHHS6rjnbatw2AnuQnghvZzVgTFrpSigN
	HuYhtzeVpwxg+fYvXZ2T27K8VLzKZ0m8xC/IttoNdQDfIWsZJmg1hXN1tY0PZZM1G0bjPkVbA0nwZ
	ijN07aHvvn7EPHmgkmHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovFZ-0001BN-1L; Tue, 07 Jan 2020 20:14:49 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovFB-0000zR-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 20:14:27 +0000
Received: by mail-ed1-f65.google.com with SMTP id i16so669003edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 12:14:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3aS4Jy/hBVuzIbx1M24ZHNxqIgSBkpGASRqgDczsY+s=;
 b=NywUPJzUHzQNGJ+DwPt9qhDtYa6Ut3SPl11Upa0MkbXnGnd1IIWiz5ISgNl/xUnVys
 bbIcheWmS3NkB3NsWPmTL9AhDrsI5Y6NHTxFVZ1nRTr23hnUOiTRWWyAeyCY/S0/5Jtu
 XJW/8k3nhtFoK2NEMH2tYgdfZHt7DvaSnTLuOhJ9r1CkF2soTD/XcipROfWofxmVw8Gt
 Ryk/W+zNa5AzZmyNh9MO4NZGWwUTwN/W/9uEe9e/exE1Nx89caJ17ztRjplHI30eNYqN
 8mgjvmXIEbVwI5ij91IeRnm5w4ODGia/2Eh0cGHZpIkb04Rn5bNyOc5DUkOuJCBqP9+I
 USCA==
X-Gm-Message-State: APjAAAXsmj2Q0O5Mtxuw3oBywsBn4z1q/zZ0o/8T9ntiHURPg++IXqM1
 L0blMVsiHmrBNibBDcol7Gk=
X-Google-Smtp-Source: APXvYqwm8bN/J1cRIU0kGkZ/Ucp0J0RgPBy+IBYEsfHdkNRt4A0cKKb2/owPSuFmmfFe275aBXb7YA==
X-Received: by 2002:a17:906:5358:: with SMTP id
 j24mr1298906ejo.44.1578428064594; 
 Tue, 07 Jan 2020 12:14:24 -0800 (PST)
Received: from kozik-book ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id r13sm11313ejb.27.2020.01.07.12.14.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 12:14:23 -0800 (PST)
Date: Tue, 7 Jan 2020 21:14:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 03/20] ARM: dts: samsung: Rename Samsung and Exynos to
 lowercase
Message-ID: <20200107201420.GB8636@kozik-book>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-4-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104152107.11407-4-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_121425_844536_303E1969 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Sat, Jan 04, 2020 at 04:20:50PM +0100, Krzysztof Kozlowski wrote:
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
>  arch/arm/boot/dts/exynos5250-arndale.dts      | 2 +-
>  arch/arm/boot/dts/exynos5250-smdk5250.dts     | 4 ++--
>  arch/arm/boot/dts/exynos5250.dtsi             | 8 ++++----
>  arch/arm/boot/dts/exynos5260-xyref5260.dts    | 4 ++--
>  arch/arm/boot/dts/exynos5260.dtsi             | 2 +-
>  arch/arm/boot/dts/exynos5410-smdk5410.dts     | 4 ++--
>  arch/arm/boot/dts/exynos5410.dtsi             | 6 +++---
>  arch/arm/boot/dts/exynos5420-arndale-octa.dts | 2 +-
>  arch/arm/boot/dts/exynos5420-cpus.dtsi        | 2 +-
>  arch/arm/boot/dts/exynos5420-smdk5420.dts     | 4 ++--
>  arch/arm/boot/dts/exynos5420.dtsi             | 6 +++---
>  arch/arm/boot/dts/exynos5422-cpus.dtsi        | 2 +-
>  arch/arm/boot/dts/exynos5800.dtsi             | 6 +++---
>  arch/arm/boot/dts/s3c2416-smdk2416.dts        | 2 +-
>  arch/arm/boot/dts/s3c6410-smdk6410.dts        | 4 ++--

Applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
