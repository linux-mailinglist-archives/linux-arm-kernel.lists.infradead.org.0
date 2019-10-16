Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7662DD8F36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6vmLLDTX1UVJqoBisc1TIEhojw8fFI7k1ZBuoiSPjg=; b=I3YabrthSlMtKB
	C8j1xM+t6NMbkWCuYF9GqaHFD5vueADQ/QNd3UC42omN4uqohOscX8UlFKu01GrCU7li26/yxortY
	znogxV6IN+2c5A3XRCyJjKUuFP6EiN5UbIhHssWs2VSCof839wTkg9ctf4x+b1qZTk2A0dOx4l60F
	vUDQ1/xBX9eKNTHLcmHm8ac0dQs1EM1yQaspoAj6uvt97ezrfPS0jRhjWzggdR9Q+llCZArJYVbim
	+veZPb5auymWda3ZPRFxAozP879hJFA/D9vIMY/bkL/lH7yvDLIC08sy1qw8h8ueath4cslXNoeVF
	4NCCrfXLFgXXHtRPM3/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhKz-0001iV-82; Wed, 16 Oct 2019 11:19:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhKn-0001hg-LI
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:19:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id y127so17151560lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 04:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1AlVFzVNzLFhybDABbQIP7y9fwuWZqgdiTuBdrVDMgU=;
 b=ZE6OEgnZ8yrNuwOpjQUl1DrdrhOJcU/OfJQ+UWAJV5VSuBLt4kobSn90ZvkwKhz3/W
 DmWuNa8o4L6xpUpEA32J5Ft1QTqgjgdu1dbOpgk5naABVzkOtVTLGgWzYWNTzQ0WgTbb
 Y5niXn2s+/QyNMl5FrZPP125aQ4QKxA3TA4Lw+iuOCQIhfIOlJhBFdeOJIR1GZ+oDqDq
 hCnZiK17J2nBsS8Ybej2tVBY0I7+6EKSRi0R6PvzZFSb1ptl6XnMGK+lHRNew2QPY1xJ
 KNOCbpWsHgotFI3zRLMVcXg5iQytMnF3Gq7qsWWyjGRj8Jo3TTknxKUco7I816TsaM43
 NMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1AlVFzVNzLFhybDABbQIP7y9fwuWZqgdiTuBdrVDMgU=;
 b=XpRAskyROUDTpPqx10OG7SQ4MmMH1WgbH7DkHPZUQRGyVKT0PCUkiW8PnonowsuwFQ
 OrhVZ61GG0iaLYDBpsnrGmS3YanZ9+qkYsX4aNoOgy1IKkH7TGC8eapAgjX5bK2kUWs/
 aY7CWG4FxwyzVS2/hwJxReGewG2iWGy7ows6u2mhK8k4xvTSxhXiJgUFugX41PR8y6x/
 yt0qFnfdMKRQGWg0rHiK1Ub2cYrYKSoNQrTbO6clVhZGolM2O5KfXmK7agiYS4SN2D15
 hnQ3KseI+a7SAQ0twOXAlDeMWql9juJQGkK+/v6UISr896HB6VIpLq7HiCDeTIK308Du
 uu4w==
X-Gm-Message-State: APjAAAVIXDz+FqpNDjApLgeYQ0NbfP+evNGW7DUMmQWrP8GsgSjYPx5C
 97g517SLjdiAr/7bbLJQjiRtTnjUZhecKNXTHAXTpA==
X-Google-Smtp-Source: APXvYqzpMNbiy51j6vtkjPuuhusjbti4CJFbH8pcmfYvGpawltJmnzSIwtrjLRWD8kgfIxeJjRT4UBofz6S6sUNLEa8=
X-Received: by 2002:ac2:4345:: with SMTP id o5mr4806342lfl.60.1571224755662;
 Wed, 16 Oct 2019 04:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191008044153.12734-1-andrew@aj.id.au>
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 13:19:01 +0200
Message-ID: <CACRpkda5cWaA7R3XzyiERCCgwUrjnXd+wCBeKvt-wtjex7wNDg@mail.gmail.com>
Subject: Re: [PATCH 0/7] pinctrl: Fixes for AST2600 support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_041917_697803_F3A88443 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, johnny_huang@aspeedtech.com,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, ryanchen.aspeed@gmail.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 6:41 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> This series resolves several issues found in testing by Johnny Huang from
> ASPEED, who also contributed the patches to fix them. We'll have more patches
> from him in the near future (which I'm pretty happy about).
>
> The major issue resolved is the way I grouped the eMMC pins. What I had was
> ugly and I want to get rid of it before the binding is solidified with the 5.4
> release.

Should some of these go in with fixes? All of them? Or just some?
I applied them to devel right now (for v5.5).

> The remaining fixes are minor issues that stem from lack of documentation or
> understanding on my part, and at least one brain-fart.

Do they need to go in to v5.4 or not?

I need a shortlist of anything that should go into v5.4 if anything.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
