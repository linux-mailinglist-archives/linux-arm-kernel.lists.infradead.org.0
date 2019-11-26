Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C69109DB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wc1G9+t/PU0BYi0tOYPPdwOYAjjgyqi6hf569djHn4s=; b=OnAgEg+zKJFRNi
	xTM1pKwEmPoBZUz/YHL3tKqmGvzhq7sapMe6QEuWXQQ6yAwVv4QH0X1kx08j1nnQbbq1TsDDTlUJm
	ZKZ86w0fHsuGRi6NV920oC+Srgw0L7VGFAr0KYGDdFAJ6QB+2hZ1x57YxNPKfmloh7z6Uf/Qo9q/d
	tZJIs/QgbvXT7kJScD847QYFr92TEDjbzV1Q5Z0Ffss/ZmkWOXum9VGoCcKrznCwt+LkS31fsVp1g
	q5rAYLrIoajX4HMdXiskyaeUMAPYHCVNkL4vjG6d554wfWBxw+nSW/xYFE/w6Pky9b4+egBR7kvnQ
	/jc4fdfgUGYvtNI7urlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZn2-00081p-HJ; Tue, 26 Nov 2019 12:17:56 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZmm-0007cf-C9
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 12:17:41 +0000
Received: by mail-lj1-x241.google.com with SMTP id k15so19975925lja.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 04:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K5QyhOqHcLHyB/soUlYt5FDv11OM5DdtmqTnCRv6jT4=;
 b=FExPVgWdtbMNIuXTPIXVc5qOikzvjSuB64a/ScIIZSKl19OwHNQKVYPtkkAlqMwZXP
 j5XDbE9V/3TX3K70QMYPlGQ8FupeV7rNuUDQLuk494Pg+0MILV7n2iCi2v6khecWN+T9
 a9JgwJPPFmXPInR15J9P66L8nnMYrm8uSxrfzVH3NA4poamD2ACpPi+SZ0jQ4lkTMc9E
 xY5tl3JicyvMNramXtTuIAiL72X12FecnsKqCpbKX3owxV3D2KhJOByg40sGlmxPoWQL
 vuwzzb/lR1c3hx9o9LfibGB/3z74EsRFvMeM0Da22dC7m0gNE3IofczV4Y731G2JOHYg
 vnhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K5QyhOqHcLHyB/soUlYt5FDv11OM5DdtmqTnCRv6jT4=;
 b=gJbI2rztrxl1ui/Qfx3ETam2NYsSV1FnEVFe07gggAGTwR4mXkpLjq6nJFvwMKwnAB
 3mNEoBbvBpsauF4x5ClAcd9DCUrt+t12JgsivqO9r+K/83zJvIHk2YvAUP6LQumnI57B
 4Cb0sIF6yM3RIkpIEwsDQ2bTMs1Xfv0tr5pkUPQ+ARb7vw+PawHBPY8qDcPgzGJ3J5cQ
 DWUJzjcwJ9K4pLfO0HIQDwTlr08MkpkdvQlBB3TMXnCw2kXptJ6x8k9yyruBI0Pv0lKU
 7scaVxq89sAUS0NQQHHqQp/+UevNfO5y8Yswcr5F5Oe0fFvwKlc2WS0Wd9XbJFbDC8z9
 M54w==
X-Gm-Message-State: APjAAAULx/k+I1u+u9HK7z4c/51ouDd/qY50mssUAR6FGDYw5PTWvKl/
 s02tyLdQm6qcnAIDEcNWLC0RwyTV0CQQiAIfMcegxw==
X-Google-Smtp-Source: APXvYqyUvqGJTGlKL4forstKqT+EkT3JZiUWQ8b6UX/M2Coqf+nunSw34Afbi8voYdN3pSylpBVhvtHtd41ceJu+itg=
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr13958204ljm.218.1574770658404; 
 Tue, 26 Nov 2019 04:17:38 -0800 (PST)
MIME-Version: 1.0
References: <20191125170428.76069-1-stephan@gerhold.net>
In-Reply-To: <20191125170428.76069-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 Nov 2019 13:17:26 +0100
Message-ID: <CACRpkdZMQft4oY+jrJ1Y8aNm9RSjr_B9dC5ScKbST-vi1ZZ4CQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] ARM: dts: ux500: Disable I2C/SPI buses by default
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_041740_436912_D8677FF7 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 6:05 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> At the moment, all 5 I2C and 6 SPI buses are probed and exposed
> to user-space by default - even if they are not muxed to any pins
> on the board. This means that user-space sees an I2C/SPI bus that
> cannot be actually used properly.
>
> In some cases this was used to put the corresponding pins into
> a low power sleep mode - but even then the pins first need to be
> configured by the board-specific device tree part.
>
> Avoid exposing unconfigured devices to user-space by disabling
> the I2C/SPI buses by default. Enable them in the board device trees
> when needed.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

All 4 patches applied and pushed to ux500-dts for v5.6!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
