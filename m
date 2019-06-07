Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429C039894
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QXZBv5zkKTcWmMJ5NP7ohginhP6oiqKffW7NGB1P+4=; b=XIXNQ9tFJU6eym
	Km1+L/eLkcZ4Z17Z1SpPk1eKrQXR8jOYpvxk8EowURUNi5L5jzFu6giLYk1UYZisr0Wca6AW2aFIi
	bW3FguEo6y05x3eLT2WbzOGZnbYmtSBJz9Q6u3ts7NTZWzOmU42Z4MawtWr42qODKU0kk8Q8hzExU
	h0WiSeB3t6aEujWakG4GJFaWIcUTWNzYySsrVcoGaBoDC5uslZhA59fOBDEFUoAg3Q+reT8Hgu4vC
	mnXMnFXfm8xgGCHmdcduaii4tfRv2Dl5SrrcaBAFBxDqtcaUcq9MlG2WdXMkGLLuT1pSc8uLdctW0
	5v2IKIO4dUWcW0MMUjWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNGt-0007Kf-I5; Fri, 07 Jun 2019 22:23:39 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNGl-0007K2-DK
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:23:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so3025843ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mKQ/jkVDmHzG3Imk3QoYm7ZRsrxgpBXEW32JYoXBK6c=;
 b=b6Uttyul57zhK0WLRFY2uElrt+7RjU0A4CqB86e19BlOPEOButGb8d+RfNG8TmtLB/
 hBYKaq1+NEQfc2TXYpAX9tB+2jG8DNuaZf5sdL85L4+yBSSqlQ0j0efAavrSbhlJ8QM9
 dnMVqvx3u5kJJXi+BuQLcqU3D1MwwvOPoW0lo6mYfxYoE5VsfLGSZSc0/bMEdRBNrPHz
 q99sHZs3QMahC9tKZJMU6C40PoGzO75S325tIkzoa6Ewy2EOI1HUtO2aG6v6ukATbBGP
 PgIbNsEzUVwnw8k8NofrSWHlXcShNIz6Rp8GGnv+pA+JAaq3n0yRBc5FXY92rMC7E6lW
 iOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mKQ/jkVDmHzG3Imk3QoYm7ZRsrxgpBXEW32JYoXBK6c=;
 b=Bc59Cc3o8np+PGeQyhrNRa3f8Aov36RPdUnH8n+rkSFOyipOhFl/YFH1TgO6D4VrSt
 xLPpRFeE4v6suYmzNO3bDZTRx9h+BzN9aKo36FZTk92QK0KX30egijBNy7O1brahbdEw
 kNqbKdHhu07Lv0FnUKVLB5dZP712Bb4jW3SZ4n0kKSHVSYbjcyAFt9jbX1p0hfsbe6Sj
 O263tmvceCcxHYTLLTLyhtKRRpF/PxOeF0TsdvZBB9UqRdM/65ar49RqJTgYq++2lmtm
 8EBsUrDRV+xiGD0MloEXKc+uAJbk+Ks0RpZ+zYfi56Dwad5xF30DClK3ooavzP6WTvhZ
 AqHw==
X-Gm-Message-State: APjAAAUskyFkOTrsQ82bnF+AH4bJFdSAVJdUffiFIMrXnqR3ZljjKTa+
 ZMB/8Vl7NZuasS7N1IpJpFsdgmCT2THUzbWAqJfQeQ==
X-Google-Smtp-Source: APXvYqwB2qJJmkpZg21BBIfS3DEIvPDBmZVSisAyl2+8KE4YGuHY6alNrysBJaP17ZsV+0U5Xx/P5PNamh/WkwZKcrM=
X-Received: by 2002:a2e:9e85:: with SMTP id f5mr23337666ljk.104.1559946209241; 
 Fri, 07 Jun 2019 15:23:29 -0700 (PDT)
MIME-Version: 1.0
References: <1559685212-15857-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1559685212-15857-1-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 00:23:21 +0200
Message-ID: <CACRpkdb=NBkqG1qi6F66pcd7UaxmpT9LFVLaCLFrM2SXDihJng@mail.gmail.com>
Subject: Re: [PATCH 1/3 linux dev-5.1 v2] ARM: dts: aspeed: Add SGPM pinmux
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_152331_449647_CAE07D0B 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 11:53 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
> supporting SGPIO in AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>

Patch applied! I altered the subject a bit to match the change
to the pinctrl subsystem.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
