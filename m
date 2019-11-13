Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D19FB143
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f1EglFY4E4sK1neycn3si33weiaUKgcGpNQkoFC4fQ=; b=JO+z3xPyDaSPqB
	ulpL5U1/5c43VNM7WLcQJDgKuYVr1LA0TnLBjn1KScjTE1vZEKG4GG5PJ7/eS9VqLwWaBM/3rHWoL
	CqvphYzpE4aTqS3QAqBhTKjQYe+hjgPGgHaMqHIro4uBKiDKfvsIspIKnsBGrHidxqU/1Nt/N8Uss
	JlsLuVbJcrUZgMtj6dUmxXwClbeCDSjVk4qZoJr9nTMoZencTqxpwxfY+s8tyzw56LlAU28ef+AiE
	NWBoOtAQHQMTsc5i+BRwtFp6uGo38vIaUiKmV74zFXKZVsCGLdN1sV/eio7i7vompR4l9+FIUORh2
	y2KbsPdD6/1MKV8iVf/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsdc-0001vP-PM; Wed, 13 Nov 2019 13:24:48 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsdV-0001u9-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:24:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id i26so1970276lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GQo/splhUGv9XSw+8c37KzMY1kcM0qsjSZS8+fTXlnY=;
 b=YuZmtIb4LvusfIFt5PoAHeeujiVoF8Ldptn3dd5cjJawoDdzoUxMIMZtvujA2uYgWT
 0d+IahXjLhwTY238iQKTgr+SZ6tp8WRerCIg8PbT68bOZbDdQ+6uPM/Cw7lT//H6AlJY
 YH7a2c4ZIuy5uYe5jeLUIq5qdorAGyfSvAU7VOrHsOnALDt/3z09g5j097HFsLaedU7q
 0Ra5Vk3Ks+FmME35qTjr8SoaRzHAaVtQT8rCyWeaV3xiw5xVkqK30LwL2EO4V7kUNRF4
 Z7Al2qFfL9aU9esnLRc6vTGLvZgU9d+QElqmlg9ziVfAqJCVN0lpHEGUBgsvW79zZcis
 Gi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GQo/splhUGv9XSw+8c37KzMY1kcM0qsjSZS8+fTXlnY=;
 b=KQWDG20t4skPpEFopX2vrTwaVV0qdBLmWRg+n2zqNC9KtMa2cdDOlB1thoa3Z/MZXH
 jVc/7dwRjLwp/bBG18S7JNWKnr9kglRQbZvEbr5rv6W17v9jI7Hy1jFPggk4k7R3xOCp
 p0NoYZGvX0uhN3zDYJv2R2YbLZTbUyKUHRMUN4xCzKyynmP4mnZD+K5S+5S/+R7QPHH0
 R5A35Lx40GWD72VB6N3NfPsycbhFDYXAN5srnYIGyslF9wP5oMPGpGQrgQt7Eqq8WNKS
 TNPq39N6S3gPM+KmbpcZziHIyNuttBc2zG++2NOhgsd6152eyolzb2nFB5r/5Gs7aMEh
 5BMA==
X-Gm-Message-State: APjAAAXw22/ueUSqjEYu3kcaOpMzmvp7ZVtGSnaKakk9QtEC0KKZ+iZu
 vwe6N00AY6IXL8cT0GTj6NQnQITDHxe0OLgRt539Ng==
X-Google-Smtp-Source: APXvYqx2WrB+YBqtNKpqKOlKtR1VDhJUWFftKmthD7IevKwMwOuLXKtvmD0wiAB1j7jKkZaJjG40omA9GmjrLHMb5+8=
X-Received: by 2002:ac2:48b8:: with SMTP id u24mr1383965lfg.133.1573651478899; 
 Wed, 13 Nov 2019 05:24:38 -0800 (PST)
MIME-Version: 1.0
References: <20191113075335.31775-1-linus.walleij@linaro.org>
 <20191113075335.31775-4-linus.walleij@linaro.org>
In-Reply-To: <20191113075335.31775-4-linus.walleij@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 14:24:27 +0100
Message-ID: <CACRpkdZLiy4BSh1JYtQj0HjKk3=qdyKoj9tQv4HrthDi=4e-Bg@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: mmci: Proper PIO residue handling
To: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_052441_415382_095E30F8 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Niklas Cassel <niklas.cassel@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Russell King <linux@arm.linux.org.uk>, Ludovic Barre <ludovic.barre@st.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 8:53 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> +               /* Pack the residue into a 32bit word */
> +               for (i = 0; i < host->pio_write_residue_sz; i++) {
> +                       val |= host->pio_write_residue[i];
> +                       val <<= 8;
> +               }
> +               /* Top up with new data */
> +               for (i = 0; i < fill; i++) {
> +                       val |= *ptr;
> +                       val <<= 8;
> +                       ptr++;
> +                       remain--;
> +               }

I'm worried that I might have gotten this wrong.

iowrite32_rep() reads the data little-endian (native endianness)
from memory does it not?

Bytes  [0 1 2 3] end up in the FIFO like [3 2 1 0].

So it will pack the first byte into the lowest 8 bits, second byte into
bits 8-15 etc.

So I should rewrite all the loops like this:

for (i = 0; i < host->pio_write_residue_sz; i++) {
        val |= (host->pio_write_residue[i] << 24);
        val >>= 8;
}

So I shift the value down from the high bits instead of the
other way around.

This also gives a pretty plausible hint att what might be wrong with the
DMA in non-divisible by 4.

As suggested by Stephan in another context, I will try to set up my
own test rig for this.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
