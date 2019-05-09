Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCE2193B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 22:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFGavV9fyCQJlVaSAjGbteGdcjFcH2YkpZC3jryxSEY=; b=H1hBhbQvnQUg2m
	81I0ZqdzOhU4EG8z27d+dSdm1LB0u8hUyePBrusCQcSOH2/fTKnRECfldMzLdpUp7h4BqPUjS+rq5
	5ZlvDmF45yJFaIyYDWbQ6zgBwud+8LKQPx82FwQdLXCXWA5lF2fJwPbugAJisglzdI1HFm5I11VL8
	olEgd3vzLkvqcxcoySm/0oHdQ1SLjsSX+HtAd5O0z4uQs5s8l6niVrVaxfTu5Q3WXquNXvX0DggDA
	WhUO3InJqy114WIpCbzr2VlTbAE+fb8gYvG2QmjTF/bv4/iZjexxv2oc3gncCGXlOJE/aJhZ2HrB8
	uGXyqfZIPfJ/MRZ0K7Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpuj-0005cz-5M; Thu, 09 May 2019 20:45:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpua-0004uo-HB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 20:45:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id j20so2559979lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 13:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SkBBPXeIB8LW8cuFnZ2MQROYlV60TjMmGBfCT+tOtok=;
 b=HI0yY/svR6KkVqH+UM6r346wXsZSI8JPRk+WfV2nqWPAPmUO62xlVGxqsnRItjYuok
 BHJRVsaK8xjibTpUXCsQwxmdzjEJ5hG8F3el2HJ1St4itGwD8519+EYd2WbUmeRx5eAR
 mTyGRZ/at0SWK+SbQKx7VDI4iuvSe3j1ed0Kh/V8oHRqfeDcB+tPJ+Zwg8Q9dlZJhuOr
 4ccvhD4AwFnTcrPQvOkc+jEgI0pK/1XtxMO91ujJQR+z778HNeSBDQ9Ne7/Yo7CWKHqP
 mWKcmQ3kka3VRKdBhSDHVgrZpfWELOlE7Qf54aen2VrGPd6U+gnJANcf1ezQxafvJ17g
 4+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SkBBPXeIB8LW8cuFnZ2MQROYlV60TjMmGBfCT+tOtok=;
 b=sxGVQ8hukT0+izxlLIVkwWBz6ZZncR12xjhXFSAChNYm/DuHZJ9fkzfq2195XMzVjF
 ZqojRuJx0TSFOuHTMfP/3esiYqMfCcW1I4rMUBMGhhQi+2mEH7gtkm2BuTR55yc/8eBF
 C+aMIQFFxtBsdL3bQJ/7rDS5eUVRg2pj9U4CeijFJ5tbu8TnMIb6o6WC1bbJlv/W2JZS
 bXObtN76wztfDoLmV7i/khNIZUGCZpNGl7i3YVteiGW8Y8vWsORg//nYUPxnEKC8ikwZ
 FHDAzWS/VBkV+ETApbXk/5K91ojjtXCgHsMt8l3oFzfbQerx6B0nezBJjoEmN2uGMEtv
 ME6g==
X-Gm-Message-State: APjAAAVmX3Kmn1QoCg3xlGsL5eCWh+OzIXzVXLuD03LnO++SyINrPXNF
 eMNDF/TA0acFsG5raK3UG/rdnHqbacF3phSOQnDn9rs3
X-Google-Smtp-Source: APXvYqwJ89daYgRA/3X/6OD+ICirWwVWtRBr/yc//fC2OgaJJdviuvByTSwRjP68U1zu32Rbexi14IilIIrOE78Pac8=
X-Received: by 2002:a19:f243:: with SMTP id d3mr3494821lfk.168.1557434702732; 
 Thu, 09 May 2019 13:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-6-ard.biesheuvel@linaro.org>
In-Reply-To: <20190430162910.16771-6-ard.biesheuvel@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 9 May 2019 22:44:51 +0200
Message-ID: <CACRpkdYGzOCAecgG=MkFRJyVEK9sfSXHq7g959TzDvXNWqA-Ug@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: add Atmel SHA204A I2C crypto processor
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_134504_578997_807A4947 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Joakim Bech <joakim.bech@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-crypto@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 6:29 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:

> Add a compatible string for the Atmel SHA204A I2C crypto processor.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
