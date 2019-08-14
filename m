Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45928CE25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2f7f/+pMgYqbwMZbV4UXvjQ0ozNLD9atKZa0QRHwESQ=; b=CbOQBx5Sc1WC0B
	H1gFBAxE/3rO+IuDEmyZHErfk6RUehZFkm5Jlvg3AzuYVpyCWDSDnWac7iDbaCziAvTw0NAsFsV0g
	Guh/DweGmTHaFg0ZKiXVdsKKko1yyw+WCLPZ8nhCXjQuFNOcRo+NyuufHE2M12SpD4se8ueOs8nuH
	wHuEfXcY4V/s63kBPOl2sx9KLYh9WJ7z+JmFijysA7LrrmS7WvCmd7Nkzbr4udyJ2XmsqCQe6bE/L
	NpdjJPjsPsk6Oc93+CsUETiKvLcbrRpOKefXyC+ZS1yzExqgPW/5JmbucwOW5jjTHdOjsAXyK7Ify
	5ofq9mrPyJu8MI1O8ieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoQR-00069c-9z; Wed, 14 Aug 2019 08:14:31 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoQD-000693-Ha
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:14:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id h15so10299103ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zaG/7UdyaIFhX05cS2xYIpIbPOrXrLv/mGC2XIacwH0=;
 b=Yc92OLlHBJQCnEKSWpA1mKGG0JUh8gbeUrjAtI0OgS4P418XH/eDOCHlX93E/2CJ3w
 d1wVJLzVs+QKABy2uINiVW3n+eQ+UwW23Jda6fPVCRvh0Ldbf8c2Sb2cx49oWtoO1ihz
 BEQn19zyNr3n1EtxMBrqW7D0A9q+0YjwY96Zx8BOUEgfGD8yXls7zW3oiNFCJKkVTnQr
 g+CGPNvkG+yr9OCI/vdaAiqde3Pc2q5agepXdge3hlOHLgcFmzIt+Jjpe2ydAorCndKi
 +8Sp6oH4puH+hQpgUK5SD7uUYefUib5RIzFvc46O8y6RuG/vyofxy0sOCdwxhWhYWwQ9
 iOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zaG/7UdyaIFhX05cS2xYIpIbPOrXrLv/mGC2XIacwH0=;
 b=YG5BVMIQCFhj31jzL37UMEN8C1xG3+hq8gK0rK3YlhEu4g1EgcKToeJ9b9mz5Srkib
 8hc7tuy/ENPn5lPqbmnEV7P9MrDS3FtIPCb5efT9Tph4IbtC1xiaIKGd/k1l+HJHWcdC
 u2WV8SVrodQRoVHVZVcrqm1BSmsCYA5uAPBZqHsGJXkgIXcudJfTCh2jwb7755PbqrDX
 De3CRLPEhc7JG48MliYsskSmL3e1JjWsDKXuTa/HNBdiAdAg8vWQlmcgRqoh0y1F9Zfw
 PhNHOfgBxAFtiQ/GR0YeCPWxYfqjCnXZ4j8+cSXovth+57FqeUrdLWTvjc4R6lesEvEF
 oT9g==
X-Gm-Message-State: APjAAAVidCiM3WpCrfbKATFVQC3Jzb6aTgKM3wecaZ5R1Qjbf27TZCjd
 1nkuCRRPqxnuJNLMCjtgapWPyJCKXGFWYI0a9Lhy8Q==
X-Google-Smtp-Source: APXvYqzIyGCVXUJvtCqFdjeExOWBR6oTr+xberM5+BO82NhIej28AjD92DKyh3qHI3IcHXX0bYXMJJjnsrhwkG8yczo=
X-Received: by 2002:a2e:b174:: with SMTP id a20mr9290636ljm.108.1565770452799; 
 Wed, 14 Aug 2019 01:14:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190813205528.16651-1-robh@kernel.org>
In-Reply-To: <20190813205528.16651-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 10:14:00 +0200
Message-ID: <CACRpkdZztpUBWnUtJiZY030qVJMEB7gNstyXQeTYWUZ6LMwx+A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: stm32: Fix 'st,syscfg' schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_011417_586505_90FCCC7D 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:55 PM Rob Herring <robh@kernel.org> wrote:

> The proper way to add additional contraints to an existing json-schema
> is using 'allOf' to reference the base schema. Using just '$ref' doesn't
> work. Fix this for the 'st,syscfg' property.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> I've got some other fixes queued up and can take this via the DT tree.

OK!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
