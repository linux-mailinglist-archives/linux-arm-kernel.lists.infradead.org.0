Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7F0ADA37
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQAJ8f4lA+DDQFRi5euuoQqitc/cYnj1EwNEd4kdvs8=; b=QIf2ZBRAZpIyYg
	RUvB3JsI2rUQvXm+/zGaUXj0JzkppjswAewz7vVsnRDs6vWfBIWsePbMOV+8j+zeWMq+bu75j3CNG
	9VvEPGZquNcGMmZOosqoyiIFY3SDL7S3DAdz5UbtguIauGJancHr6Gkci4udfvQ8G/eFDnJUGrA06
	3xx4Gh8CE1uwM1/SeYDZgB7J/sLdR+kUkIHY7kG15aqXC0Y9UMybOWJqeYWxEDWWyJMgFZktIuDZZ
	U3REajrRqgxD+3NGkyfYNg63OImx/RcOm+aflgJrAqj3PwZZDbJrfJ1s57O19FURjGh2WRQIvfPq2
	tWk81sGWMKGPP/0JmCPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JzJ-0001cd-0D; Mon, 09 Sep 2019 13:45:49 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Jz6-0001c2-81
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:45:37 +0000
Received: by mail-qt1-f193.google.com with SMTP id j10so16152081qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 06:45:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xDjWmrpelBMsV8acnAMsSy3b05LWkf2FcGFKigsCXs8=;
 b=gVXtSRXk6bgQYPj16XMozSm6CFa5VEl8Y9+kuhno/rTUtzZ2W3DQO0Xq2buQQWHt1b
 F/89OkBhyl/alg8fdVVOxurKHYJJRKxjEpT8mL4db482HbHkLcwmqyYoTpN0EvFZ7pRI
 12AJA5mgHjyR5m1ZCcUHHpVGvbhaGxcTLSu8Bd7F7AAL+YIDzmupkOaML7HuZOF2qZp0
 t9YBnaswujqwvlqfzSth86RWTBThsptVidL6sAugs2fvgu5VN5hW84P7of/KTfdZp/nX
 3f6upL6CJzXedmsj0Jqhaio5SDNSOIzXIUuIWnbVXBrMbIp0O3Aq78Xym9WZ5UYvVxo1
 W/6A==
X-Gm-Message-State: APjAAAVdHyQj1o/RPYhFT3FVgwrb9oH3lmEjO1TJVq5jKwFm6QXMH5TP
 Vjz6hhkPplVW6IEOLOyxT9cf028fkPdfwldZ1DA=
X-Google-Smtp-Source: APXvYqy6uMINd7bjqrBIpL+FlSlRZCnr6jDIP9BcfsScpej8dgHINCuOakM78zZlQ2S5h2RBKY29EifUZf3k9t5zUQM=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr22956448qts.304.1568036734738; 
 Mon, 09 Sep 2019 06:45:34 -0700 (PDT)
MIME-Version: 1.0
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-4-git-send-email-talel@amazon.com>
 <CAK8P3a0DEMeFWK+RuAdSLyDYduWWwj9DxP_Beipays-d_6ixnA@mail.gmail.com>
 <ab512ced-d989-5c10-a550-2a4723d38e7e@amazon.com>
In-Reply-To: <ab512ced-d989-5c10-a550-2a4723d38e7e@amazon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Sep 2019 15:45:18 +0200
Message-ID: <CAK8P3a34eKFXoAPOfkFN5+H4kxOhRjXgws_0wy+d-186LFxcTw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: alpine: select AL_POS
To: "Shenhar, Talel" <talel@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064536_284762_F06BD2E1 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Mon, Sep 9, 2019 at 12:17 PM Shenhar, Talel <talel@amazon.com> wrote:
> On 9/9/2019 12:40 PM, Arnd Bergmann wrote:
> > On Mon, Sep 9, 2019 at 11:14 AM Talel Shenhar <talel@amazon.com> wrote:
> >> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> >> index 4778c77..bd86b15 100644
> >> --- a/arch/arm64/Kconfig.platforms
> >> +++ b/arch/arm64/Kconfig.platforms
> >> @@ -25,6 +25,7 @@ config ARCH_SUNXI
> >>   config ARCH_ALPINE
> >>          bool "Annapurna Labs Alpine platform"
> >>          select ALPINE_MSI if PCI
> >> +       select AL_POS
> >>          help
> >>            This enables support for the Annapurna Labs Alpine
> >>            Soc family.
> > Generally I think this kind of thing should go into the defconfig
> > rather than being hard-selected. There might be users that
> > want to not enable the driver.
>
> The reason for selecting it is because this is a driver that we will
> always want for ARCH_ALPINE.

Can you put the exact requirement (other than "we want this")
in the changelog text then? It's still not clear to me what breaks
without this driver.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
