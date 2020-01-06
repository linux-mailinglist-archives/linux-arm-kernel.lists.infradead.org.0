Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47840131C4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 00:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eimmy3sOrykTLpyFM0BU5rhIAK8xlcNUmBvWJanjexg=; b=MKI+VOx1m8UHOX
	Y1HMHG83rPznj9ChmWkHgsQX6eafzKBGmaH9rT06hsHkTCUmS1Y8HWgWtYSZuQFhnwn8oHCOY5IIf
	pVPYxiZTmQEYeLvt8p0NePCAk0PcKrj5aGXK4+JuddHussvbRpCzcqIWUq+CTQV0XL7Of4012VaFI
	p8FAdh3GlOSNr+1NaUM6NM7eltZmGZEXIUrYfLsm2nPJW7Q49BaahPbtRnzplpcB8by0+6yboJAvu
	JUAZeoFZpF+MZtuhFtTyVqwRNJIBi+NGxMBSjfERnuMoNsDQFdNirRSDUg3XbsssSwZ9Nc27IKoHZ
	PhW91fWzzxgcxwAFkz1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobix-0006L5-3z; Mon, 06 Jan 2020 23:23:51 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobiq-0006Kk-1T
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 23:23:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id y6so44685066lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 15:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qhJ+24IBi24nlgGtstXX5NhevFe6vDXs34NwEHIqIz0=;
 b=Jr3jPl3s0CPd6wYbJBof1LRJqW+jwATz758nMi+35XlVUIgvOwjtr8FmeB8ChHm42/
 UflKkYcCmX8tdiIuRRPvpj3l8JkdBV51Zfda78WRVBm6UITLT8lHvI+QDl+J1lhD45k4
 sPs3KIJOymMDy3H/jzL7H/T85GsKXh62iyKsmsDmMHq74lGVgsPpGqTRCiXsEuhP+M0N
 wmKHrl2A6ehFs+zBfqnmhxW/p3M23xx444GOybj5TisAPrmzaj8w56gmhv9B8i3sQALu
 Odk8toeruSoxPxTqhE+syy6i4YT47Pbhl0PlJhp2RI2QBFNMVEV3lSxRjL26lhuYFiW5
 meYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qhJ+24IBi24nlgGtstXX5NhevFe6vDXs34NwEHIqIz0=;
 b=qFy4goDwMYMSg0Qn9H/OXLAxwcz/ZvYxGMGZt/+Ini91l0M3wF8pjclxZ0JN2GsI17
 OrZGZozIaiiMzavaF7nycWebVUAaq3nQYQQJEesdq7wPFnkS8mrnI3vtfNztvetKoIVg
 vCXD9E+4bCgCkaow2XmmSBMuKi9k9v5shVDGZBiRzTP8I88QSwhexURm3G35DO6KHSG2
 fPPzBSOLDDUF8FQ3VJ+SqsekEmve9VwGbyQCqeh7eJh+nje4kTR+mJXBToJorcggrgoE
 wLMFPI9KkPYE1Bxg4qL1GghdE3XGL0Q4o6vQ1rFVjIWu76YkZFizvFy1O4/gwZrZYcmo
 eMsw==
X-Gm-Message-State: APjAAAVJkmMll7ITdb30XSBq/+aLT5ENDrTCwkBrzkvnBmT3zTXVe1XL
 W7zOVVtFOUrzisiYjLEHShGl5125YvW1ocKDIvwZcgIj4dU=
X-Google-Smtp-Source: APXvYqycZb8cjnLDwPSz0i1nk9G4iL2BrQtb3oR/DugYo/t1RHrxJM+qPCQpQ0QuJ0yAKIBfPKYsilIvLFzwlFOoGQE=
X-Received: by 2002:a2e:844e:: with SMTP id u14mr62074208ljh.183.1578353021596; 
 Mon, 06 Jan 2020 15:23:41 -0800 (PST)
MIME-Version: 1.0
References: <20191218102013.2465038-1-ben.dooks@codethink.co.uk>
In-Reply-To: <20191218102013.2465038-1-ben.dooks@codethink.co.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 00:23:30 +0100
Message-ID: <CACRpkdbK+Wq0qL4kKvaaiFvDmYxcx=UHsK3EK+cuhC17yH=Shw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: actions: remove duplicate dsi entry
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_152344_133958_4B7C96D4 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 11:20 AM Ben Dooks (Codethink)
<ben.dooks@codethink.co.uk> wrote:

> The dsi entry is defined identically twice, so remove
> the second one to remove the sparse warning:
>
> drivers/pinctrl/actions/pinctrl-s700.c:1581:10: warning: Initializer entry defined twice
> drivers/pinctrl/actions/pinctrl-s700.c:1586:10:   also defined here
>
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
