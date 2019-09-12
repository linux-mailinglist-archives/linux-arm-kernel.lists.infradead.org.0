Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A5BB1044
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pd9/LTqIEKX6Bh67Jg3BfUL6pN/DNhCuddkSB6luHP8=; b=RIBV709G8LGJT/
	FIoRjvj6wKMcSP1RjsGNdmUXZIXZjHo0CKAG8zAECiMqQigxjvt9687AES0gnn13eat5s9aIMpyA0
	YUIWiTIw4eq+gBn/wnc7XlMaEGVzHv0F8p7IQlJnwRVrz5mryzruzx5MtpXUxH8W+7cT0vpcTghFT
	wUY0jS+dlC18ZxJsBdW/JdS7qf6Dw+nmGTG3wvlylrJGaZJjAmVCm3FWQqJY3Calb0NdPkPEji+lZ
	QlrNs2b/b78rQX966MWRK5YkTdabWsceXpogi5imIkteLbxGXkMOUUQi2b9r0thVrAg+R0G5FP6CT
	sLMcVpZ/6X5eCyVH9Q2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PRV-0002lF-FT; Thu, 12 Sep 2019 13:47:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PQu-0002X8-MP
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 13:46:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id w6so19439397lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 06:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IxAIHy7z7OjGzOcJLm7mV4i2e9Ufg5GWnfAL1EPdhuw=;
 b=JSBEkRcKpYsmirXMw0E6Xl530d2wdWrDWdOAI/GZtFqrGL028ZnO8g40fXoK8DLbKa
 iyJU/QeL+1kC957ltdQS8KLIjp3aKCBP+W4d6WmLXsUxZouOgMoapIgv2URetNzS/6nj
 eFHPABwGjSut9Ntg4wjUCs7HFTqx0iWn6+9IAzUPHez7JBtR1uVAGRq55GpFKIMSOAyA
 rr7djmdcaZuAQKkTX9Fc4+9pkM2bVBukkM28UGAzm6bEN7DqOf7Z3bDl2j4PQl7hBVAe
 c2yvHF4tVxjSluiXZkAohO5iDBA3ovZ7oSzBiMa/9b0Fz+ccMdmfGVjtGpnDdn5JCaR1
 l6pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IxAIHy7z7OjGzOcJLm7mV4i2e9Ufg5GWnfAL1EPdhuw=;
 b=hEg9yiwxtXIo6mXyGvpxNCmC2x8KlyWLRJn6ewV0phmFeXyihGRnPoN6svq0CqLuY6
 GMhkiSvlZofIkTKNChK6FqEvPSr3FSe5jgN3Vs8dAAQPf9dhndnabX0EZXCCcX+sD0Dh
 NnSCPvovts/ZAmnxJQH1hDUg3S+wYB634STyt2Plv8AUmlB55IpCBx0hZhKsbjTj7h6S
 iGZoYVFZwVlPtcOWyIboclLE/YSyWxA+1mFsL1Nv2oC0WcJ0713dmKmYzHs9mbxvE+TI
 NR7xQn/GCZ8WayR2AUkZ/8bHja0TXKeeuIhZm47l5nqzJleQiMbnBaG26GtRiaS8bvYP
 zujQ==
X-Gm-Message-State: APjAAAVqL3XMgSQdbn1LcMDOgFjP03tT5riSoi3st8oF8kqugWGRvIw7
 lkF7XuaC+Fw/lfVkdb67VUWbUslmzeJUXjp8uub5/BAvYOxK4w==
X-Google-Smtp-Source: APXvYqxBQEhNgGyrV+aGEpNgiBh8jz3FwkP2/RjoOFz3uVnJ32fi19wRByEekPgtqxUvCFvqs36MWCHffuJdV5KoIcM=
X-Received: by 2002:ac2:530e:: with SMTP id c14mr1145645lfh.165.1568296005240; 
 Thu, 12 Sep 2019 06:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
 <CACRpkdbVC6DLHWftpL1wfkx_kWyfE=LpCQWZw=cv=RMVxDBm_g@mail.gmail.com>
 <20190911091101.GC21254@piout.net>
In-Reply-To: <20190911091101.GC21254@piout.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Sep 2019 14:46:32 +0100
Message-ID: <CACRpkdbziti1yBY_mZaGPg+jHVPR8vtRm8oNZBqt6e+m2wh67A@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_064648_734939_FA45EB77 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 10:11 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> On 11/09/2019 01:27:10+0100, Linus Walleij wrote:

> > > +#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
> >
> > Should it not be > rather than != ?
>
> Realistically, the only case that could happen would be
> ATMEL_PIO_NPINS_PER_BANK == 32 and BITS_PER_LONG ==64. so I would go for
> ATMEL_PIO_NPINS_PER_BANK < BITS_PER_LONG

OK I see.

> > > +               word = BIT_WORD(bank * ATMEL_PIO_NPINS_PER_BANK);
> > > +               offset = bank * ATMEL_PIO_NPINS_PER_BANK % BITS_PER_LONG;
> > > +#endif
> >
> > This doesn't look good for multiplatform kernels.
>
> I don't think we have multiplatform kernels that run both in 32 and 64
> bits. I don't believe ATMEL_PIO_NPINS_PER_BANK will ever change, it has
> been 32 on all the atmel SoCs since 2001.

So there is a bit missing from the commit message: the info that
the same driver is being used on 32 and 64 bit builds, and that is
the reason we allow compile-time ifdef things.

Can you add this to the commit message, or maybe
inline in the code, or both?

It confused me so it will confuse others.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
