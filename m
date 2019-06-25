Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F033C54ECB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTRKYREMvktbPWO7WF8BaOhASf95SbjjQcDihfMM/Nw=; b=S4HZO6Ln3KthVY
	G36VVFpWsSdZsx4LrwxudyyRiFkVCJD6vmiTLyE6ErG90EY1lm943XEmiWkzossOz6mWeomwpnHCB
	fwDzzatsvPJzc0qJ9rSAaE7DJdG/c5mNEAjEVvJk51bTotS4DNw7/DmkJ3QiEJvkQdpovR2tfLphB
	7Z/4JgZInyCuJjIdvEwDkWzw9MnU8JBC6uyMjajdou0IAP261NxWd05rV4gjywSgE2Css5o6wWffK
	9L6ggJOLgC8EI+tu6kZ69JVmVzzxZ7U9D6oIzdPrMrvtT9bzrFvzLzxWOxiIrw/vkAoLzm2x+aL8E
	TAYSIAYrpSCALDxEjY4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkXT-0000GD-KL; Tue, 25 Jun 2019 12:27:07 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkXK-0000Fj-KK
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:27:00 +0000
Received: by mail-lj1-x244.google.com with SMTP id h10so16086934ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jkM0/+Y2mDTWRWvyb1EfYEosGBa2XCe1MpHMrOCqACs=;
 b=gjRocc0M0csOsxcltg1nkQWWzkjs3PSER+yR2O1GOwKo2FVeeoBS8PgxAD1E6mjPxY
 LLT3xmGdPMDMbbTnk6hBta7ypvxPkY6YPvTpZ+01Z0y098PfPKQ/+49XGlm2WDmMh5tl
 D1coqelf7c3PUCElzY3sJ9LOc4F3XRV8vFhFCXIBISTf3Zg5DyOBweRq306XDmxj3zbr
 QFf+mbnJOyKWRpw7ox/wP9s7TnI3bxPYYM/t6l1xHEx/ARZvPVDZZXiS28HhVjokMT8L
 C/AmhzogK4YVADlvOLp6zZpxSrK0oXTk2Wyo8ngs/zRfpv9qxe/Ofch61mG2cQ8oZDX6
 ZJPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jkM0/+Y2mDTWRWvyb1EfYEosGBa2XCe1MpHMrOCqACs=;
 b=nXQekqYsYfNoEz5fVJtDUDwPtJLNp4Sc8oqA0ESQ4rhziJnxwYW4vLT/I26TaLDLVn
 OCF7b6RcjEA78mAOqeGluQJ+A4uw2vragAqfYX1S+hVvcKzSQ8AW3gF8VZv+9Z6g4nHk
 TSt9K/q78o44eUVJobQcrvYuskIQ4Pssudoxgv+9W6TKWMo4ISRG2Ah7KhjvRY4y8QPu
 yehMaC8E4xuxDhtbtmkqzWUFFgUWY00QIrQtSYFUGermHd96Po6LriJcbQxL9otpKs8k
 +tNdUADJ6j8UXdVm9TzqzHhCXuZVrKHzA+69/n6nVPBvNGxWn10d4goSvmkjtMLjW6HA
 xnng==
X-Gm-Message-State: APjAAAXsBKAb3VlZZMR+reu6vqD1phMtM52qeV2SHZaAllqCjmUtlc6S
 eilHOloSBzAZyFeK1BkhsLWpD/vdjmb6OdtD692E3Q==
X-Google-Smtp-Source: APXvYqwqmW7K+YRAv/jeZfMAYfAGHtHSP+nnNJ4VnkYeEMfCpom4R1Lx1FjpN+hjQApZV+HFHvgf/yn0v6vmuNYbGmo=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr9060553ljm.180.1561465617100; 
 Tue, 25 Jun 2019 05:26:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
 <20190617215458.32688-4-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20190617215458.32688-4-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 14:26:45 +0200
Message-ID: <CACRpkdbSS18us3o=v7ki_=8cLXYjfDd8q321xMCounXPh11GAQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] pinctrl: mvebu: Add support for MV98DX1135
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_052658_673558_2AA20C88 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 11:55 PM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> The 98DX1135 is a switch chip with an integrated CPU. This is similar to
> the 98DX4122 except the MPP assignments differ.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Patch applied.
I just assume this one has no dependency on the clock patches
so I can merge it separately.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
