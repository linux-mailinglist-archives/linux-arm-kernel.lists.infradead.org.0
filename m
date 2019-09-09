Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A5EADBFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUcFR4XdLkQPzBnuWfvSPWTXhf3kwv/J1alNhw6FisE=; b=ROoF5yf7X1Qyg0
	w/yCG6F0vHMqcUq1MBzoYA0NPB8jV7nGg+KxMISeCYnkQL/0At6zf7U0Pn7TtpG2kxSPL2DB8nsEv
	QA9c1/qaHXb4BwlvOCVapUYRorEf0l/hXrad05ajctJnv95ZZCN+OGipq4OM6g4u7HV+3JDocQwhJ
	HzERyuq71VxnGlNJ+oXU/DUyXIPgRCg6uTiPHI04QTIdbXG2lddKtwEnVswj9CaL009zc7Se3kFyN
	pREwYpK6gg4wBsiY29Mn0xKio8d4V2YZTlfVUK7dff2C5AYKP+vtl8XDVxBiwVoBVWHrt3Vu4R2rM
	yWxbGUbcrW5BjMe3OJ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LQ4-0000MB-AE; Mon, 09 Sep 2019 15:17:32 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LPs-0000LE-KN
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:17:22 +0000
Received: by mail-qt1-f194.google.com with SMTP id j1so3841583qth.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 08:17:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KzvdCYJMc3jcRY8kC6B+9ojaAy4hLNLNsDWcIiJdsf0=;
 b=FwEotWj45YsvSQviKm20GDhcP5kiqCpfle7zvjn1KX1v/9ldUOvTag+7WmnlgM3E3g
 NNYYdJqAVWfR2gEdF3OTG732k3rY7Wsm8MLOxX7bXQKnG956J8ilRbC0gQTAoL35qBZt
 qYoK4LWDFKFIbx44U2VWIFKUvNZrNqzv6UZcdvDhVGTlnMMdotbAzPsjDlM4CBKayLO8
 1zF9/gYWR/JD36PxkEDsNhYsIsUhC3zKsPObCctXIlApX3FYtcs0mnZLtYIM7KSa8WTZ
 5vOrgjfLHwZ6uW6NS7IGW7Uxxj9H4+fSkwftVt4EwMZzcELOQPbv/6js7XII3c0/BH+q
 mH8w==
X-Gm-Message-State: APjAAAWdJR+jfRX1kWWHO7kYqOc/hIOYT0dNvHNER57ydRexD7o4iwVT
 zd+SpTIADeeGSmBT9CEPsyo2MnVd6JXsElDwUTk=
X-Google-Smtp-Source: APXvYqylECFPtzaWoRGJJ21CFA6Dl83bvtYMuTMRQbTeIMxr8YHGq6zdO6BvsdMD9Vg1HxNm8rA+F1PV06xkwvaeGL0=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr23896297qtb.7.1568042232506; 
 Mon, 09 Sep 2019 08:17:12 -0700 (PDT)
MIME-Version: 1.0
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-3-git-send-email-talel@amazon.com>
 <CAK8P3a3UF7xPV1U3eW6Jdu754P1bzG208UxD9KUxEm1JjZudww@mail.gmail.com>
 <98f0028e-5653-3116-fdaa-1385ecdf0289@amazon.com>
 <CAK8P3a1NVGwYa1bw_vjBatd1xe-i875X1Vq1M+2G_Zxd2Oqusg@mail.gmail.com>
 <8f7840c3-a682-04a5-18bf-ac7a723725b0@amazon.com>
In-Reply-To: <8f7840c3-a682-04a5-18bf-ac7a723725b0@amazon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Sep 2019 17:16:56 +0200
Message-ID: <CAK8P3a1fbK-qoK+K1ZsWsU3rkxxZgZGaK8ywFAcM4va1GRn_FQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] soc: amazon: al-pos: Introduce Amazon's Annapurna
 Labs POS driver
To: "Shenhar, Talel" <talel@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_081720_669133_11BFE378 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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

On Mon, Sep 9, 2019 at 4:11 PM Shenhar, Talel <talel@amazon.com> wrote:
> On 9/9/2019 4:41 PM, Arnd Bergmann wrote:
>
> In current implementation of v1, I am not doing any read barrier, Hence,
> using the non-relaxed will add unneeded memory barrier.
>
> I have no strong objection moving to the non-relaxed version and have an
> unneeded memory barrier, as this path is not "hot" one.

Ok, then please add it.

> Beside of avoiding the unneeded memory barrier, I would be happy to keep
> common behavior for our drivers:
>
> e.g.
>
> https://github.com/torvalds/linux/blob/master/drivers/irqchip/irq-al-fic.c#L49
>
>
> So what do you think we should go with? relaxed or non-relaxed?

The al_fic_set_trigger() function is clearly a slow-path and should use the
non-relaxed functions. In case of al_fic_irq_handler(), the extra barrier
might introduce a measurable overhead, but at the same time I'm
not sure if that one is correct without the barrier:

If you have an MSI-type interrupt for notifying a device driver of
a DMA completion, there might not be any other barrier between
the arrival of the MSI message and the CPU accessing the data.
Depending on how strict the hardware implements MSI and how
the IRQ is chained, this could lead to data corruption.

If the interrupt is only used for level or edge triggered interrupts,
this is ok since you already need another register read in
the driver before it can safely access a DMA buffer.

In either case, if you can prove that it's safe to use the relaxed
version here and you think that it may help, it would be good to
add a comment explaining the reasoning.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
