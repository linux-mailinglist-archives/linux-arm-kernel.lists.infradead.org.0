Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100DE1B1008
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kmYeiP891e6QmwnKkl2ZIMdrGndeOVQtemY5Kwe/B0=; b=fq7606sCKlpcf3
	aJWTcAOVL5led6MQgqHnlV//nZ7p+TFqToSgPjpcQaADJqT/ctnUHfR6WGDSe5T9Z/KGFvq9+Zj/X
	FKDJuus/9YpyHdTt+i+5uTh9aLRmAp0RAYY6+foCMW738izaE3ZpyxoQ8SDIz8fj4rEbi75h3E5Ac
	7P+Kxs+IaGERYl8QjQ2FEZva4KvODdFfyA35qIhTqJ7Y5MgGB8EU2m3/ejG6k5UccoMdlZJGLjp75
	MAb0fnMf/DwyHYKLyvTB/Os+S7Bvyeap18b2OYUb7wDP1JqLUZPGOyFf7NPEH7tJfUr8j0bNZexXw
	4EHNlEMcTODCnKLQWmzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYLF-0004a4-8A; Mon, 20 Apr 2020 15:28:13 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYL2-0004ZZ-Ia
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:28:02 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M42zo-1jQYL03AGG-0005LD for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:27:58 +0200
Received: by mail-qk1-f178.google.com with SMTP id l25so11010527qkk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:27:58 -0700 (PDT)
X-Gm-Message-State: AGi0PuYH7kbKqqVcn7emtX8DKnt8De1ZMWnZm8e8eQNAXkoaXIjl9KEz
 cR4PpykWsJOs1RAY+nrxtRGUrMaT240IXh7TNgo=
X-Google-Smtp-Source: APiQypJ9pD41SHA4YqZ26+ywa4U01IE4ciwAkSIgNt47fRb1f2l+iHjSl7wCJvDBcQZG4zXYvL9DrNYc/cuTbzBQw4M=
X-Received: by 2002:a37:63d0:: with SMTP id x199mr16095453qkb.3.1587396477662; 
 Mon, 20 Apr 2020 08:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-9-robh@kernel.org>
In-Reply-To: <20200419170810.5738-9-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:27:41 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0YmD6Ay6t=Wxmugvg=YM0fCtetgnqz1vTYs1rFD-9TFg@mail.gmail.com>
Message-ID: <CAK8P3a0YmD6Ay6t=Wxmugvg=YM0fCtetgnqz1vTYs1rFD-9TFg@mail.gmail.com>
Subject: Re: [PATCH 08/17] clk: vexpress-osc: Support building as a module
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:NVDTJefvNDZD8P18bs1pjpp2TEMH4r2IoaqrAxKx4LnWC41N+YO
 h1YNHGdmgS6pw79RkYbOk+Ah+ANZRgjO0pOTrilBuBTFexsfGTpMCAKiONftcl96M8bp3Vj
 efZxM/xZO/YkjjvQLvrZyxS7qnzT5UQ+25cAcBcFg7PqwzmJlrlGmZ9GXD9uQKr85ksNIho
 gprEp0VZHeGJw5YvM5FhA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L86kT+aLog4=:oBaLPDO0pXD+Edg/MrjZ7N
 4g0qvbDRqc9GSJrMZoAc27Ki3TvolyhZk1TOXDOFnZwqK9hzP/b+mZwCYgMXVH/o0LIx0wa8/
 yCOVErmuxt2vB41p5RMkWxmt/j8m5CM8IaJc+xOxq66+mjzaHi2vbnSjJA1xMv6Ne6i2n6qCE
 AEg/eQXq7IAsHoMYBAOmK5WmjmCMtkCrs3f663yVThVy25B4k7Yg2qwBecPhJcd/pA0V1ogP5
 2EDhC5ra1xTEygVcCBI9R2bGtic/s53SVqXJu3zk+yGHKoiM9SpGksGBB8TsQz7OAY30Jyxz8
 nTSCUME/slOhICqqAvjlmc7yrlvRqczhIqxaUQvdbQ+WrRgA35STnqukS6jHgnv1zfc2uWUgn
 K+DolV7YUWqi3Ns/Ku9ytmL0bL3P5e+rbZX7ryzgXpAfOizAfQaoEV5YpWvV3z9dXlfirVZmV
 FFi1L1mKxCq7mHcfG09FlzQ7L07Kcshk+itSOHYvjUbriOBq0n44v5pZZaaX/W+WaGyPytUyq
 qB0+aTt8dHtqxpAlMcT/Ma0FFALjXeW9UbwQi3LIXfSisKgJ+8FxUliwJzAAYnaMrakuhJDBz
 G/AFvllj0IZWMEwroVoEOm644h+xsJqtX2hLzgTC5YnvY5yUPgZIvxq7JP1Y8NDwLMkbzujCL
 g32cAIoaQ0m4A2iIUlNR+ataoRGfp1V2oe65bG484ew6yIvofeMo3rUrhuRjNdDum0DvEjxn0
 fDSD2/qe2SVKt2gYzKLFkqyauhFr5lmPCjmfimXxa7lGUB6Rda8D0KEmHQ2EjO5HR6feBE+PF
 NKaQb9l+5f6UAsifrcm489PLgHXPkk0qbxh3VYAFF47/36vPHU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082800_903594_F7058954 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> Enable building the vexpress-osc clock driver as a module.

>
>  config CLK_VEXPRESS_OSC
> -       bool "Clock driver for Versatile Express OSC clock generators"
> -       depends on VEXPRESS_CONFIG || COMPILE_TEST
> +       tristate "Clock driver for Versatile Express OSC clock generators"
> +       depends on VEXPRESS_CONFIG

Why do you remove the "|| COMPILE_TEST" here?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
