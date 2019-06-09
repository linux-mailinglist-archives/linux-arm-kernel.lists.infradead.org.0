Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B813AC1E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 23:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmGeSHV0tomKhpGNpHbwUjusftdG6kewUchvBOwojJ4=; b=b2QICmhw3tOKtd
	CEO1QMLqcR3taUCiWkYDRrVAVOHplYl8KEuZ2eVsgnC4A6P4ESIbJWRELF52JYrZJxmy1ZMI28GRu
	wGyqo/Ne//noqZxLMkrnVHCKTrLH1bY7X6FUx04fQv3DsXol/I8hy5jGViTCs3ap19CP/zjzuTk6y
	wtvgbQZAKJqNddMGGj5OtVRwD3ENWTklDxD/Ykr0zRztTz3JBHAQd+4yGknNWoSJQ3bIEaN+Z+Mi7
	P66v4RsGqEbCJAgBmxGHnx4v+VEJuyTLbDMdfQA1FWhm7Xf5cOAjN1ethvtilYPIa1jDN7KbDKvwk
	seaptK7YhRsyD3z2tw5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha5i5-0007Kz-F0; Sun, 09 Jun 2019 21:50:41 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha5hu-0007J6-4A
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 21:50:31 +0000
Received: by mail-lf1-x134.google.com with SMTP id y198so5236431lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 14:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=He8uuSEDC/b/uWidg8RVfT3AGe4hP03AsY17X0DSxgk=;
 b=zlJsT0l/3IuyndfDS2BTaHnjJraASu525KwaMplyFARGp91fxTu7ST6SIuVl4iRefh
 Zw2rTEVnDvjnMuSCPzdUGoVDoRp8QrZ61tK4XFRB4D3Zl0L6VgXr//I766ZqEDgE17BM
 ARN60spGcN65rNvB7ab14R7DSGuQndhDP7PBCgB3CP8DrR7V+VOu1ATbAAdkQfPQj4IY
 quGE/acE6nwNwUq5m4i9HC26SOp56AoTeO2Nuk1flxiykzI9jViwQQchw1hlF1ArhsRC
 N14lVBN37nhxWkXhB1kOBhH6Fg5Nahbz9F5Ozo1lzj8nZbQmTBZ4tBPY5d9h7mtBuiCS
 cZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=He8uuSEDC/b/uWidg8RVfT3AGe4hP03AsY17X0DSxgk=;
 b=R2njMQ15MOrl58w3Ca3OOumbE0soBmXrX8HOQ+MJnLj22BGLN9h1Xl7BEbDMir9Uyu
 Jh4u2CpZVIkDwROe8BXI1ISpsjdU8nS9IW1Ah/tnh5OcJIqghBWy3dHClkaKBRnh9ofN
 C1lxTp/5C17dxibGG0XvMq29JBw6L8s8eOJD9Cd7YnUM/WZ2FSzGgW3Vw6691vEASxSH
 t4Kc6rw0Eskxxf618w9d6P9wvZDE6sCPRN2i5IOevMqecNr3+23KXUkNlHEpGkufO2R+
 c79rsnVKswAUh8dQNTZd2dLDgRLuGVw2TO5i7b4jhYlDnp8QmSRta7d2aRLB0SQCfZNc
 3RMQ==
X-Gm-Message-State: APjAAAWO25SvZgPDH668wcu8hMU+F9ChRj9D1DMiyfiKvq9BEDDb4MG6
 pWsOWTpEzbB9sF2iQTj3NrBkhuS8m+pRrFenZmJnZQ==
X-Google-Smtp-Source: APXvYqyf2NDu19vowinqKXukK4VxadyL6zt3qyCVskmgqawUHY4dBR21FjzW4762E23uuSqmCFocFD/qpnabF+6julg=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr9951237lfg.152.1560117028189; 
 Sun, 09 Jun 2019 14:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609180621.7607-4-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190609180621.7607-4-martin.blumenstingl@googlemail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 9 Jun 2019 23:50:21 +0200
Message-ID: <CACRpkdZCbFiUfW-qOM1Hxuj0e5TC8ViMuiz-VeVjSYP8A9sN3A@mail.gmail.com>
Subject: Re: [RFC next v1 3/5] net: stmmac: use GPIO descriptors in
 stmmac_mdio_reset
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_145030_179307_0EF5B87E 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jose Abreu <joabreu@synopsys.com>, Kevin Hilman <khilman@baylibre.com>,
 Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 9, 2019 at 8:06 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> Switch stmmac_mdio_reset to use GPIO descriptors. GPIO core handles the
> "snps,reset-gpio" for GPIO descriptors so we don't need to take care of
> it inside the driver anymore.
>
> The advantage of this is that we now preserve the GPIO flags which are
> passed via devicetree. This is required on some newer Amlogic boards
> which use an Open Drain pin for the reset GPIO. This pin can only output
> a LOW signal or switch to input mode but it cannot output a HIGH signal.
> There are already devicetree bindings for these special cases and GPIO
> core already takes care of them but only if we use GPIO descriptors
> instead of GPIO numbers.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

This is in line with how I want the gpiolib to just swallow all quirks,
so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
