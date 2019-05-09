Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6825118B7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 16:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGvbJJe3WtRLWgq4Oe7yGEg0yCCVdU7Rfg13MIq5fcs=; b=n/USUUv0tFljK1
	ZZQi2CjRUOy5AaH86oKiH13fOIU74l4AaWYUxHnEQZtUm02j37CY9bcmZpTeHNST+CsWGjyJizjiq
	jzLX3R6h6JRZnbAKe9qjzJ64A4WGXOp/XEKavC1R+utMCoeu+G+UTI2F0PNJElH/7p4GJirETMZqT
	CuRFR5apXvV72J1zGgl8b0GENa1a1xDqgk5eSDTIjJs+9h1twlzCLJpVqZ441UeuRDekW2JAbH4xG
	rBj4AizOH3uBnhs5oJ7ZhWJ1uWvRto8l28Pd5izkjtSJHZ+XymGZ9mJOcIL+kq1jc/Ia2sWY1Ynnu
	Lk6eBt2Avgnxy4PwTF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOjqI-0000ll-H4; Thu, 09 May 2019 14:16:14 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOjqB-0000kn-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 14:16:08 +0000
Received: by mail-it1-x144.google.com with SMTP id i63so2962745ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 07:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VB9VW1DXgM5qsk34IWnaFfc5rrlp9hnpSv4gxGZLTzw=;
 b=LlqjSbHWA1WFzBfPS7JC2JpLHcIH3PlnAWBx5OhX3OrDq0LwVisdc3gmp8fmVz+ik1
 /l1+xH4+zOAK7kUdtQUSgPYqjvRRWWiirSHTw1GyC6ucAJB1PKCEVjsYPeL/WFp42yZL
 c6/2M/IpPmXqe1hzXxo/0x06f77J9nLiCXO/nSQt50sdpgPemR3Mmu/9eInVXBqb8yLM
 4YQQnM4iyNCi/4YzTjsiU2QJJVL8MNOvKxr5SMl8Yz6aU/p4ux4H2Mp2g5Ep96I79GUE
 KpKeqHVg9FSouihmQN4lSt2vfIEB32OebkIOpdo5uwDSLZAHkTlVALq94HAa1OjNaKdw
 Bzpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VB9VW1DXgM5qsk34IWnaFfc5rrlp9hnpSv4gxGZLTzw=;
 b=L2qAnruPgwnpmlc8kKcXp2P0GNpzLYt4QN7naWJV8aBQTMqmi3gxaCsZi6pVMhxkCS
 MVR8yOIdQb6bUhJweWqS0atask88EnEhbfI8siJQZ/6L+38vd5LWK8wdEA8IFdn54QJ5
 ZiGuKqrA2R9o7M+v//8divwGuZPmxmWGuDErn8O7mPavWIMr5FRwKjhMTk43Em04aBzo
 JK9A8OlI16r7x5h1PX1MFIuy8g91tOhoCu954NCOlHgMenws1DrfvbOV48DgsyDNtKPZ
 nDZr0vEoHJKyOaJmRo7KcII/VwRJEL5q5tmvwY7mRujzY/gPtLkO7VLw7rwiUqmDVAyN
 yGEQ==
X-Gm-Message-State: APjAAAWgvpDKApttzddyjw4b0WqaigGqJCFgSDRpIYcbcq4cmWKhLWOk
 2mp8yAGc/O1yeYjHuHA9/fHp97TertsJ57MT6J0=
X-Google-Smtp-Source: APXvYqx/fExGbExiF3LH9V1VVeMV1Wj79ugYIqqIfBk7vXMkbUDBUyYgY8WiMCd/APzg6HCsy+XVoJOKTUS6PytMV/Q=
X-Received: by 2002:a24:cd05:: with SMTP id l5mr2978259itg.44.1557411366279;
 Thu, 09 May 2019 07:16:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190504070407.56915-1-weiyongjun1@huawei.com>
 <5a3a89cf-eee3-136c-1c5a-58024e946a24@mleia.com>
In-Reply-To: <5a3a89cf-eee3-136c-1c5a-58024e946a24@mleia.com>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Thu, 9 May 2019 10:15:54 -0400
Message-ID: <CA+rxa6oh+Qxo5aLgW11vrAvuu7t7JAFONC6b0+kxRx9rwCmjhg@mail.gmail.com>
Subject: Re: [PATCH -next] usb: gadget: udc: lpc32xx: fix return value check
 in lpc32xx_udc_probe()
To: Vladimir Zapolskiy <vz@mleia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_071607_666826_D568FC2D 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Sat, May 4, 2019 at 8:17 AM Vladimir Zapolskiy <vz@mleia.com> wrote:
>
> Hi Wei Yongjun,
>
> On 05/04/2019 10:04 AM, Wei Yongjun wrote:
> > In case of error, the function devm_ioremap_resource() returns ERR_PTR()
> > and never returns NULL. The NULL test in the return value check should
> > be replaced with IS_ERR().
> >
> > This issue was detected by using the Coccinelle software.
> >
> > Fixes: 408b56ca5c8e ("usb: gadget: udc: lpc32xx: simplify probe")
> > Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> > ---
> >  drivers/usb/gadget/udc/lpc32xx_udc.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
> > index d8f1c60793ed..00fb79c6d025 100644
> > --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
> > +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
> > @@ -3070,9 +3070,9 @@ static int lpc32xx_udc_probe(struct platform_device *pdev)
> >       }
> >
> >       udc->udp_baseaddr = devm_ioremap_resource(dev, res);
> > -     if (!udc->udp_baseaddr) {
> > +     if (IS_ERR(udc->udp_baseaddr)) {
> >               dev_err(udc->dev, "IO map failure\n");
> > -             return -ENOMEM;
> > +             return PTR_ERR(udc->udp_baseaddr);
> >       }
> >
> >       /* Get USB device clock */
>
> thank you for the change, it is a correct fix.
>
> I do suppose that dev_err() in the context can be evenly removed, but
> likely it should be another change.
>
> Acked-by: Vladimir Zapolskiy <vz@mleia.com>
>
> --
> Best wishes,
> Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
