Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAC010AB5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 08:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAarXEoAsbthiqQFFzUdF6v2BlmMME8/ZvRowoVMVV0=; b=ETNDl+PMtVuez4
	VMNS4T8d/C9TIm1JKHN1fRb51QiLNqiTxlAB0hSJ6gkg1MLll2CiKTkOSjiJ2eAW/ujj9oeZnt9V8
	cAq3OOnH5xelQoWsCrQH2D2685ZSH6+4jElzZYJ9y1vuzzm/xAxb0E9e3f3l3FaC1kqgRZOJN/INK
	b4MVbmqJtSnN2Jja3pIc0c6RAikFQNGFSK+PrFuZJWUbYyGWyPabT8exXGd5XQ/Xxz/jD/QN9sMP0
	J1YWSrPFDfCGwW0tDPM3ki7tR2l1SG+ARc/dycoySkYpxy5j86weQVeM4aYzL3qDXTPpsuXb9gdv+
	7b+6Jn93NcXlUnIJSwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZsDk-0003YW-Mu; Wed, 27 Nov 2019 07:58:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZsDY-0003Xm-QR
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 07:58:34 +0000
Received: by mail-lj1-x241.google.com with SMTP id a13so148656ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 23:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bbcrs/kI0pTK9FOJP+Wv13rPCiF+hN+1C4Agw6T2rIU=;
 b=objLnNseuznC0txiinrwy8QyrEZ7UyuUmwPV5oF+NR+gEsYfrAO9zBx4pXg3v02RzZ
 66UzhBrJ4DhcGoHcDweZQR+pXwfUft7Y/5oXtR9jKLVACnNWPl6wRNPKcTRb+M4oSADb
 hiCUuDJ3UTk5a5VtPSAYiV74J/W2qqcsFC+uClQvY7supDZ0zRvwRHWbHu2xjiOZN03K
 e+XcZNPaJHI7ykrJwuWsLLicrxelKYjFioS+0cIW1Zsffhp+EpDOUud2r9nL4a9tQ5x2
 Z26EfqUe/52WwFLQgEjxn71xn4bT3SIyxINqbkDXay/Gm0xxjAiaQ0499fIsMAQ5XffC
 HBSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bbcrs/kI0pTK9FOJP+Wv13rPCiF+hN+1C4Agw6T2rIU=;
 b=sdT+T2BCykVCKZtq4pPXgd04b7Z1Emj/ad+17dPvkTh6KWy8+lOjd8IfdpzTFpB7Gy
 5NQFDc7KmF//dBQvZt/Y/s1l7RNzsBHCMgHoJXjoWo+D4s309mViuJZmgOPsL8i2sPBb
 qgqIaVEOSZJgeFwywbjxv7oYkgqA7Ht0BxURRVf89GCfUNxFdqoO8XE3Sc4d5PXwp9qH
 aaJDVJoNC20i+Gsy+AjYlXPtrlVI8eHIMoqV5cXBBP3rrYUicd2ikcl90xJ3FCvJzued
 FxmlutDUQf2owLVH0Kecqf5vk/8EydXVzZifPCDkwo3t7TF4n07clKO0PlgOhyoEsEZB
 XLEA==
X-Gm-Message-State: APjAAAUHZYurrut87IlIEbgocVgh29Vsh2oXyoqyI7SqD2aA75YEtft4
 IwpJgkk3iDTJWtX54Ilx2Ff1CP83VnvOkseyld/drw==
X-Google-Smtp-Source: APXvYqwXokp6S08/9H2q2tiKF4c70CagV2hXIPK2TWYczw+i5IFfpgrIPZDP3kFvcpNvJhRVZ4WRkmYWwtH3POwkE5w=
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr17213389ljm.218.1574841510592; 
 Tue, 26 Nov 2019 23:58:30 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191121072643epcas2p452071a503725c7764acf5084d24425b1@epcas2p4.samsung.com>
 <001001d5a03d$05de1f70$119a5e50$@samsung.com>
 <CAJKOXPckbRowhCmnJfT8-DT3gYaTpDOf0wVxmxdf-tZpOyM5ew@mail.gmail.com>
 <028901d5a3f6$e2d72310$a8856930$@samsung.com>
In-Reply-To: <028901d5a3f6$e2d72310$a8856930$@samsung.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Nov 2019 08:58:18 +0100
Message-ID: <CACRpkdbX-RQY+0Sa6x3BFeovNb3vSkTTnZjcXDDFEyDQWms6zg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: samsung: modularize samsung pinctrl driver
To: Hyunki Koo <hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_235832_883630_7937ECC6 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 2:14 AM Hyunki Koo <hyunki00.koo@samsung.com> wrote:

> I would like to apply GKI on the pinctrl driver
> So I would like to cut off dependency from ARCH_EXYNOS.

If the pins need to be configured for the system to boot that needs
to be in the big kernel image anyway. And then it should be bool.

Example: to mount the root filesystem on external flash pin
configuration needs to happen.

There is a slight paradigm shift sometimes: in distribution
kernels it might be required that necessary modules are
included in an initramfs attached to the kernel. I do not know
if we want to encourage that type of configuration for embedded
ARM.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
