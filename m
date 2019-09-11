Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA09FAFE06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 15:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXiZK/il/FpyVLcF8A73p8fSJWtgx3ehAOIporOS+BU=; b=Ao4rVH6jNcdTqG
	357wzwsvfJgIunimgS+4hLG8d3iy2zvASz9+0gpaMafOwe1UDLPrCMo6dDGAIvouHemnRg921T1Zv
	FcWEprqSveqdXs5Ns4bw5bVeMfpAJd/7xBzVcYbucd9NImK7o5ZwTaVufglPM2YUiULx7HtkcELdI
	oe7BBZTMW1Z3oRlnpbLftA8ZPJm20PngJYpEO3i1PkMbN7tdMVlgh57fmqcYFyheuyrlW7xJwK/f0
	ZD0qIuqac7Nnl3wLSpCw1ekwvI9/82eiFyHzFcTKPLpZBK/qioVC1WJ7oPVlnP/300g1MZOeyZqhx
	3WmuCpz/pd6fRXmRD9zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82yx-00011q-U3; Wed, 11 Sep 2019 13:48:28 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82yj-00011X-AX
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 13:48:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id j4so16498009lfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 06:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S2FkzxTJQZdA1aRgr3g7IfWgwqRJ3678xnPBx6m4Fms=;
 b=CruhKYJ8uhTQJdaRfo2tyzYvg9E6mmNU5ANaIq7eKbkALix6+pkrNYYb1t3wDveFEB
 7lc7oEHFw+3quiJbkIMPHjxdfP+5NMe5SIouivEfceOJali8i759pEUADxaZrIH0RDh9
 PWzvmsrz2Zbaohm3XHRPoRPP6GboKe4XAB0Ipqq32wcAZae7kjrolvThM3ssdlJIjSGk
 CuZprMrpqDPpOtirA3qmQSmWA2KsVTt4QHIH5X9hW25QmI1PFj1bVBDDAcspjg8csjsj
 I7/FmmPZscKqLnfldovfwi22iVbGPTejdTnukUMmzIJiys02XHfOT2ufgycq4yvtJdXo
 +OTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S2FkzxTJQZdA1aRgr3g7IfWgwqRJ3678xnPBx6m4Fms=;
 b=QJmmVtOzuHNRAjV6z8Gj38j6+t7cSZppsDPJ6n9GdWbPTWkqxBDreiadsZb8Ai+IY6
 3nBgJgSqM7EcMc56wKXj1Bn7Qr8qRL4b1tIWnIx6VbBTUXQUrAfEk2kiD8LUj+qBUd9X
 ZVfJ1jf3hQCGM9X59UPmaMSeV7LQwYMUnTrwKVTh/+5hk/jAHHT38jf0GoYQVT4T6Ka8
 pnB2MEh8lhZ6Hoh7XSISW7zsoxsa+HrxMBrjqxguAUOu5Ph5+rH3QDJp0WrYddQOb9To
 UGrzGEXBxYZDLxHVvimvpDtLDL6teFA3soSAC258p7ipLES60cFYwwkLZEqXxbJBCVKV
 U9Kg==
X-Gm-Message-State: APjAAAVPKyHR2C0YSpeZXapAqKiAKYIJrjg8sC9KCoLV642G2LHcL5A/
 xWQyqeLw4MbIRCvbibwfzXSoMkEioj6O6bx3RKSELA==
X-Google-Smtp-Source: APXvYqxx39JIRa1vOCzPEEklvsJZB8Fu3qWvJg8QQa1U8FjndIfq7kjWGZ3O2VEZhadsF1jneYjTpoIdzWzLSyG3Bfk=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr24617653lfp.61.1568209691759; 
 Wed, 11 Sep 2019 06:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
 <20190906084539.21838-5-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-5-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 14:48:00 +0100
Message-ID: <CACRpkdan2XJZBCJHykhEQXipNK0x5F9ssg3TJPZKrwTGsDzkSA@mail.gmail.com>
Subject: Re: [PATCH 4/4] gpio: devres: Switch to EXPORT_SYMBOL_GPL()
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_064813_363003_31DAB36E 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 9:45 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Change all exported symbols for managed GPIO functions from
> EXPORT_SYMBOL() to EXPORT_SYMBOL_GPL(), like is used for their
> non-managed counterparts.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
