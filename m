Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE7A2A0AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 23:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5C6ZUnTP4wr4j1Oi2iPWIGkGJXF/jrLfGKtqSK2yC88=; b=RVdDjcHJSvqLbA
	DuMFTAU/QLqSp4rs2MHsqc2Y+0tHHlD/RHeXCD3LiaBi7aZbIihMHk3neEcK2iwQ1AbgQeH4dpnRM
	mKaFzYXKIsbuvmRCoUqiG116a8QrTEogkHbl42n/wYAG7CbaaSDUxJXkM1hBk+l0Qf2ZFAVAiv34y
	1YZCIvOt5zYPtlUScCwdk2ce7xuOsh/HfvVZH0rZ4MKQ54XV9UH3udKbOqoT9TOJHwCRzCL6k4ft9
	hjw2KnykPLelmG5YuC+mTcbUOjNPS71Pkl8VWoDddXTSdmfiBiG0QsBHa4USP8jHehe9vDQLAVITT
	KvuOFBOdlrnp7wDht0/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUI6z-0001x0-LJ; Fri, 24 May 2019 21:52:25 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUI6s-0001wS-O1
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 21:52:20 +0000
Received: by mail-lj1-x242.google.com with SMTP id q16so1532715ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 14:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AuXh008DwPVUoUfJh8xoJEqHVOdqY/Qbo/taZOoVBiw=;
 b=rKXnxENHnVqhPbDV4VvBkDnK3OT4VPP4NjvXLzQbUmbK2h/PlqFdN3lj03wlDO/7vt
 zchANxp1fnJ8nyi3btwcHmckbBrOLWSSWSb7NIOPlSl+XwT02ri6eHwQgaQbi0JE9VPI
 XXhAQ0uVCZ6q4wx7jGLFKQT0OcTr/Er6wOpYOF96naYlmzv6nkLj39EaaC5jPTIFXEhp
 zfxf57LvH3RnjBOTnlGd3i8NloVE7EvbIOw0jBO0CjH/cBiCGc5IbcClFs/+VpkNO5kz
 PYPpGA76IcfeUy49pSbN+0qsKT/0fKyqCwnAbj/sF8oKA/fs+FHViKKZFBVniEYApVnv
 UY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AuXh008DwPVUoUfJh8xoJEqHVOdqY/Qbo/taZOoVBiw=;
 b=SVIJDY/Ts5QLNZv4Ineu0U+7E9AtKfLe9bzhVR4AliSxyUalyAgALY58wG+FBWHrt1
 d7Kc4LffRBg4ge9O/svgifNmuAwMZwRc2DxJI4WAo/pg8dO0KNNA957VfngY6KWxmjsG
 oPxW939+4VBaaP+CdnsC2A6hws4fXNGk0WxHPih9SxAYZGzAaDA2mKicOiAJis04ZBmp
 Ne1qS6i1ToD3WU5HAKAKW3TpSEdfcQ9VwGwlH1YNaTQc1VFCz9r0tw/ji056Ct0MGQYZ
 9jGxP15IsJEPy1FVDtS0jZMkfK8K4rvU8Kf5FiinoF+4Z+t/WffMEKdRoFGj7/BzuUVO
 /9dw==
X-Gm-Message-State: APjAAAVBoJqp8xNsdV4c+4WVoMI2XSJpGeVWkzocdyhBnfa10phbwKu7
 Kq8SdPXIViQhwfQtawwdRlneeIN3XssQHea0YWWd8A==
X-Google-Smtp-Source: APXvYqxYfaDDuzHIgfNZpZM+zFfqPwrxJQFe0dNnmRKrUfh2JbZ2ONVVjhKmktDtJe44o6jhdj/R5FccoT2LYVtjOCw=
X-Received: by 2002:a2e:4c7:: with SMTP id a68mr35484221ljf.165.1558734736500; 
 Fri, 24 May 2019 14:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
 <20190524162651.28189-3-ard.biesheuvel@linaro.org>
In-Reply-To: <20190524162651.28189-3-ard.biesheuvel@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 23:52:04 +0200
Message-ID: <CACRpkdZsd+f6ajGKu71y13D7_6aEM_x6d4bJ0dLtGv7GmUYujg@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] crypto: atmel-ecc: add support for ACPI probing on
 non-AT91 platforms
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_145218_843654_01656A02 
X-CRM114-Status: GOOD (  11.77  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-crypto@vger.kernel.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 6:27 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:

> The Atmel/Microchip EC508A is a I2C device that could be wired into
> any platform, and is being used on the Linaro/96boards Secure96
> mezzanine adapter. This means it could be found on any platform, even
> on ones that use ACPI enumeration (via PRP0001 devices). So update the
> code to enable this use case.
>
> This involves tweaking the bus rate discovery code to take ACPI probing
> into account, which records the maximum bus rate as a property of the
> slave device. For the atmel-ecc code, this means that the effective bus
> rate should never exceed the maximum rate, unless we are dealing with
> buggy firmware. Nonetheless, let's just use the existing plumbing to
> discover the bus rate and keep the existing logic intact.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Looks good to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
