Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66AD41D77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w24Hpr5D9Gp7niZDe3umiQBwiVVeW/FWgxrxRyD1v4s=; b=aKUyeDbLZeNFH3
	/qzRZ+D23HEiuIDOdM7C4a/lfTAi7gCGR74ZmfsEoPEZB/1jUFOySiAw8s062+yb8Ch3ZBQeh6yiz
	9QpYyQHLBDrovZDAyFpsbwrN18OfEjHRaaQeqBwiF16hYc36OyLvZolmlqywDcLuAyGQPKcSPLtNS
	TeAACXcchOW+k0MEt09WQcFXXBHHDOwyUAZMtVdIuMkLKsu5cPl432VLgTgCkcU7k8xIPCgToWcjI
	dwb+vbIna7ZGsR6eYHnPu7beUjDrmp8yfV54DNycpUpMQyECzU+nA6X8Fov9E9wRS6pBfMffEE8OZ
	EYYVswaH8X9ZIZiAh79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxX7-0003dU-4x; Wed, 12 Jun 2019 07:18:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxWn-0003al-0P
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:18:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so8534991lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eLHfkrcZKTo38F+HaUI6ckV79OZ0o6Qwqt61e1BrVrE=;
 b=T3WDjTm70bMNjTMTCWqVSg7AlbbkPQ8m68HplITNSif9lb4dM1J4+qSqh7Bvp7O3Ww
 Yysk1R0j0bTNnoYt8zCSs1qZ2Mvg/HDYnUQjzbxPpjFkVJ64dq01UEDZ8S/Rt6thbZw1
 5NajMHZbFg4j/a5wyeEch9lfQlmmQ4wly/T8T+D8yAuCtTqPsuadEWmNpYEWD+qI3Ujf
 Qsiq2AHo0pbd9cDZZocdVrxiX+rjbf5XzFWkKficu/3zleLrwS4ImuQ7oGn//+LMWp8f
 mTOFKEPWKMLqcqWoNsoh8P7l1Xaz0bzm+e7F2zYbglE2PY28+hh/H8bTV2RSeAHKygwB
 hNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eLHfkrcZKTo38F+HaUI6ckV79OZ0o6Qwqt61e1BrVrE=;
 b=OwjQMVGRAlS0FvuS/cVKgYANIGRpHtUyh13+uPMWMmiW1S0oQnd0wkgNDx8LZwid3i
 cDEHI1IapT3Yz0pKPZey6ARML6413/OpaPYl3yHdUXspLuWCNHnDgjmZVomTQS+hr3KJ
 JydF/CHEW/dDMRAyNGkvgjCsc7HbuwZRk7rWf7UujBCuKWqt2gdyeynpdIWW7dMlvl4s
 HiV6Xhddf7zZvuTXkPg9IZ1b/wDTimhSxDeTe51+DFzhFWXJV5JAUDtatUyv32CF60j3
 u0K5l2VbH1UlVQ0uf08wleUKwROHPolrn1ooADfxzyqJmy34X81VSbaGT5suVgMp+6Zj
 0DXw==
X-Gm-Message-State: APjAAAUsgreJFFrTNSJamXVUZ1lzLQe1M7sfmDN1b/2FERokE+I0l3fY
 j7ZbVfvG6ULzRgGdAHqpNEYlOBrYC4kQPmeU1IvUow==
X-Google-Smtp-Source: APXvYqzDh4d8Jgxhz1KUU0UefThe5Mfao7GnQlNr1l1ciJMnwpzLb6ZT/NclpErH3pe+BXltkLCsA/57T4H+XLB/VdE=
X-Received: by 2002:a19:7616:: with SMTP id c22mr36520290lff.115.1560323915112; 
 Wed, 12 Jun 2019 00:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
 <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
 <20190610085542.GL4797@dell>
 <CAKv+Gu8rhxciy1cOG3B3pda9+p4R_COGrrqa7S_Rj9y2HeBxYw@mail.gmail.com>
 <20190610092245.GN4797@dell> <20190611183945.GP4814@minitux>
In-Reply-To: <20190611183945.GP4814@minitux>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Jun 2019 09:18:23 +0200
Message-ID: <CACRpkdZLO0tOuaribTWK5eMYD6_drdGJk9x7tG7YDxJKVJqOVg@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_001837_061543_78F9D61A 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-usb <linux-usb@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 8:39 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> Last time we discussed this the _only_ offender was the loop issuing a
> get_direction() on all descs towards the end of
> gpiochip_add_data_with_key()

I think that is still the only offender.

We were a bit back and forth: adding that code, removing it
and then adding it back again.

In a way it is good that we detect it so users do not crash their
kernels by asking for these GPIOs at runtime from userspace
instead.

It makes a lot of sense for us to ask for the initial direction for
all pins, as they get registered as GPIOs, which by definition
makes them available as such and we should be able to inspect
them.

"GPIOs" reserved by ACPI arguably are not GPIOs anymore
since ACPI have dedicated them to a special purpose
(no more "general purpose").

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
