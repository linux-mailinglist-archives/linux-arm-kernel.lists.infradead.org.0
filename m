Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141E1D91DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1+q5vKXnnKjtdZURaEidK4TeqfGOtJItAMGHT0Zl3w=; b=CFh/CBX3q79ED1
	BHwWI2QOWBcegkNJfGwcGmLZvLwy2A8bJKwcHfYpwC5hUI7E3zybw1l1c3IxunM3zm99qHk9JflJn
	DXmw2vmfOmorWC1u5xoJYNm8G7tiNk+8JRmr4EDnR94x55Piu8NJtkAME7xcfAs+wTBaHH8x+zpgO
	7ovDZ867PvWnziuaImowG1acvhlZUOPqb8Ip51TFD4ARitpzdVMW15VgS7sdf9sdTWNCppJdr2nTv
	YHo0l34kLW0ElUS3zjzD/G+cR1oQ2BYT5CeUvyufJvQdcN0C9ZicWGfsWuEepdb2fKKleu9VSFOst
	jBWkjympEHPMmXPcfh1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiw1-00072s-Vm; Wed, 16 Oct 2019 13:01:49 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKivq-00072F-Bm
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:01:39 +0000
Received: by mail-qt1-x844.google.com with SMTP id t20so30572000qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jnE8lBSLY3wNnqyY4G8WlYMgwsueTd/EoUksCVuD65E=;
 b=BAyU5dplrFadafcQV8wzsDzA1AsMPOKwhq1dJebWhm730gL3t0WiDFQHtMnfwYBf5T
 4Q3eSK6Qq4ex1FD2/Q5f/ZdJRQSYJ1upnqdfq3Y9yHAx9LPaJFHmMZqahRBIUgFvjzG7
 kyskQIhOvG9uaorqTV6HcCGjVmLrbZ2w962+QDCXzJ0IcaDaXG4uCWBfNqNI7CzZMpMm
 KfYK2f7WJ819fImO5EARWvL30f98knyldXDIOVxA13Gm0P7QnI/xQLDZmA5o0ZP+3CEZ
 7FaSVGt6ptwWaA+rQepImmf1YT97mShCV2ZnEtliGHHwPrzqBbDrhpGaTFsBaPbXHvGt
 4Rvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jnE8lBSLY3wNnqyY4G8WlYMgwsueTd/EoUksCVuD65E=;
 b=nvPl3GEGdB2/daTSdKqNIRx7fqfsOAQwCHTI42yKXOZ0C0Y2qaIPPq71AlYtBEA50C
 f81OXtu2xYiEwYMHpKFtkIaIczBeuz6zoaYTJ+zX++QWrdGAsQezNe5qus/I5GjhJKjA
 kwMWsPiyceh8OjPN/GPCDcFfzuyuoH7cq7VmII6BoqjrUQ0pn0N2t0UoLYRwS9cmT3Va
 Nwywcab/OgFf8sgwakPqcZP7e+Ux8pzbTc/U2C/jNKlqCx0NntMzTGgSs0eM2n4JQ8tS
 lRUNCwgsIG57Ul2gvzKU5nu2hNpQ39BZbtMGXUsMu4tPaSwcg4s7RF0Wk2lfUVO+pKLR
 tNCg==
X-Gm-Message-State: APjAAAWRC55/of8D17vPizaVAQyCgeAjG6XHLewXVi5c4ZZBozI6zCvl
 7z3j0PJERJebrfNux6d4aIP0ahfX8cH9mKsCVSOq5g==
X-Google-Smtp-Source: APXvYqwW5pJtOTNrnLrO03T1G9+Fcg/NuG1gN7wmIq4pJ8cxsc7jBg6TJfq5ooHjs4qjHlf1A3fmee9vr4kyD9kiJvg=
X-Received: by 2002:ac8:2a38:: with SMTP id k53mr13105733qtk.387.1571230897593; 
 Wed, 16 Oct 2019 06:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-7-ard.biesheuvel@linaro.org>
In-Reply-To: <20191014121910.7264-7-ard.biesheuvel@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 15:01:26 +0200
Message-ID: <CACRpkdZVTG-kKp0790uFU1-SRsq5tZ1ibPqm7hoCqXHJVYfuGw@mail.gmail.com>
Subject: Re: [PATCH 06/25] crypto: ux500 - switch to skcipher API
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_060138_409006_E0497D7F 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 linux-crypto@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 2:19 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:

> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
>
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
