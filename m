Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72831193B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 22:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SQzSquFNduXqnKFOpVp4kbzgVTbn62E22tss86dUxY=; b=f2d7ttR8EuFWjZ
	KEfXR+sczeookYTiNH2PHS9eO+iUf+mj3vdvDxCJ0bFgCejw/8yskKJylxZh9XgHHol3hNhS822mN
	khkLhmauVb1kO/dc1G8uDi/3hb3UmnBtUhArt76mnkyvGZzMb4WQdeJZTs7EtkzosCVWch5JNPGh5
	bPVfllP+ZXflTEFvkdCtncFpt7ynQQva7WLJxjTBFr0UxJ2xmgByFZoHCbxy1f8mbGycyRsVzYSue
	UV8zMRLsBM6hzHnocLsIycv+ADiuByQx5fmMmRklqezXYIxAo/YbWZX7QsaU4GDBOgafuE6bAwUt5
	4kxdTBRETUltDXea3W0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpts-0004JM-Ih; Thu, 09 May 2019 20:44:20 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOptl-0004Ip-JP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 20:44:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id 188so3200018ljf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 13:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lvtUJJb0iNqVdb4vPqW3DNLHuDDNoFxuTr9vcZlmfYE=;
 b=VzIrI3ecqwSM6jYZXCRsiUQ0Xos5N3/XKDHR1L6BP8D5KTKSTCIfTLD7sTzJkVx24J
 ROqzT0XU3prbYFbFjoateKWuP+jfKR+uAy04H/Y2WWDmAqbopNoZ+tr75j5yj8m4d64x
 O3Y0srfxkF9qu31TW9DyDUuC5NVqbaKBYvXq9yHOvER52jrsureK5UTYUrnR6c1fMq3R
 m+XQtja9jpp3j1wruPc3exF8F71rZyZIyjp50Er/6LLRkmb5qeH+tVhC4kiO5mPVjx/5
 OjAjjGcTZH/UjLpGFXoAQsHbR6cdo1W/PN4GaDmdxWoROCBlCprbbbaDE8aGIXpjhnHY
 sRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lvtUJJb0iNqVdb4vPqW3DNLHuDDNoFxuTr9vcZlmfYE=;
 b=tdsVwHTGc6mLVNTCiPHw6//mrQ8J8b0c5kSgtknj0S4dalH/pb+QFsdh2JwXdykMXb
 kjZPVtP4I3JaUxZc5bj/K8yQNMslTSJfL3mh2o+CGxlcwVRxzQishkA/NcOBWS1iLbky
 spr0EPah0DzJejzyU516uUiQuSYSgTRfOU+FzrXx4jiral7KGoI5y3ftwFg88e1ogqUa
 wGJT3am5HJp3GK6ndgZe4ROKi15iCRJSBa9Em2D0bPF/RNQ0UWb+AA6YxWaeFt0WFbTl
 QmyVgQkMMHaJ4uGTekccV6tyVikYGSm8GNwtdHsQ6egq/H70XrzVyFnFzch3ZlJK4IHN
 QOXw==
X-Gm-Message-State: APjAAAUxjLtzZyv3jJPeyySgdZfzBd5almr00d3R0r+WEyJSKl0T5+Zs
 Vk4ibyLPi9TRbCnkiSn1t0OGFU6QdJ9wHHI1iaJ99A==
X-Google-Smtp-Source: APXvYqzwi4uZhDCkP2BfeENRzYZP+A4m0hw6TsqWt4GdvE2cwYop/OrA9K5YyynmpUzYgSR37wY0ao+egjoI7YKk4d0=
X-Received: by 2002:a2e:3a17:: with SMTP id h23mr3783292lja.105.1557434651785; 
 Thu, 09 May 2019 13:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-5-ard.biesheuvel@linaro.org>
In-Reply-To: <20190430162910.16771-5-ard.biesheuvel@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 9 May 2019 22:44:00 +0200
Message-ID: <CACRpkdZ6sbFZ+POiC3eFSi1__SkGLjbWdT-ghMtXds-Xo4GPig@mail.gmail.com>
Subject: Re: [PATCH 4/5] crypto: atmel-i2c: add support for SHA204A random
 number generator
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_134413_640051_16E95526 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Joakim Bech <joakim.bech@linaro.org>, linux-crypto@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 6:29 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:

> The Linaro/96boards Secure96 mezzanine contains (among other things)
> an Atmel SHA204A symmetric crypto processor. This chip implements a
> number of different functionalities, but one that is highly useful
> for many different 96boards platforms is the random number generator.
>
> So let's implement a driver for the SHA204A, and for the time being,
> implement support for the random number generator only.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
