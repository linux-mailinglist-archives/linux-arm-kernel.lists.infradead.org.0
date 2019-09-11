Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8C9AFA15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKv/ISeklctUDSoGUtbL0T1egpGi6BR/hSFMY3XEaK8=; b=AKoY2wdHexCZgz
	GsfyfOcSZ94S5YJtnVd9TXkBoaJs70cPFxcmmwBwrQwSQ9YZf+o6OKL2qfd2jMPMdsLLo9zCeUjxT
	tvDhhVuumrXYVAOmrWJQGcWJnmz1tihYuwf4krBdKxG+YsMdVC2vxCCUYuSNN0zWJdBDekG9P4giQ
	oJfVBDaNUrikVnLkxDrosgswyq0Pofh1eGLP7FVX20d59hjJlypR2kG9obVTAa3S/u4e7XFB4RZ1/
	AEeK8MZ3zR/6hQQdBoG14z+Rtb3N99fXnVEjyvGVDv/KqUznrD/1QIV2acxu52n/k2fPHzk9rTHcl
	cvWOLk3m50B8krtnWY5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zcQ-0007ac-3G; Wed, 11 Sep 2019 10:12:58 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zbw-0007JU-Ui
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:12:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id l20so19439747ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 03:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3M63LrG7x4EL82UFdpWrP/9mQ7ENkTmec+0FbO71I3U=;
 b=anZV1hGsHQ0z1I7A96aJmqJ9C+jSf5S0WZzmj5riq0TO4C4XTdh61XfESCOdVK7/HG
 ZcTZZMCmwGzHPy5ca0/pD2rQcHMIabGHMDDjeILV3sHF1ZLht/o0tdV8knjUIh4joiLw
 m3FrJZldDwYb1O8mcZRFFIXGvaGsfVCE6YENAm0fSjYHk7QyrQPTqsBvX56MG6kpaGKk
 OkHG31ufBamCooV1exe8XXHIX+PLLKnYXIALwiNdE7gjhUggrNU5LAhZqnARlj8naLfQ
 rHUphgQfJU2v6QXgckORHG3H4aH8VQiYhBGjvyOjG4T/L38EwZktvb0+eeqZTAm3D/1z
 tXyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3M63LrG7x4EL82UFdpWrP/9mQ7ENkTmec+0FbO71I3U=;
 b=OOudax/o6l8to4sce5fOr6bAJ2MRBOEZ8SA6pSbwuDFzugLt6iwWMcT7P5zl3ZjMSM
 a0wX06D2W4fNatI1ILiexiyeIqml6N9/bNzO1iACmfkgpphh5mjmWOAEQvZHBxuz4meK
 WvNM0HeUkOgoATEkztpgD/HjunfwdCW0Lp22TIgcJbbCEKX268lV8Qqlqi2tuucBEMdj
 1YzJDB+yavKmK92az6+B8kMlksAsRSjED002K3+cICJBIZmy342FOrTbNUSkrgTo9M8D
 vpDT1RKPZVGUNeiMc7ybu9orW8pTZtA1ZDCdTblSxd02lnCqhvXFugIc9uOgEQSva+3p
 YJlQ==
X-Gm-Message-State: APjAAAWjOUynsfjhUDq5L+uyAYMXLKoCF0+9da1psnMikSq7xU8yWZYu
 Kj4ClN2jwXawniieFL55YIWK5Ruqc+mvkBLXLmNVFA==
X-Google-Smtp-Source: APXvYqwTtRm0wqQ33imjK5cfMhNwbKoP0HS+Yel+sv1lad66NjfwlsknxBwRjBLiSYx4GLneZb/79nnkLvotk3xijGU=
X-Received: by 2002:a05:651c:1108:: with SMTP id
 d8mr14938226ljo.180.1568196747444; 
 Wed, 11 Sep 2019 03:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062727.13521-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062727.13521-1-rashmica.g@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 11:12:15 +0100
Message-ID: <CACRpkdYbyHtC_gQqvc5cwYGqUPt1cYTW0cQVxPDah4XrdYB8Kw@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] gpios: Use ngpio property from device tree if
 available
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_031229_029072_D70578E9 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 7:27 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:

> Use the ngpio property from the device tree if it exists. If it doesn't
> then fallback to the hardcoded value in the config.
>
> This is in preparation for adding ast2600 support. The ast2600 SoC has
> two GPIO controllers and so requires two instances of the GPIO driver.
> We use the ngpio property to different between them as they have
> different numbers of GPIOs.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

Patch applied with some fuzzing.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
