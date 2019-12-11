Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B9D11BB97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oz6aCBZXhoxKYd7Slp1y7mKeIafrfF0RD5VBghuPbEE=; b=EGlUYBdHMU+Ijb
	jS/kAoTPzToxwc2k15KZMJflY63AxxdoKeFWH7GvIlobTQGqQxpdUeU+5Pe4Fq9ML0MKxfgdIu8Ru
	iYFFbBOSlIYF8RG5MvXP2tdOF3myZYPN14h4pw8lt7x3BsXrCSRgvuIBtd6oCmWfcJOxjwQOlz/Xv
	pWvqS2Jgdz8qBiH2y/POD57o5DEcS4aCGLi7ZOV8+KErtvGVcuqbz/lL8PIQm7/ncUBmT6uT6uL0o
	yC7maIxhaj3pB5XQ/xdaTHabL29M4HYbih2+yMoSSQphUcXFWyfHHW42o2OsLZJSyOA+3ByIDVw4Z
	/XFYnThIwYjsWHZh6fuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6bj-0002ej-If; Wed, 11 Dec 2019 18:21:07 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6bc-0002aP-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:21:02 +0000
Received: by mail-ed1-f68.google.com with SMTP id m8so20197254edi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 10:21:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M9sVToONd+fTEwhYvsJ/8k0wg86wy07LtQtX5S1NlxU=;
 b=nZRiC1NqMiFXdVM1XXhAx2BNGa9YPM5nODCWR4cA0yIByEIrDUIiuipw8AJhTY7c9B
 ET/gIDefSZ1++e8gbYjSoaWh+SxWfqtSpMHyOCOETJoVa6+pemV6DIOfHF6WvShnA60k
 KKkz1/DKhxZC1NwNyO9iHanYNAHRx1+EPZvhLAWsinOnYWI2HTSf3FffXf3ptJ0XAN/R
 eml4Dn+Zzu97lM4HnNkkOk4dF6dVq3NDIhk772qM6Bv7geANXOCNTAbJZyaMuOQhrU+M
 9U6ii5+KTnN2eKpZ2m+7dHGxs+4WXL1ma3Xp0JbiJgO+1w7ZLJHzr+BwNZ2Cx1cKr1A3
 mN5A==
X-Gm-Message-State: APjAAAWKeuCMUycz64/JaSu2Fy/cpqXAD7pnMluQIu2ChXcn5pJmGilM
 oY2MniNi+pIsso8WPAeGUsazMMt/
X-Google-Smtp-Source: APXvYqwVUE8J5FCuoKASkA48pjyAQ91Qg6Fc1R2pY0YltL8SDnG4jJfjRhmh/4RHa1sFybNMqZ48pA==
X-Received: by 2002:a05:6402:1659:: with SMTP id
 s25mr4814152edx.219.1576088459075; 
 Wed, 11 Dec 2019 10:20:59 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id 2sm65676edv.87.2019.12.11.10.20.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Dec 2019 10:20:58 -0800 (PST)
Date: Wed, 11 Dec 2019 19:20:56 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH 2/3] ARM: dts: exynos: Remove syscon compatible from
 chipid node on Exynos5
Message-ID: <20191211182056.GB2427@kozik-lap>
References: <20191028152050.10220-1-s.nawrocki@samsung.com>
 <CGME20191028152059eucas1p2b48166c35f61dfc8edfa99f54434e8ee@eucas1p2.samsung.com>
 <20191028152050.10220-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028152050.10220-2-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_102100_770532_D553DCBC 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 04:20:49PM +0100, Sylwester Nawrocki wrote:
> The "syscon" compatible string was introduced in commit ("cdcce1ee977b
> ARM: dts: exynos: Add "syscon" compatible string to chipid node on Exynos5")
> to allow sharing of the CHIPID IO region between multiple drivers.
> However, such sharing can be also done without an additional compatible
> so remove the syscon entry.
> 
> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  arch/arm/boot/dts/exynos5.dtsi | 2 +-

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
