Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D20617E997
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/aCzaB4r7BezNDKWzn5YM1TXni4m6csEY4gqZS4+1A=; b=d68vyhmJThKxbe
	whswIK3agld/1GYZfFDHf6Zxb6vrBWlhYmagJ4p/yE/vqe2iKhpkq50TcUFCi6UtBeFRyd5wVC856
	C8exAfitFMoinZyXbv5ucJ2A8+MRqSJc88MjRxHtfXlpBfkbNUIXaqinIyqPn+ZufC590VZM3yP0l
	v1lS+NifQuPlQNZx5Vb12QaZQdByyB/PDGq/QE3OVRhX3GUE4PDmY+F38JWAm7KMBahtQ2BrZ8dEZ
	mMZc+5FMh/2nwrvHBwe/1uBmJ8Zw4SUVF0Xy9fTxlC2zLVam2uw9K6d8ULxjE7TVXoOfmaTQDRSqB
	9YlMGXod8PW3SzFjlv8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBObQ-0004ql-3K; Mon, 09 Mar 2020 20:02:16 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBObC-0004pn-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:02:07 +0000
Received: by mail-ua1-x942.google.com with SMTP id 8so3807429uar.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 13:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pTzxYDH2AxvhcoAC/Na4iwhOdxiHwUzqHjcxqLWpuxk=;
 b=GQCEV06Lm4xXvCKBt/YE3GSEpfgS9Y+DsuySxrA/FHkBxV8cXIq+RGg2ipv1u4sZYF
 Y1Niv6stWta6HJWJdBP2pxhMgSPsWIMQzQojVUSke1NPXKNcnAIHPK1BMqY2HAbSuNAI
 Bx8K+OfFMgeBn4tOLISC5hk2R3KD9lw9FFqN7bkDpzAR4qouBJXawHJxL1La34QCRuId
 QTnsRHKb70pRnU6u188Q1EVyhKdMnmg9neZn5tKeMF4p8k5vVen3/ke+M6kpszI3zP9V
 uSdZAvBbvnDqRut4/NG88abbk1/2tEN3dROun3iwv5g37DwLSTZCv+MOrJKrO/jJ6p1i
 zBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pTzxYDH2AxvhcoAC/Na4iwhOdxiHwUzqHjcxqLWpuxk=;
 b=BvXGDIlMoL6Cfahp/P/MPTuP4gQeenqyNzJoebakH+3EPAFBbOU8ukO7fJJ79doevg
 J4Gsz5OnYUqAu6gPvgP/7pQsAZWP7BRCjCs1JJfDes5DTCXU+hq+vBLKME7tLmTibIlf
 +nNiA3R48lS27bp8CG3pMz3EtcPAfPHW/nKCSR7oKnwJGp3FQGWBQCbnG8F/uk0jCReL
 dqVivr6t63QvwqQfBEsaHYycwOycIhoV1bV1wAcxgUHVWoHU4x6bM5YRbqotCz5GW8t9
 CjNPW7Pr/kv6oRVqrJe9Zf3LGX5AaQiGqzCIvyzKwG9a92PqyfvoIGHsJSWiQcolld2l
 YHtg==
X-Gm-Message-State: ANhLgQ15AMoOD8r/uRLQ/QkbtJvny8gcWUtZ+/xgwgTxt7S5U/gztBw6
 M5+nDOf6qTUoZoD5jH2P1rdbG0mWwrWlqDJQpkg=
X-Google-Smtp-Source: ADFU+vvnyhaBj9HB+Vdqccw7wpInLbX76amumParBY6QdTNcO7OLeuGNAM4hdzC1UyzZYxq4D7RMbq+yXovPRruhtjU=
X-Received: by 2002:ab0:471a:: with SMTP id h26mr10219454uac.34.1583784120687; 
 Mon, 09 Mar 2020 13:02:00 -0700 (PDT)
MIME-Version: 1.0
References: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
In-Reply-To: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
From: Gregory Fong <gregory.0xf0@gmail.com>
Date: Mon, 9 Mar 2020 13:01:34 -0700
Message-ID: <CADtm3G6hwpOneYvwdrjiWHrRzsMmik5w7Y8gOhtJn7FaGMfw_A@mail.gmail.com>
Subject: Re: [PATCH V2] gpio: brcmstb: support gpio-line-names property
To: Doug Berger <opendmb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_130206_587120_B6C4A95A 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gregory.0xf0[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gregory.0xf0[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 12:02 PM Doug Berger <opendmb@gmail.com> wrote:
>
> The default handling of the gpio-line-names property by the
> gpiolib-of implementation does not work with the multiple
> gpiochip banks per device structure used by the gpio-brcmstb
> driver.
>
> This commit adds driver level support for the device tree
> property so that GPIO lines can be assigned friendly names.
>
> Signed-off-by: Doug Berger <opendmb@gmail.com>

Acked-by: Gregory Fong <gregory.0xf0@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
