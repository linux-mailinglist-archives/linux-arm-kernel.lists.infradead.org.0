Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CAEA654A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/N1AfmIS+QCPOS5grSMyeoZB/QJC87cRh4v1/cpSDEk=; b=KEVdS8UgtMfBTm
	KIrvvn0OeG28ItpdRBaABEomyF4eFLYy5W6N/DEME7pwkgelF4jxRwSBSXSBDeeirIGQ72PkMg0+0
	ImVm+47mqiXVmDTbKFdNLnfbQod3MekRzcpIqcgEOZK+nPMCb/Qt1SnbUkZwgNZidKvSxHWR2yakM
	FLTJs/PWwlUG4Nj1qwCy+SA0/JX1WlfoX7dhLPls/S9qmIQSTOAis/Jq6yhlPU1hP5tImoKEkg4iW
	VWewcE4htRhoovOqBbcQfKs8LkJZcpjUtcL3iZyK+65agNmCMLpUbXxSHL2Iypz283pNItUtswSOZ
	b8K1DhwbXPScNDJkEF9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55Bi-0004as-1Q; Tue, 03 Sep 2019 09:33:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i55BD-0004Hi-B1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 09:32:53 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BEE123400
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 09:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567503164;
 bh=N19Rsm2Plowanw5IPDslRmZ/3k2cHzpGI8qCX6YsUV4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=j7LgIpG91QoJCTR9UK0WtxBN/k/aKeRquXF7LSfSR3O5XLSl8nq2FZ0yOvDBL6wGR
 Y/ccrj0iDNE0zLvaNGaxqIleAtJGvwcVFk5HidpyVJrpa/E2Qe7clq+b1jxOQFQRX/
 Yq82HJ20DnuKVU2kqfaY50ChXpBwe6gY8SGB6Qrc=
Received: by mail-qk1-f182.google.com with SMTP id s14so15166008qkm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 02:32:44 -0700 (PDT)
X-Gm-Message-State: APjAAAXY9v1psGvAd8fKiFCDdbcaMseo4TMXG13Q6F2zWb2R0e4y60EX
 XrTgxJslDF7rBhdmi51T7JQpX3RqEavFLSah/g==
X-Google-Smtp-Source: APXvYqyKDZuIwFDrRc3z4ZslmmdloGpwW7OeQmoAyPuObEV639fe/KLbd1vsGji0BxVufXTxiZj/yfPO078OIFstJWA=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr15623206qke.223.1567503163440; 
 Tue, 03 Sep 2019 02:32:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190830104502.7128-2-guillaume.gardet@arm.com>
 <20190903073300.5927-1-guillaume.gardet@arm.com>
In-Reply-To: <20190903073300.5927-1-guillaume.gardet@arm.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Sep 2019 10:32:32 +0100
X-Gmail-Original-Message-ID: <CAL_JsqJhgU3qLV5SuqYpktiobYLh0up8eis1G42mpNrqu-kB+w@mail.gmail.com>
Message-ID: <CAL_JsqJhgU3qLV5SuqYpktiobYLh0up8eis1G42mpNrqu-kB+w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpu: mali-midgard: Add samsung exynos5250
 compatible
To: Guillaume Gardet <guillaume.gardet@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_023251_518951_77CFAFD4 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 8:33 AM Guillaume Gardet
<guillaume.gardet@arm.com> wrote:
>
> Add "samsung,exynos5250-mali" binding.
>
> Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>
>
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
