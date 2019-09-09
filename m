Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9411AAD5F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnGa/BVAcpHvkslcObJRFGfRFE//GguTsu5GLLAWIy0=; b=aU6fKJM/PP3c3X
	ap7GI+gdrKAEkoPwCCxk5jbphipCzXsq4ACoOskWCuOJiuUtffBs1C/qmiJLU5PB1jQ33KHY64BMK
	p/AniNOMmx3pVgJxg4mikvNavHbN9XQpsR6/3NT0WL4rnUPipiztIF2+7HdyZmiwGzDuo/qrojGPH
	Edfj+l7NTAGMzRsGrLXt8G843vBWzMHertXJEMAUKUAVL+wXz6LpkQn0acZl2eQo5BQsG4dtpHFyq
	aQ7D0WU2ZY9btPSJbKIrles4og/zNcbE57HOVOKNZIIwAvHVYO6lTTq49DwnXO14qru3geSjt5nS4
	KMeMfTSD1f+dAa56rljA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7GE2-0005gv-76; Mon, 09 Sep 2019 09:44:46 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GDo-0005g9-NF
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:44:33 +0000
Received: by mail-qk1-f195.google.com with SMTP id 201so12350162qkd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:44:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eq2XuOQub5LXmNdZQdl0dNhC7+edIsPrDvzkz2RrzVA=;
 b=SRWiyhpQ7EtO9HF81EeyZoTw7iJlHdFtXK7mcrVFuDCfpFcoxvO2j3da9boGHB5KLs
 iinqWK4V0xIeceC/spnm1xIkvYFMPT19z03FqHihUiuEJP71ExRH4sK9pJpCiu7lWwMc
 Dc/aVXf+hC6J4K2PXXlTNY63/MI5UO3VOQnA0P5R1P75M14ACXZMhsAq77XX5rhFHPKY
 PoIvmhG7dXGbG8JrDi3FAMVGqMA/WRwdD2qiwNonjf2Dt5WlI7dB82bYoQqsFzW5gViL
 1qsdMgj189BC1fIclGNgtyF5QvKLUrRoDdiE5NxFFYbnpOGWVgz4ESLlnguezd3crZmv
 5ecQ==
X-Gm-Message-State: APjAAAXBTm4zrA3sLwl78gyulefmeFHET+hhAR+P0pVxV6GO74YR8VVu
 M9967pHEHAzbfCIg7ns9RsAuJivSbeC/uFBLcTI=
X-Google-Smtp-Source: APXvYqyP9aDV8ZsrfhZ0CKBAlFvxBvCyNUWYRtQ+3kZ7PzdPLrpPHD/Bz780Tvcj7KaHZ5XR85/SF7oeG/38AAgDTQw=
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr1781989qkg.3.1568022269523;
 Mon, 09 Sep 2019 02:44:29 -0700 (PDT)
MIME-Version: 1.0
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-3-git-send-email-talel@amazon.com>
In-Reply-To: <1568020220-7758-3-git-send-email-talel@amazon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Sep 2019 11:44:13 +0200
Message-ID: <CAK8P3a3UF7xPV1U3eW6Jdu754P1bzG208UxD9KUxEm1JjZudww@mail.gmail.com>
Subject: Re: [PATCH 2/3] soc: amazon: al-pos: Introduce Amazon's Annapurna
 Labs POS driver
To: Talel Shenhar <talel@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_024432_762255_3BDADB06 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, mjourdan@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jonnyc@amazon.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 ronenk@amazon.com, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, hanochu@amazon.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, barakw@amazon.com,
 hhhawa@amazon.com, gregkh <gregkh@linuxfoundation.org>,
 paul.kocialkowski@bootlin.com, Patrick Venture <venture@google.com>,
 Olof Johansson <olof@lixom.net>, David Miller <davem@davemloft.net>,
 David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 11:14 AM Talel Shenhar <talel@amazon.com> wrote:
>
> The Amazon's Annapurna Labs SoCs includes Point Of Serialization error
> logging unit that reports an error in case write error (e.g. attempt to
> write to a read only register).
> This patch introduces the support for this unit.
>
> Signed-off-by: Talel Shenhar <talel@amazon.com>

Looks ok overall, juts a few minor comments:

> +MODULE_LICENSE("GPL v2");
> +MODULE_AUTHOR("Talel Shenhar");
> +MODULE_DESCRIPTION("Amazon's Annapurna Labs POS driver");

These usually go to the end of the file.

> +       log1 = readl_relaxed(pos->mmio_base + AL_POS_ERROR_LOG_1);
> +       if (!FIELD_GET(AL_POS_ERROR_LOG_1_VALID, log1))
> +               return IRQ_NONE;
> +
> +       log0 = readl_relaxed(pos->mmio_base + AL_POS_ERROR_LOG_0);
> +       writel_relaxed(0, pos->mmio_base + AL_POS_ERROR_LOG_1);

Why do you require _relaxed() accessors here? Please add a comment
explaining that, or use the regular readl()/writel().

> +       resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       pos->mmio_base = devm_ioremap_resource(&pdev->dev, resource);

This can be simplified to devm_platform_ioremap_resource().

> +       pos->irq = irq_of_parse_and_map(pdev->dev.of_node, 0);

And this is usually written as platform_get_irq()

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
