Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17471573B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 12:52:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KOm+uLojd8XzhanBY8TwT6q1/W4enJJN/nmzq4PriQ=; b=E108sBPklXg1zT
	XBV50kPuCP3gA/rQRQC8nxJBuJ/AAuYYWw3Bt4NEZigfTKFhLCEtXK64n80h0CCu2jAvaFbUQdjWL
	XWtsxS9QeiH6YF2YgzY9cLXbq7NlO9/t9oEieaRq6YrsJOoOAZ2+D+4sPauL3am3XyjNMF4ZQU0H3
	YRk3DUiZkOXFqXxqrp3SdQ7CD9npRv9q+KXR0n57R3MadiPfdiv2IrWbVivTvPp0u2ZXkMnGh/NgO
	X1jy8VfpONIRT1T8B+8blqdDV32mVhm4i/M6fu3W4AFlKam2h72fVpLQBkmM0yVdD8gVsNcmCNbuD
	wneDwtOkk7CwZVB7K2WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17cN-0001xy-Rv; Mon, 10 Feb 2020 11:52:47 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17cH-0001xc-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 11:52:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id r14so3978196lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 03:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6TSUn8xPcd6H5fjophC7T+z3GxaUtEa64TR/ndAUqog=;
 b=EjIiU+YGccj3kIRt1MhzLYhws7v879uEZ889Ve+TSTVdSqoqRFW0jM+7pskiGaf0xe
 t6javzVHeGfoVJfweIX1ECBduHJDfBctQlFQmvGhANEwrXZICkD3IZxgTkNqDVZJx+tG
 M34XypGWKZFWHX9buWHvh/3K7pyQZq3RqgsmlV1rAx0gaBbuTUjcpPtQt2/zDWHtayFb
 ecg4uzTZm1F0JxtDkP6RfUklVnqkCXNmm9jZMq1YRONE4tZTNzUjWsZYfqa1s3v1xhke
 SbkTGUoDoyGuWIsPKdpASDHVbNRsWsuNeQbGUZiogCejAeVE4u1sK/fIj+tQtdFtEcUm
 C15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6TSUn8xPcd6H5fjophC7T+z3GxaUtEa64TR/ndAUqog=;
 b=Cgp0h+i4mN0rx4s01ywfSMq3a35ZUYVDCl6lqgSU89B8ZhMPa0dng13BVIZDs7kTBD
 sWD6DTnASRxCK77P9To7RQCK7c/3v1PR9vsjVA/EKuFVZg3s64oFqCIolzrruuAEW9eb
 HMLlLNEVFuaXLk8/5kTNwz4Boas0egZvccanRH9GHCIK6XGonRPxKjCcOqH6LvmSaWo6
 VTbtX8+n6l0WOdbmIoXP/BH4PiGZzd7N2qEq0rA9fx2TE0FPxMCulWUWK0fK0CekDg0v
 U1khEXyi70CnYtvy6Fu+Tq1VxwIDsA9aaoqTWRy9TpYK+7AHEjIkZEjUKkcThR3OTBWS
 Rh1A==
X-Gm-Message-State: APjAAAUE6mxfVCfEDV5RKFvWlz7eLL2f5UfY3H2/jnPmPIaZ7ko80Bec
 EoN8pN00qe9qLIs6hObQMbVkS8nz7bAAvp7g6V5o/ZkqQfU=
X-Google-Smtp-Source: APXvYqzv7ZFAJVm8UDa2eHfp6BEfq1DCHyjIQeu1nId0TRH9xJlhezpl6EtuyJBfI40CcQuahPCeUz44MwQ+mtM6MeA=
X-Received: by 2002:a19:40d8:: with SMTP id n207mr594507lfa.4.1581335559768;
 Mon, 10 Feb 2020 03:52:39 -0800 (PST)
MIME-Version: 1.0
References: <20200125221410.8022-1-pthomas8589@gmail.com>
In-Reply-To: <20200125221410.8022-1-pthomas8589@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Feb 2020 12:52:28 +0100
Message-ID: <CACRpkdZjFpyp=fySNRfMCnm6-JJ0xY-sGU4deDc6i6iPOuAG+w@mail.gmail.com>
Subject: Re: [PATCH] GPIO, Fix bug where the wrong GPIO register is written to
To: Paul Thomas <pthomas8589@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_035241_587643_27695DBB 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 25, 2020 at 11:14 PM Paul Thomas <pthomas8589@gmail.com> wrote:

> Care is taken with "index", however with the current version
> the actual xgpio_writereg is using index for data but
> xgpio_regoffset(chip, i) for the offset. And since i is already
> incremented it is incorrect. This patch fixes it so that index
> is used for the offset too.
>
> Signed-off-by: Paul Thomas <pthomas8589@gmail.com>
> ---
>  There are many different ways to correct this, I'd just like it to get
>  fixed. I've tested this with a 5.2 kernel, but this patch is against
>  5.5rc7.

Fixed up the subject and applied, added a tag for stable.

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
