Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC81193AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 22:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EE1zCmM6XpWhKkPjXx18Unnr6Q+HUZaYIiOYoSjOKaI=; b=cXSeD17e8q33xt
	zw8U/yVRwXhCbh3/MXT5hq6NLcAspvAVtSe/eZW7X2sh42xNIhI9Cc2NjnUi7NBeKQ04zEOHKSxUI
	0tRZSS/kEAA/tRclvym9QS0XNZ5t6+WRWPsuKfukBTpIhSfnehsjz81dqKV5FFHE7ros3Cg85mxHg
	qTTv+Ov3OjbIERAdE4xh/coxLD+bwa0s/yRyhRbPrjFKzXO9JDTAgGDpSjXEsr/PnemDvblEgVNDo
	8ToZDehEG2218NbWSYUF9D1BWxwLe1NVzZ6udAwyc9rzT/vOqcD9UiqOjH6Lp+eU1KVZWzKBGViAP
	5BZFJ7JWf+wk4PeGKz2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpsK-0003zH-0i; Thu, 09 May 2019 20:42:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpsD-0003yo-3u
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 20:42:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so636982ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 13:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j30FMQP1dgYb/Un5HEphzZohlJD8ALE8cV48KT6l/GQ=;
 b=kixquv3w2BJhTcwfRO6CnKo+0nPaPMg8+tNo9sE7QMH4fSM6CxuqdIRuZaIXEVlgbE
 P3iSYuflXmblpmyjsGxBM7+SrK1olw2cEu2iLXT4GQIwb0mRjaAkbcqzgETMjZka3hSZ
 wUWALygyCtBr0+QuQ2jiIxa/bF1RTIhYtleXKP3zYooocCxuhuctc1pVo0CxImm552OX
 xv9veZFaBnuKaeExHzwtt+2QhLbXEz6Dm/mKaG2t2AJ/UKN02fQgLtraDiuFQZt8hly5
 WRC9QOg53hKMoM+syha4MsySqFRRa/PzQk+Z0Lu5oKGGKnPop9/nuJcW80gfU8iiWiDE
 QZ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j30FMQP1dgYb/Un5HEphzZohlJD8ALE8cV48KT6l/GQ=;
 b=O3VSQZcDRpRGR1PJhhxLprPMv6EDF/XHUn+akrruIyHppfGVjWuP8aNXNiVEZEoLLS
 N8/te0lv66+4oQExw6991DVZjgmtE9vsuoA4RXeGGNnl7JydPcV7gZaOXOJcaVfSBjZR
 xgOYIDqs3FhEYbpgM8Us0ihEKprVzy4tyjXo/ltkMdeFN1A2H8b8K67TW7L+BtULV3uG
 JcSTjbVtJDgeeTRnVpB8ScatcPpqzVzoQbXgAXW5ufar3dzWxRpyLQx+q746B45IR/li
 v37ciB3vK1edXHPvWwUvQYl+fXwflFrZkceS4dl2tkFxpQbQpsDsvK6luqlgulQgE+TY
 49fw==
X-Gm-Message-State: APjAAAUoDHM/IqY1jR8e/GePsOGWENNS2fGcreYPQ8IA5q71oznGB+2Y
 7EfiKfFuMWIkT1qLXzzja8FtGHP7Pb6OEplBtRj72slq
X-Google-Smtp-Source: APXvYqyosZEOpSbBcKCJAA0eCC9XPuixVltOZ0BUIHDZ+lSF1J5DphdLpbqqYQTpSgXqAFCxwa+fISTaTJ6Ht0Q2b7Y=
X-Received: by 2002:a2e:9547:: with SMTP id t7mr3558183ljh.153.1557434554357; 
 Thu, 09 May 2019 13:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-4-ard.biesheuvel@linaro.org>
In-Reply-To: <20190430162910.16771-4-ard.biesheuvel@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 9 May 2019 22:42:23 +0200
Message-ID: <CACRpkdY=1TZ_GBCEBsJ0teBcJeoXDEJ7=J8hHhzCRRQBUYxddQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] crypto: atmel-ecc: factor out code that can be shared
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_134237_161455_DB352515 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

> In preparation of adding support for the random number generator in
> Atmel atsha204a devices, refactor the existing atmel-ecc driver (which
> drives hardware that is closely related) so we can share the basic
> I2C and command queuing routines.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

This looks good to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
